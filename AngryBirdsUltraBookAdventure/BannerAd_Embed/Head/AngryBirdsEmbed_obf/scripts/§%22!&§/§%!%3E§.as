package §"!&§
{
   public class §%!>§
   {
      
      public static const § s§:String = "linear";
      
      public static const §%N§:String = "sine_in";
      
      public static const §1!C§:String = "sine_out";
      
      public static const §4G§:String = "quad_out";
      
      public static const §!!G§:String = "quad_in";
      
      public static const §##§:String = "bounce_out";
      
      public static const §"x§:String = "bounce_in";
      
      public static const §+1§:String = "circular_out";
      
      public static const §>!'§:String = "circular_in";
      
      private static var §6!3§:§%!>§;
       
      
      private var §+T§:Vector.<§-!;§>;
      
      private var §;-§:Boolean;
      
      private var §4L§:Boolean = true;
      
      public function §%!>§()
      {
         this.§+T§ = new Vector.<§-!;§>();
         super();
      }
      
      public static function get §-]§() : §%!>§
      {
         if(!§6!3§)
         {
            §6!3§ = new §%!>§();
         }
         return §6!3§;
      }
      
      public function set §9V§(param1:Boolean) : void
      {
         this.§4L§ = param1;
      }
      
      public function §-5§() : void
      {
         var _loc2_:§-!;§ = null;
         var _loc1_:int = this.§+T§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+T§[_loc1_];
            if(_loc2_.§ D§)
            {
               this.§+T§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §?U§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : § !5§
      {
         var _loc6_:§^_§;
         (_loc6_ = new §^_§(param1,param2,param3,param4,param5)).§9V§ = this.§4L§;
         this.§+T§.push(_loc6_);
         return _loc6_;
      }
      
      public function §&0§(... rest) : § !5§
      {
         var _loc2_:§+!3§ = null;
         var _loc3_:§"!%§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§+T§.indexOf(_loc2_);
            this.§+T§.splice(_loc4_,1);
         }
         _loc3_ = new §"!%§(rest,true);
         _loc3_.§9V§ = this.§4L§;
         this.§+T§.push(_loc3_);
         return _loc3_;
      }
      
      public function §>!,§(... rest) : § !5§
      {
         var _loc2_:§+!3§ = null;
         var _loc3_:§"!%§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§+T§.indexOf(_loc2_);
            this.§+T§.splice(_loc4_,1);
         }
         _loc3_ = new §"!%§(rest,false);
         _loc3_.§9V§ = this.§4L§;
         this.§+T§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§;-§ = true;
      }
      
      public function resume() : void
      {
         this.§;-§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§-!;§ = null;
         if(this.§;-§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§+T§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§+T§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§+T§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
