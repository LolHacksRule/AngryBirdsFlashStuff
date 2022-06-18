package §'G§
{
   import §4]§.b2Body;
   import §7!P§.§-3§;
   
   public class §?[§
   {
      
      public static const §^7§:int = 0;
      
      public static const §0!S§:int = b2Body.b2_staticBody;
      
      public static const §1s§:int = b2Body.b2_kinematicBody;
      
      public static const §;H§:int = b2Body.b2_dynamicBody;
      
      public static const §1d§:int = 1;
      
      public static const §;!V§:int = 2;
      
      public static const §]Y§:int = 3;
      
      public static const §4!C§:int = 4;
      
      public static const §?!X§:int = 5;
      
      public static const §;!D§:int = 6;
       
      
      public var mName:String;
      
      public var §<e§:Array;
      
      public var §9G§:Array;
      
      public var §[!M§:Array;
      
      public function §?[§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§<e§ = new Array();
         this.§<e§[§^7§] = this.§>t§(param2);
         this.§<e§[§1d§] = param3;
         this.§<e§[§;!V§] = param4;
         this.§<e§[§]Y§] = param5;
         this.§<e§[§4!C§] = param6;
         this.§<e§[§?!X§] = param7;
         this.§<e§[§;!D§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§<e§[param1];
      }
      
      private function §>t§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §1s§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §0!S§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §;H§;
         }
         §-3§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §0!S§;
      }
      
      public function §9!^§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§9G§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§9G§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §94§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§[!M§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§[!M§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §0z§(param1:String) : Number
      {
         if(!this.§9G§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§9G§[param1])
         {
            return this.§9G§[param1];
         }
         return 1;
      }
      
      public function §6!&§(param1:String) : Number
      {
         if(!this.§[!M§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§[!M§[param1])
         {
            return this.§[!M§[param1];
         }
         return 1;
      }
   }
}
