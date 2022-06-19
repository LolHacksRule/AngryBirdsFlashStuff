package §<%§
{
   import § !k§.b2Body;
   import §0!?§.§'!$§;
   
   public class §[p§
   {
      
      public static const §1!$§:int = 0;
      
      public static const §#w§:int = b2Body.b2_staticBody;
      
      public static const §1!K§:int = b2Body.b2_kinematicBody;
      
      public static const § !w§:int = b2Body.b2_dynamicBody;
      
      public static const §``§:int = 1;
      
      public static const §8!y§:int = 2;
      
      public static const §6!e§:int = 3;
      
      public static const §8";§:int = 4;
      
      public static const §>V§:int = 5;
      
      public static const §3-§:int = 6;
       
      
      public var mName:String;
      
      public var §,!D§:Array;
      
      public var §7!U§:Array;
      
      public var §]!C§:Array;
      
      public function §[p§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§,!D§ = new Array();
         this.§,!D§[§1!$§] = this.§4=§(param2);
         this.§,!D§[§``§] = param3;
         this.§,!D§[§8!y§] = param4;
         this.§,!D§[§6!e§] = param5;
         this.§,!D§[§8";§] = param6;
         this.§,!D§[§>V§] = param7;
         this.§,!D§[§3-§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§,!D§[param1];
      }
      
      private function §4=§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §1!K§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §#w§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return § !w§;
         }
         §'!$§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §#w§;
      }
      
      public function §^!2§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§7!U§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§7!U§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §+"$§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§]!C§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§]!C§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §6"§(param1:String) : Number
      {
         if(!this.§7!U§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§7!U§[param1])
         {
            return this.§7!U§[param1];
         }
         return 1;
      }
      
      public function §@!§(param1:String) : Number
      {
         if(!this.§]!C§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§]!C§[param1])
         {
            return this.§]!C§[param1];
         }
         return 1;
      }
   }
}
