SELECT Property.Id 'Property ID' , Property.Name 'Property Name'  , OwnerProperty.OwnerId 'Owner ID', 
 TenantProperty.TenantId, TenantProperty.PaymentFrequencyId,TargetRentType.Name 'Payment Type', PropertyFinance.CurrentHomeValue
	FROM Property
	INNER JOIN OwnerProperty
	ON Property.id = OwnerProperty.PropertyId
	INNER JOIN PropertyHomeValue
	ON OwnerProperty.PropertyId = PropertyHomeValue.PropertyId
	INNER JOIN TenantProperty 
	ON Property.Id = TenantProperty.PropertyId
	INNER JOIN  TargetRentType 
	ON TenantProperty.PaymentFrequencyId = TargetRentType.Id
	inner join PropertyFinance
	on PropertyFinance.PropertyId=property.Id
    WHERE OwnerProperty.OwnerId = 1426 AND PropertyHomeValue.IsActive = 1
