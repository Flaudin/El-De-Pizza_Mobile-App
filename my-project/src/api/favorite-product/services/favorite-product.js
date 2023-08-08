'use strict';

/**
 * favorite-product service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::favorite-product.favorite-product');
