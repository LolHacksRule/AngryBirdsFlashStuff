package §%!a§
{
   import §<!L§.b2Body;
   import §^=§.§8!6§;
   
   public class § !§
   {
      
      public static const §#w§:int = 0;
      
      public static const §6W§:int = b2Body.b2_staticBody;
      
      public static const §8!+§:int = b2Body.b2_kinematicBody;
      
      public static const §'!<§:int = b2Body.b2_dynamicBody;
      
      public static const §2,§:int = 1;
      
      public static const §"!e§:int = 2;
      
      public static const §1!!§:int = 3;
      
      public static const §&!2§:int = 4;
      
      public static const §3!-§:int = 5;
      
      public static const §3g§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §,!@§:Array;
      
      public var §&!J§:Array;
      
      public function § !§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§#w§] = this.§=o§(param2);
         this.mValues[§2,§] = param3;
         this.mValues[§"!e§] = param4;
         this.mValues[§1!!§] = param5;
         this.mValues[§&!2§] = param6;
         this.mValues[§3!-§] = param7;
         this.mValues[§3g§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §=o§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §8!+§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §6W§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §'!<§;
         }
         §8!6§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §6W§;
      }
      
      public function §[!P§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§,!@§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§,!@§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §;,§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§&!J§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§&!J§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §?!;§(param1:String) : Number
      {
         if(!this.§,!@§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§,!@§[param1])
         {
            return this.§,!@§[param1];
         }
         return 1;
      }
      
      public function §5#§(param1:String) : Number
      {
         if(!this.§&!J§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§&!J§[param1])
         {
            return this.§&!J§[param1];
         }
         return 1;
      }
   }
}
