package §!T§
{
   import §9H§.§@M§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §^^§
   {
      
      public static const §<!A§:int = 0;
      
      public static const §3i§:int = b2Body.b2_staticBody;
      
      public static const §-1§:int = b2Body.b2_kinematicBody;
      
      public static const §3C§:int = b2Body.b2_dynamicBody;
      
      public static const §]q§:int = 1;
      
      public static const §-m§:int = 2;
      
      public static const §2l§:int = 3;
      
      public static const §,T§:int = 4;
      
      public static const §6,§:int = 5;
      
      public static const §?!%§:int = 6;
       
      
      public var mName:String;
      
      public var §+&§:Array;
      
      public var §`!8§:Array;
      
      public var §;d§:Array;
      
      public function §^^§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§+&§ = new Array();
         this.§+&§[§<!A§] = this.§8<§(param2);
         this.§+&§[§]q§] = param3;
         this.§+&§[§-m§] = param4;
         this.§+&§[§2l§] = param5;
         this.§+&§[§,T§] = param6;
         this.§+&§[§6,§] = param7;
         this.§+&§[§?!%§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§+&§[param1];
      }
      
      private function §8<§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §-1§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §3i§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §3C§;
         }
         §@M§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §3i§;
      }
      
      public function §^!3§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§`!8§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§`!8§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §,!7§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§;d§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§;d§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §6m§(param1:String) : Number
      {
         if(!this.§`!8§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§`!8§[param1])
         {
            return this.§`!8§[param1];
         }
         return 1;
      }
      
      public function §-`§(param1:String) : Number
      {
         if(!this.§;d§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§;d§[param1])
         {
            return this.§;d§[param1];
         }
         return 1;
      }
   }
}
