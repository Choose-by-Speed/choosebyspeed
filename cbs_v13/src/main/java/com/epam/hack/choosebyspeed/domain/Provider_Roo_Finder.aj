// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.epam.hack.choosebyspeed.domain;

import com.epam.hack.choosebyspeed.domain.Category;
import com.epam.hack.choosebyspeed.domain.Provider;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Provider_Roo_Finder {
    
    public static Long Provider.countFindProvidersByCategory(Category category) {
        if (category == null) throw new IllegalArgumentException("The category argument is required");
        EntityManager em = Provider.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Provider AS o WHERE o.category = :category", Long.class);
        q.setParameter("category", category);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Provider> Provider.findProvidersByCategory(Category category) {
        if (category == null) throw new IllegalArgumentException("The category argument is required");
        EntityManager em = Provider.entityManager();
        TypedQuery<Provider> q = em.createQuery("SELECT o FROM Provider AS o WHERE o.category = :category", Provider.class);
        q.setParameter("category", category);
        return q;
    }
    
    public static TypedQuery<Provider> Provider.findProvidersByCategory(Category category, String sortFieldName, String sortOrder) {
        if (category == null) throw new IllegalArgumentException("The category argument is required");
        EntityManager em = Provider.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Provider AS o WHERE o.category = :category");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Provider> q = em.createQuery(queryBuilder.toString(), Provider.class);
        q.setParameter("category", category);
        return q;
    }
    
}
