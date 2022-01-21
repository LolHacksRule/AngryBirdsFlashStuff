package §%!n§
{
   import §&x§.b2Body;
   import §5K§.§[C§;
   
   public class §;%§
   {
      
      public static const §"!U§:int = 0;
      
      public static const §?!F§:int = b2Body.b2_staticBody;
      
      public static const §;m§:int = b2Body.b2_kinematicBody;
      
      public static const §-f§:int = b2Body.b2_dynamicBody;
      
      public static const §;h§:int = 1;
      
      public static const §&!e§:int = 2;
      
      public static const §&!Z§:int = 3;
      
      public static const §"X§:int = 4;
      
      public static const §[B§:int = 5;
      
      public static const §@c§:int = 6;
       
      
      public var mName:String;
      
      public var §'+§:Array;
      
      public var §,9§:Array;
      
      public var §3!X§:Array;
      
      public function §;%§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§'+§ = new Array();
         this.§'+§[§"!U§] = this.§2!X§(param2);
         this.§'+§[§;h§] = param3;
         this.§'+§[§&!e§] = param4;
         this.§'+§[§&!Z§] = param5;
         this.§'+§[§"X§] = param6;
         this.§'+§[§[B§] = param7;
         this.§'+§[§@c§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§'+§[param1];
      }
      
      private function §2!X§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §;m§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §?!F§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §-f§;
         }
         §[C§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §?!F§;
      }
      
      public function §&r§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§,9§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§,9§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §#q§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§3!X§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§3!X§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §'!f§(param1:String) : Number
      {
         if(!this.§,9§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§,9§[param1])
         {
            return this.§,9§[param1];
         }
         return 1;
      }
      
      public function §'W§(param1:String) : Number
      {
         if(!this.§3!X§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§3!X§[param1])
         {
            return this.§3!X§[param1];
         }
         return 1;
      }
   }
}
