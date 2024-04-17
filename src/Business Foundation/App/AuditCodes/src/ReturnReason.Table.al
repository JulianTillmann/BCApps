﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace Microsoft.Foundation.AuditCodes;

table 6635 "Return Reason"
{
    Caption = 'Return Reason';
    DataClassification = CustomerContent;
    MovedFrom = '437dbf0e-84ff-417a-965d-ed2bb9650972';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; "Default Location Code"; Code[10])
        {
            Caption = 'Default Location Code';
            ObsoleteReason = 'The Audit Codes module cannot reference the Inventory Management feature.';
            ObsoleteState = Moved;
            ObsoleteTag = '25.0';
            MovedTo = '437dbf0e-84ff-417a-965d-ed2bb9650972';
        }
        field(4; "Inventory Value Zero"; Boolean)
        {
            Caption = 'Inventory Value Zero';
            ObsoleteReason = 'The Audit Codes module cannot reference the Inventory Management feature.';
            ObsoleteState = Moved;
            ObsoleteTag = '25.0';
            MovedTo = '437dbf0e-84ff-417a-965d-ed2bb9650972';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", Description)
        {
        }
    }
}
