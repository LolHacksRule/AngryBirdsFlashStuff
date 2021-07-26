package com.angrybirds.powerups
{
   import com.angrybirds.data.level.LevelModelFriends;
   import com.rovio.utils.HashMap;
   
   public class PowerupDefinition
   {
       
      
      private var mPrettyName:String;
      
      private var mHideWhenPigsAreDead:Boolean;
      
      private var mIdentifier:String;
      
      private var mButtonName:String;
      
      private var mEventName:String;
      
      private var mSubscriptionNames:Array;
      
      private var mDescription:String;
      
      private var mSubscriptionDescription:String;
      
      private var mPowerupDamageMultiplier:HashMap;
      
      private var mPowerupVelocityMultiplier:HashMap;
      
      public function PowerupDefinition(id:String, printableName:String, buttonNameString:String, eventNameString:String, subscriptionNames:Array = null, description:String = "", subscriptionDescription:String = "", hideWhenPigsAreDead:Boolean = true)
      {
         super();
         this.mIdentifier = id;
         this.mHideWhenPigsAreDead = hideWhenPigsAreDead;
         this.mPrettyName = printableName;
         this.mButtonName = buttonNameString;
         this.mEventName = eventNameString;
         this.mSubscriptionNames = subscriptionNames;
         this.mDescription = description;
         this.mSubscriptionDescription = subscriptionDescription;
      }
      
      public function get prettyName() : String
      {
         return this.mPrettyName;
      }
      
      public function get hideWhenPigsAreDead() : Boolean
      {
         return this.mHideWhenPigsAreDead;
      }
      
      public function get identifier() : String
      {
         return this.mIdentifier;
      }
      
      public function get buttonName() : String
      {
         return this.mButtonName;
      }
      
      public function get eventName() : String
      {
         return this.mEventName;
      }
      
      public function get subscriptionNames() : Array
      {
         if(this.mSubscriptionNames != null)
         {
            return this.mSubscriptionNames.concat();
         }
         return null;
      }
      
      public function get description() : String
      {
         return this.mDescription;
      }
      
      public function get subscriptionDescription() : String
      {
         return this.mSubscriptionDescription;
      }
      
      public function getPowerupDamageMultiplier(birdId:String) : Object
      {
         if(this.mPowerupDamageMultiplier)
         {
            return this.mPowerupDamageMultiplier[birdId];
         }
         return null;
      }
      
      public function setPowerupDamageMultiplier(data:XML) : void
      {
         if(!this.mPowerupDamageMultiplier)
         {
            this.mPowerupDamageMultiplier = new HashMap();
         }
         this.mPowerupDamageMultiplier[data.@id] = this.parsePowerupMultiplier(data);
      }
      
      public function getPowerupVelocityMultiplier(birdId:String) : Object
      {
         if(this.mPowerupVelocityMultiplier)
         {
            return this.mPowerupVelocityMultiplier[birdId];
         }
         return null;
      }
      
      public function setPowerupVelocityMultiplier(data:XML) : void
      {
         if(!this.mPowerupVelocityMultiplier)
         {
            this.mPowerupVelocityMultiplier = new HashMap();
         }
         this.mPowerupVelocityMultiplier[data.@id] = this.parsePowerupMultiplier(data);
      }
      
      private function parsePowerupMultiplier(data:XML) : Object
      {
         var attr:XML = null;
         var multiplierObject:Object = new Object();
         for each(attr in data.attributes())
         {
            if(attr.name() != "id")
            {
               if(attr.name() == "piglette")
               {
                  multiplierObject["MATERIAL_PIG_BASIC_SMALL"] = attr.valueOf();
                  multiplierObject["MATERIAL_PIG_BASIC_MEDIUM"] = attr.valueOf();
                  multiplierObject["MATERIAL_PIG_BASIC_BIG"] = attr.valueOf();
                  multiplierObject["MATERIAL_PIG_BASIC_KING"] = attr.valueOf();
                  multiplierObject["MATERIAL_PIG_BASIC_MUSTACHE"] = attr.valueOf();
                  multiplierObject["MATERIAL_PIG_BASIC_HELMET"] = attr.valueOf();
               }
               else
               {
                  multiplierObject[LevelModelFriends.convertMobileNameToWebName(attr.name())] = attr.valueOf();
               }
            }
         }
         return multiplierObject;
      }
   }
}
