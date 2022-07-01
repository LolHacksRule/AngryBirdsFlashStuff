package § ""§
{
   import §&W§.§7L§;
   import §7!q§.b2Body;
   
   public class §7Q§
   {
      
      public static const §'!Q§:int = 0;
      
      public static const §!?§:int = b2Body.b2_staticBody;
      
      public static const §`"-§:int = b2Body.b2_kinematicBody;
      
      public static const §@"<§:int = b2Body.b2_dynamicBody;
      
      public static const §[i§:int = 1;
      
      public static const § S§:int = 2;
      
      public static const §4!q§:int = 3;
      
      public static const §3W§:int = 4;
      
      public static const §!G§:int = 5;
      
      public static const § !,§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §]!'§:Array;
      
      public var §2C§:Array;
      
      public function §7Q§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§'!Q§] = this.§%S§(param2);
         this.mValues[§[i§] = param3;
         this.mValues[§ S§] = param4;
         this.mValues[§4!q§] = param5;
         this.mValues[§3W§] = param6;
         this.mValues[§!G§] = param7;
         this.mValues[§ !,§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §%S§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §`"-§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §!?§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §@"<§;
         }
         §7L§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §!?§;
      }
      
      public function §super§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§]!'§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§]!'§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §4?§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§2C§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§2C§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §6[§(param1:String) : Number
      {
         if(!this.§]!'§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§]!'§[param1])
         {
            return this.§]!'§[param1];
         }
         return 1;
      }
      
      public function §=!k§(param1:String) : Number
      {
         if(!this.§2C§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§2C§[param1])
         {
            return this.§2C§[param1];
         }
         return 1;
      }
   }
}
