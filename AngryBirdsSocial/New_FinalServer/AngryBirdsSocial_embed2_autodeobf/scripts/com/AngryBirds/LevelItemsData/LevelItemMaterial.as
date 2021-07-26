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
      
      public function LevelItemMaterial(aName:String, bodyType:String, density:Number, friction:Number, restitution:Number, strength:Number, defence:Number, colors:Number)
      {
         super();
         this.mName = aName;
         this.mValues = new Array();
         this.mValues[BODY_TYPE] = this.getBodyTypeFromString(bodyType);
         this.mValues[DENSITY] = density;
         this.mValues[FRICTION] = friction;
         this.mValues[RESTITUTION] = restitution;
         this.mValues[STRENGHT] = strength;
         this.mValues[DEFENCE] = defence;
         this.mValues[COLORS] = colors;
      }
      
      public function getValue(index:int) : *
      {
         return this.mValues[index];
      }
      
      private function getBodyTypeFromString(type:String) : int
      {
         if(type == "kinetic")
         {
            return BODY_TYPE_KINETIC;
         }
         if(type == "static")
         {
            return BODY_TYPE_STATIC;
         }
         if(type == "dynamic")
         {
            return BODY_TYPE_DYNAMIC;
         }
         Log.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + type);
         return BODY_TYPE_STATIC;
      }
      
      public function setDamageMultipliers(list:XML) : void
      {
         var materialName:String = null;
         var value:Number = NaN;
         this.mDamageMultipliers = new Array();
         for(var i:int = 0; i < list.attributes().length(); i++)
         {
            materialName = list.attributes()[i].name();
            value = list.attributes()[i];
            this.mDamageMultipliers[materialName.toUpperCase()] = value;
         }
      }
      
      public function setVelocityMultipliers(list:XML) : void
      {
         var materialName:String = null;
         var value:Number = NaN;
         this.mVelocityMultipliers = new Array();
         for(var i:int = 0; i < list.attributes().length(); i++)
         {
            materialName = list.attributes()[i].name();
            value = list.attributes()[i];
            this.mVelocityMultipliers[materialName.toUpperCase()] = value;
         }
      }
      
      public function getDamagaMultiplier(targetMaterialName:String) : Number
      {
         if(!this.mDamageMultipliers)
         {
            return 1;
         }
         targetMaterialName = targetMaterialName.toUpperCase();
         if(this.mDamageMultipliers[targetMaterialName])
         {
            return this.mDamageMultipliers[targetMaterialName];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(targetMaterialName:String) : Number
      {
         if(!this.mVelocityMultipliers)
         {
            return 1;
         }
         targetMaterialName = targetMaterialName.toUpperCase();
         if(this.mVelocityMultipliers[targetMaterialName])
         {
            return this.mVelocityMultipliers[targetMaterialName];
         }
         return 1;
      }
   }
}
