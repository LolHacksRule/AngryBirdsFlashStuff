package § ;§
{
   public class §4N§
   {
      
      public static const §7k§:String = "linear";
      
      public static const §0!+§:String = "sine_in";
      
      public static const §>x§:String = "sine_out";
      
      public static const §;j§:String = "quad_out";
      
      public static const §6!9§:String = "quad_in";
      
      public static const §@T§:String = "bounce_out";
      
      public static const §<x§:String = "bounce_in";
      
      public static const §>!F§:String = "circular_out";
      
      public static const §=!!§:String = "circular_in";
      
      private static var §;_§:§4N§;
       
      
      private var §?_§:Vector.<§ X§>;
      
      private var §<y§:Boolean;
      
      private var §6,§:Boolean = true;
      
      public function §4N§()
      {
         this.§?_§ = new Vector.<§ X§>();
         super();
      }
      
      public static function get §-!U§() : §4N§
      {
         if(!§;_§)
         {
            §;_§ = new §4N§();
         }
         return §;_§;
      }
      
      public function set §[!6§(param1:Boolean) : void
      {
         this.§6,§ = param1;
      }
      
      public function §8!4§() : void
      {
         var _loc2_:§ X§ = null;
         var _loc1_:int = this.§?_§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§?_§[_loc1_];
            if(_loc2_.§#Y§)
            {
               this.§?_§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §5!N§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §3!$§
      {
         var _loc6_:§3!Y§;
         (_loc6_ = new §3!Y§(param1,param2,param3,param4,param5)).§[!6§ = this.§6,§;
         this.§?_§.push(_loc6_);
         return _loc6_;
      }
      
      public function §]!§(... rest) : §3!$§
      {
         var _loc2_:§2^§ = null;
         var _loc3_:§%&§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§?_§.indexOf(_loc2_);
            this.§?_§.splice(_loc4_,1);
         }
         _loc3_ = new §%&§(rest,true);
         _loc3_.§[!6§ = this.§6,§;
         this.§?_§.push(_loc3_);
         return _loc3_;
      }
      
      public function §4g§(... rest) : §3!$§
      {
         var _loc2_:§2^§ = null;
         var _loc3_:§%&§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§?_§.indexOf(_loc2_);
            this.§?_§.splice(_loc4_,1);
         }
         _loc3_ = new §%&§(rest,false);
         _loc3_.§[!6§ = this.§6,§;
         this.§?_§.push(_loc3_);
         return _loc3_;
      }
      
      public function §[]§() : void
      {
         this.§<y§ = true;
      }
      
      public function §>!E§() : void
      {
         this.§<y§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§ X§ = null;
         if(this.§<y§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§?_§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§?_§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§?_§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
