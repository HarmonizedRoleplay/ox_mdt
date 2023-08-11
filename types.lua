---@class ProfileCard
---@field firstName string
---@field lastName string
---@field dob number
---@field stateId number | string
---@field image? string

---@class Profile : ProfileCard
---@field stateId number | string
---@field notes? string
---@field licenses? table<{ label: string, points: number } | string>
---@field vehicles? { label: string, plate: string }
---@field pastCharges? { label: string, count: number }[]
---@field relatedReports? { title: string, author: string, date: string, id: number }[]

---@class Officer
---@field firstName string
---@field lastName string
---@field callSign? number
---@field stateId string

---@class CriminalProfile : ProfileCard

---@class Criminal : CriminalProfile
---@field charges SelectedCharge[]
---@field issueWarrant boolean
---@field pleadedGuilty? boolean
---@field processed? boolean
---@field warrantExpiry? string
---@field penalty { time: number, fine: number, points: number, reduction?: number }

---@class Charge
---@field label string
---@field type 'misdemeanour' | 'felony' | 'infraction'
---@field description string
---@field penalty { time: number, fine: number, points: number }

---@class SelectedCharge
---@field label string
---@field count number
---@field penalty { time: number, fine: number, points: number }

---@class Report
---@field title string
---@field id number
---@field description? string
---@field officersInvolved { name: string, callSign: string }
---@field evidence table<Evidence>
---@field criminals Criminal[]

---@class ReportCard
---@field title string
---@field author string
---@field date string
---@field id number

---@class Evidence
---@field type 'image' | 'item'
---@field label string
---@field value string

---@class Announcement : Officer
---@field id number
---@field contents string
---@field createdAt number
---@field image? string

---@alias UnitType
---| 'car'
---| 'motor'
---| 'heli'
---| 'boat'

---@alias Unit { id: number, name: string, members: Officer[], type: UnitType }

---@class Units
---@field [number] Unit

---@class CallInfo
---@field time number
---@field location string
---@field plate? string
---@field vehicle? string

---@class Call
---@field id number
---@field offense string
---@field code string
---@field completed boolean
---@field coords { [1]: number, [2]: number }
---@field blip number
---@field units Units
---@field info { time: number, location: string, plate?: string, vehicle?: string }

---@class Calls
---@field [number] Call

---@class CallDataInfo
---@field plate? string
---@field vehicle? string

---@class CallData
---@field offense string
---@field code string
---@field coords table
---@field info CallDataInfo
---@field blip number