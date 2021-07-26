package §-f§
{
   import §+!c§.§;!=§;
   import §6"1§.b2Body;
   
   public class §@!M§
   {
      
      public static const §>"3§:int = 0;
      
      public static const §?K§:int = b2Body.b2_staticBody;
      
      public static const §,C§:int = b2Body.b2_kinematicBody;
      
      public static const §+N§:int = b2Body.b2_dynamicBody;
      
      public static const §4r§:int = 1;
      
      public static const §>a§:int = 2;
      
      public static const §1$§:int = 3;
      
      public static const §8!$§:int = 4;
      
      public static const §4!n§:int = 5;
      
      public static const §1!4§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §>!J§:Array;
      
      public var §&f§:Array;
      
      public function §@!M§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§>"3§] = this.§[x§(param2);
         this.mValues[§4r§] = param3;
         this.mValues[§>a§] = param4;
         this.mValues[§1$§] = param5;
         this.mValues[§8!$§] = param6;
         this.mValues[§4!n§] = param7;
         this.mValues[§1!4§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §[x§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §,C§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §?K§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §+N§;
         }
         §;!=§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §?K§;
      }
      
      public function §5g§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§>!J§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§>!J§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §7!Y§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§&f§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§&f§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §'%§(param1:String) : Number
      {
         if(!this.§>!J§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§>!J§[param1])
         {
            return this.§>!J§[param1];
         }
         return 1;
      }
      
      public function §@!+§(param1:String) : Number
      {
         if(!this.§&f§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§&f§[param1])
         {
            return this.§&f§[param1];
         }
         return 1;
      }
   }
}
