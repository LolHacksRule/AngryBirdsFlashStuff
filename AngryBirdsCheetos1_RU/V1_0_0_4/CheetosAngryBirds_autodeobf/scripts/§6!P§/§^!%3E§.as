package §6!P§
{
   public class §^!>§
   {
      
      public static const §33§:String = "linear";
      
      public static const §-9§:String = "sine_in";
      
      public static const §<!'§:String = "sine_out";
      
      public static const §[!-§:String = "quad_out";
      
      public static const §;Q§:String = "quad_in";
      
      public static const §4m§:String = "bounce_out";
      
      public static const §%>§:String = "bounce_in";
      
      public static const §?9§:String = "circular_out";
      
      public static const §8!Q§:String = "circular_in";
      
      private static var §2P§:§^!>§;
       
      
      private var §9!"§:Vector.<§+$§>;
      
      private var §]![§:Boolean;
      
      private var §3!H§:Boolean = true;
      
      public function §^!>§()
      {
         this.§9!"§ = new Vector.<§+$§>();
         super();
      }
      
      public static function get §[P§() : §^!>§
      {
         if(!§2P§)
         {
            §2P§ = new §^!>§();
         }
         return §2P§;
      }
      
      public function set §[!?§(param1:Boolean) : void
      {
         this.§3!H§ = param1;
      }
      
      public function §1h§() : void
      {
         var _loc2_:§+$§ = null;
         var _loc1_:int = this.§9!"§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9!"§[_loc1_];
            if(_loc2_.§"!$§)
            {
               this.§9!"§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §@m§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §+$§
      {
         var _loc6_:§1r§;
         (_loc6_ = new §1r§(param1,param2,param3,param4,param5)).§[!?§ = this.§3!H§;
         this.§9!"§.push(_loc6_);
         return _loc6_;
      }
      
      public function §#n§(... rest) : §+$§
      {
         var _loc2_:§9!D§ = null;
         var _loc3_:§<+§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§9!"§.indexOf(_loc2_);
            this.§9!"§.splice(_loc4_,1);
         }
         _loc3_ = new §<+§(rest,true);
         _loc3_.§[!?§ = this.§3!H§;
         this.§9!"§.push(_loc3_);
         return _loc3_;
      }
      
      public function §[!L§(... rest) : §+$§
      {
         var _loc2_:§9!D§ = null;
         var _loc3_:§<+§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§9!"§.indexOf(_loc2_);
            this.§9!"§.splice(_loc4_,1);
         }
         _loc3_ = new §<+§(rest,false);
         _loc3_.§[!?§ = this.§3!H§;
         this.§9!"§.push(_loc3_);
         return _loc3_;
      }
      
      public function §,-§() : void
      {
         this.§]![§ = true;
      }
      
      public function §,!V§() : void
      {
         this.§]![§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§+$§ = null;
         if(this.§]![§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!"§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§9!"§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§9!"§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
