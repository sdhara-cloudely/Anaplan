<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>CLDY_Approved_Quote</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Approved_Quote</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>CLDY - Approved Quote</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Default_Subscription_Term</fullName>
        <field>SBQQ__SubscriptionTerm__c</field>
        <formula>36</formula>
        <name>CLDY - Default Subscription Term</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Anaplan_Entity</fullName>
        <field>Anaplan_Entity_Name__c</field>
        <formula>TEXT(SBQQ__Opportunity__r.Services_Entity__c)</formula>
        <name>CLDY - Set Anaplan Entity</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Anaplan_Entity_Address_Line1</fullName>
        <field>Anaplan_Entity_Address_Line_1__c</field>
        <formula>CASE( TEXT(SBQQ__Opportunity__r.Services_Entity__c) , 
&apos;Anaplan, Inc.&apos;, &apos;625 2nd Street, Suite #101&apos;, 
&apos;Anaplan Asia Pte Ltd&apos;, &apos;Block 3, 15-07 Suntec Tower 5 Temasek Boulevard&apos;, 
&apos;Anaplan Australia Pty Ltd&apos;, &apos;Level 17, The Ark, Coca Cola Place&apos;, 
&apos;Anaplan Central Eastern Europe GmbH&apos;, &apos;Teinfaltstrasse 8,&apos;, 
&apos;Anaplan FRANCE SAS&apos;, &apos;167, Avenue Victor Hugo&apos;, 
&apos;Anaplan Limited&apos;, &apos;80 Moorbridge Road&apos;, 
&apos;Anaplan Nederland B.v&apos;, &apos;Papendorpseweg 100,&apos;, 
&apos;Anaplan Nordic&apos;, &apos;Strandvagen 7A,&apos;, 
&apos;Anaplan Software Canada, Inc.&apos;, &apos;515 Legget Drive, Suite 800&apos;, 
&apos;&apos;)</formula>
        <name>CLDY- Set Anaplan Entity Address Line 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Anaplan_Entity_Address_Line2</fullName>
        <field>Anaplan_Entity_City__c</field>
        <formula>CASE( TEXT(SBQQ__Opportunity__r.Services_Entity__c) , 
&apos;Anaplan, Inc.&apos;, &apos;San Francisco, CA 94107&apos;, 
&apos;Anaplan Asia Pte Ltd&apos;, &apos;Singapore 038985&apos;, 
&apos;Anaplan Australia Pty Ltd&apos;, &apos;North Sydney NSW 2060&apos;, 
&apos;Anaplan Central Eastern Europe GmbH&apos;, &apos;Vienna 1010&apos;,
&apos;Anaplan FRANCE SAS&apos;, &apos;75116, Paris&apos;, 
&apos;Anaplan Limited&apos;, &apos;MAIDENHEAD SL6 8BW&apos;, 
&apos;Anaplan Nederland B.v&apos;, &apos;3528 BJ UTRECHT&apos;, 
&apos;Anaplan Nordic&apos;, &apos;114 56 Stockholm&apos;, 
&apos;Anaplan Software Canada, Inc.&apos;, &apos;Ottawa, ON K2K 3G4&apos;, 
&apos;&apos;)</formula>
        <name>CLDY - Set Anaplan Entity Address Line 2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Anaplan_Entity_Country</fullName>
        <field>Anaplan_Entity_Country__c</field>
        <formula>CASE( TEXT(SBQQ__Opportunity__r.Services_Entity__c) , 
&apos;Anaplan, Inc.&apos;, &apos;USA&apos;, 
&apos;Anaplan Asia Pte Ltd&apos;, &apos;&apos;, 
&apos;Anaplan Australia Pty Ltd&apos;, &apos;&apos;, 
&apos;Anaplan Central Eastern Europe GmbH&apos;, &apos;AUSTRIA&apos;, 
&apos;Anaplan FRANCE SAS&apos;, &apos;FRANCE&apos;, 
&apos;Anaplan Limited&apos;, &apos;UK&apos;, 
&apos;Anaplan Nederland B.v&apos;, &apos;THE NETHERLANDS&apos;, 
&apos;Anaplan Nordic&apos;, &apos;SWEDEN&apos;, 
&apos;Anaplan Software Canada, Inc.&apos;, &apos;&apos;, 
&apos;&apos;)</formula>
        <name>CLDY - Set Anaplan Entity Country</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Anaplan_Entity_Email</fullName>
        <field>Anaplan_Entity_Email__c</field>
        <formula>CASE( TEXT(SBQQ__Opportunity__r.Services_Entity__c) , 
&apos;Anaplan, Inc.&apos;, &apos;ar.amer@anaplan.com&apos;, 
&apos;Anaplan Asia Pte Ltd&apos;, &apos;ar.apac@anaplan.com&apos;, 
&apos;Anaplan Australia Pty Ltd&apos;, &apos;ar.apac@anaplan.com&apos;, 
&apos;Anaplan Central Eastern Europe GmbH&apos;, &apos;ar.emea@anaplan.com&apos;, 
&apos;Anaplan FRANCE SAS&apos;, &apos;ar.emea@anaplan.com&apos;, 
&apos;Anaplan Limited&apos;, &apos;ar.emea@anaplan.com&apos;, 
&apos;Anaplan Nederland B.v&apos;, &apos;ar.emea@anaplan.com&apos;, 
&apos;Anaplan Nordic&apos;, &apos;ar.emea@anaplan.com&apos;, 
&apos;Anaplan Software Canada, Inc.&apos;, &apos;ar.apac@anaplan.com&apos;, 
&apos;&apos;)</formula>
        <name>CLDY - Set Anaplan Entity Email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_CC_Modeling_Description</fullName>
        <field>Quote_Output_Use_Case_Description__c</field>
        <formula>&quot;Calculate &amp; model sales commissions and credits. This Use Case is limited to business processes in support of Sales Reps, for no more than three years of historical data, and data submission is limited to data required for the good execution of the Use Case. A “Sales Rep” is a quota-carrying sales representative, including direct, indirect, field and inside sales staff and leadership.&quot;</formula>
        <name>CLDY - Set CC &amp; Modeling Description</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Calculated_End_Date</fullName>
        <field>Calculated_End_Date_Old__c</field>
        <formula>Calculated_End_Date__c</formula>
        <name>CLDY - Set Calculated End Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Capacity_Planning_Description</fullName>
        <field>Quote_Output_Use_Case_Description__c</field>
        <formula>&quot;Align sales organization staffing needs with HR business partner assignments. Directly tie staffing needs to targets and GTM strategies.Mange effects of rep attrition in real time. This Use Case is limited to business processes in support of Sales Reps, for no more than three years of historical data, and data submission is limited to data required for the good execution of the Use Case. A “Sales Rep” is a quota-carrying sales representative, including direct, indirect, field and inside sales staff and leadership.&quot;</formula>
        <name>CLDY - Set Capacity Planning Description</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Deal_Desk_Description</fullName>
        <field>Quote_Output_Use_Case_Description__c</field>
        <formula>&quot;Operate a deal desk for validation, pricing and approval of quotes as part of a defined workflow within a single application. This Use Case is limited to business processes in support of Sales Reps, for no more than three years of historical data, and data submission is limited to data required for the good execution of the use case. A “Sales Rep” is a quota-carrying sales representative, including direct, indirect, field and inside sales staff and leadership.&quot;</formula>
        <name>CLDY - Set Deal Desk Description</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Financial_Consolidation_Descr</fullName>
        <field>Quote_Output_Use_Case_Description__c</field>
        <formula>&quot;Consolidate financial data across departments, divisions, business units, subsidiaries and other affiliated entities in support of the preparation of quarterly and year-end financial statements pursuant to obligations under applicable accounting standards (such as GAAP and IFRS) and for quarterly and year-end management reporting.&quot;</formula>
        <name>CLDY - Set Financial Consolidation Descr</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Operational_Finance_Descr</fullName>
        <field>Quote_Output_Use_Case_Description__c</field>
        <formula>&quot;Set operational budgets and revenue forecasts based on plans and drivers. Forecast revenue, costs and profit across any organizational or market component; for example: cost centers, business units, legal entities, locations, accounts, customers, channels, etc. Do scenario modeling on business opportunities to identify impact on financial results. Collect and share operational metrics for any organizational level; for example: team, department, business unit level, etc.  &quot;</formula>
        <name>CLDY - Set Operational Finance Descr</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Planning_Budgeting_Descr</fullName>
        <field>Quote_Output_Use_Case_Description__c</field>
        <formula>&quot;Set budgets and revenue forecasts based on  plans and drivers. Forecast revenue, costs and profit across any organizational or market component; for example:  cost centers, business units, legal entities, locations, accounts, customers, channels, etc. Do scenario modeling on business opportunities to identify impact on financial results. &quot;</formula>
        <name>CLDY - Set Planning Budgeting Descr</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Subscription_End_Date</fullName>
        <field>SBQQ__EndDate__c</field>
        <formula>SBQQ__StartDate__c +  (365 * SBQQ__SubscriptionTerm__c / 12)</formula>
        <name>CLDY - Set Subscription End Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Territory_Quota_Planning</fullName>
        <field>Quote_Output_Use_Case_Description__c</field>
        <formula>&quot;Segment accounts and carve territories for assignment to Sales Reps, then set applicable targets and quotas based on assignments.  This Use Case is limited to business processes in support of Sales Reps, for no more than three years of historical data, and data submission is limited to data required for the good execution of the Use Case. A “Sales Rep” is a quota-carrying sales representative, including direct, indirect, field and inside sales staff and leadership.&quot;</formula>
        <name>CLDY - Set Territory &amp; Quota Planning</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Use_Case_Description_Capaci</fullName>
        <field>Use_Case_Description__c</field>
        <formula>&quot;Align sales organization staffing needs with HR business partner assignments. Directly tie staffing needs to targets and GTM strategies.Mange effects of rep attrition in real time. This Use Case is limited to business processes in support of Sales Reps, for no more than three years of historical data, and data submission is limited to data required for the good execution of the Use Case. A “Sales Rep” is a quota-carrying sales representative, including direct, indirect, field and inside sales staff and leadership.&quot;</formula>
        <name>CLDY - Set Use Case Description - Capaci</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Use_Case_Description_Commis</fullName>
        <field>Use_Case_Description__c</field>
        <formula>&quot;Calculate &amp; model sales commissions and credits. This Use Case is limited to business processes in support of Sales Reps, for no more than three years of historical data, and data submission is limited to data required for the good execution of the Use Case. A “Sales Rep” is a quota-carrying sales representative, including direct, indirect, field and inside sales staff and leadership.&quot;</formula>
        <name>CLDY - Set Use Case Description - Commis</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Use_Case_Description_FP_A</fullName>
        <field>Use_Case_Description__c</field>
        <formula>&quot;Financial planning, budgeting, forecasting and analysis at the department, business unit and corporate entity levels, including subsidiaries and affiliates. Consolidation of company financial data across subsidiaries and affiliates in support of the preparation of quarterly and year-end financial statements pursuant to obligations under applicable accounting standards (such as GAAP and IFRS) and for quarterly and year-end management reporting.&quot;</formula>
        <name>CLDY - Set Use Case Description - FP&amp;A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Use_Case_Description_FP_A_New</fullName>
        <field>Quote_Output_Use_Case_Description__c</field>
        <formula>&quot;Financial planning, budgeting, forecasting and analysis at the department, business unit and corporate entity levels, including subsidiaries and affiliates. Consolidation of company financial data across subsidiaries and affiliates in support of the preparation of quarterly and year-end financial statements pursuant to obligations under applicable accounting standards (such as GAAP and IFRS) and for quarterly and year-end management reporting.&quot;</formula>
        <name>CLDY - Set Use Case Description - FP&amp;A</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Use_Case_Description_Financ</fullName>
        <field>Use_Case_Description__c</field>
        <formula>&quot;Consolidate financial data across departments, divisions, business units, subsidiaries and other affiliated entities in support of the preparation of quarterly and year-end financial statements pursuant to obligations under applicable accounting standards (such as GAAP and IFRS) and for quarterly and year-end management reporting.&quot;</formula>
        <name>CLDY - Set Use Case Description - Financ</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Use_Case_Description_Other</fullName>
        <field>Quote_Output_Use_Case_Description__c</field>
        <formula>Use_Case_Description__c</formula>
        <name>CLDY - Set Use Case Description - Other</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Use_Case_Description_Platfo</fullName>
        <field>Quote_Output_Use_Case_Description__c</field>
        <formula>&quot;Use of the Service in connection with any Client business process.&quot;</formula>
        <name>CLDY - Set Use Case Description - Platfo</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Use_Case_Description_SPM</fullName>
        <field>Quote_Output_Use_Case_Description__c</field>
        <formula>&quot;Align account groupings with corporate objectives. Segment accounts into strategic groupings based on account data. Score  each account with a priority value to help prioritize initiatives and improve territory planning. Model various scenarios / score types to determine best segements and scores.  Segment accounts and carve territories for assignment to Sales Reps, then set applicable targets and quotas based on assignments. Bring pipeline data into Anaplan from a CRM or other tool and analyze the data to track deal plans against model sales, commissions expenses, and other KPIs. Align sales organization staffing needs with HR business partner assignments. Directly tie staffing needs to targets and GTM strategies.Mange effects of rep attrition in real time.Manage commission credit rules, review Sales Rep attainment, compare attainment to targets, and determine commissions due to individual Sales Reps.  Calculate &amp; model slales commissions and credits.  Operate a deal desk for validation, pricing and approval of quotes as part of a defined workflow within a single application.  This Use Case is limited to business processes in support of Sales Reps, for no more than three years of historical data, and data submission is limited to data required for the good execution of the Use Case. A “Sales Rep” is a quota-carrying sales representative, including direct, indirect, field and inside sales staff and leadership.&quot;</formula>
        <name>CLDY - Set Use Case Description - SPM</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Use_Case_Description_Sales</fullName>
        <field>Quote_Output_Use_Case_Description__c</field>
        <formula>&quot;Bring pipeline data into Anaplan from a CRM or other tool and analyze the data to track deal plans against model sales, commissions expenses, and other KPIs. This Use Case is limited to business processes in support of Sales Reps, for no more than three years of historical data, and data submission is limited to data required for the good execution of the Use Case. A “Sales Rep” is a quota-carrying sales representative, including direct, indirect, field and inside sales staff and leadership.&quot;</formula>
        <name>CLDY - Set Use Case Description - Sales</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Lock_Quote</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Locked_Quote</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Lock Quote</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Use_Case_Description_Territory_and</fullName>
        <field>Use_Case_Description__c</field>
        <formula>&quot;Segment accounts and carve territories for assignment to Sales Reps, then set applicable targets and quotas based on assignments.  This Use Case is limited to business processes in support of Sales Reps, for no more than three years of historical data, and data submission is limited to data required for the good execution of the Use Case. A “Sales Rep” is a quota-carrying sales representative, including direct, indirect, field and inside sales staff and leadership.&quot;</formula>
        <name>Set Use Case Description - Territory and</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Unlock_Quote</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Unlocked_Quote</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Unlock Quote</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>CLDY - Approved Quote</fullName>
        <actions>
            <name>CLDY_Approved_Quote</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.ApprovalStatus__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Default Subscription Term</fullName>
        <actions>
            <name>CLDY_Default_Subscription_Term</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.SBQQ__SubscriptionTerm__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Lock Quote</fullName>
        <actions>
            <name>Lock_Quote</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.ApprovalStatus__c</field>
            <operation>equals</operation>
            <value>Pending</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Anaplan Entity</fullName>
        <actions>
            <name>CLDY_Set_Anaplan_Entity</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>CLDY_Set_Anaplan_Entity_Address_Line1</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>CLDY_Set_Anaplan_Entity_Address_Line2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>CLDY_Set_Anaplan_Entity_Country</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>CLDY_Set_Anaplan_Entity_Email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>1 = 1</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Subscription End Date</fullName>
        <actions>
            <name>CLDY_Set_Calculated_End_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR ( ISNEW(), ISCHANGED( SBQQ__StartDate__c ), 
ISCHANGED( SBQQ__SubscriptionTerm__c ),
ISCHANGED(  SBQQ__EndDate__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Use Case Description - Capacity Planning</fullName>
        <actions>
            <name>CLDY_Set_Capacity_Planning_Description</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.Use_Case__c</field>
            <operation>equals</operation>
            <value>Capacity Planning</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Use Case Description - Commissions Crediting %26 Modeling</fullName>
        <actions>
            <name>CLDY_Set_CC_Modeling_Description</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.Use_Case__c</field>
            <operation>equals</operation>
            <value>Commissions Crediting &amp; Modeling</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Use Case Description - Deal Desk</fullName>
        <actions>
            <name>CLDY_Set_Deal_Desk_Description</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.Use_Case__c</field>
            <operation>equals</operation>
            <value>Deal Desk</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Use Case Description - FP%26A</fullName>
        <actions>
            <name>CLDY_Set_Use_Case_Description_FP_A_New</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.Use_Case__c</field>
            <operation>equals</operation>
            <value>FP&amp;A</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Use Case Description - Financial Consolidation</fullName>
        <actions>
            <name>CLDY_Set_Financial_Consolidation_Descr</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.Use_Case__c</field>
            <operation>equals</operation>
            <value>Financial Consolidation</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Use Case Description - Operational Finance</fullName>
        <actions>
            <name>CLDY_Set_Operational_Finance_Descr</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.Use_Case__c</field>
            <operation>equals</operation>
            <value>Operational Finance</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Use Case Description - Other</fullName>
        <actions>
            <name>CLDY_Set_Use_Case_Description_Other</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.Use_Case__c</field>
            <operation>equals</operation>
            <value>Other</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Use Case Description - Planning Budgeting Forecasting</fullName>
        <actions>
            <name>CLDY_Set_Planning_Budgeting_Descr</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.Use_Case__c</field>
            <operation>equals</operation>
            <value>Planning Budgeting Forecasting</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Use Case Description - Platform</fullName>
        <actions>
            <name>CLDY_Set_Use_Case_Description_Platfo</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.Use_Case__c</field>
            <operation>equals</operation>
            <value>Platform</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Use Case Description - SPM</fullName>
        <actions>
            <name>CLDY_Set_Use_Case_Description_SPM</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.Use_Case__c</field>
            <operation>equals</operation>
            <value>SPM Bundle</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Use Case Description - Sales Forecasting</fullName>
        <actions>
            <name>CLDY_Set_Use_Case_Description_Sales</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.Use_Case__c</field>
            <operation>equals</operation>
            <value>Sales Forecasting</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Use Case Description - Territory and Quota</fullName>
        <actions>
            <name>CLDY_Set_Territory_Quota_Planning</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.Use_Case__c</field>
            <operation>equals</operation>
            <value>Territory and Quota</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Unlock Quote</fullName>
        <actions>
            <name>Unlock_Quote</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.ApprovalStatus__c</field>
            <operation>equals</operation>
            <value>Rejected,Recalled</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
