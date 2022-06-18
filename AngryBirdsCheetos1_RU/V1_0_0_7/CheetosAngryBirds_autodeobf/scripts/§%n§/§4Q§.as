package §%n§
{
   import §'D§.§8e§;
   import §?0§.b2Body;
   
   public class §4Q§
   {
      
      public static const §3g§:int = 0;
      
      public static const §#!%§:int = b2Body.b2_staticBody;
      
      public static const §5#§:int = b2Body.b2_kinematicBody;
      
      public static const §`!^§:int = b2Body.b2_dynamicBody;
      
      public static const §6!%§:int = 1;
      
      public static const §``§:int = 2;
      
      public static const §<K§:int = 3;
      
      public static const §];§:int = 4;
      
      public static const §@t§:int = 5;
      
      public static const §+!!§:int = 6;
       
      
      public var mName:String;
      
      public var §3!$§:Array;
      
      public var §&!P§:Array;
      
      public var §`f§:Array;
      
      public function §4Q§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§3!$§ = new Array();
         this.§3!$§[§3g§] = this.§4z§(param2);
         this.§3!$§[§6!%§] = param3;
         this.§3!$§[§``§] = param4;
         this.§3!$§[§<K§] = param5;
         this.§3!$§[§];§] = param6;
         this.§3!$§[§@t§] = param7;
         this.§3!$§[§+!!§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§3!$§[param1];
      }
      
      private function §4z§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §5#§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §#!%§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §`!^§;
         }
         §8e§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §#!%§;
      }
      
      public function §4t§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§&!P§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§&!P§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §1!D§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§`f§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§`f§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §!! §(param1:String) : Number
      {
         if(!this.§&!P§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§&!P§[param1])
         {
            return this.§&!P§[param1];
         }
         return 1;
      }
      
      public function §[`§(param1:String) : Number
      {
         if(!this.§`f§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§`f§[param1])
         {
            return this.§`f§[param1];
         }
         return 1;
      }
   }
}
