package §-!;§
{
   public class §^!,§
   {
      
      public static const §7d§:String = "linear";
      
      public static const §-S§:String = "sine_in";
      
      public static const §-§:String = "sine_out";
      
      public static const §@!^§:String = "quad_out";
      
      public static const §`!?§:String = "quad_in";
      
      public static const §+C§:String = "bounce_out";
      
      public static const §5r§:String = "bounce_in";
      
      public static const §<!§:String = "circular_out";
      
      public static const §4q§:String = "circular_in";
      
      private static var §>'§:§^!,§;
       
      
      private var §+!+§:Vector.<§'a§>;
      
      private var §[7§:Boolean;
      
      private var §<P§:Boolean = true;
      
      public function §^!,§()
      {
         this.§+!+§ = new Vector.<§'a§>();
         super();
      }
      
      public static function get §0!S§() : §^!,§
      {
         if(!§>'§)
         {
            §>'§ = new §^!,§();
         }
         return §>'§;
      }
      
      public function set §2P§(param1:Boolean) : void
      {
         this.§<P§ = param1;
      }
      
      public function §3!7§() : void
      {
         var _loc2_:§'a§ = null;
         var _loc1_:int = this.§+!+§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+!+§[_loc1_];
            if(_loc2_.§?v§)
            {
               this.§+!+§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §3n§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §'a§
      {
         var _loc6_:§=!$§;
         (_loc6_ = new §=!$§(param1,param2,param3,param4,param5)).§2P§ = this.§<P§;
         this.§+!+§.push(_loc6_);
         return _loc6_;
      }
      
      public function §"!Y§(... rest) : §'a§
      {
         var _loc2_:§4!?§ = null;
         var _loc3_:§&!L§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§+!+§.indexOf(_loc2_);
            this.§+!+§.splice(_loc4_,1);
         }
         _loc3_ = new §&!L§(rest,true);
         _loc3_.§2P§ = this.§<P§;
         this.§+!+§.push(_loc3_);
         return _loc3_;
      }
      
      public function §^L§(... rest) : §'a§
      {
         var _loc2_:§4!?§ = null;
         var _loc3_:§&!L§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§+!+§.indexOf(_loc2_);
            this.§+!+§.splice(_loc4_,1);
         }
         _loc3_ = new §&!L§(rest,false);
         _loc3_.§2P§ = this.§<P§;
         this.§+!+§.push(_loc3_);
         return _loc3_;
      }
      
      public function §-'§() : void
      {
         this.§[7§ = true;
      }
      
      public function §?!,§() : void
      {
         this.§[7§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§'a§ = null;
         if(this.§[7§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!+§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§+!+§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§+!+§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
