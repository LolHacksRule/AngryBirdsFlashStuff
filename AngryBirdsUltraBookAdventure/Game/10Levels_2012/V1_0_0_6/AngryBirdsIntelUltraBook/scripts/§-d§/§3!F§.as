package §-d§
{
   import §"x§.§-8§;
   import §#V§.b2Body;
   
   public class §3!F§
   {
      
      public static const §]!,§:int = 0;
      
      public static const §!!k§:int = b2Body.b2_staticBody;
      
      public static const §,s§:int = b2Body.b2_kinematicBody;
      
      public static const §0§:int = b2Body.b2_dynamicBody;
      
      public static const §5C§:int = 1;
      
      public static const §"!E§:int = 2;
      
      public static const §+!Q§:int = 3;
      
      public static const §[!=§:int = 4;
      
      public static const §!x§:int = 5;
      
      public static const §%!z§:int = 6;
       
      
      public var mName:String;
      
      public var §>!x§:Array;
      
      public var §+!J§:Array;
      
      public var §%!a§:Array;
      
      public function §3!F§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§>!x§ = new Array();
         this.§>!x§[§]!,§] = this.§=!U§(param2);
         this.§>!x§[§5C§] = param3;
         this.§>!x§[§"!E§] = param4;
         this.§>!x§[§+!Q§] = param5;
         this.§>!x§[§[!=§] = param6;
         this.§>!x§[§!x§] = param7;
         this.§>!x§[§%!z§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§>!x§[param1];
      }
      
      private function §=!U§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §,s§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §!!k§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §0§;
         }
         §-8§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §!!k§;
      }
      
      public function §9!]§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§+!J§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§+!J§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §]W§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§%!a§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§%!a§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §[$§(param1:String) : Number
      {
         if(!this.§+!J§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§+!J§[param1])
         {
            return this.§+!J§[param1];
         }
         return 1;
      }
      
      public function §70§(param1:String) : Number
      {
         if(!this.§%!a§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§%!a§[param1])
         {
            return this.§%!a§[param1];
         }
         return 1;
      }
   }
}
