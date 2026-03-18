# AnthroComp

This repository contains the data and code underlying Figure 2 in Matthews et al (In review).

Matthews et al (in review). Emergent patterns of island biodiversity in the Anthropocene.

Data collectors: Natàlia Martínez-Rubio, Osanna Chu, Joseph P. Wayman, Thomas E. Martin, Thomas J. Matthews, Ferran Sayol

Figure code: Natàlia Martínez-Rubio

The figure provides a summary of the results of studies of island
biotic homogenisation – defined here as increased compositional
similarity in some measure of diversity through time. Study
results are split across taxa. Data were compiled from a
literature search conducted in Web of Science on 7th June 2025
using the search terms: AB=(Island* AND (homogenization OR
homogenisation)) OR TI=(Island* AND (homogenization OR
homogenisation)). Three additional studies that were known to the
authors were also included.

The returned studies were then screened for inclusion by multiple
authors. Studies were included if they assessed change in
compositional similarity (due to species extinctions /
extirpations and/or introductions) across true islands within an
archipelago, across islands or archipelagos within a larger
region, or at the global scale, but not within an individual
island. However, for a given study, we took the results from the
smallest unit of analysis (e.g., the within archipelago scale).
If a given study analysed compositional similarity within
multiple archipelagos, or for multiple taxa or diversity
dimensions in a single archipelago, we counted each of these as
distinct results (i.e., the unit of analysis was taken to be a
given taxon-diversity dimension-archipelago [or broader spatial
scale] combination). A total of 438 papers were screened, with 22
deemed to be suitable for inclusion, comprising 120 individual
analysis results.

Other points:
*	The analysis overall is relatively coarse and is meant to just provide a rough and general overview of the results of island homogenisation studies. We also took the results from the studies at face-value. Thus, if using these data in new analyses, we would recommend i) checking all the original source-papers, and ii) undertaking a more comprehensive literature search with additional search terms (e.g., ‘community convergence’ and ‘composition change’).
*	In several cases we contacted the source paper authors to obtain results that were not published in the source papers themselves.
*	Most included studies focused on islands as the unit of analysis, but some studies focused on archipelagos or groups of islands as the focal unit.
*	Some studies looked at the combined effects of extinctions and introductions, whereas some only included the latter and a smaller number only the former.
*	Studies looking at compositional changes across patches within a single island were not included. Nor were studies that looked at genetic homogenisation within a population or species.
*	Where studies had conducted pairwise beta-diversity analyses, we tried where possible to use the individual pairwise comparison values to generate the result for a given analysis. However, it was not always possible to obtain these values and some studies did not undertake pairwise analyses (e.g., a multi-site measure of beta-diversity was used); in these cases, the result of “mixed” is not possible to obtain. More broadly, compositional change was measured using a range of different metrics and approaches across studies.
*	Where we were able to obtain the pairwise comparison values (e.g., where an analysis involved calculating the pairwise beta-diversity between all islands in an archipelago at two time periods [pre-human and present-day]), we determined the result of the analysis as follows:
*	If more than 70% of pairwise comparisons showed evidence of homogenisation, differentiation or no-change, this was taken as the result of that particular analysis.
*	If no particular pattern occurred in >70% of pairwise comparisons, the result was taken to be “mixed”.
*	In certain cases, the same taxon-diversity dimension-archipelago/island-group combination was analysed in different studies. We decided to keep these records in as there was variation in i) the underlying data (i.e., it was compiled in a different way), and/or ii) the metric used to measure compositional variation, and/or iii) the islands included in the analysis (and thus, for example, in the pairwise comparisons undertaken), and/or (iv) the scale of the analysis (e.g. where an island or archipelago was the unit of analysis).
*	The ‘resolution’ column is very coarse and groups several different types of analysis together (e.g., “between archipelago” can mean comparing islands in different archipelagos, or comparing whole archipelagos). In addition, grouping islands into an individual archipelago is somewhat subjective in many cases and varies between studies; it could be more accurately referred to, in this case, as ‘insular region’.
