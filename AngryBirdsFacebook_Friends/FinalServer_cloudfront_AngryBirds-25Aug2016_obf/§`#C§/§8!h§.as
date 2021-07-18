package §`#C§
{
   import §8§.§#$+§;
   import §>!#§.§'"R§;
   import flash.media.Sound;
   
   public class §8!h§
   {
      
      public static const § $$§:String = "collision";
      
      public static const §%#`§:String = "launch";
      
      public static const SPECIAL:String = "special";
      
      public static const §[e§:String = "selection";
      
      public static const §%"d§:String = "unselection";
      
      public static const §8!'§:String = "collisionSound";
      
      public static const §8D§:String = "damageSound";
      
      public static const §6#t§:String = "destroyedSound";
      
      public static const §^"m§:String = "rollingSound";
      
      public static const §;§:String = "enter_atmosphere";
      
      public static const §9"G§:String = "exit_atmosphere";
       
      
      private var §4!Z§:§'"R§;
      
      private var §2#c§:§'"R§;
      
      private var §8"L§:§'"R§;
      
      private var § 6§:§'"R§;
      
      private var §^!?§:§'"R§;
      
      public function §8!h§()
      {
         super();
         this.§4!Z§ = new §'"R§();
         this.§2#c§ = new §'"R§();
         this.§8"L§ = new §'"R§();
         this.§ 6§ = new §'"R§();
         this.§^!?§ = new §'"R§();
      }
      
      public function §!#6§(param1:Object) : void
      {
         this.§?+§(param1);
         this.§]#L§(param1);
         if(param1.audioChannels)
         {
            this.§%!R§(param1);
         }
         if(param1.sampleSettings)
         {
            this.§9;§(param1);
         }
         this.§92§(param1);
      }
      
      private function §?+§(param1:Object) : void
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
            this.§4!Z§[_loc2_] = _loc3_;
         }
      }
      
      private function §%!R§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1.audioChannels)
         {
            this.§2#c§[_loc2_] = param1.audioChannels[_loc2_];
         }
      }
      
      private function §9;§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         null;
         for(_loc2_ in param1.sampleSettings)
         {
            _loc3_ = param1.sampleSettings[_loc2_];
            this.§2#c§[_loc2_] = _loc3_.channel.toString();
            if(_loc3_.volume)
            {
               this.§8"L§[_loc2_] = parseFloat(_loc3_.volume);
            }
            _loc2_ = this.§""9§(_loc2_);
            if(§#$+§.§3y§(_loc2_,false))
            {
            }
         }
      }
      
      private function §]#L§(param1:Object) : void
      {
         var _loc2_:* = null;
         if(!param1.sampleNameMappings)
         {
            return;
         }
         for(_loc2_ in param1.sampleNameMappings)
         {
            this.§ 6§[_loc2_] = param1.sampleNameMappings[_loc2_].toString();
         }
      }
      
      protected function §92§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         for(_loc4_ in param1.audioChannelSettings)
         {
            _loc2_ = param1.audioChannelSettings[_loc4_].numChannels;
            _loc3_ = param1.audioChannelSettings[_loc4_].volume;
            §#$+§.§9"]§(_loc4_,_loc2_,_loc3_);
            this.§^!?§[_loc4_] = _loc3_;
         }
      }
      
      protected function §5#R§(param1:String) : String
      {
         var _loc2_:Vector.<String> = this.§4!Z§[param1];
         if(!_loc2_)
         {
            return null;
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      protected function §!n§(param1:String) : String
      {
         return this.§2#c§[param1];
      }
      
      protected function §@4§(param1:String) : Number
      {
         return this.§8"L§[param1];
      }
      
      protected function §""9§(param1:String) : String
      {
         return this.§ 6§[param1] || param1;
      }
      
      protected function §30§(param1:String) : Number
      {
         return this.§^!?§[param1];
      }
      
      public function playSound(param1:String, param2:String = null, param3:int = 0, param4:Number = 0) : void
      {
         var _loc5_:String;
         if(!(_loc5_ = this.§5#R§(param1)))
         {
            _loc5_ = param1;
         }
         if(!param2)
         {
            param2 = this.§!n§(_loc5_);
         }
         var _loc6_:Number = this.§@4§(_loc5_);
         if(isNaN(_loc6_))
         {
            _loc6_ = -1;
         }
         if(!(_loc5_ = this.§""9§(_loc5_)))
         {
            return;
         }
         param2 = param2 == null ? §#$+§.§#"k§ : param2;
         if(§#$+§.§'E§(_loc5_))
         {
            §#$+§.§=#P§(_loc5_,§#$+§.§#"k§,param3,_loc6_,param4);
         }
         else
         {
            §#$+§.playSound(_loc5_,param2,param3,_loc6_,param4);
         }
      }
      
      public function §%!!§(param1:String) : void
      {
         var _loc2_:String = this.§5#R§(param1);
         if(!_loc2_)
         {
            _loc2_ = param1;
         }
         var _loc3_:String = this.§!n§(_loc2_);
         if(_loc3_ == null)
         {
            §#$+§.§%!!§(§#$+§.§#"k§);
         }
         else
         {
            §#$+§.§%!!§(_loc3_);
         }
      }
   }
}
