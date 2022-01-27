package §2"Y§
{
   import §1!i§.§,#_§;
   import §="2§.§?!r§;
   import flash.media.Sound;
   
   public class §%"3§
   {
      
      public static const §^f§:String = "collision";
      
      public static const §5"P§:String = "launch";
      
      public static const §!!B§:String = "special";
      
      public static const §0F§:String = "selection";
      
      public static const § !O§:String = "unselection";
      
      public static const §4"#§:String = "collisionSound";
      
      public static const §2l§:String = "damageSound";
      
      public static const §@#A§:String = "destroyedSound";
      
      public static const §`#_§:String = "rollingSound";
      
      public static const §`$§:String = "enter_atmosphere";
      
      public static const §<!H§:String = "exit_atmosphere";
       
      
      private var §@#S§:§,#_§;
      
      private var §?!I§:§,#_§;
      
      private var §1!Y§:§,#_§;
      
      private var §8"=§:§,#_§;
      
      private var § !t§:§,#_§;
      
      public function §%"3§()
      {
         super();
         this.§@#S§ = new §,#_§();
         this.§?!I§ = new §,#_§();
         this.§1!Y§ = new §,#_§();
         this.§8"=§ = new §,#_§();
         this.§ !t§ = new §,#_§();
      }
      
      public function §7!f§(param1:Object) : void
      {
         this.§`"V§(param1);
         this.§>#1§(param1);
         if(param1.audioChannels)
         {
            this.§6"I§(param1);
         }
         if(param1.sampleSettings)
         {
            this.§-#$§(param1);
         }
         this.§>!_§(param1);
      }
      
      private function §`"V§(param1:Object) : void
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
            this.§@#S§[_loc2_] = _loc3_;
         }
      }
      
      private function §6"I§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1.audioChannels)
         {
            this.§?!I§[_loc2_] = param1.audioChannels[_loc2_];
         }
      }
      
      private function §-#$§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:Sound = null;
         for(_loc2_ in param1.sampleSettings)
         {
            _loc3_ = param1.sampleSettings[_loc2_];
            this.§?!I§[_loc2_] = _loc3_.channel.toString();
            if(_loc3_.volume)
            {
               this.§1!Y§[_loc2_] = parseFloat(_loc3_.volume);
            }
            _loc2_ = this.§!"j§(_loc2_);
            if(_loc4_ = §?!r§.§1"Z§(_loc2_,false))
            {
            }
         }
      }
      
      private function §>#1§(param1:Object) : void
      {
         var _loc2_:* = null;
         if(!param1.sampleNameMappings)
         {
            return;
         }
         for(_loc2_ in param1.sampleNameMappings)
         {
            this.§8"=§[_loc2_] = param1.sampleNameMappings[_loc2_].toString();
         }
      }
      
      protected function §>!_§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         for(_loc4_ in param1.audioChannelSettings)
         {
            _loc2_ = param1.audioChannelSettings[_loc4_].numChannels;
            _loc3_ = param1.audioChannelSettings[_loc4_].volume;
            §?!r§.§,"d§(_loc4_,_loc2_,_loc3_);
            this.§ !t§[_loc4_] = _loc3_;
         }
      }
      
      protected function §+!3§(param1:String) : String
      {
         var _loc2_:Vector.<String> = this.§@#S§[param1];
         if(!_loc2_)
         {
            return null;
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      protected function §0"3§(param1:String) : String
      {
         return this.§?!I§[param1];
      }
      
      protected function §+!9§(param1:String) : Number
      {
         return this.§1!Y§[param1];
      }
      
      protected function §!"j§(param1:String) : String
      {
         return this.§8"=§[param1] || param1;
      }
      
      protected function §%y§(param1:String) : Number
      {
         return this.§ !t§[param1];
      }
      
      public function §"#_§(param1:String, param2:int = 0, param3:Number = 0) : void
      {
         var _loc4_:String;
         if(!(_loc4_ = this.§+!3§(param1)))
         {
            _loc4_ = param1;
         }
         var _loc5_:String = this.§0"3§(_loc4_);
         var _loc6_:Number = this.§+!9§(_loc4_);
         if(isNaN(_loc6_))
         {
            _loc6_ = -1;
         }
         _loc4_ = this.§!"j§(_loc4_);
         if(_loc5_ == null)
         {
            §?!r§.§"#_§(_loc4_,§?!r§.§2!1§,param2,_loc6_);
         }
         else
         {
            §?!r§.§"#_§(_loc4_,_loc5_,param2,_loc6_,param3);
         }
      }
      
      public function §9"4§(param1:String) : void
      {
         var _loc2_:String = this.§+!3§(param1);
         if(!_loc2_)
         {
            _loc2_ = param1;
         }
         var _loc3_:String = this.§0"3§(_loc2_);
         if(_loc3_ == null)
         {
            §?!r§.§9"4§(§?!r§.§2!1§);
         }
         else
         {
            §?!r§.§9"4§(_loc3_);
         }
      }
   }
}
