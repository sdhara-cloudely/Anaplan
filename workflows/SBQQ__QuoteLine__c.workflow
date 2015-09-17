<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>CLDY_Set_Additional_Capacity</fullName>
        <field>Additional_Capacity_GB__c</field>
        <formula>IF (  SBQQ__SegmentIndex__c = 1 &amp;&amp;    CONTAINS(SBQQ__ProductName__c, &apos;Workspace&apos;) ,  
SBQQ__Quantity__c * 5, 
IF (  ISBLANK(SBQQ__SegmentIndex__c) &amp;&amp;    CONTAINS(SBQQ__ProductName__c, &apos;Workspace&apos;),
SBQQ__Quantity__c * 5 /  CEILING( Calculated_Subscription_Term__c /12 ), 0 ))</formula>
        <name>CLDY - Set Additional Capacity</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Annual_Discounted_Total</fullName>
        <field>Annual_Discounted_List_Price__c</field>
        <formula>SBQQ__Quantity__c *  Displayed_Regular_Unit_Price__c</formula>
        <name>CLDY - Set Annual Discounted Total</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Annual_List_Total</fullName>
        <field>Annual_List_Price__c</field>
        <formula>SBQQ__ListPrice__c *  SBQQ__Quantity__c</formula>
        <name>CLDY - Set Annual List Total</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Annual_Net_Total</fullName>
        <field>Annual_Net_Price__c</field>
        <formula>SBQQ__Quantity__c * Displayed_Net_Unit_Price__c</formula>
        <name>CLDY - Set Annual Net Total</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Net_ACV</fullName>
        <field>Net_Unit_Price_ACV_Rollup__c</field>
        <formula>/*IF ( ISBLANK(Calculated_Subscription_Term__c) || ISBLANK(Calculated_Subscription_Term__c), 0,
( SBQQ__Quantity__c * SBQQ__NetPrice__c * SBQQ__DefaultSubscriptionTerm__c) / 
(  Calculated_Subscription_Term__c ))*/

SBQQ__Quantity__c * Displayed_Net_Unit_Price__c</formula>
        <name>CLDY - Set Net ACV</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Product_Family</fullName>
        <field>Product_Family_Rollup__c</field>
        <formula>IF (TEXT(SBQQ__Product__r.Family) = &apos;Services&apos; ||
TEXT(SBQQ__Product__r.Family) = &apos;Training&apos;,
&apos;Services&apos;,
TEXT(SBQQ__Product__r.Family))</formula>
        <name>CLDY - Set Product Family</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Product_Name</fullName>
        <field>Product_Name_Rollup__c</field>
        <formula>SBQQ__ProductName__c</formula>
        <name>CLDY - Set Product Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Services_Amount</fullName>
        <field>Net_Services_Amount__c</field>
        <formula>IF ( Is_Subscription__c = &apos;Yes&apos;,  SBQQ__NetTotal__c , 0)</formula>
        <name>CLDY - Set Services Amount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CLDY_Set_Subscription_Amount</fullName>
        <field>Net_Subscription_Total__c</field>
        <formula>IF ( Is_Subscription__c = &apos;Yes&apos;, SBQQ__NetTotal__c, 0 )</formula>
        <name>CLDY - Set Subscription Amount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>CLDY - Set Additional Capacity</fullName>
        <actions>
            <name>CLDY_Set_Additional_Capacity</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>1 = 1</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Annual Totals</fullName>
        <actions>
            <name>CLDY_Set_Annual_Discounted_Total</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>CLDY_Set_Annual_List_Total</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>CLDY_Set_Annual_Net_Total</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>1 = 1</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Net ACV</fullName>
        <actions>
            <name>CLDY_Set_Net_ACV</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>1 = 1</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Product Family</fullName>
        <actions>
            <name>CLDY_Set_Product_Family</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>1=1</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Product Family %26 Product Name</fullName>
        <actions>
            <name>CLDY_Set_Product_Family</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>CLDY_Set_Product_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>1=1</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Product Name</fullName>
        <actions>
            <name>CLDY_Set_Product_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>1=1</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Services Amount</fullName>
        <actions>
            <name>CLDY_Set_Services_Amount</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>1 = 1</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>CLDY - Set Subscription Amount</fullName>
        <actions>
            <name>CLDY_Set_Subscription_Amount</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>1 = 1</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
