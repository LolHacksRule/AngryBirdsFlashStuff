package §8!I§
{
   import §1!K§.§>!<§;
   import §?!F§.b2Body;
   
   public class §1!_§
   {
      
      public static const §6!2§:int = 0;
      
      public static const §%!?§:int = b2Body.b2_staticBody;
      
      public static const §=^§:int = b2Body.b2_kinematicBody;
      
      public static const §'<§:int = b2Body.b2_dynamicBody;
      
      public static const §!!O§:int = 1;
      
      public static const §+!§:int = 2;
      
      public static const §"!H§:int = 3;
      
      public static const §?!`§:int = 4;
      
      public static const §+!6§:int = 5;
      
      public static const §-o§:int = 6;
       
      
      public var mName:String;
      
      public var §@4§:Array;
      
      public var §[!>§:Array;
      
      public var §&!,§:Array;
      
      public function §1!_§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§@4§ = new Array();
         this.§@4§[§6!2§] = this.§@! §(param2);
         this.§@4§[§!!O§] = param3;
         this.§@4§[§+!§] = param4;
         this.§@4§[§"!H§] = param5;
         this.§@4§[§?!`§] = param6;
         this.§@4§[§+!6§] = param7;
         this.§@4§[§-o§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§@4§[param1];
      }
      
      private function §@! §(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §=^§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §%!?§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §'<§;
         }
         §>!<§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §%!?§;
      }
      
      public function §9n§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§[!>§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§[!>§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §`!A§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§&!,§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§&!,§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §use §(param1:String) : Number
      {
         if(!this.§[!>§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§[!>§[param1])
         {
            return this.§[!>§[param1];
         }
         return 1;
      }
      
      public function §5!N§(param1:String) : Number
      {
         if(!this.§&!,§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§&!,§[param1])
         {
            return this.§&!,§[param1];
         }
         return 1;
      }
   }
}
