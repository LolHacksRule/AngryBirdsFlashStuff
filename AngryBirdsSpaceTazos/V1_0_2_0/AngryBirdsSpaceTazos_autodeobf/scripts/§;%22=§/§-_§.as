package §;"=§
{
   import §'#§.§?u§;
   import §9!G§.§"!S§;
   import flash.media.Sound;
   
   public class §-_§
   {
      
      public static const §]"C§:String = "collision";
      
      public static const § p§:String = "launch";
      
      public static const §;6§:String = "special";
      
      public static const §-!0§:String = "selection";
      
      public static const §?^§:String = "unselection";
      
      public static const §3i§:String = "collisionSound";
      
      public static const §<B§:String = "damageSound";
      
      public static const §]d§:String = "destroyedSound";
      
      public static const §`9§:String = "rollingSound";
      
      public static const §[i§:String = "enter_atmosphere";
      
      public static const §0!y§:String = "exit_atmosphere";
       
      
      private var §>X§:§?u§;
      
      private var §1!z§:§?u§;
      
      private var §8H§:§?u§;
      
      private var §"";§:§?u§;
      
      private var §7c§:§?u§;
      
      public function §-_§()
      {
         super();
         this.§>X§ = new §?u§();
         this.§1!z§ = new §?u§();
         this.§8H§ = new §?u§();
         this.§"";§ = new §?u§();
         this.§7c§ = new §?u§();
      }
      
      public function §%X§(param1:Object) : void
      {
         this.§8x§(param1);
         this.§;G§(param1);
         if(param1.audioChannels)
         {
            this.§,!^§(param1);
         }
         if(param1.sampleSettings)
         {
            this.§]!g§(param1);
         }
         this.§&!s§(param1);
      }
      
      private function §8x§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Vector.<String> = null;
         var _loc4_:String = null;
         for(_loc2_ in param1.audioGroups)
         {
            _loc3_ = new Vector.<String>();
            for each(_loc4_ in param1.audioGroups[_loc2_])
            {
               _loc3_.push(_loc4_);
            }
            this.§>X§[_loc2_] = _loc3_;
         }
      }
      
      private function §,!^§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1.audioChannels)
         {
            this.§1!z§[_loc2_] = param1.audioChannels[_loc2_];
         }
      }
      
      private function §]!g§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:Sound = null;
         for(_loc2_ in param1.sampleSettings)
         {
            _loc3_ = param1.sampleSettings[_loc2_];
            if(_loc3_.channel)
            {
               this.§1!z§[_loc2_] = _loc3_.channel.toString();
            }
            if(_loc3_.volume)
            {
               this.§8H§[_loc2_] = parseFloat(_loc3_.volume);
            }
            _loc2_ = this.§2!$§(_loc2_);
            if(_loc4_ = §"!S§.getSound(_loc2_,false))
            {
            }
         }
      }
      
      private function §;G§(param1:Object) : void
      {
         var _loc2_:* = null;
         if(!param1.sampleNameMappings)
         {
            return;
         }
         for(_loc2_ in param1.sampleNameMappings)
         {
            this.§"";§[_loc2_] = param1.sampleNameMappings[_loc2_].toString();
         }
      }
      
      protected function §&!s§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         for(_loc4_ in param1.audioChannelSettings)
         {
            _loc2_ = param1.audioChannelSettings[_loc4_].numChannels;
            _loc3_ = param1.audioChannelSettings[_loc4_].volume;
            §"!S§.§4+§(_loc4_,_loc2_,_loc3_);
            this.§7c§[_loc4_] = _loc3_;
         }
      }
      
      protected function §[!e§(param1:String) : String
      {
         var _loc2_:Vector.<String> = this.§>X§[param1];
         if(!_loc2_)
         {
            return null;
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      protected function §9>§(param1:String) : String
      {
         return this.§1!z§[param1];
      }
      
      protected function §<U§(param1:String) : Number
      {
         return this.§8H§[param1];
      }
      
      protected function §2!$§(param1:String) : String
      {
         return this.§"";§[param1] || param1;
      }
      
      protected function §!!3§(param1:String) : Number
      {
         return this.§7c§[param1];
      }
      
      public function playSound(param1:String, param2:int = 0, param3:Number = 0) : void
      {
         var _loc4_:String;
         if(!(_loc4_ = this.§[!e§(param1)))
         {
            _loc4_ = param1;
         }
         var _loc5_:String = this.§9>§(_loc4_);
         var _loc6_:Number = this.§<U§(_loc4_);
         if(isNaN(_loc6_))
         {
            _loc6_ = -1;
         }
         var _loc7_:String;
         if(!(_loc7_ = this.§2!$§(_loc4_)))
         {
            return;
         }
         if(_loc5_ == null)
         {
            §"!S§.playSound(_loc7_,§"!S§.§@!w§,param2,_loc6_);
         }
         else
         {
            §"!S§.playSound(_loc7_,_loc5_,param2,_loc6_,param3);
         }
      }
      
      public function §]R§(param1:String) : void
      {
         var _loc2_:String = this.§[!e§(param1);
         if(!_loc2_)
         {
            _loc2_ = param1;
         }
         var _loc3_:String = this.§9>§(_loc2_);
         if(_loc3_ == null)
         {
            §"!S§.§]R§(§"!S§.§@!w§);
         }
         else
         {
            §"!S§.§]R§(_loc3_);
         }
      }
   }
}
