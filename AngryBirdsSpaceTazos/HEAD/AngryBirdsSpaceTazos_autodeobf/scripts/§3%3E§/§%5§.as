package §3>§
{
   import §3!S§.§<5§;
   import §4u§.§5!t§;
   import flash.media.Sound;
   
   public class §%5§
   {
      
      public static const §>^§:String = "collision";
      
      public static const §%!m§:String = "launch";
      
      public static const §&7§:String = "special";
      
      public static const §!!,§:String = "selection";
      
      public static const §3!1§:String = "unselection";
      
      public static const §6"<§:String = "collisionSound";
      
      public static const §0!>§:String = "damageSound";
      
      public static const §#C§:String = "destroyedSound";
      
      public static const §9"F§:String = "rollingSound";
      
      public static const §+u§:String = "enter_atmosphere";
      
      public static const §7!f§:String = "exit_atmosphere";
       
      
      private var §-K§:§5!t§;
      
      private var §<Y§:§5!t§;
      
      private var §[j§:§5!t§;
      
      private var §&M§:§5!t§;
      
      private var §!!J§:§5!t§;
      
      public function §%5§()
      {
         super();
         this.§-K§ = new §5!t§();
         this.§<Y§ = new §5!t§();
         this.§[j§ = new §5!t§();
         this.§&M§ = new §5!t§();
         this.§!!J§ = new §5!t§();
      }
      
      public function §9!9§(param1:Object) : void
      {
         this.§<!'§(param1);
         this.§[!+§(param1);
         if(param1.audioChannels)
         {
            this.§<"4§(param1);
         }
         if(param1.sampleSettings)
         {
            this.§!X§(param1);
         }
         this.§&"0§(param1);
      }
      
      private function §<!'§(param1:Object) : void
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
            this.§-K§[_loc2_] = _loc3_;
         }
      }
      
      private function §<"4§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1.audioChannels)
         {
            this.§<Y§[_loc2_] = param1.audioChannels[_loc2_];
         }
      }
      
      private function §!X§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:Sound = null;
         for(_loc2_ in param1.sampleSettings)
         {
            _loc3_ = param1.sampleSettings[_loc2_];
            if(_loc3_.channel)
            {
               this.§<Y§[_loc2_] = _loc3_.channel.toString();
            }
            if(_loc3_.volume)
            {
               this.§[j§[_loc2_] = parseFloat(_loc3_.volume);
            }
            _loc2_ = this.§+X§(_loc2_);
            if(_loc4_ = §<5§.getSound(_loc2_,false))
            {
            }
         }
      }
      
      private function §[!+§(param1:Object) : void
      {
         var _loc2_:* = null;
         if(!param1.sampleNameMappings)
         {
            return;
         }
         for(_loc2_ in param1.sampleNameMappings)
         {
            this.§&M§[_loc2_] = param1.sampleNameMappings[_loc2_].toString();
         }
      }
      
      protected function §&"0§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         for(_loc4_ in param1.audioChannelSettings)
         {
            _loc2_ = param1.audioChannelSettings[_loc4_].numChannels;
            _loc3_ = param1.audioChannelSettings[_loc4_].volume;
            §<5§.§@6§(_loc4_,_loc2_,_loc3_);
            this.§!!J§[_loc4_] = _loc3_;
         }
      }
      
      protected function §7!R§(param1:String) : String
      {
         var _loc2_:Vector.<String> = this.§-K§[param1];
         if(!_loc2_)
         {
            return null;
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      protected function §0!d§(param1:String) : String
      {
         return this.§<Y§[param1];
      }
      
      protected function §[L§(param1:String) : Number
      {
         return this.§[j§[param1];
      }
      
      protected function §+X§(param1:String) : String
      {
         return this.§&M§[param1] || param1;
      }
      
      protected function §>! §(param1:String) : Number
      {
         return this.§!!J§[param1];
      }
      
      public function playSound(param1:String, param2:int = 0, param3:Number = 0) : void
      {
         var _loc4_:String;
         if(!(_loc4_ = this.§7!R§(param1)))
         {
            _loc4_ = param1;
         }
         var _loc5_:String = this.§0!d§(_loc4_);
         var _loc6_:Number = this.§[L§(_loc4_);
         if(isNaN(_loc6_))
         {
            _loc6_ = -1;
         }
         var _loc7_:String;
         if(!(_loc7_ = this.§+X§(_loc4_)))
         {
            return;
         }
         if(_loc5_ == null)
         {
            §<5§.playSound(_loc7_,§<5§.§8"#§,param2,_loc6_);
         }
         else
         {
            §<5§.playSound(_loc7_,_loc5_,param2,_loc6_,param3);
         }
      }
      
      public function §["'§(param1:String) : void
      {
         var _loc2_:String = this.§7!R§(param1);
         if(!_loc2_)
         {
            _loc2_ = param1;
         }
         var _loc3_:String = this.§0!d§(_loc2_);
         if(_loc3_ == null)
         {
            §<5§.§["'§(§<5§.§8"#§);
         }
         else
         {
            §<5§.§["'§(_loc3_);
         }
      }
   }
}
