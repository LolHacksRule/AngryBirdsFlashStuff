package §'K§
{
   public class §3C§
   {
      
      public static const §5t§:String = "linear";
      
      public static const §9!M§:String = "sine_in";
      
      public static const §4Z§:String = "sine_out";
      
      public static const §,k§:String = "quad_out";
      
      public static const §!p§:String = "quad_in";
      
      public static const § !1§:String = "bounce_out";
      
      public static const §'!7§:String = "bounce_in";
      
      public static const §[!-§:String = "circular_out";
      
      public static const §%l§:String = "circular_in";
      
      private static var §5! §:§3C§;
       
      
      protected var §=!!§:Vector.<§>#§>;
      
      protected var §4@§:Boolean;
      
      protected var §!y§:Boolean = true;
      
      public function §3C§()
      {
         this.§=!!§ = new Vector.<§>#§>();
         super();
      }
      
      public static function get §>o§() : §3C§
      {
         if(!§5! §)
         {
            §5! § = new §3C§();
         }
         return §5! §;
      }
      
      public function set §&!&§(param1:Boolean) : void
      {
         this.§!y§ = param1;
      }
      
      public function §"!6§() : void
      {
         var _loc2_:§>#§ = null;
         var _loc1_:int = this.§=!!§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§=!!§[_loc1_];
            if(_loc2_.§`j§)
            {
               this.§=!!§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §<t§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §>#§
      {
         var _loc6_:§7n§;
         (_loc6_ = new §7n§(param1,param2,param3,param4,param5)).§&!&§ = this.§!y§;
         this.§=!!§.push(_loc6_);
         return _loc6_;
      }
      
      public function §=!3§(... rest) : §>#§
      {
         var _loc2_:§%!4§ = null;
         var _loc3_:§4d§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§=!!§.indexOf(_loc2_);
            this.§=!!§.splice(_loc4_,1);
         }
         _loc3_ = new §4d§(rest,true);
         _loc3_.§&!&§ = this.§!y§;
         this.§=!!§.push(_loc3_);
         return _loc3_;
      }
      
      public function §<!"§(... rest) : §>#§
      {
         var _loc2_:§%!4§ = null;
         var _loc3_:§4d§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§=!!§.indexOf(_loc2_);
            this.§=!!§.splice(_loc4_,1);
         }
         _loc3_ = new §4d§(rest,false);
         _loc3_.§&!&§ = this.§!y§;
         this.§=!!§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§4@§ = true;
      }
      
      public function resume() : void
      {
         this.§4@§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§>#§ = null;
         if(this.§4@§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§=!!§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§=!!§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§=!!§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
