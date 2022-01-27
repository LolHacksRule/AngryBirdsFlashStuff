package §?!C§
{
   public class §[!-§
   {
      
      public static const §'!P§:String = "linear";
      
      public static const §3N§:String = "sine_in";
      
      public static const §0!§:String = "sine_out";
      
      public static const §>X§:String = "quad_out";
      
      public static const §3d§:String = "quad_in";
      
      public static const §%!D§:String = "bounce_out";
      
      public static const §>^§:String = "bounce_in";
      
      public static const §9!6§:String = "circular_out";
      
      public static const §-5§:String = "circular_in";
      
      private static var §4#§:§[!-§;
       
      
      private var §2!'§:Vector.<§7!3§>;
      
      private var §0!,§:Boolean;
      
      private var §@E§:Boolean = true;
      
      public function §[!-§()
      {
         this.§2!'§ = new Vector.<§7!3§>();
         super();
      }
      
      public static function get § set§() : §[!-§
      {
         if(!§4#§)
         {
            §4#§ = new §[!-§();
         }
         return §4#§;
      }
      
      public function set §4!"§(param1:Boolean) : void
      {
         this.§@E§ = param1;
      }
      
      public function §,@§() : void
      {
         var _loc2_:§7!3§ = null;
         var _loc1_:int = this.§2!'§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2!'§[_loc1_];
            if(_loc2_.§!D§)
            {
               this.§2!'§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §6B§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §7!3§
      {
         var _loc6_:§`>§;
         (_loc6_ = new §`>§(param1,param2,param3,param4,param5)).§4!"§ = this.§@E§;
         this.§2!'§.push(_loc6_);
         return _loc6_;
      }
      
      public function §5&§(... rest) : §7!3§
      {
         var _loc2_:§!M§ = null;
         var _loc3_:§!@§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§2!'§.indexOf(_loc2_);
            this.§2!'§.splice(_loc4_,1);
         }
         _loc3_ = new §!@§(rest,true);
         _loc3_.§4!"§ = this.§@E§;
         this.§2!'§.push(_loc3_);
         return _loc3_;
      }
      
      public function §0c§(... rest) : §7!3§
      {
         var _loc2_:§!M§ = null;
         var _loc3_:§!@§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§2!'§.indexOf(_loc2_);
            this.§2!'§.splice(_loc4_,1);
         }
         _loc3_ = new §!@§(rest,false);
         _loc3_.§4!"§ = this.§@E§;
         this.§2!'§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§0!,§ = true;
      }
      
      public function resume() : void
      {
         this.§0!,§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§7!3§ = null;
         if(this.§0!,§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§2!'§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§2!'§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§2!'§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
