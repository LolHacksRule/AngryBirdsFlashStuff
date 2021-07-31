package §!c§
{
   import §2§.§0!<§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §4F§
   {
      
      public static const §@]§:int = 0;
      
      public static const §7i§:int = b2Body.b2_staticBody;
      
      public static const §0!!§:int = b2Body.b2_kinematicBody;
      
      public static const §^!=§:int = b2Body.b2_dynamicBody;
      
      public static const §4!8§:int = 1;
      
      public static const §0^§:int = 2;
      
      public static const §5X§:int = 3;
      
      public static const §;!"§:int = 4;
      
      public static const §8!@§:int = 5;
      
      public static const §+n§:int = 6;
       
      
      public var mName:String;
      
      public var §7g§:Array;
      
      public var §-a§:Array;
      
      public var §8X§:Array;
      
      public function §4F§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§7g§ = new Array();
         this.§7g§[§@]§] = this.§2l§(param2);
         this.§7g§[§4!8§] = param3;
         this.§7g§[§0^§] = param4;
         this.§7g§[§5X§] = param5;
         this.§7g§[§;!"§] = param6;
         this.§7g§[§8!@§] = param7;
         this.§7g§[§+n§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§7g§[param1];
      }
      
      private function §2l§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §0!!§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §7i§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §^!=§;
         }
         §0!<§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §7i§;
      }
      
      public function §?Z§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§-a§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§-a§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §=!1§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§8X§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§8X§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §@g§(param1:String) : Number
      {
         if(!this.§-a§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§-a§[param1])
         {
            return this.§-a§[param1];
         }
         return 1;
      }
      
      public function §]"§(param1:String) : Number
      {
         if(!this.§8X§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§8X§[param1])
         {
            return this.§8X§[param1];
         }
         return 1;
      }
   }
}
