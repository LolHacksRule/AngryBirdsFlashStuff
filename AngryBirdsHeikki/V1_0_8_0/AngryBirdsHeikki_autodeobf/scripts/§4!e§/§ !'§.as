package §4!e§
{
   import § !3§.§!X§;
   import §0!?§.b2Body;
   
   public class § !'§
   {
      
      public static const § !J§:int = 0;
      
      public static const §?d§:int = b2Body.b2_staticBody;
      
      public static const §%!W§:int = b2Body.b2_kinematicBody;
      
      public static const §=!U§:int = b2Body.b2_dynamicBody;
      
      public static const §%w§:int = 1;
      
      public static const §`!>§:int = 2;
      
      public static const §"!]§:int = 3;
      
      public static const §get §:int = 4;
      
      public static const §]![§:int = 5;
      
      public static const §6"§:int = 6;
       
      
      public var mName:String;
      
      public var §`!^§:Array;
      
      public var §#§:Array;
      
      public var §;!§:Array;
      
      public function § !'§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§`!^§ = new Array();
         this.§`!^§[§ !J§] = this.§%`§(param2);
         this.§`!^§[§%w§] = param3;
         this.§`!^§[§`!>§] = param4;
         this.§`!^§[§"!]§] = param5;
         this.§`!^§[§get §] = param6;
         this.§`!^§[§]![§] = param7;
         this.§`!^§[§6"§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§`!^§[param1];
      }
      
      private function §%`§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §%!W§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §?d§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §=!U§;
         }
         §!X§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §?d§;
      }
      
      public function §0z§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§#§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§#§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §@C§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§;!§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§;!§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §!!A§(param1:String) : Number
      {
         if(!this.§#§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§#§[param1])
         {
            return this.§#§[param1];
         }
         return 1;
      }
      
      public function §5!T§(param1:String) : Number
      {
         if(!this.§;!§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§;!§[param1])
         {
            return this.§;!§[param1];
         }
         return 1;
      }
   }
}
