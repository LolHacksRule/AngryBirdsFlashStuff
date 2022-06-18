package §5x§
{
   import §&i§.b2Body;
   import §^!&§.§;C§;
   
   public class §<!8§
   {
      
      public static const § o§:int = 0;
      
      public static const §?!N§:int = b2Body.b2_staticBody;
      
      public static const §4P§:int = b2Body.b2_kinematicBody;
      
      public static const §'c§:int = b2Body.b2_dynamicBody;
      
      public static const §,'§:int = 1;
      
      public static const §,M§:int = 2;
      
      public static const §`-§:int = 3;
      
      public static const §6g§:int = 4;
      
      public static const §"![§:int = 5;
      
      public static const §!!'§:int = 6;
       
      
      public var mName:String;
      
      public var §?!W§:Array;
      
      public var §2!0§:Array;
      
      public var §8;§:Array;
      
      public function §<!8§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§?!W§ = new Array();
         this.§?!W§[§ o§] = this.§7!_§(param2);
         this.§?!W§[§,'§] = param3;
         this.§?!W§[§,M§] = param4;
         this.§?!W§[§`-§] = param5;
         this.§?!W§[§6g§] = param6;
         this.§?!W§[§"![§] = param7;
         this.§?!W§[§!!'§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§?!W§[param1];
      }
      
      private function §7!_§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §4P§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §?!N§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §'c§;
         }
         §;C§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §?!N§;
      }
      
      public function §8Y§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§2!0§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§2!0§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §0w§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§8;§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§8;§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §#l§(param1:String) : Number
      {
         if(!this.§2!0§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§2!0§[param1])
         {
            return this.§2!0§[param1];
         }
         return 1;
      }
      
      public function §;j§(param1:String) : Number
      {
         if(!this.§8;§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§8;§[param1])
         {
            return this.§8;§[param1];
         }
         return 1;
      }
   }
}
