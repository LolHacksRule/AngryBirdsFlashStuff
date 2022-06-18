package §?§#3
{
   import §+#B§.§4"[§;
   import §>"9§.§1"T§;
   import §>"9§.§[#%§;
   import flash.media.Sound;
   
   public class §`"N§
   {
      
      public static const §^"z§:String = "collision";
      
      public static const §^$1§:String = "launch";
      
      public static const SPECIAL:String = "special";
      
      public static const §0"#§:String = "selection";
      
      public static const §+#s§:String = "unselection";
      
      public static const §^#@§:String = "collisionSound";
      
      public static const §##D§:String = "damageSound";
      
      public static const §&h§:String = "destroyedSound";
      
      public static const §^!§:String = "rollingSound";
      
      public static const §>"I§:String = "enter_atmosphere";
      
      public static const §>#W§:String = "exit_atmosphere";
       
      
      private var §@#P§:§4"[§;
      
      private var §%!B§:§4"[§;
      
      private var §'6§:§4"[§;
      
      private var §6p§:§4"[§;
      
      private var §,!m§:§4"[§;
      
      public function §`"N§()
      {
         super();
         this.§@#P§ = new §4"[§();
         this.§%!B§ = new §4"[§();
         this.§'6§ = new §4"[§();
         this.§6p§ = new §4"[§();
         this.§,!m§ = new §4"[§();
      }
      
      public function §&#i§(param1:Object) : void
      {
         this.§3$=§(param1);
         this.§1#1§(param1);
         if(param1.audioChannels)
         {
            this.§%c§(param1);
         }
         if(param1.sampleSettings)
         {
            this.§6s§(param1);
         }
         this.§,!?§(param1);
      }
      
      private function §3$=§(param1:Object) : void
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
            this.§@#P§[_loc2_] = _loc3_;
         }
      }
      
      private function §%c§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1.audioChannels)
         {
            this.§%!B§[_loc2_] = param1.audioChannels[_loc2_];
         }
      }
      
      private function §6s§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         for(_loc2_ in param1.sampleSettings)
         {
            _loc3_ = param1.sampleSettings[_loc2_];
            this.§%!B§[_loc2_] = _loc3_.channel.toString();
            if(_loc3_.volume)
            {
               this.§'6§[_loc2_] = parseFloat(_loc3_.volume);
            }
            _loc2_ = this.§`"R§(_loc2_);
            if(§[#%§.§+"&§(_loc2_,false))
            {
            }
         }
      }
      
      private function §1#1§(param1:Object) : void
      {
         var _loc2_:* = null;
         if(!param1.sampleNameMappings)
         {
            return;
         }
         for(_loc2_ in param1.sampleNameMappings)
         {
            this.§6p§[_loc2_] = param1.sampleNameMappings[_loc2_].toString();
         }
      }
      
      protected function §,!?§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         for(_loc4_ in param1.audioChannelSettings)
         {
            _loc2_ = param1.audioChannelSettings[_loc4_].numChannels;
            _loc3_ = param1.audioChannelSettings[_loc4_].volume;
            §[#%§.§8!3§(_loc4_,_loc2_,_loc3_);
            this.§,!m§[_loc4_] = _loc3_;
         }
      }
      
      protected function §-b§(param1:String) : String
      {
         var _loc2_:Vector.<String> = this.§@#P§[param1];
         if(!_loc2_)
         {
            return null;
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      protected function §7"Q§(param1:String) : String
      {
         return this.§%!B§[param1];
      }
      
      protected function §&!3§(param1:String) : Number
      {
         return this.§'6§[param1];
      }
      
      protected function §`"R§(param1:String) : String
      {
         return this.§6p§[param1] || param1;
      }
      
      protected function §&J§(param1:String) : Number
      {
         return this.§,!m§[param1];
      }
      
      public function playSound(param1:String, param2:String = null, param3:int = 0, param4:Number = 0) : §1"T§
      {
         var _loc7_:§1"T§ = null;
         var _loc5_:String;
         if(!(_loc5_ = this.§-b§(param1)))
         {
            _loc5_ = param1;
         }
         if(!param2)
         {
            param2 = this.§7"Q§(_loc5_);
         }
         var _loc6_:Number = this.§&!3§(_loc5_);
         if(isNaN(_loc6_))
         {
            _loc6_ = -1;
         }
         if(!(_loc5_ = this.§`"R§(_loc5_)))
         {
            return null;
         }
         param2 = param2 == null ? §[#%§.§0"f§ : param2;
         if(§[#%§.§ [§(_loc5_))
         {
            _loc7_ = §[#%§.§!"0§(_loc5_,§[#%§.§0"f§,param3,_loc6_,param4);
         }
         else
         {
            _loc7_ = §[#%§.playSound(_loc5_,param2,param3,_loc6_,param4);
         }
         return _loc7_;
      }
      
      public function §3$A§(param1:String) : void
      {
         var _loc2_:String = this.§-b§(param1);
         if(!_loc2_)
         {
            _loc2_ = param1;
         }
         var _loc3_:String = this.§7"Q§(_loc2_);
         if(_loc3_ == null)
         {
            §[#%§.§3$A§(§[#%§.§0"f§);
         }
         else
         {
            §[#%§.§3$A§(_loc3_);
         }
      }
   }
}
