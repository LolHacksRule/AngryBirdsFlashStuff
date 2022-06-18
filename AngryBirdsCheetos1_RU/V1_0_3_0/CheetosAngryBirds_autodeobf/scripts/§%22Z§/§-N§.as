package §"Z§
{
   public class §-N§
   {
      
      public static const §&!U§:String = "linear";
      
      public static const §5l§:String = "sine_in";
      
      public static const §>=§:String = "sine_out";
      
      public static const §?!T§:String = "quad_out";
      
      public static const §7!V§:String = "quad_in";
      
      public static const §6L§:String = "bounce_out";
      
      public static const §!z§:String = "bounce_in";
      
      public static const §"!+§:String = "circular_out";
      
      public static const §'P§:String = "circular_in";
      
      private static var §9-§:§-N§;
       
      
      protected var §!§:Vector.<§-c§>;
      
      protected var §8!K§:Boolean;
      
      protected var §?q§:Boolean = true;
      
      public function §-N§()
      {
         this.§!§ = new Vector.<§-c§>();
         super();
      }
      
      public static function get §<?§() : §-N§
      {
         if(!§9-§)
         {
            §9-§ = new §-N§();
         }
         return §9-§;
      }
      
      public function set §+!,§(param1:Boolean) : void
      {
         this.§?q§ = param1;
      }
      
      public function §9"§() : void
      {
         var _loc2_:§-c§ = null;
         var _loc1_:int = this.§!§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!§[_loc1_];
            if(_loc2_.§ else§)
            {
               this.§!§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §,!D§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §-c§
      {
         var _loc6_:§>!C§;
         (_loc6_ = new §>!C§(param1,param2,param3,param4,param5)).§+!,§ = this.§?q§;
         this.§!§.push(_loc6_);
         return _loc6_;
      }
      
      public function §4t§(... rest) : §-c§
      {
         var _loc2_:§2!'§ = null;
         var _loc3_:§=S§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§!§.indexOf(_loc2_);
            this.§!§.splice(_loc4_,1);
         }
         _loc3_ = new §=S§(rest,true);
         _loc3_.§+!,§ = this.§?q§;
         this.§!§.push(_loc3_);
         return _loc3_;
      }
      
      public function §@!N§(... rest) : §-c§
      {
         var _loc2_:§2!'§ = null;
         var _loc3_:§=S§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§!§.indexOf(_loc2_);
            this.§!§.splice(_loc4_,1);
         }
         _loc3_ = new §=S§(rest,false);
         _loc3_.§+!,§ = this.§?q§;
         this.§!§.push(_loc3_);
         return _loc3_;
      }
      
      public function § D§() : void
      {
         this.§8!K§ = true;
      }
      
      public function §"r§() : void
      {
         this.§8!K§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§-c§ = null;
         if(this.§8!K§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§!§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§!§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§!§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
