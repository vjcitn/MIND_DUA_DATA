
#SRCS=Blood_Pressure.Rmd	  FFQ_DR.Rmd	  Medication_usage.Rmd	  MRI.Rmd \
#	ScreeningAndBaseline.Rmd Cognitive_Assessment.Rmd  Laboratory.Rmd \ 
#	MIND_InterviewQ_MM.Rmd  SAE_COVIDQ.Rmd

Blood_Pressure_nopath.html: Blood_Pressure.Rmd
FFQ_DR_nopath.html: FFQ_DR.Rmd
Medication_usage_nopath.html: Medication_usage.Rmd
MRI_nopath.html: MRI.Rmd
ScreeningAndBaseline_nopath.html: ScreeningAndBaseline.Rmd
Cognitive_Assessment_nopath.html: Cognitive_Assessment.Rmd
Laboratory_nopath.html: Laboratory.Rmd
MIND_InterviewQ_MM_nopath.html: MIND_InterviewQ_MM.Rmd
SAE_COVIDQ_nopath.html: SAE_COVIDQ.Rmd

Blood_Pressure_loc.html: Blood_Pressure_nopath.html
FFQ_DR_loc.html: FFQ_DR_nopath.html
Medication_usage_loc.html: Medication_usage_nopath.html
MRI_loc.html: MRI_nopath.html
ScreeningAndBaseline_loc.html: ScreeningAndBaseline_nopath.html
Cognitive_Assessment_loc.html: Cognitive_Assessment_nopath.html
Laboratory_loc.html: Laboratory_nopath.html
MIND_InterviewQ_MM_loc.html: MIND_InterviewQ_MM_nopath.html
SAE_COVIDQ_loc.html: SAE_COVIDQ_nopath.html

unlocate: Blood_Pressure_nopath.html FFQ_DR_nopath.html Medication_usage_nopath.html \
	MRI_nopath.html ScreeningAndBaseline_nopath.html Cognitive_Assessment_nopath.html \
	Laboratory_nopath.html MIND_InterviewQ_MM_nopath.html SAE_COVIDQ_nopath.html

locate: Blood_Pressure_loc.html FFQ_DR_loc.html Medication_usage_loc.html \
	MRI_loc.html ScreeningAndBaseline_loc.html Cognitive_Assessment_loc.html \
	Laboratory_loc.html MIND_InterviewQ_MM_loc.html SAE_COVIDQ_loc.html

%.html:%.Rmd
	R -e "rmarkdown::render('$<', rmarkdown::html_document())"

%_nopath.html: %.html
	sh -v rmabspath.sh `basename $< .html`

%_loc.html: %_nopath.html
	sh -v setabspath.sh `basename $< _nopath.html`
