package §`=§
{
   import §@V§.§`!5§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §`P§
   {
      
      public static const §!i§:int = 0;
      
      public static const §@e§:int = b2Body.b2_staticBody;
      
      public static const §<?§:int = b2Body.b2_kinematicBody;
      
      public static const §72§:int = b2Body.b2_dynamicBody;
      
      public static const §-a§:int = 1;
      
      public static const §;4§:int = 2;
      
      public static const §?!?§:int = 3;
      
      public static const §7X§:int = 4;
      
      public static const §?e§:int = 5;
      
      public static const §%!N§:int = 6;
       
      
      public var mName:String;
      
      public var §`!2§:Array;
      
      public var §+!J§:Array;
      
      public var §[O§:Array;
      
      public function §`P§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§`!2§ = new Array();
         this.§`!2§[§!i§] = this.§;Q§(param2);
         this.§`!2§[§-a§] = param3;
         this.§`!2§[§;4§] = param4;
         this.§`!2§[§?!?§] = param5;
         this.§`!2§[§7X§] = param6;
         this.§`!2§[§?e§] = param7;
         this.§`!2§[§%!N§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§`!2§[param1];
      }
      
      private function §;Q§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §<?§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §@e§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §72§;
         }
         §`!5§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §@e§;
      }
      
      public function §=v§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§+!J§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§+!J§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §-n§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§[O§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§[O§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §&q§(param1:String) : Number
      {
         if(!this.§+!J§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§+!J§[param1])
         {
            return this.§+!J§[param1];
         }
         return 1;
      }
      
      public function §+!L§(param1:String) : Number
      {
         if(!this.§[O§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§[O§[param1])
         {
            return this.§[O§[param1];
         }
         return 1;
      }
   }
}
