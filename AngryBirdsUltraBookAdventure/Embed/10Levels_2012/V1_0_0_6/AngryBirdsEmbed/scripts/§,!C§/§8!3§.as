package §,!C§
{
   import §>K§.§9X§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §8!3§
   {
      
      public static const §"!I§:int = 0;
      
      public static const §%2§:int = b2Body.b2_staticBody;
      
      public static const §0!,§:int = b2Body.b2_kinematicBody;
      
      public static const §+2§:int = b2Body.b2_dynamicBody;
      
      public static const §4!=§:int = 1;
      
      public static const §default§:int = 2;
      
      public static const §%i§:int = 3;
      
      public static const §8!9§:int = 4;
      
      public static const §,0§:int = 5;
      
      public static const §'!0§:int = 6;
       
      
      public var mName:String;
      
      public var §"[§:Array;
      
      public var §9a§:Array;
      
      public var §8!B§:Array;
      
      public function §8!3§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§"[§ = new Array();
         this.§"[§[§"!I§] = this.§4q§(param2);
         this.§"[§[§4!=§] = param3;
         this.§"[§[§default§] = param4;
         this.§"[§[§%i§] = param5;
         this.§"[§[§8!9§] = param6;
         this.§"[§[§,0§] = param7;
         this.§"[§[§'!0§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§"[§[param1];
      }
      
      private function §4q§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §0!,§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §%2§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §+2§;
         }
         §9X§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §%2§;
      }
      
      public function §9!&§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§9a§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§9a§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §1a§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§8!B§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§8!B§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §^?§(param1:String) : Number
      {
         if(!this.§9a§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§9a§[param1])
         {
            return this.§9a§[param1];
         }
         return 1;
      }
      
      public function §!!E§(param1:String) : Number
      {
         if(!this.§8!B§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§8!B§[param1])
         {
            return this.§8!B§[param1];
         }
         return 1;
      }
   }
}
