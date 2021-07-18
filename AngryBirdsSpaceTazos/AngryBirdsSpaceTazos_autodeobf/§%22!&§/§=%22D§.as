package §"!&§
{
   import § !Y§.§[!%§;
   import §3"#§.§<!O§;
   import flash.media.Sound;
   
   public class §="D§
   {
      
      public static const §4-§:String = "collision";
      
      public static const §^!i§:String = "launch";
      
      public static const §@"-§:String = "special";
      
      public static const §1"6§:String = "selection";
      
      public static const §-!4§:String = "unselection";
      
      public static const §5§:String = "collisionSound";
      
      public static const §-h§:String = "damageSound";
      
      public static const §9!K§:String = "destroyedSound";
      
      public static const §3g§:String = "rollingSound";
      
      public static const §06§:String = "enter_atmosphere";
      
      public static const §?+§:String = "exit_atmosphere";
       
      
      private var §2!f§:§[!%§;
      
      private var §7"§:§[!%§;
      
      private var §`8§:§[!%§;
      
      private var §'T§:§[!%§;
      
      private var §0!p§:§[!%§;
      
      public function §="D§()
      {
         super();
         this.§2!f§ = new §[!%§();
         this.§7"§ = new §[!%§();
         this.§`8§ = new §[!%§();
         this.§'T§ = new §[!%§();
         this.§0!p§ = new §[!%§();
      }
      
      public function §?O§(param1:Object) : void
      {
         this.§-!0§(param1);
         this.§7!j§(param1);
         if(param1.audioChannels)
         {
            this.§^!j§(param1);
         }
         if(param1.sampleSettings)
         {
            this.§5k§(param1);
         }
         this.§;!k§(param1);
      }
      
      private function §-!0§(param1:Object) : void
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
            this.§2!f§[_loc2_] = _loc3_;
         }
      }
      
      private function §^!j§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1.audioChannels)
         {
            this.§7"§[_loc2_] = param1.audioChannels[_loc2_];
         }
      }
      
      private function §5k§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:Sound = null;
         for(_loc2_ in param1.sampleSettings)
         {
            _loc3_ = param1.sampleSettings[_loc2_];
            if(_loc3_.channel)
            {
               this.§7"§[_loc2_] = _loc3_.channel.toString();
            }
            if(_loc3_.volume)
            {
               this.§`8§[_loc2_] = parseFloat(_loc3_.volume);
            }
            _loc2_ = this.§%y§(_loc2_);
            if(_loc4_ = §<!O§.getSound(_loc2_,false))
            {
            }
         }
      }
      
      private function §7!j§(param1:Object) : void
      {
         var _loc2_:* = null;
         if(!param1.sampleNameMappings)
         {
            return;
         }
         for(_loc2_ in param1.sampleNameMappings)
         {
            this.§'T§[_loc2_] = param1.sampleNameMappings[_loc2_].toString();
         }
      }
      
      protected function §;!k§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         for(_loc4_ in param1.audioChannelSettings)
         {
            _loc2_ = param1.audioChannelSettings[_loc4_].numChannels;
            _loc3_ = param1.audioChannelSettings[_loc4_].volume;
            §<!O§.§;!D§(_loc4_,_loc2_,_loc3_);
            this.§0!p§[_loc4_] = _loc3_;
         }
      }
      
      protected function §!!J§(param1:String) : String
      {
         var _loc2_:Vector.<String> = this.§2!f§[param1];
         if(!_loc2_)
         {
            return null;
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      protected function §?!^§(param1:String) : String
      {
         return this.§7"§[param1];
      }
      
      protected function §#j§(param1:String) : Number
      {
         return this.§`8§[param1];
      }
      
      protected function §%y§(param1:String) : String
      {
         return this.§'T§[param1] || param1;
      }
      
      protected function §'l§(param1:String) : Number
      {
         return this.§0!p§[param1];
      }
      
      public function playSound(param1:String, param2:int = 0, param3:Number = 0) : void
      {
         var _loc4_:String;
         if(!(_loc4_ = this.§!!J§(param1)))
         {
            _loc4_ = param1;
         }
         var _loc5_:String = this.§?!^§(_loc4_);
         var _loc6_:Number = this.§#j§(_loc4_);
         if(isNaN(_loc6_))
         {
            _loc6_ = -1;
         }
         var _loc7_:String;
         if(!(_loc7_ = this.§%y§(_loc4_)))
         {
            return;
         }
         if(_loc5_ == null)
         {
            §<!O§.playSound(_loc7_,§<!O§.§>m§,param2,_loc6_);
         }
         else
         {
            §<!O§.playSound(_loc7_,_loc5_,param2,_loc6_,param3);
         }
      }
      
      public function §,!z§(param1:String) : void
      {
         var _loc2_:String = this.§!!J§(param1);
         if(!_loc2_)
         {
            _loc2_ = param1;
         }
         var _loc3_:String = this.§?!^§(_loc2_);
         if(_loc3_ == null)
         {
            §<!O§.§,!z§(§<!O§.§>m§);
         }
         else
         {
            §<!O§.§,!z§(_loc3_);
         }
      }
   }
}
