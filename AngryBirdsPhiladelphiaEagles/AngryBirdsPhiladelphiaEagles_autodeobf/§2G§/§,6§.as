package §2G§
{
   import §`K§.§ L§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §,6§
   {
      
      public static const § "§:int = 0;
      
      public static const §"I§:int = b2Body.b2_staticBody;
      
      public static const §-i§:int = b2Body.b2_kinematicBody;
      
      public static const §>!C§:int = b2Body.b2_dynamicBody;
      
      public static const §?!A§:int = 1;
      
      public static const § !>§:int = 2;
      
      public static const §']§:int = 3;
      
      public static const §!!!§:int = 4;
      
      public static const §0P§:int = 5;
      
      public static const §1I§:int = 6;
       
      
      public var mName:String;
      
      public var §"!;§:Array;
      
      public var §5s§:Array;
      
      public var §;I§:Array;
      
      public function §,6§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§"!;§ = new Array();
         this.§"!;§[§ "§] = this.§^%§(param2);
         this.§"!;§[§?!A§] = param3;
         this.§"!;§[§ !>§] = param4;
         this.§"!;§[§']§] = param5;
         this.§"!;§[§!!!§] = param6;
         this.§"!;§[§0P§] = param7;
         this.§"!;§[§1I§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§"!;§[param1];
      }
      
      private function §^%§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §-i§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §"I§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §>!C§;
         }
         § L§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §"I§;
      }
      
      public function §9W§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§5s§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§5s§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §0!M§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§;I§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§;I§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §%!"§(param1:String) : Number
      {
         if(!this.§5s§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§5s§[param1])
         {
            return this.§5s§[param1];
         }
         return 1;
      }
      
      public function §?r§(param1:String) : Number
      {
         if(!this.§;I§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§;I§[param1])
         {
            return this.§;I§[param1];
         }
         return 1;
      }
   }
}
