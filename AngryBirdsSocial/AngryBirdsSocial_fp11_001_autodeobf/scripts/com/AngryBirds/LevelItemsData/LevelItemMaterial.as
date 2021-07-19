package com.AngryBirds.LevelItemsData
{
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.factory.Log;
   
   public class LevelItemMaterial
   {
      
      public static const BODY_TYPE:int = 0;
      
      public static const BODY_TYPE_STATIC:int = b2Body.b2_staticBody;
      
      public static const BODY_TYPE_KINETIC:int = b2Body.b2_kinematicBody;
      
      public static const BODY_TYPE_DYNAMIC:int = b2Body.b2_dynamicBody;
      
      public static const DENSITY:int = 1;
      
      public static const FRICTION:int = 2;
      
      public static const RESTITUTION:int = 3;
      
      public static const STRENGHT:int = 4;
      
      public static const DEFENCE:int = 5;
      
      public static const COLORS:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var mDamageMultipliers:Array;
      
      public var mVelocityMultipliers:Array;
      
      public function LevelItemMaterial(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[BODY_TYPE] = this.getBodyTypeFromString(param2);
         this.mValues[DENSITY] = param3;
         this.mValues[FRICTION] = param4;
         this.mValues[RESTITUTION] = param5;
         this.mValues[STRENGHT] = param6;
         this.mValues[DEFENCE] = param7;
         this.mValues[COLORS] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function getBodyTypeFromString(param1:String) : int
      {
         if(param1 == "kinetic")
         {
            return BODY_TYPE_KINETIC;
         }
         if(param1 == "static")
         {
            return BODY_TYPE_STATIC;
         }
         if(param1 == "dynamic")
         {
            return BODY_TYPE_DYNAMIC;
         }
         Log.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return BODY_TYPE_STATIC;
      }
      
      public function setDamageMultipliers(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.mDamageMultipliers = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.mDamageMultipliers[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function setVelocityMultipliers(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.mVelocityMultipliers = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.mVelocityMultipliers[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function getDamagaMultiplier(param1:String) : Number
      {
         if(!this.mDamageMultipliers)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.mDamageMultipliers[param1])
         {
            return this.mDamageMultipliers[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(!this.mVelocityMultipliers)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.mVelocityMultipliers[param1])
         {
            return this.mVelocityMultipliers[param1];
         }
         return 1;
      }
   }
}
