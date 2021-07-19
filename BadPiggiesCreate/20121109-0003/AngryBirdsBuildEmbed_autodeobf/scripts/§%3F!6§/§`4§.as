package §?!6§
{
   import § !r§.§`![§;
   import § !t§.b2Body;
   
   public class §`4§
   {
      
      public static const §+9§:int = 0;
      
      public static const §4A§:int = b2Body.b2_staticBody;
      
      public static const §'!%§:int = b2Body.b2_kinematicBody;
      
      public static const §&L§:int = b2Body.b2_dynamicBody;
      
      public static const §,E§:int = 1;
      
      public static const §'!-§:int = 2;
      
      public static const §0T§:int = 3;
      
      public static const §,O§:int = 4;
      
      public static const §]u§:int = 5;
      
      public static const §^!Q§:int = 6;
       
      
      public var mName:String;
      
      public var §6!8§:Array;
      
      public var §#!k§:Array;
      
      public var §"!c§:Array;
      
      public function §`4§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§6!8§ = new Array();
         this.§6!8§[§+9§] = this.§%`§(param2);
         this.§6!8§[§,E§] = param3;
         this.§6!8§[§'!-§] = param4;
         this.§6!8§[§0T§] = param5;
         this.§6!8§[§,O§] = param6;
         this.§6!8§[§]u§] = param7;
         this.§6!8§[§^!Q§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§6!8§[param1];
      }
      
      private function §%`§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §'!%§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §4A§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §&L§;
         }
         §`![§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §4A§;
      }
      
      public function §<!i§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§#!k§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§#!k§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §33§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§"!c§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§"!c§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §-!?§(param1:String) : Number
      {
         if(!this.§#!k§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§#!k§[param1])
         {
            return this.§#!k§[param1];
         }
         return 1;
      }
      
      public function §+v§(param1:String) : Number
      {
         if(!this.§"!c§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§"!c§[param1])
         {
            return this.§"!c§[param1];
         }
         return 1;
      }
   }
}
