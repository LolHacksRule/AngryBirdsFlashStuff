package §"f§
{
   public class §%1§
   {
      
      public static const §=!H§:String = "linear";
      
      public static const §=i§:String = "sine_in";
      
      public static const §-!X§:String = "sine_out";
      
      public static const §2!<§:String = "quad_out";
      
      public static const §=!B§:String = "quad_in";
      
      public static const §&S§:String = "bounce_out";
      
      public static const §98§:String = "bounce_in";
      
      public static const §&!P§:String = "circular_out";
      
      public static const §=!1§:String = "circular_in";
      
      private static var §5k§:§%1§;
       
      
      protected var §&!9§:Vector.<§7!e§>;
      
      protected var §6!$§:Boolean;
      
      protected var §`z§:Boolean = true;
      
      public function §%1§()
      {
         this.§&!9§ = new Vector.<§7!e§>();
         super();
      }
      
      public static function get §+j§() : §%1§
      {
         if(!§5k§)
         {
            §5k§ = new §%1§();
         }
         return §5k§;
      }
      
      public function set §+! §(param1:Boolean) : void
      {
         this.§`z§ = param1;
      }
      
      public function §5[§() : void
      {
         var _loc2_:§7!e§ = null;
         var _loc1_:int = this.§&!9§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§&!9§[_loc1_];
            if(_loc2_.§9g§)
            {
               this.§&!9§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §78§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §7!e§
      {
         var _loc6_:§,!3§;
         (_loc6_ = new §,!3§(param1,param2,param3,param4,param5)).§+! § = this.§`z§;
         this.§&!9§.push(_loc6_);
         return _loc6_;
      }
      
      public function §#i§(... rest) : §7!e§
      {
         var _loc2_:§9i§ = null;
         var _loc3_:§?V§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§&!9§.indexOf(_loc2_);
            this.§&!9§.splice(_loc4_,1);
         }
         _loc3_ = new §?V§(rest,true);
         _loc3_.§+! § = this.§`z§;
         this.§&!9§.push(_loc3_);
         return _loc3_;
      }
      
      public function §[!C§(... rest) : §7!e§
      {
         var _loc2_:§9i§ = null;
         var _loc3_:§?V§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§&!9§.indexOf(_loc2_);
            this.§&!9§.splice(_loc4_,1);
         }
         _loc3_ = new §?V§(rest,false);
         _loc3_.§+! § = this.§`z§;
         this.§&!9§.push(_loc3_);
         return _loc3_;
      }
      
      public function §2!§() : void
      {
         this.§6!$§ = true;
      }
      
      public function §6d§() : void
      {
         this.§6!$§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§7!e§ = null;
         if(this.§6!$§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!9§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§&!9§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§&!9§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
