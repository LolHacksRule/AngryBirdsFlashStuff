package §8q§
{
   import §7z§.b2Body;
   import §;X§.§ do§;
   
   public class §=Y§
   {
      
      public static const §9"5§:int = 0;
      
      public static const §8X§:int = b2Body.b2_staticBody;
      
      public static const §;!5§:int = b2Body.b2_kinematicBody;
      
      public static const §@Z§:int = b2Body.b2_dynamicBody;
      
      public static const §3"%§:int = 1;
      
      public static const §+!]§:int = 2;
      
      public static const §^<§:int = 3;
      
      public static const §=!+§:int = 4;
      
      public static const §6T§:int = 5;
      
      public static const §`l§:int = 6;
       
      
      public var mName:String;
      
      public var §&!>§:Array;
      
      public var §8"%§:Array;
      
      public var §>!C§:Array;
      
      public function §=Y§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§&!>§ = new Array();
         this.§&!>§[§9"5§] = this.§<!D§(param2);
         this.§&!>§[§3"%§] = param3;
         this.§&!>§[§+!]§] = param4;
         this.§&!>§[§^<§] = param5;
         this.§&!>§[§=!+§] = param6;
         this.§&!>§[§6T§] = param7;
         this.§&!>§[§`l§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§&!>§[param1];
      }
      
      private function §<!D§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §;!5§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §8X§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §@Z§;
         }
         § do§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §8X§;
      }
      
      public function §3g§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§8"%§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§8"%§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §+!§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§>!C§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§>!C§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §2a§(param1:String) : Number
      {
         if(!this.§8"%§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§8"%§[param1])
         {
            return this.§8"%§[param1];
         }
         return 1;
      }
      
      public function §?!A§(param1:String) : Number
      {
         if(!this.§>!C§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§>!C§[param1])
         {
            return this.§>!C§[param1];
         }
         return 1;
      }
   }
}
