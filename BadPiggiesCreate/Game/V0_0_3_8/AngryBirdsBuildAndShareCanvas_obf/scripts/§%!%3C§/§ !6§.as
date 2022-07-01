package §%!<§
{
   import §4u§.§<!L§;
   import §?!E§.b2Body;
   
   public class § !6§
   {
      
      public static const §[d§:int = 0;
      
      public static const §20§:int = b2Body.b2_staticBody;
      
      public static const §!P§:int = b2Body.b2_kinematicBody;
      
      public static const §8!m§:int = b2Body.b2_dynamicBody;
      
      public static const §6&§:int = 1;
      
      public static const §4'§:int = 2;
      
      public static const §;!l§:int = 3;
      
      public static const §,T§:int = 4;
      
      public static const §<!§:int = 5;
      
      public static const §="1§:int = 6;
       
      
      public var mName:String;
      
      public var §??§:Array;
      
      public var §&!R§:Array;
      
      public var § s§:Array;
      
      public function § !6§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§??§ = new Array();
         this.§??§[§[d§] = this.§3!Q§(param2);
         this.§??§[§6&§] = param3;
         this.§??§[§4'§] = param4;
         this.§??§[§;!l§] = param5;
         this.§??§[§,T§] = param6;
         this.§??§[§<!§] = param7;
         this.§??§[§="1§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§??§[param1];
      }
      
      private function §3!Q§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §!P§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §20§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §8!m§;
         }
         §<!L§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §20§;
      }
      
      public function §>8§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§&!R§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§&!R§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §#!v§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§ s§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§ s§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §5!R§(param1:String) : Number
      {
         if(!this.§&!R§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§&!R§[param1])
         {
            return this.§&!R§[param1];
         }
         return 1;
      }
      
      public function §@!Z§(param1:String) : Number
      {
         if(!this.§ s§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§ s§[param1])
         {
            return this.§ s§[param1];
         }
         return 1;
      }
   }
}
