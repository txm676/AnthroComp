library(dplyr)
library(ggplot2)
library(viridis)
library(forcats)

# Load your Excel file
data_filtered <- read.csv("Data/Figure2_Data_16_03_26_FILTERED.csv")  

unique(data_filtered$taxon); unique(data_filtered$pattern)

# Summarize and reorder
plot_data <- data_filtered %>%
  group_by(taxon, pattern) %>%
  summarise(count = n(), .groups = "drop") %>%
  group_by(taxon) %>%
  mutate(taxon_total = sum(count)) %>%
  ungroup() %>%
  mutate(taxon = fct_reorder(taxon, taxon_total))

# Reorder pattern factor to control stacking order (top = first)
plot_data$pattern <- factor(plot_data$pattern, levels = c(
  "homogenization",
  "differentation",
  "mixed",
  "no_difference"
))

# Define your custom colors
custom_colors <- c(
  "differentation" = "#7AA6DCFF",
  "homogenization"   = "#CD534CFF",
  "mixed"            = "#EFC000FF",
  "no_difference"    = "#868686FF"
)

# Reorder pattern factor to control stacking order (top = first)
plot_data$pattern <- factor(plot_data$pattern, levels = c(
  "homogenization",
  "differentation",
  "mixed",
  "no_difference"
))
# Plot
ggplot(plot_data, aes(x = taxon, y = count, 
                      fill = pattern)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = custom_colors, 
                    name = "pattern") +
  labs(title = "Distribution of Patterns per Taxonomic Group",
       x = "Taxon", y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# Plot without title, labels or graphical extras
ggplot(plot_data, aes(x = taxon, y = count, 
                      fill = pattern)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = custom_colors, name = NULL) +
  theme_void() +  # Removes all axes and background
  theme(legend.position = "none")  # Removes legend



#####Diversity dimension

# Summarize and reorder
plot_data2 <- data_filtered %>%
  group_by(taxon, bio_facet) %>%
  summarise(count = n(), .groups = "drop") %>%
  group_by(taxon) %>%
  mutate(taxon_total = sum(count)) %>%
  ungroup() %>%
  mutate(taxon = fct_reorder(taxon, taxon_total))

# Define your custom colors
custom_colors2 <- c(
  "functional" = "#7AA6DCFF",
  "phylogenetic"  ="#EFC000FF",
  "taxonomic"   = "#4A6990FF"
)

# Reorder pattern factor to control stacking order (top = first)
plot_data2$bio_facet <- factor(plot_data2$bio_facet,
                              levels = c(
  "taxonomic",
  "functional",
  "phylogenetic"
  
))
# Plot
ggplot(plot_data2, aes(x = taxon, y = count, 
                       fill = bio_facet)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = custom_colors2, 
                    name = "bio_facet") +
  labs(title = "Distribution of bio_facet per Taxonomic Group",
       x = "Taxon", y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# Plot without title, labels or graphical extras
ggplot(plot_data2, aes(x = taxon, 
                      y = count, fill = bio_facet)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = custom_colors2, name = NULL) +
  theme_void() +  # Removes all axes and background
  theme(legend.position = "none")  # Removes legend
