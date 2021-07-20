package com.angrybirds.data.level.item
{
   import com.rovio.utils.HashMap;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class LevelItemMaterial
   {
      
      public static const BODY_TYPE_STATIC:int = b2Body.b2_staticBody;
      
      public static const BODY_TYPE_KINETIC:int = b2Body.b2_kinematicBody;
      
      public static const BODY_TYPE_DYNAMIC:int = b2Body.b2_dynamicBody;
       
      
      protected var mName:String;
      
      protected var mBodyType:int;
      
      protected var mDensity:Number;
      
      protected var mFriction:Number;
      
      protected var mRestitution:Number;
      
      protected var mStrength:Number;
      
      protected var mDefence:Number;
      
      protected var mColors:Number;
      
      protected var mDamageMultipliers:HashMap;
      
      protected var mVelocityMultipliers:HashMap;
      
      public function LevelItemMaterial(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1.toUpperCase();
         this.mBodyType = param2;
         this.mDensity = param3;
         this.mFriction = param4;
         this.mRestitution = param5;
         this.mStrength = param6;
         this.mDefence = param7;
         this.mColors = param8;
      }
      
      public static function getBodyTypeFromString(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return BODY_TYPE_KINETIC;
            case "static":
               return BODY_TYPE_STATIC;
            case "dynamic":
               return BODY_TYPE_DYNAMIC;
            default:
               throw new Error("Invalid body type \'" + param1 + "\'. Expected \'kinetic\', \'static\' or \'dynamic\'.");
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get bodyType() : int
      {
         return this.mBodyType;
      }
      
      public function get density() : Number
      {
         return this.mDensity;
      }
      
      public function get friction() : Number
      {
         return this.mFriction;
      }
      
      public function get restitution() : Number
      {
         return this.mRestitution;
      }
      
      public function get strength() : Number
      {
         return this.mStrength;
      }
      
      public function get defence() : Number
      {
         return this.mDefence;
      }
      
      public function get colors() : Number
      {
         return this.mColors;
      }
      
      public function setDamageMultipliersFromXML(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.mDamageMultipliers)
         {
            return;
         }
         this.mDamageMultipliers = new HashMap();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.setDamageMultiplier(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function setDamageMultiplier(param1:String, param2:Number) : void
      {
         if(this.mDamageMultipliers == null)
         {
            this.mDamageMultipliers = new HashMap();
         }
         param1 = param1.toUpperCase();
         if(this.mDamageMultipliers[param1] == null)
         {
            this.mDamageMultipliers[param1] = param2;
         }
      }
      
      public function setVelocityMultipliersFromXML(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.mVelocityMultipliers)
         {
            return;
         }
         this.mVelocityMultipliers = new HashMap();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.setVelocityMultiplier(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function setVelocityMultiplier(param1:String, param2:Number) : void
      {
         if(this.mVelocityMultipliers == null)
         {
            this.mVelocityMultipliers = new HashMap();
         }
         param1 = param1.toUpperCase();
         if(this.mVelocityMultipliers[param1] == null)
         {
            this.mVelocityMultipliers[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.mDamageMultipliers && this.mDamageMultipliers[param1])
         {
            return this.mDamageMultipliers[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.mVelocityMultipliers && this.mVelocityMultipliers[param1])
         {
            return this.mVelocityMultipliers[param1];
         }
         return 1;
      }
      
      public function isStatic() : Boolean
      {
         return this.mBodyType == LevelItemMaterial.BODY_TYPE_STATIC;
      }
   }
}
