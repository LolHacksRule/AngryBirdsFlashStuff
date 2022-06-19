package §,B§
{
   import §&N§.§@,§;
   import §?!0§.b2Body;
   
   public class §9x§
   {
      
      public static const §-f§:int = 0;
      
      public static const §"!Q§:int = b2Body.b2_staticBody;
      
      public static const §#D§:int = b2Body.b2_kinematicBody;
      
      public static const §[y§:int = b2Body.b2_dynamicBody;
      
      public static const §import§:int = 1;
      
      public static const §]!?§:int = 2;
      
      public static const §4!V§:int = 3;
      
      public static const §7x§:int = 4;
      
      public static const §[!V§:int = 5;
      
      public static const §^!C§:int = 6;
       
      
      public var mName:String;
      
      public var §#!+§:Array;
      
      public var §%W§:Array;
      
      public var § !L§:Array;
      
      public function §9x§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§#!+§ = new Array();
         this.§#!+§[§-f§] = this.§=i§(param2);
         this.§#!+§[§import§] = param3;
         this.§#!+§[§]!?§] = param4;
         this.§#!+§[§4!V§] = param5;
         this.§#!+§[§7x§] = param6;
         this.§#!+§[§[!V§] = param7;
         this.§#!+§[§^!C§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§#!+§[param1];
      }
      
      private function §=i§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §#D§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §"!Q§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §[y§;
         }
         §@,§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §"!Q§;
      }
      
      public function §-a§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§%W§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§%W§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §+!V§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§ !L§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§ !L§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §<8§(param1:String) : Number
      {
         if(!this.§%W§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§%W§[param1])
         {
            return this.§%W§[param1];
         }
         return 1;
      }
      
      public function §1a§(param1:String) : Number
      {
         if(!this.§ !L§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§ !L§[param1])
         {
            return this.§ !L§[param1];
         }
         return 1;
      }
   }
}
