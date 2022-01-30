package §3>§
{
   import §=9§.b2Body;
   import §@!;§.§&F§;
   
   public class §>!y§
   {
      
      public static const §"!o§:int = 0;
      
      public static const §%I§:int = b2Body.b2_staticBody;
      
      public static const §<v§:int = b2Body.b2_kinematicBody;
      
      public static const §>!'§:int = b2Body.b2_dynamicBody;
      
      public static const §?"4§:int = 1;
      
      public static const §''§:int = 2;
      
      public static const § !Q§:int = 3;
      
      public static const §04§:int = 4;
      
      public static const §6!e§:int = 5;
      
      public static const §>!$§:int = 6;
       
      
      public var mName:String;
      
      public var §2_§:Array;
      
      public var §7!L§:Array;
      
      public var §<i§:Array;
      
      public function §>!y§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§2_§ = new Array();
         this.§2_§[§"!o§] = this.§3!C§(param2);
         this.§2_§[§?"4§] = param3;
         this.§2_§[§''§] = param4;
         this.§2_§[§ !Q§] = param5;
         this.§2_§[§04§] = param6;
         this.§2_§[§6!e§] = param7;
         this.§2_§[§>!$§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§2_§[param1];
      }
      
      private function §3!C§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §<v§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §%I§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §>!'§;
         }
         §&F§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §%I§;
      }
      
      public function §>"&§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§7!L§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§7!L§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §>!S§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§<i§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§<i§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §5!@§(param1:String) : Number
      {
         if(!this.§7!L§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§7!L§[param1])
         {
            return this.§7!L§[param1];
         }
         return 1;
      }
      
      public function §!!w§(param1:String) : Number
      {
         if(!this.§<i§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§<i§[param1])
         {
            return this.§<i§[param1];
         }
         return 1;
      }
   }
}
