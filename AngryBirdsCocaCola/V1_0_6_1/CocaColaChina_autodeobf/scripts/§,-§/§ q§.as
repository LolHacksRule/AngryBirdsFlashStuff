package §,-§
{
   import § y§.b2Body;
   import §<!!§.§-"§;
   
   public class § q§
   {
      
      public static const §+R§:int = 0;
      
      public static const §-2§:int = b2Body.b2_staticBody;
      
      public static const §>!E§:int = b2Body.b2_kinematicBody;
      
      public static const §'!+§:int = b2Body.b2_dynamicBody;
      
      public static const §+!$§:int = 1;
      
      public static const §#!,§:int = 2;
      
      public static const §1!7§:int = 3;
      
      public static const §,!,§:int = 4;
      
      public static const §^!Q§:int = 5;
      
      public static const §6G§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var § O§:Array;
      
      public var §,!O§:Array;
      
      public function § q§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§+R§] = this.§8B§(param2);
         this.mValues[§+!$§] = param3;
         this.mValues[§#!,§] = param4;
         this.mValues[§1!7§] = param5;
         this.mValues[§,!,§] = param6;
         this.mValues[§^!Q§] = param7;
         this.mValues[§6G§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §8B§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §>!E§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §-2§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §'!+§;
         }
         §-"§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §-2§;
      }
      
      public function §?2§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§ O§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§ O§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §,! §(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§,!O§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§,!O§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §6p§(param1:String) : Number
      {
         if(!this.§ O§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§ O§[param1])
         {
            return this.§ O§[param1];
         }
         return 1;
      }
      
      public function §]w§(param1:String) : Number
      {
         if(!this.§,!O§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§,!O§[param1])
         {
            return this.§,!O§[param1];
         }
         return 1;
      }
   }
}
