package §<!1§
{
   import §^_§.§!>§;
   import §`w§.b2Body;
   
   public class §0"§
   {
      
      public static const §5"§:int = 0;
      
      public static const §5P§:int = b2Body.b2_staticBody;
      
      public static const §^!U§:int = b2Body.b2_kinematicBody;
      
      public static const §#t§:int = b2Body.b2_dynamicBody;
      
      public static const §+!7§:int = 1;
      
      public static const §#H§:int = 2;
      
      public static const §-b§:int = 3;
      
      public static const §for §:int = 4;
      
      public static const §;!j§:int = 5;
      
      public static const §@![§:int = 6;
       
      
      public var mName:String;
      
      public var §]!Z§:Array;
      
      public var §!V§:Array;
      
      public var §"i§:Array;
      
      public function §0"§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§]!Z§ = new Array();
         this.§]!Z§[§5"§] = this.§6!u§(param2);
         this.§]!Z§[§+!7§] = param3;
         this.§]!Z§[§#H§] = param4;
         this.§]!Z§[§-b§] = param5;
         this.§]!Z§[§for §] = param6;
         this.§]!Z§[§;!j§] = param7;
         this.§]!Z§[§@![§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§]!Z§[param1];
      }
      
      private function §6!u§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §^!U§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §5P§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §#t§;
         }
         §!>§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §5P§;
      }
      
      public function §]^§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§!V§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§!V§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §?I§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§"i§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§"i§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §!^§(param1:String) : Number
      {
         if(!this.§!V§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§!V§[param1])
         {
            return this.§!V§[param1];
         }
         return 1;
      }
      
      public function §`!!§(param1:String) : Number
      {
         if(!this.§"i§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§"i§[param1])
         {
            return this.§"i§[param1];
         }
         return 1;
      }
   }
}
