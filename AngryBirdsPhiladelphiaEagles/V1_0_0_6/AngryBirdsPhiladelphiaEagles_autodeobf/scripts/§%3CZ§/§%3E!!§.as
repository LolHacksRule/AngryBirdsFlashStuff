package §<Z§
{
   import §3!O§.§5q§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §>!!§
   {
      
      public static const §6_§:int = 0;
      
      public static const §;^§:int = b2Body.b2_staticBody;
      
      public static const §,A§:int = b2Body.b2_kinematicBody;
      
      public static const §`K§:int = b2Body.b2_dynamicBody;
      
      public static const §+R§:int = 1;
      
      public static const §&o§:int = 2;
      
      public static const §%!$§:int = 3;
      
      public static const §]i§:int = 4;
      
      public static const §!F§:int = 5;
      
      public static const §=^§:int = 6;
       
      
      public var mName:String;
      
      public var §&'§:Array;
      
      public var §]P§:Array;
      
      public var §+o§:Array;
      
      public function §>!!§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§&'§ = new Array();
         this.§&'§[§6_§] = this.§,o§(param2);
         this.§&'§[§+R§] = param3;
         this.§&'§[§&o§] = param4;
         this.§&'§[§%!$§] = param5;
         this.§&'§[§]i§] = param6;
         this.§&'§[§!F§] = param7;
         this.§&'§[§=^§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§&'§[param1];
      }
      
      private function §,o§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §,A§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §;^§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §`K§;
         }
         §5q§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §;^§;
      }
      
      public function §?l§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§]P§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§]P§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §7!B§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§+o§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§+o§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §`3§(param1:String) : Number
      {
         if(!this.§]P§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§]P§[param1])
         {
            return this.§]P§[param1];
         }
         return 1;
      }
      
      public function §;!5§(param1:String) : Number
      {
         if(!this.§+o§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§+o§[param1])
         {
            return this.§+o§[param1];
         }
         return 1;
      }
   }
}
