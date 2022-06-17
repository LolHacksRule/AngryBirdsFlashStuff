package §-!j§
{
   import § "v§.§+o§;
   import § "v§.§4$4§;
   import §2E§.§&#a§;
   
   public class §4"-§
   {
      
      public static const §<#^§:String = "collision";
      
      public static const §,?§:String = "launch";
      
      public static const SPECIAL:String = "special";
      
      public static const §`#c§:String = "selection";
      
      public static const §#!k§:String = "unselection";
      
      public static const §["O§:String = "collisionSound";
      
      public static const §@!O§:String = "damageSound";
      
      public static const §9"t§:String = "destroyedSound";
      
      public static const §@$7§:String = "rollingSound";
      
      public static const §9#$§:String = "enter_atmosphere";
      
      public static const §"!§:String = "exit_atmosphere";
       
      
      private var §6#I§:§&#a§;
      
      private var §>#d§:§&#a§;
      
      private var §44§:§&#a§;
      
      private var §9!0§:§&#a§;
      
      private var §-#z§:§&#a§;
      
      public function §4"-§()
      {
         super();
         this.§6#I§ = new §&#a§();
         this.§>#d§ = new §&#a§();
         this.§44§ = new §&#a§();
         this.§9!0§ = new §&#a§();
         this.§-#z§ = new §&#a§();
      }
      
      public function §'!I§(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         this.§?#m§(param1);
         this.§ #=§(param1);
         if(param1.audioChannels)
         {
            this.§'$A§(param1);
         }
         this.§>"p§(param1);
         this.§2$C§(param1);
      }
      
      private function §?#m§(param1:Object) : void
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
            this.§6#I§[_loc2_] = _loc3_;
         }
      }
      
      private function §'$A§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1.audioChannels)
         {
            this.§>#d§[_loc2_] = param1.audioChannels[_loc2_];
         }
      }
      
      private function §>"p§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1.files)
         {
            if(_loc2_.channel)
            {
               this.§>#d§[_loc2_.clipName] = _loc2_.channel;
            }
            if(_loc2_.volume)
            {
               this.§44§[_loc2_.clipName] = _loc2_.volume;
            }
         }
      }
      
      private function § #=§(param1:Object) : void
      {
         var _loc2_:* = null;
         if(!param1.sampleNameMappings)
         {
            return;
         }
         for(_loc2_ in param1.sampleNameMappings)
         {
            this.§9!0§[_loc2_] = param1.sampleNameMappings[_loc2_].toString();
         }
      }
      
      protected function §2$C§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         for(_loc4_ in param1.audioChannelSettings)
         {
            _loc2_ = param1.audioChannelSettings[_loc4_].numChannels;
            _loc3_ = param1.audioChannelSettings[_loc4_].volume;
            §4$4§.§<!A§(_loc4_,_loc2_,_loc3_);
            this.§-#z§[_loc4_] = _loc3_;
         }
      }
      
      protected function §;#m§(param1:String) : String
      {
         var _loc2_:Vector.<String> = this.§6#I§[param1];
         if(!_loc2_)
         {
            return null;
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      protected function §<#[§(param1:String) : String
      {
         return this.§>#d§[param1];
      }
      
      protected function §=9§(param1:String) : Number
      {
         return this.§44§[param1];
      }
      
      protected function §7K§(param1:String) : String
      {
         return this.§9!0§[param1] || param1;
      }
      
      protected function §&!O§(param1:String) : Number
      {
         return this.§-#z§[param1];
      }
      
      public function playSound(param1:String, param2:String = null, param3:int = 0, param4:Number = 0) : §+o§
      {
         var _loc7_:§+o§ = null;
         var _loc5_:String;
         if(!(_loc5_ = this.§;#m§(param1)))
         {
            _loc5_ = param1;
         }
         if(!param2)
         {
            param2 = this.§<#[§(_loc5_);
         }
         var _loc6_:Number = this.§=9§(_loc5_);
         if(isNaN(_loc6_))
         {
            _loc6_ = -1;
         }
         if(!(_loc5_ = this.§7K§(_loc5_)))
         {
            return null;
         }
         param2 = param2 == null ? §4$4§.§6!H§ : param2;
         if(§4$4§.dynamic(_loc5_) && param2 != "CHANNEL_AMBIENT")
         {
            _loc7_ = §4$4§.§'"j§(_loc5_,§4$4§.§6!H§,param3,_loc6_,param4);
         }
         else
         {
            _loc7_ = §4$4§.playSound(_loc5_,param2,param3,_loc6_,param4);
         }
         return _loc7_;
      }
      
      public function §'!?§(param1:String) : void
      {
         var _loc2_:String = this.§;#m§(param1);
         if(!_loc2_)
         {
            _loc2_ = param1;
         }
         var _loc3_:String = this.§<#[§(_loc2_);
         if(_loc3_ == null)
         {
            §4$4§.§'!?§(§4$4§.§6!H§);
         }
         else
         {
            §4$4§.§'!?§(_loc3_);
         }
      }
   }
}
