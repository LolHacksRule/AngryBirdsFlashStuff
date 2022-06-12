package §&!s§
{
   import §9!G§.§]!e§;
   import §`]§.b2Body;
   
   public class §=!E§
   {
      
      public static const §0! §:int = 0;
      
      public static const §0!n§:int = b2Body.b2_staticBody;
      
      public static const §^" §:int = b2Body.b2_kinematicBody;
      
      public static const §=I§:int = b2Body.b2_dynamicBody;
      
      public static const §;x§:int = 1;
      
      public static const §?<§:int = 2;
      
      public static const §&!6§:int = 3;
      
      public static const §`I§:int = 4;
      
      public static const §@T§:int = 5;
      
      public static const §'!c§:int = 6;
       
      
      public var mName:String;
      
      public var §-G§:Array;
      
      public var §^!B§:Array;
      
      public var §,n§:Array;
      
      public function §=!E§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§-G§ = new Array();
         this.§-G§[§0! §] = this.§>!@§(param2);
         this.§-G§[§;x§] = param3;
         this.§-G§[§?<§] = param4;
         this.§-G§[§&!6§] = param5;
         this.§-G§[§`I§] = param6;
         this.§-G§[§@T§] = param7;
         this.§-G§[§'!c§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§-G§[param1];
      }
      
      private function §>!@§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §^" §;
         }
         if(param1.toLowerCase() == "static")
         {
            return §0!n§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §=I§;
         }
         §]!e§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §0!n§;
      }
      
      public function §]x§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§^!B§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§^!B§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §"r§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§,n§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§,n§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §&X§(param1:String) : Number
      {
         if(!this.§^!B§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§^!B§[param1])
         {
            return this.§^!B§[param1];
         }
         return 1;
      }
      
      public function §,!m§(param1:String) : Number
      {
         if(!this.§,n§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§,n§[param1])
         {
            return this.§,n§[param1];
         }
         return 1;
      }
   }
}
