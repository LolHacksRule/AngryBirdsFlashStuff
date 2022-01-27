package §+!N§
{
   import §-!5§.§5s§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §[8§
   {
      
      public static const §<!0§:int = 0;
      
      public static const §!F§:int = b2Body.b2_staticBody;
      
      public static const §2w§:int = b2Body.b2_kinematicBody;
      
      public static const §^-§:int = b2Body.b2_dynamicBody;
      
      public static const §=!I§:int = 1;
      
      public static const §"!B§:int = 2;
      
      public static const §%x§:int = 3;
      
      public static const §#!'§:int = 4;
      
      public static const §2f§:int = 5;
      
      public static const §9S§:int = 6;
       
      
      public var mName:String;
      
      public var §9u§:Array;
      
      public var §+N§:Array;
      
      public var §0!F§:Array;
      
      public function §[8§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§9u§ = new Array();
         this.§9u§[§<!0§] = this.§#8§(param2);
         this.§9u§[§=!I§] = param3;
         this.§9u§[§"!B§] = param4;
         this.§9u§[§%x§] = param5;
         this.§9u§[§#!'§] = param6;
         this.§9u§[§2f§] = param7;
         this.§9u§[§9S§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§9u§[param1];
      }
      
      private function §#8§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §2w§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §!F§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §^-§;
         }
         §5s§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §!F§;
      }
      
      public function §!t§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§+N§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§+N§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §'!#§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§0!F§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§0!F§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §#H§(param1:String) : Number
      {
         if(!this.§+N§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§+N§[param1])
         {
            return this.§+N§[param1];
         }
         return 1;
      }
      
      public function §+!3§(param1:String) : Number
      {
         if(!this.§0!F§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§0!F§[param1])
         {
            return this.§0!F§[param1];
         }
         return 1;
      }
   }
}
