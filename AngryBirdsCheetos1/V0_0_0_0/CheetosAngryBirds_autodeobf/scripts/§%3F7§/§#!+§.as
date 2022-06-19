package §?7§
{
   import §&!"§.b2Body;
   import §@,§.§4h§;
   
   public class §#!+§
   {
      
      public static const §"!Q§:int = 0;
      
      public static const §#D§:int = b2Body.b2_staticBody;
      
      public static const §[y§:int = b2Body.b2_kinematicBody;
      
      public static const §import§:int = b2Body.b2_dynamicBody;
      
      public static const §]!?§:int = 1;
      
      public static const §4!V§:int = 2;
      
      public static const §7x§:int = 3;
      
      public static const §[!V§:int = 4;
      
      public static const §^!C§:int = 5;
      
      public static const §?!X§:int = 6;
       
      
      public var mName:String;
      
      public var §%W§:Array;
      
      public var § !L§:Array;
      
      public var §=i§:Array;
      
      public function §#!+§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§%W§ = new Array();
         this.§%W§[§"!Q§] = this.§-a§(param2);
         this.§%W§[§]!?§] = param3;
         this.§%W§[§4!V§] = param4;
         this.§%W§[§7x§] = param5;
         this.§%W§[§[!V§] = param6;
         this.§%W§[§^!C§] = param7;
         this.§%W§[§?!X§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§%W§[param1];
      }
      
      private function §-a§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §[y§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §#D§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §import§;
         }
         §4h§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §#D§;
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
      
      public function §<8§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§=i§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§=i§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
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
      
      public function §-f§(param1:String) : Number
      {
         if(!this.§=i§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§=i§[param1])
         {
            return this.§=i§[param1];
         }
         return 1;
      }
   }
}
