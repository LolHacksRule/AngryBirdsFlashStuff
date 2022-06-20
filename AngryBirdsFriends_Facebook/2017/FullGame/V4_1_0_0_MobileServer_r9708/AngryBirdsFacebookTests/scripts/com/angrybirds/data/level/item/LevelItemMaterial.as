package com.angrybirds.data.level.item
{
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.utils.HashMap;
   
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
      
      public function LevelItemMaterial(name:String, bodyType:int, density:Number, friction:Number, restitution:Number, strength:Number, defence:Number, colors:Number)
      {
         super();
         this.mName = name.toUpperCase();
         this.mBodyType = bodyType;
         this.mDensity = density;
         this.mFriction = friction;
         this.mRestitution = restitution;
         this.mStrength = strength;
         this.mDefence = defence;
         this.mColors = colors;
      }
      
      public static function getBodyTypeFromString(type:String) : int
      {
         switch(type.toLowerCase())
         {
            case "kinetic":
               return BODY_TYPE_KINETIC;
            case "static":
               return BODY_TYPE_STATIC;
            case "dynamic":
               return BODY_TYPE_DYNAMIC;
            default:
               throw new Error("Invalid body type \'" + type + "\'. Expected \'kinetic\', \'static\' or \'dynamic\'.");
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
      
      public function setDamageMultipliersFromXML(list:XML) : void
      {
         var materialName:String = null;
         var value:Number = NaN;
         if(this.mDamageMultipliers)
         {
            return;
         }
         this.mDamageMultipliers = new HashMap();
         for(var i:int = 0; i < list.attributes().length(); i++)
         {
            materialName = list.attributes()[i].name();
            value = list.attributes()[i];
            this.setDamageMultiplier(materialName,value);
         }
      }
      
      public function setDamageMultiplier(materialName:String, value:Number) : void
      {
         if(this.mDamageMultipliers == null)
         {
            this.mDamageMultipliers = new HashMap();
         }
         materialName = materialName.toUpperCase();
         if(this.mDamageMultipliers[materialName] == null)
         {
            this.mDamageMultipliers[materialName] = value;
         }
      }
      
      public function setVelocityMultipliersFromXML(list:XML) : void
      {
         var materialName:String = null;
         var value:Number = NaN;
         if(this.mVelocityMultipliers)
         {
            return;
         }
         this.mVelocityMultipliers = new HashMap();
         for(var i:int = 0; i < list.attributes().length(); i++)
         {
            materialName = list.attributes()[i].name();
            value = list.attributes()[i];
            this.setVelocityMultiplier(materialName,value);
         }
      }
      
      public function setVelocityMultiplier(materialName:String, value:Number) : void
      {
         if(this.mVelocityMultipliers == null)
         {
            this.mVelocityMultipliers = new HashMap();
         }
         materialName = materialName.toUpperCase();
         if(this.mVelocityMultipliers[materialName] == null)
         {
            this.mVelocityMultipliers[materialName] = value;
         }
      }
      
      public function getDamageMultiplier(targetMaterialName:String) : Number
      {
         if(this.mDamageMultipliers && this.mDamageMultipliers[targetMaterialName])
         {
            return this.mDamageMultipliers[targetMaterialName];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(targetMaterialName:String) : Number
      {
         if(this.mVelocityMultipliers && this.mVelocityMultipliers[targetMaterialName])
         {
            return this.mVelocityMultipliers[targetMaterialName];
         }
         return 1;
      }
      
      public function isStatic() : Boolean
      {
         return this.mBodyType == LevelItemMaterial.BODY_TYPE_STATIC;
      }
   }
}
