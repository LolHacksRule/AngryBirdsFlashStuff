package §4N§
{
   import §;8§.§3f§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §`!%§
   {
      
      public static const §9n§:int = 0;
      
      public static const §function§:int = b2Body.b2_staticBody;
      
      public static const §]0§:int = b2Body.b2_kinematicBody;
      
      public static const §;J§:int = b2Body.b2_dynamicBody;
      
      public static const §08§:int = 1;
      
      public static const §"!1§:int = 2;
      
      public static const §4!D§:int = 3;
      
      public static const §-!4§:int = 4;
      
      public static const §&m§:int = 5;
      
      public static const §&!4§:int = 6;
       
      
      public var mName:String;
      
      public var §&!=§:Array;
      
      public var §5!-§:Array;
      
      public var §&7§:Array;
      
      public function §`!%§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§&!=§ = new Array();
         this.§&!=§[§9n§] = this.§[?§(param2);
         this.§&!=§[§08§] = param3;
         this.§&!=§[§"!1§] = param4;
         this.§&!=§[§4!D§] = param5;
         this.§&!=§[§-!4§] = param6;
         this.§&!=§[§&m§] = param7;
         this.§&!=§[§&!4§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§&!=§[param1];
      }
      
      private function §[?§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §]0§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §function§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §;J§;
         }
         §3f§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §function§;
      }
      
      public function §3g§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§5!-§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§5!-§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §7?§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§&7§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§&7§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §2!&§(param1:String) : Number
      {
         if(!this.§5!-§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§5!-§[param1])
         {
            return this.§5!-§[param1];
         }
         return 1;
      }
      
      public function §7N§(param1:String) : Number
      {
         if(!this.§&7§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§&7§[param1])
         {
            return this.§&7§[param1];
         }
         return 1;
      }
   }
}
