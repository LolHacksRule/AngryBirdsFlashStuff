package §`Y§
{
   import §%!$§.§[Z§;
   import §8!I§.b2Body;
   
   public class §^@§
   {
      
      public static const §>l§:int = 0;
      
      public static const §!!3§:int = b2Body.b2_staticBody;
      
      public static const §[m§:int = b2Body.b2_kinematicBody;
      
      public static const §@e§:int = b2Body.b2_dynamicBody;
      
      public static const §1!M§:int = 1;
      
      public static const § !R§:int = 2;
      
      public static const §-Q§:int = 3;
      
      public static const §4!P§:int = 4;
      
      public static const §>2§:int = 5;
      
      public static const §^!1§:int = 6;
       
      
      public var mName:String;
      
      public var §,!,§:Array;
      
      public var §,a§:Array;
      
      public var §9F§:Array;
      
      public function §^@§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§,!,§ = new Array();
         this.§,!,§[§>l§] = this.§!!1§(param2);
         this.§,!,§[§1!M§] = param3;
         this.§,!,§[§ !R§] = param4;
         this.§,!,§[§-Q§] = param5;
         this.§,!,§[§4!P§] = param6;
         this.§,!,§[§>2§] = param7;
         this.§,!,§[§^!1§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§,!,§[param1];
      }
      
      private function §!!1§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §[m§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §!!3§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §@e§;
         }
         §[Z§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §!!3§;
      }
      
      public function §6`§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§,a§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§,a§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §?B§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§9F§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§9F§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §#!M§(param1:String) : Number
      {
         if(!this.§,a§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§,a§[param1])
         {
            return this.§,a§[param1];
         }
         return 1;
      }
      
      public function §?!S§(param1:String) : Number
      {
         if(!this.§9F§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§9F§[param1])
         {
            return this.§9F§[param1];
         }
         return 1;
      }
   }
}
