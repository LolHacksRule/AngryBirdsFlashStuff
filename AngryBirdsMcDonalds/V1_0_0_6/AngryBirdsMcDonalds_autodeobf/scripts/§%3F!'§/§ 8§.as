package §?!'§
{
   import §7!5§.b2Body;
   import §8<§.§<!7§;
   
   public class § 8§
   {
      
      public static const §-!R§:int = 0;
      
      public static const §=<§:int = b2Body.b2_staticBody;
      
      public static const §&!J§:int = b2Body.b2_kinematicBody;
      
      public static const §9!K§:int = b2Body.b2_dynamicBody;
      
      public static const §!!,§:int = 1;
      
      public static const §&!`§:int = 2;
      
      public static const §+!3§:int = 3;
      
      public static const §=!D§:int = 4;
      
      public static const §1Q§:int = 5;
      
      public static const § J§:int = 6;
       
      
      public var mName:String;
      
      public var §#!B§:Array;
      
      public var §2z§:Array;
      
      public var §]4§:Array;
      
      public function § 8§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§#!B§ = new Array();
         this.§#!B§[§-!R§] = this.§@!Z§(param2);
         this.§#!B§[§!!,§] = param3;
         this.§#!B§[§&!`§] = param4;
         this.§#!B§[§+!3§] = param5;
         this.§#!B§[§=!D§] = param6;
         this.§#!B§[§1Q§] = param7;
         this.§#!B§[§ J§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§#!B§[param1];
      }
      
      private function §@!Z§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §&!J§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §=<§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §9!K§;
         }
         §<!7§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §=<§;
      }
      
      public function §&i§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§2z§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§2z§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §^!X§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§]4§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§]4§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §=!M§(param1:String) : Number
      {
         if(!this.§2z§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§2z§[param1])
         {
            return this.§2z§[param1];
         }
         return 1;
      }
      
      public function § !o§(param1:String) : Number
      {
         if(!this.§]4§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§]4§[param1])
         {
            return this.§]4§[param1];
         }
         return 1;
      }
   }
}
