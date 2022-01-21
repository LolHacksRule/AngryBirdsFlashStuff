package §4s§
{
   import §3!g§.b2Body;
   import §=<§.§1+§;
   
   public class §0R§
   {
      
      public static const §7!4§:int = 0;
      
      public static const §7!&§:int = b2Body.b2_staticBody;
      
      public static const §6!B§:int = b2Body.b2_kinematicBody;
      
      public static const §?<§:int = b2Body.b2_dynamicBody;
      
      public static const §5]§:int = 1;
      
      public static const §1o§:int = 2;
      
      public static const §#,§:int = 3;
      
      public static const §?=§:int = 4;
      
      public static const §=!$§:int = 5;
      
      public static const §]!8§:int = 6;
       
      
      public var mName:String;
      
      public var §?!!§:Array;
      
      public var §]5§:Array;
      
      public var §4!k§:Array;
      
      public function §0R§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§?!!§ = new Array();
         this.§?!!§[§7!4§] = this.§[!X§(param2);
         this.§?!!§[§5]§] = param3;
         this.§?!!§[§1o§] = param4;
         this.§?!!§[§#,§] = param5;
         this.§?!!§[§?=§] = param6;
         this.§?!!§[§=!$§] = param7;
         this.§?!!§[§]!8§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§?!!§[param1];
      }
      
      private function §[!X§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §6!B§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §7!&§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §?<§;
         }
         §1+§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §7!&§;
      }
      
      public function §6!h§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§]5§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§]5§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §"#§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§4!k§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§4!k§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §^!D§(param1:String) : Number
      {
         if(!this.§]5§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§]5§[param1])
         {
            return this.§]5§[param1];
         }
         return 1;
      }
      
      public function §;H§(param1:String) : Number
      {
         if(!this.§4!k§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§4!k§[param1])
         {
            return this.§4!k§[param1];
         }
         return 1;
      }
   }
}
