package §8#K§
{
   import §#"4§.§&r§;
   import §3"V§.§ b§;
   import §3"V§.§9$8§;
   
   public class § !q§
   {
      
      public static const §6"D§:String = "collision";
      
      public static const §>#,§:String = "launch";
      
      public static const SPECIAL:String = "special";
      
      public static const §%$E§:String = "selection";
      
      public static const §?#A§:String = "unselection";
      
      public static const §7!x§:String = "collisionSound";
      
      public static const §0!V§:String = "damageSound";
      
      public static const §3"n§:String = "destroyedSound";
      
      public static const §,#X§:String = "rollingSound";
      
      public static const §-!q§:String = "enter_atmosphere";
      
      public static const §-G§:String = "exit_atmosphere";
       
      
      private var §8P§:§&r§;
      
      private var §;b§:§&r§;
      
      private var §-!u§:§&r§;
      
      private var §=!s§:§&r§;
      
      private var §9!j§:§&r§;
      
      public function § !q§()
      {
         super();
         this.§8P§ = new §&r§();
         this.§;b§ = new §&r§();
         this.§-!u§ = new §&r§();
         this.§=!s§ = new §&r§();
         this.§9!j§ = new §&r§();
      }
      
      public function §!"M§(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         this.§`"$§(param1);
         this.§7"W§(param1);
         if(param1.audioChannels)
         {
            this.§7#D§(param1);
         }
         this.§]S§(param1);
         this.§-"^§(param1);
      }
      
      private function §`"$§(param1:Object) : void
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
            this.§8P§[_loc2_] = _loc3_;
         }
      }
      
      private function §7#D§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1.audioChannels)
         {
            this.§;b§[_loc2_] = param1.audioChannels[_loc2_];
         }
      }
      
      private function §]S§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1.files)
         {
            if(_loc2_.channel)
            {
               this.§;b§[_loc2_.clipName] = _loc2_.channel;
            }
            if(_loc2_.volume)
            {
               this.§-!u§[_loc2_.clipName] = _loc2_.volume;
            }
         }
      }
      
      private function §7"W§(param1:Object) : void
      {
         var _loc2_:* = null;
         if(!param1.sampleNameMappings)
         {
            return;
         }
         for(_loc2_ in param1.sampleNameMappings)
         {
            this.§=!s§[_loc2_] = param1.sampleNameMappings[_loc2_].toString();
         }
      }
      
      protected function §-"^§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         for(_loc4_ in param1.audioChannelSettings)
         {
            _loc2_ = param1.audioChannelSettings[_loc4_].numChannels;
            _loc3_ = param1.audioChannelSettings[_loc4_].volume;
            § b§.§%#C§(_loc4_,_loc2_,_loc3_);
            this.§9!j§[_loc4_] = _loc3_;
         }
      }
      
      protected function § !^§(param1:String) : String
      {
         var _loc2_:Vector.<String> = this.§8P§[param1];
         if(!_loc2_)
         {
            return null;
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      protected function §^"b§(param1:String) : String
      {
         return this.§;b§[param1];
      }
      
      protected function §7!f§(param1:String) : Number
      {
         return this.§-!u§[param1];
      }
      
      protected function § !5§(param1:String) : String
      {
         return this.§=!s§[param1] || param1;
      }
      
      protected function §6!2§(param1:String) : Number
      {
         return this.§9!j§[param1];
      }
      
      public function playSound(param1:String, param2:String = null, param3:int = 0, param4:Number = 0) : §9$8§
      {
         var _loc7_:§9$8§ = null;
         var _loc5_:String;
         if(!(_loc5_ = this.§ !^§(param1)))
         {
            _loc5_ = param1;
         }
         if(!param2)
         {
            param2 = this.§^"b§(_loc5_);
         }
         var _loc6_:Number = this.§7!f§(_loc5_);
         if(isNaN(_loc6_))
         {
            _loc6_ = -1;
         }
         if(!(_loc5_ = this.§ !5§(_loc5_)))
         {
            return null;
         }
         param2 = param2 == null ? § b§.§1#-§ : param2;
         if(§ b§.§@#;§(_loc5_) && param2 != "CHANNEL_AMBIENT")
         {
            _loc7_ = § b§.§^"8§(_loc5_,§ b§.§1#-§,param3,_loc6_,param4);
         }
         else
         {
            _loc7_ = § b§.playSound(_loc5_,param2,param3,_loc6_,param4);
         }
         return _loc7_;
      }
      
      public function §8!7§(param1:String) : void
      {
         var _loc2_:String = this.§ !^§(param1);
         if(!_loc2_)
         {
            _loc2_ = param1;
         }
         var _loc3_:String = this.§^"b§(_loc2_);
         if(_loc3_ == null)
         {
            § b§.§8!7§(§ b§.§1#-§);
         }
         else
         {
            § b§.§8!7§(_loc3_);
         }
      }
   }
}
