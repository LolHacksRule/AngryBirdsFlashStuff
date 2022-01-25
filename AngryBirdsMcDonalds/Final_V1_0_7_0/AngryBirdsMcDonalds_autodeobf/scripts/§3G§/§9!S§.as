package §3G§
{
   import §-0§.b2Body;
   import §0i§.§4!%§;
   
   public class §9!S§
   {
      
      public static const §!!O§:int = 0;
      
      public static const §&!i§:int = b2Body.b2_staticBody;
      
      public static const §2W§:int = b2Body.b2_kinematicBody;
      
      public static const §0!,§:int = b2Body.b2_dynamicBody;
      
      public static const §!4§:int = 1;
      
      public static const §'!E§:int = 2;
      
      public static const §^h§:int = 3;
      
      public static const §"Q§:int = 4;
      
      public static const §'!@§:int = 5;
      
      public static const §,!A§:int = 6;
       
      
      public var mName:String;
      
      public var §6F§:Array;
      
      public var §'i§:Array;
      
      public var §<N§:Array;
      
      public function §9!S§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§6F§ = new Array();
         this.§6F§[§!!O§] = this.§9U§(param2);
         this.§6F§[§!4§] = param3;
         this.§6F§[§'!E§] = param4;
         this.§6F§[§^h§] = param5;
         this.§6F§[§"Q§] = param6;
         this.§6F§[§'!@§] = param7;
         this.§6F§[§,!A§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§6F§[param1];
      }
      
      private function §9U§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §2W§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §&!i§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §0!,§;
         }
         §4!%§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §&!i§;
      }
      
      public function §9!-§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§'i§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§'i§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §&3§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§<N§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§<N§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function § !"§(param1:String) : Number
      {
         if(!this.§'i§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§'i§[param1])
         {
            return this.§'i§[param1];
         }
         return 1;
      }
      
      public function §9!F§(param1:String) : Number
      {
         if(!this.§<N§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§<N§[param1])
         {
            return this.§<N§[param1];
         }
         return 1;
      }
   }
}
