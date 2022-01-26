package §default§
{
   import § !G§.§ #§;
   import §`j§.b2Body;
   
   public class §-g§
   {
      
      public static const § !H§:int = 0;
      
      public static const §3'§:int = b2Body.b2_staticBody;
      
      public static const §^y§:int = b2Body.b2_kinematicBody;
      
      public static const §-'§:int = b2Body.b2_dynamicBody;
      
      public static const §&q§:int = 1;
      
      public static const §>!I§:int = 2;
      
      public static const §[B§:int = 3;
      
      public static const §+!,§:int = 4;
      
      public static const §1n§:int = 5;
      
      public static const §;!]§:int = 6;
       
      
      public var mName:String;
      
      public var §+b§:Array;
      
      public var §?u§:Array;
      
      public var §&w§:Array;
      
      public function §-g§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§+b§ = new Array();
         this.§+b§[§ !H§] = this.§@!#§(param2);
         this.§+b§[§&q§] = param3;
         this.§+b§[§>!I§] = param4;
         this.§+b§[§[B§] = param5;
         this.§+b§[§+!,§] = param6;
         this.§+b§[§1n§] = param7;
         this.§+b§[§;!]§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§+b§[param1];
      }
      
      private function §@!#§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §^y§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §3'§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §-'§;
         }
         § #§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §3'§;
      }
      
      public function §4!L§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§?u§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§?u§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §3U§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§&w§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§&w§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §14§(param1:String) : Number
      {
         if(!this.§?u§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§?u§[param1])
         {
            return this.§?u§[param1];
         }
         return 1;
      }
      
      public function §`%§(param1:String) : Number
      {
         if(!this.§&w§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§&w§[param1])
         {
            return this.§&w§[param1];
         }
         return 1;
      }
   }
}
