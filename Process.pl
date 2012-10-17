#!/usr/bin/perl
# NOTE: 
# THIS IS ONLY SPECIFIC TO ICD-10 CHAPTERS!!!! 
# DO NOT APPLY TO ANY OTHER ICD REVISION!!!!

#Regex ref (used during development)
# A\d\d(\.\d{0,3})?|B([0-4]\d|50)(\.\d{0,3})?
# A\d\d(\.\d{0,3})?|B([0-3]\d|4[0-8]|50)(\.\d{0,3})?

#REF ON PARAMATERS PASSED IN:
# @_[0] = DX_CODE
# @_[1] = MRN
# @_[2] = DX_CODE DESCRIPTION

sub count_stuff{
    $_ = @_[0];
    $description = @_[2];
    $description =~ s/["']//g;
    
    ##################### BEGIN FIND QUARTER COUNT #############################
    #Chapter 01: A00-B99 : Certain infectious and parasitic diseases
    if(m/[AB]\d\d(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 01: A00-B99 : Certain infectious and parasitic diseases'}++;
    #Chapter 02: C00-D48 : Neoplasms
    }elsif(m/(C\d\d(\.\d{0,3})?)|(D([0-3]\d|4[0-8])(\.\d{0,3})?)/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 02: C00-D48 : Neoplasms'}++;
    #Chapter 03: D50-D89 : Diseases of the blood and blood forming organ
    }elsif(m/D([5-7]\d|8[0-9])(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 03: D50-D89 : Diseases of the blood and blood forming organ'}++;
    #Chapter 04: E00-E90 : Endocrine, nutritional and metabolic diseases
    }elsif(m/E([0-8]\d|90)(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 04: E00-E90 : Endocrine, nutritional and metabolic diseases'}++;
    #Chapter 05: F00-F99 : Mental and behavioral disorders
    }elsif(m/F\d\d(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 05: F00-F99 : Mental and behavioral disorders'}++;
    #Chapter 06: G00-G99 : Diseases of the nervous system
    }elsif(m/G\d\d(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 06: G00-G99 : Diseases of the nervous system'}++;
    #Chapter 07: H00-H59 : Diseases of the eye and adnexa
    }elsif(m/H[0-5]\d(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 07: H00-H59 : Diseases of the eye and adnexa'}++;
    #Chapter 08: H60-H95 : Diseases of the ear and mastoid process
    }elsif(m/H([6-8]\d|9[0-5])(\.\d{0,3})?/i){ 
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 08: H60-H95 : Diseases of the ear and mastoid process'}++;
    #Chapter 09: I00-I99 : Diseases of the circulatory system
    }elsif(m/I\d\d(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 09: I00-I99 : Diseases of the circulatory system'}++;
    #Chapter 10: J00-J99 : Diseases of the respirotory system
    }elsif(m/J\d\d(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 10: J00-J99 : Diseases of the respirotory system'}++;
    #Chapter 11: K00-K93 : Diseases of the digestive system
    }elsif(m/K([0-8]\d|9[0-3])(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 11: K00-K93 : Diseases of the digestive system'}++;
    #Chapter 12: L00-L99 : Disease of the skin and subcutaneous tissue
    }elsif(m/L\d\d(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 12: L00-L99 : Disease of the skin and subcutaneous tissue'}++;
    #Chapter 13: M00-M99 : Diseases of the musculoskeletal system and connective tissue
    }elsif(m/M\d\d(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 13: M00-M99 : Diseases of the musculoskeletal system and connective tissue'}++;
    #Chapter 14: N00-N99 : Diseases of the genitourinary system
    }elsif(m/N\d\d(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 14: N00-N99 : Diseases of the genitourinary system'}++;
    #Chapter 15: O00-O99 : Pregnancy, childbirth and the puerperium
    }elsif(m/O\d\d(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 15: O00-O99 : Pregnancy, childbirth and the puerperium'}++;
    #Chapter 16: P00-P96 : Certain conditions originating in the perinatal period
    }elsif(m/P([0-8]\d|9[0-6])(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 16: P00-P96 : Certain conditions originating in the perinatal period'}++;
    #Chapter 17: Q00-Q99 : Congenital malformations, defomrations and chromosomal abnormalities
    }elsif(m/Q\d\d(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 17: Q00-Q99 : Congenital malformations, defomrations and chromosomal abnormalities'}++;
    #Chapter 18: R00-R99 : Symptoms, signs, and abnormal clinical and laboratory findings (not elsewhere classified)
    }elsif(m/R\d\d(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 18: R00-R99 : Symptoms, signs, and abnormal clinical and laboratory findings (not elsewhere classified)'}++;
    #Chapter 19: S00-T98 : Injury, poisoning and certain other consequences of external causes
    }elsif(m/((S\d\d)|(T([0-8]\d|9[0-8])))(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 19: S00-T98 : Injury, poisoning and certain other consequences of external causes'}++;
    #Chapter 20: V01-Y98 : External causes of morbiditiy and mortality
    }elsif(m/((V(0[1-9]|[1-9]\d))|(W\d\d)|(R\d\d)|(X\d\d)|(Y([0-8]\d|9[0-8])))(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 20: V01-Y98 : External causes of morbiditiy and mortality'}++;
    #Chapter 21: Z00-Z99 : Factors influencing health status and contact with health services
    }elsif(m/Z\d\d(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 21: Z00-Z99 : Factors influencing health status and contact with health services'}++;
    #Chapter 23: U00-U99 : Provisional for new diseases or provisional assignments in Canada
    }elsif(m/U\d\d(\.\d{0,3})?/i){
        $array_of_dx_count_hash[$mrn_date{@_[1]}]{'Chapter 23: U00-U99 : Provisional for new diseases or provisional assignments in Canada'}++;
    }
    ###################### END FIND QUARTER COUNT ##############################
    # Count Occurance of diagnosis
    if(exists $dx_count{$_}){
        $dx_count{$_}[0]++;
    }else{
        $dx_count{$_} = [1,$description];
    }
}

sub input_loop{
    foreach(<>){
        chomp;
        @line_in = split "\t",$_;
        # Pass in MRN and DischDate if mrn does not exist in the hash
        if(!(exists $mrn_date{@line_in[0]})){
            &calc_patient_quarter(@line_in[0],@line_in[2]);
        }
        # Count based on DXCode and MRN
        &count_stuff(@line_in[10],@line_in[0],@line_in[11]);
    }
}

# Calculates patient's quarter and puts it in the hash array pertaining to the patient's MRN
sub calc_patient_quarter{
    
    # date is: day,month,year
    @date = split /[\/-]/, @_[1];
    if(@date[1]>=4&&@date[1]<=6){
        $quarter = 0;
    }
    elsif(@date[1]>=7&&@date[1]<=9){
        $quarter = 1;
    }
    elsif(@date[1]>=10&&@date[1]<=12){
        $quarter = 2;
    }
    elsif(@date[1]>=1&&@date[1]<=3){
        $quarter = 3;
    }
    $mrn_date{@_[0]} = $quarter;
}

# Print in descending order
sub dx_count_desc {
   $dx_count{$b}[0] <=> $dx_count{$a}[0];
}

# Not going to be used later
sub print_mrn_date{
    print "MRN\tDate\n";
    while(($key,$value) = each(%mrn_date)){
        print "$key\t$value\n";
    }
}

# Print final counts by quarter
sub print_quarter_count{
    # headings
    @quarter_totals;
    print "Section\tQ1\tQ2\tQ3\tQ4\n";
    for $chapter (keys @array_of_dx_count_hash[0]){
        print "$chapter\t";
        for $i (0..$#array_of_dx_count_hash-1){
            print $array_of_dx_count_hash[$i]{$chapter};print "\t";
            @quarter_totals[$i] += $array_of_dx_count_hash[$i]{$chapter};
        }
        print $array_of_dx_count_hash[$#array_of_dx_count_hash]{$chapter};print "\n";
        @quarter_totals[3] +=  $array_of_dx_count_hash[$#array_of_dx_count_hash]{$chapter};
    }
    print "Totals:\t";
    foreach(@quarter_totals){
        print;print"\t";
    }
    print "\n\n NOTE: QUARTERS ARE CANADIAN FISCAL QUARTARS\n";
}
# Print dx occurance
sub print_dx_occurance{
    $rank=0;
    print "Diagnosis codes ordered by occurance in descending order\n";
    print "Rank\tCode\tOccurences\tDescription\n";
    foreach $key (sort dx_count_desc (keys(%dx_count))){
        print ++$rank ."\t$key\t". $dx_count{$key}[0] ."\t" . $dx_count{$key}[1] . "\n";
        if($rank == 5){
            return;
        }
    }
}

# Global Variables
# Declare a hash that has the diagnosis as the key and points to a count
%dx_count = ();
# Declare Hash that has patient discharge quarter
%mrn_date = ();
# Declare an array of hashes for each chapter. The elements mean the following:
# 0 = First quarter
# 1 = Second quarter
# 2 = Third quarter
# 3 = Fourth quarter
@array_of_dx_count_hash = (
    {   'Chapter 01: A00-B99 : Certain infectious and parasitic diseases' => 0
    ,   'Chapter 02: C00-D48 : Neoplasms' => 0
    ,   'Chapter 03: D50-D89 : Diseases of the blood and blood forming organ' => 0
    ,   'Chapter 04: E00-E90 : Endocrine, nutritional and metabolic diseases' => 0
    ,   'Chapter 05: F00-F99 : Mental and behavioral disorders' => 0
    ,   'Chapter 06: G00-G99 : Diseases of the nervous system' => 0
    ,   'Chapter 07: H00-H59 : Diseases of the eye and adnexa' => 0
    ,   'Chapter 08: H60-H95 : Diseases of the ear and mastoid process' => 0
    ,   'Chapter 09: I00-I99 : Diseases of the circulatory system' => 0
    ,   'Chapter 10: J00-J99 : Diseases of the respirotory system' => 0
    ,   'Chapter 11: K00-K93 : Diseases of the digestive system' => 0
    ,   'Chapter 12: L00-L99 : Disease of the skin and subcutaneous tissue' => 0
    ,   'Chapter 13: M00-M99 : Diseases of the musculoskeletal system and connective tissue' => 0
    ,   'Chapter 14: N00-N99 : Diseases of the genitourinary system' => 0
    ,   'Chapter 15: O00-O99 : Pregnancy, childbirth and the puerperium' => 0
    ,   'Chapter 16: P00-P96 : Certain conditions originating in the perinatal period' => 0
    ,   'Chapter 17: Q00-Q99 : Congenital malformations, defomrations and chromosomal abnormalities' => 0
    ,   'Chapter 18: R00-R99 : Symptoms, signs, and abnormal clinical and laboratory findings (not elsewhere classified)' => 0
    ,   'Chapter 19: S00-T98 : Injury, poisoning and certain other consequences of external causes' => 0
    ,   'Chapter 20: V01-Y98 : External causes of morbiditiy and mortality' => 0
    ,   'Chapter 21: Z00-Z99 : Factors influencing health status and contact with health services' => 0
    ,   'Chapter 23: U00-U99 : Provisional for new diseases or provisional assignments in Canada' => 0
    }
,   {   'Chapter 01: A00-B99 : Certain infectious and parasitic diseases' => 0
    ,   'Chapter 02: C00-D48 : Neoplasms' => 0
    ,   'Chapter 03: D50-D89 : Diseases of the blood and blood forming organ' => 0
    ,   'Chapter 04: E00-E90 : Endocrine, nutritional and metabolic diseases' => 0
    ,   'Chapter 05: F00-F99 : Mental and behavioral disorders' => 0
    ,   'Chapter 06: G00-G99 : Diseases of the nervous system' => 0
    ,   'Chapter 07: H00-H59 : Diseases of the eye and adnexa' => 0
    ,   'Chapter 08: H60-H95 : Diseases of the ear and mastoid process' => 0
    ,   'Chapter 09: I00-I99 : Diseases of the circulatory system' => 0
    ,   'Chapter 10: J00-J99 : Diseases of the respirotory system' => 0
    ,   'Chapter 11: K00-K93 : Diseases of the digestive system' => 0
    ,   'Chapter 12: L00-L99 : Disease of the skin and subcutaneous tissue' => 0
    ,   'Chapter 13: M00-M99 : Diseases of the musculoskeletal system and connective tissue' => 0
    ,   'Chapter 14: N00-N99 : Diseases of the genitourinary system' => 0
    ,   'Chapter 15: O00-O99 : Pregnancy, childbirth and the puerperium' => 0
    ,   'Chapter 16: P00-P96 : Certain conditions originating in the perinatal period' => 0
    ,   'Chapter 17: Q00-Q99 : Congenital malformations, defomrations and chromosomal abnormalities' => 0
    ,   'Chapter 18: R00-R99 : Symptoms, signs, and abnormal clinical and laboratory findings (not elsewhere classified)' => 0
    ,   'Chapter 19: S00-T98 : Injury, poisoning and certain other consequences of external causes' => 0
    ,   'Chapter 20: V01-Y98 : External causes of morbiditiy and mortality' => 0
    ,   'Chapter 21: Z00-Z99 : Factors influencing health status and contact with health services' => 0
    ,   'Chapter 23: U00-U99 : Provisional for new diseases or provisional assignments in Canada' => 0
    }
,   {   'Chapter 01: A00-B99 : Certain infectious and parasitic diseases' => 0
    ,   'Chapter 02: C00-D48 : Neoplasms' => 0
    ,   'Chapter 03: D50-D89 : Diseases of the blood and blood forming organ' => 0
    ,   'Chapter 04: E00-E90 : Endocrine, nutritional and metabolic diseases' => 0
    ,   'Chapter 05: F00-F99 : Mental and behavioral disorders' => 0
    ,   'Chapter 06: G00-G99 : Diseases of the nervous system' => 0
    ,   'Chapter 07: H00-H59 : Diseases of the eye and adnexa' => 0
    ,   'Chapter 08: H60-H95 : Diseases of the ear and mastoid process' => 0
    ,   'Chapter 09: I00-I99 : Diseases of the circulatory system' => 0
    ,   'Chapter 10: J00-J99 : Diseases of the respirotory system' => 0
    ,   'Chapter 11: K00-K93 : Diseases of the digestive system' => 0
    ,   'Chapter 12: L00-L99 : Disease of the skin and subcutaneous tissue' => 0
    ,   'Chapter 13: M00-M99 : Diseases of the musculoskeletal system and connective tissue' => 0
    ,   'Chapter 14: N00-N99 : Diseases of the genitourinary system' => 0
    ,   'Chapter 15: O00-O99 : Pregnancy, childbirth and the puerperium' => 0
    ,   'Chapter 16: P00-P96 : Certain conditions originating in the perinatal period' => 0
    ,   'Chapter 17: Q00-Q99 : Congenital malformations, defomrations and chromosomal abnormalities' => 0
    ,   'Chapter 18: R00-R99 : Symptoms, signs, and abnormal clinical and laboratory findings (not elsewhere classified)' => 0
    ,   'Chapter 19: S00-T98 : Injury, poisoning and certain other consequences of external causes' => 0
    ,   'Chapter 20: V01-Y98 : External causes of morbiditiy and mortality' => 0
    ,   'Chapter 21: Z00-Z99 : Factors influencing health status and contact with health services' => 0
    ,   'Chapter 23: U00-U99 : Provisional for new diseases or provisional assignments in Canada' =>
    }
,   {   'Chapter 01: A00-B99 : Certain infectious and parasitic diseases' => 0
    ,   'Chapter 02: C00-D48 : Neoplasms' => 0
    ,   'Chapter 03: D50-D89 : Diseases of the blood and blood forming organ' => 0
    ,   'Chapter 04: E00-E90 : Endocrine, nutritional and metabolic diseases' => 0
    ,   'Chapter 05: F00-F99 : Mental and behavioral disorders' => 0
    ,   'Chapter 06: G00-G99 : Diseases of the nervous system' => 0
    ,   'Chapter 07: H00-H59 : Diseases of the eye and adnexa' => 0
    ,   'Chapter 08: H60-H95 : Diseases of the ear and mastoid process' => 0
    ,   'Chapter 09: I00-I99 : Diseases of the circulatory system' => 0
    ,   'Chapter 10: J00-J99 : Diseases of the respirotory system' => 0
    ,   'Chapter 11: K00-K93 : Diseases of the digestive system' => 0
    ,   'Chapter 12: L00-L99 : Disease of the skin and subcutaneous tissue' => 0
    ,   'Chapter 13: M00-M99 : Diseases of the musculoskeletal system and connective tissue' => 0
    ,   'Chapter 14: N00-N99 : Diseases of the genitourinary system' => 0
    ,   'Chapter 15: O00-O99 : Pregnancy, childbirth and the puerperium' => 0
    ,   'Chapter 16: P00-P96 : Certain conditions originating in the perinatal period' => 0
    ,   'Chapter 17: Q00-Q99 : Congenital malformations, defomrations and chromosomal abnormalities' => 0
    ,   'Chapter 18: R00-R99 : Symptoms, signs, and abnormal clinical and laboratory findings (not elsewhere classified)' => 0
    ,   'Chapter 19: S00-T98 : Injury, poisoning and certain other consequences of external causes' => 0
    ,   'Chapter 20: V01-Y98 : External causes of morbiditiy and mortality' => 0
    ,   'Chapter 21: Z00-Z99 : Factors influencing health status and contact with health services' => 0
    ,   'Chapter 23: U00-U99 : Provisional for new diseases or provisional assignments in Canada' => 0
    }
);


sub main{
    &input_loop;
    &print_quarter_count;
    print "\n\n\n";
    &print_dx_occurance;
    print "\n";
}&main;
