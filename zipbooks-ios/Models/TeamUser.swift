//
//  User.swift
//  zipbooks-ios
//
//  Created by Francesco Pretelli on 11/01/16.
//  Copyright © 2016 Francesco Pretelli. All rights reserved.
//

import RealmSwift
import ObjectMapper

import Foundation

class TeamUser: Object,Mappable {
    dynamic var id: Int = 0
    dynamic var email: String?
    dynamic var first_name: String?
	dynamic var second_login_at: String?
	dynamic var last_name: String?
	dynamic var plural: String?
	dynamic var onboard_credit_cards: String?
	dynamic var settings: String?
	dynamic var singular: String?
	dynamic var provider_id: String?
	dynamic var updated_at: String?
	dynamic var account_id: Int = 0
	dynamic var onboard_hours: String?
	dynamic var archived_at: String?
	dynamic var onboard_finished: String?
	dynamic var created_at: String?
	dynamic var pivot: Pivot?
	dynamic var onboard_expenses: String?
	dynamic var provider: String?
	dynamic var onboard_tasks: String?
	dynamic var onboard_account: String?
	dynamic var avatar: String?
	dynamic var deleted_at: String?
	dynamic var hourly_rate: String?
	dynamic var onboard_invoices: String?
	dynamic var onboard_projects: String?
	dynamic var onboard_customers: String?
	dynamic var onboard_users: String?

    override static func primaryKey() -> String? {
        return "id"
    }
    
	// MARK: Mappable
	required convenience init?(map: Map) {
		self.init()
	}

    func mapping(map: Map) {
        id <- map["id"]
        first_name <- map["first_name"]
        email <- map["email"]
		second_login_at <- map["second_login_at"]
		last_name <- map["last_name"]
		plural <- map["plural"]
		onboard_credit_cards <- map["onboard_credit_cards"]
		settings <- map["settings"]
		singular <- map["singular"]
		provider_id <- map["provider_id"]
		updated_at <- map["updated_at"]
		account_id <- map["account_id"]
		onboard_hours <- map["onboard_hours"]
		archived_at <- map["archived_at"]
		onboard_finished <- map["onboard_finished"]
		created_at <- map["created_at"]
		pivot <- map["pivot"]
		onboard_expenses <- map["onboard_expenses"]
		provider <- map["provider"]
		onboard_tasks <- map["onboard_tasks"]
		onboard_account <- map["onboard_account"]
		avatar <- map["avatar"]
		deleted_at <- map["deleted_at"]
		hourly_rate <- map["hourly_rate"]
		onboard_invoices <- map["onboard_invoices"]
		onboard_projects <- map["onboard_projects"]
		onboard_customers <- map["onboard_customers"]
		onboard_users <- map["onboard_users"]
	}
}

class Pivot: Object,Mappable {
    dynamic var user_id: Int = 0
    dynamic var project_id: Int = 0
    
    // MARK: Mappable
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        user_id <- map["user_id"]
        project_id <- map["project_id"]
    }
}
