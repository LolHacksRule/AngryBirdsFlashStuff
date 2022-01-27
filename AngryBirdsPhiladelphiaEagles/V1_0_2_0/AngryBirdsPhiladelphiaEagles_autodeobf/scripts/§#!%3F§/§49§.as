package §#!?§
{
   public class §49§
   {
      
      public static const §%!2§:String = "linear";
      
      public static const §#J§:String = "sine_in";
      
      public static const §-!O§:String = "sine_out";
      
      public static const §+<§:String = "quad_out";
      
      public static const §5y§:String = "quad_in";
      
      public static const § get§:String = "bounce_out";
      
      public static const §-X§:String = "bounce_in";
      
      public static const §3z§:String = "circular_out";
      
      public static const §4a§:String = "circular_in";
      
      private static var §]-§:§49§;
       
      
      protected var §7!-§:Vector.<§&N§>;
      
      protected var §>N§:Boolean;
      
      protected var §-+§:Boolean = true;
      
      public function §49§()
      {
         this.§7!-§ = new Vector.<§&N§>();
         super();
      }
      
      public static function get §&y§() : §49§
      {
         if(!§]-§)
         {
            §]-§ = new §49§();
         }
         return §]-§;
      }
      
      public function set §8r§(param1:Boolean) : void
      {
         this.§-+§ = param1;
      }
      
      public function §]!&§() : void
      {
         var _loc2_:§&N§ = null;
         var _loc1_:int = this.§7!-§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7!-§[_loc1_];
            if(_loc2_.§`J§)
            {
               this.§7!-§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §=!3§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §&N§
      {
         var _loc6_:§1!>§;
         (_loc6_ = new §1!>§(param1,param2,param3,param4,param5)).§8r§ = this.§-+§;
         this.§7!-§.push(_loc6_);
         return _loc6_;
      }
      
      public function §&7§(... rest) : §&N§
      {
         var _loc2_:§'o§ = null;
         var _loc3_:§8!7§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§7!-§.indexOf(_loc2_);
            this.§7!-§.splice(_loc4_,1);
         }
         _loc3_ = new §8!7§(rest,true);
         _loc3_.§8r§ = this.§-+§;
         this.§7!-§.push(_loc3_);
         return _loc3_;
      }
      
      public function §,z§(... rest) : §&N§
      {
         var _loc2_:§'o§ = null;
         var _loc3_:§8!7§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§7!-§.indexOf(_loc2_);
            this.§7!-§.splice(_loc4_,1);
         }
         _loc3_ = new §8!7§(rest,false);
         _loc3_.§8r§ = this.§-+§;
         this.§7!-§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§>N§ = true;
      }
      
      public function resume() : void
      {
         this.§>N§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§&N§ = null;
         if(this.§>N§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§7!-§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§7!-§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§7!-§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
