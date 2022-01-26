package §+k§
{
   public class §+!&§
   {
      
      public static const §!"§:String = "linear";
      
      public static const §7!>§:String = "sine_in";
      
      public static const §=!C§:String = "sine_out";
      
      public static const §,"§:String = "quad_out";
      
      public static const §'C§:String = "quad_in";
      
      public static const §`!V§:String = "bounce_out";
      
      public static const §<!O§:String = "bounce_in";
      
      public static const §3!-§:String = "circular_out";
      
      public static const §5N§:String = "circular_in";
      
      private static var §%P§:§+!&§;
       
      
      private var §'!^§:Vector.<§%9§>;
      
      private var §<S§:Boolean;
      
      private var §^!Y§:Boolean = true;
      
      public function §+!&§()
      {
         this.§'!^§ = new Vector.<§%9§>();
         super();
      }
      
      public static function get §,§() : §+!&§
      {
         if(!§%P§)
         {
            §%P§ = new §+!&§();
         }
         return §%P§;
      }
      
      public function set §''§(param1:Boolean) : void
      {
         this.§^!Y§ = param1;
      }
      
      public function §@!,§() : void
      {
         var _loc2_:§%9§ = null;
         var _loc1_:int = this.§'!^§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§'!^§[_loc1_];
            if(_loc2_.§;U§)
            {
               this.§'!^§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §9x§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §%9§
      {
         var _loc6_:§@t§;
         (_loc6_ = new §@t§(param1,param2,param3,param4,param5)).§''§ = this.§^!Y§;
         this.§'!^§.push(_loc6_);
         return _loc6_;
      }
      
      public function §<!6§(... rest) : §%9§
      {
         var _loc2_:§2N§ = null;
         var _loc3_:§#`§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§'!^§.indexOf(_loc2_);
            this.§'!^§.splice(_loc4_,1);
         }
         _loc3_ = new §#`§(rest,true);
         _loc3_.§''§ = this.§^!Y§;
         this.§'!^§.push(_loc3_);
         return _loc3_;
      }
      
      public function §"]§(... rest) : §%9§
      {
         var _loc2_:§2N§ = null;
         var _loc3_:§#`§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§'!^§.indexOf(_loc2_);
            this.§'!^§.splice(_loc4_,1);
         }
         _loc3_ = new §#`§(rest,false);
         _loc3_.§''§ = this.§^!Y§;
         this.§'!^§.push(_loc3_);
         return _loc3_;
      }
      
      public function §-!>§() : void
      {
         this.§<S§ = true;
      }
      
      public function §7k§() : void
      {
         this.§<S§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§%9§ = null;
         if(this.§<S§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§'!^§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§'!^§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§'!^§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
