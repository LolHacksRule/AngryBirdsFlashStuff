package §0Z§
{
   import §@!=§.*;
   
   public class §-!M§
   {
      
      public static const §0!;§:Function = §'W§.easeIn;
      
      public static const §#b§:Function = §3!p§.easeIn;
      
      public static const §`",§:Function = §3!p§.easeOut;
      
      public static const §5",§:Function = §^"#§.easeOut;
      
      public static const §62§:Function = §^"#§.easeIn;
      
      public static const § §:Function = §<"8§.easeOut;
      
      public static const §7P§:Function = §<"8§.easeIn;
      
      public static const §for §:Function = §^-§.easeOut;
      
      public static const §?n§:Function = §^-§.easeIn;
      
      private static var §%!Y§:§-!M§;
       
      
      protected var § x§:Vector.<§9"5§>;
      
      protected var §2x§:Boolean;
      
      protected var §6!]§:Boolean = true;
      
      public function §-!M§()
      {
         this.§ x§ = new Vector.<§9"5§>();
         super();
      }
      
      public static function get § "!§() : §-!M§
      {
         if(!§%!Y§)
         {
            §%!Y§ = new §-!M§();
         }
         return §%!Y§;
      }
      
      public function set §>"0§(param1:Boolean) : void
      {
         this.§6!]§ = param1;
      }
      
      public function §7!E§() : void
      {
         var _loc2_:§9"5§ = null;
         var _loc1_:int = this.§ x§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ x§[_loc1_];
            if(_loc2_.§>!S§)
            {
               this.§ x§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §+d§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §9"5§
      {
         param5 = param5 || §'W§.easeIn;
         var _loc6_:§-C§;
         (_loc6_ = new §-C§(param1,param2,param3,param4,param5)).§>"0§ = this.§6!]§;
         this.§ x§.push(_loc6_);
         return _loc6_;
      }
      
      public function §["!§(... rest) : §9"5§
      {
         var _loc2_:§?!X§ = null;
         var _loc3_:§%Z§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§ x§.indexOf(_loc2_);
            this.§ x§.splice(_loc4_,1);
         }
         _loc3_ = new §%Z§(rest,true);
         _loc3_.§>"0§ = this.§6!]§;
         this.§ x§.push(_loc3_);
         return _loc3_;
      }
      
      public function §=!1§(... rest) : §9"5§
      {
         var _loc2_:§?!X§ = null;
         var _loc3_:§%Z§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§ x§.indexOf(_loc2_);
            this.§ x§.splice(_loc4_,1);
         }
         _loc3_ = new §%Z§(rest,false);
         _loc3_.§>"0§ = this.§6!]§;
         this.§ x§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§2x§ = true;
      }
      
      public function resume() : void
      {
         this.§2x§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§9"5§ = null;
         if(this.§2x§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§ x§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§ x§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§ x§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
