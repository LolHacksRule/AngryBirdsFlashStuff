package §=!F§
{
   public class §"!2§
   {
      
      public static const §8N§:String = "linear";
      
      public static const §7!,§:String = "sine_in";
      
      public static const §@!P§:String = "sine_out";
      
      public static const §"H§:String = "quad_out";
      
      public static const § !<§:String = "quad_in";
      
      public static const §6f§:String = "bounce_out";
      
      public static const §[!%§:String = "bounce_in";
      
      public static const §+!^§:String = "circular_out";
      
      public static const §3d§:String = "circular_in";
      
      private static var §?e§:§"!2§;
       
      
      protected var § !V§:Vector.<§#!P§>;
      
      protected var §^l§:Boolean;
      
      protected var §7C§:Boolean = true;
      
      public function §"!2§()
      {
         this.§ !V§ = new Vector.<§#!P§>();
         super();
      }
      
      public static function get §'!S§() : §"!2§
      {
         if(!§?e§)
         {
            §?e§ = new §"!2§();
         }
         return §?e§;
      }
      
      public function set §!5§(param1:Boolean) : void
      {
         this.§7C§ = param1;
      }
      
      public function §^Q§() : void
      {
         var _loc2_:§#!P§ = null;
         var _loc1_:int = this.§ !V§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ !V§[_loc1_];
            if(_loc2_.§8>§)
            {
               this.§ !V§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §-!S§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §#!P§
      {
         var _loc6_:§3!Q§;
         (_loc6_ = new §3!Q§(param1,param2,param3,param4,param5)).§!5§ = this.§7C§;
         this.§ !V§.push(_loc6_);
         return _loc6_;
      }
      
      public function §,!+§(... rest) : §#!P§
      {
         var _loc2_:§?Y§ = null;
         var _loc3_:§0K§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§ !V§.indexOf(_loc2_);
            this.§ !V§.splice(_loc4_,1);
         }
         _loc3_ = new §0K§(rest,true);
         _loc3_.§!5§ = this.§7C§;
         this.§ !V§.push(_loc3_);
         return _loc3_;
      }
      
      public function §<!X§(... rest) : §#!P§
      {
         var _loc2_:§?Y§ = null;
         var _loc3_:§0K§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§ !V§.indexOf(_loc2_);
            this.§ !V§.splice(_loc4_,1);
         }
         _loc3_ = new §0K§(rest,false);
         _loc3_.§!5§ = this.§7C§;
         this.§ !V§.push(_loc3_);
         return _loc3_;
      }
      
      public function §%!&§() : void
      {
         this.§^l§ = true;
      }
      
      public function §2f§() : void
      {
         this.§^l§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§#!P§ = null;
         if(this.§^l§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !V§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§ !V§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§ !V§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
