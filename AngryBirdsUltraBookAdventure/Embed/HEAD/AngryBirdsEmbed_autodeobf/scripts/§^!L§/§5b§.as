package §^!L§
{
   import §3a§.§7!+§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §5b§
   {
      
      public static const §'!1§:int = 0;
      
      public static const §-!G§:int = b2Body.b2_staticBody;
      
      public static const §?!%§:int = b2Body.b2_kinematicBody;
      
      public static const §77§:int = b2Body.b2_dynamicBody;
      
      public static const §>!2§:int = 1;
      
      public static const §^!0§:int = 2;
      
      public static const §0!,§:int = 3;
      
      public static const §<!I§:int = 4;
      
      public static const §`@§:int = 5;
      
      public static const §-3§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §-!?§:Array;
      
      public var §]d§:Array;
      
      public function §5b§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§'!1§] = this.§-o§(param2);
         this.mValues[§>!2§] = param3;
         this.mValues[§^!0§] = param4;
         this.mValues[§0!,§] = param5;
         this.mValues[§<!I§] = param6;
         this.mValues[§`@§] = param7;
         this.mValues[§-3§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §-o§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §?!%§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §-!G§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §77§;
         }
         §7!+§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §-!G§;
      }
      
      public function § s§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§-!?§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§-!?§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §0N§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§]d§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§]d§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §'F§(param1:String) : Number
      {
         if(!this.§-!?§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§-!?§[param1])
         {
            return this.§-!?§[param1];
         }
         return 1;
      }
      
      public function § !0§(param1:String) : Number
      {
         if(!this.§]d§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§]d§[param1])
         {
            return this.§]d§[param1];
         }
         return 1;
      }
   }
}
