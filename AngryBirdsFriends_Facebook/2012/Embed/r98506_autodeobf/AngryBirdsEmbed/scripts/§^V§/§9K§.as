package §^V§
{
   import §-p§.§&2§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §9K§
   {
      
      public static const §-H§:int = 0;
      
      public static const §3!5§:int = b2Body.b2_staticBody;
      
      public static const §-V§:int = b2Body.b2_kinematicBody;
      
      public static const §[1§:int = b2Body.b2_dynamicBody;
      
      public static const §,%§:int = 1;
      
      public static const §&E§:int = 2;
      
      public static const §7!8§:int = 3;
      
      public static const §9!3§:int = 4;
      
      public static const §9c§:int = 5;
      
      public static const §&!=§:int = 6;
       
      
      public var mName:String;
      
      public var §`d§:Array;
      
      public var §8!,§:Array;
      
      public var §%3§:Array;
      
      public function §9K§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§`d§ = new Array();
         this.§`d§[§-H§] = this.§[V§(param2);
         this.§`d§[§,%§] = param3;
         this.§`d§[§&E§] = param4;
         this.§`d§[§7!8§] = param5;
         this.§`d§[§9!3§] = param6;
         this.§`d§[§9c§] = param7;
         this.§`d§[§&!=§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§`d§[param1];
      }
      
      private function §[V§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §-V§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §3!5§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §[1§;
         }
         §&2§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §3!5§;
      }
      
      public function §]Q§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§8!,§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§8!,§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §3>§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§%3§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§%3§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §-I§(param1:String) : Number
      {
         if(!this.§8!,§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§8!,§[param1])
         {
            return this.§8!,§[param1];
         }
         return 1;
      }
      
      public function §'!<§(param1:String) : Number
      {
         if(!this.§%3§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§%3§[param1])
         {
            return this.§%3§[param1];
         }
         return 1;
      }
   }
}
