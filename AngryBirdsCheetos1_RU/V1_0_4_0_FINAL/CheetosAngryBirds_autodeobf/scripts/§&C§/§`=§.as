package §&C§
{
   import § N§.§]M§;
   import §9t§.b2Body;
   
   public class §`=§
   {
      
      public static const §2!M§:int = 0;
      
      public static const §`!&§:int = b2Body.b2_staticBody;
      
      public static const §>!a§:int = b2Body.b2_kinematicBody;
      
      public static const §2!I§:int = b2Body.b2_dynamicBody;
      
      public static const §'e§:int = 1;
      
      public static const §5$§:int = 2;
      
      public static const §[e§:int = 3;
      
      public static const §@d§:int = 4;
      
      public static const §%!I§:int = 5;
      
      public static const §%!U§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §5P§:Array;
      
      public var §3k§:Array;
      
      public function §`=§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§2!M§] = this.§`!T§(param2);
         this.mValues[§'e§] = param3;
         this.mValues[§5$§] = param4;
         this.mValues[§[e§] = param5;
         this.mValues[§@d§] = param6;
         this.mValues[§%!I§] = param7;
         this.mValues[§%!U§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §`!T§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §>!a§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §`!&§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §2!I§;
         }
         §]M§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §`!&§;
      }
      
      public function §!N§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§5P§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§5P§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §?§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§3k§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§3k§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §5! §(param1:String) : Number
      {
         if(!this.§5P§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§5P§[param1])
         {
            return this.§5P§[param1];
         }
         return 1;
      }
      
      public function §`!;§(param1:String) : Number
      {
         if(!this.§3k§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§3k§[param1])
         {
            return this.§3k§[param1];
         }
         return 1;
      }
   }
}
