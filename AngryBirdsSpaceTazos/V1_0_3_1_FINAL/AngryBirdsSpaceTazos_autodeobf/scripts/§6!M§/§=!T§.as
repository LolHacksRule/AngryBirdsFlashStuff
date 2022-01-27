package §6!M§
{
   import §'!n§.§@B§;
   import §>"!§.§@!9§;
   import flash.media.Sound;
   
   public class §=!T§
   {
      
      public static const §@"F§:String = "collision";
      
      public static const §[#§:String = "launch";
      
      public static const §0Y§:String = "special";
      
      public static const §#O§:String = "selection";
      
      public static const §>'§:String = "unselection";
      
      public static const §<!3§:String = "collisionSound";
      
      public static const §4"1§:String = "damageSound";
      
      public static const §-?§:String = "destroyedSound";
      
      public static const §7C§:String = "rollingSound";
      
      public static const §-6§:String = "enter_atmosphere";
      
      public static const §+!n§:String = "exit_atmosphere";
       
      
      private var §`"?§:§@B§;
      
      private var §'!#§:§@B§;
      
      private var §?g§:§@B§;
      
      private var §!"7§:§@B§;
      
      private var §0"8§:§@B§;
      
      public function §=!T§()
      {
         super();
         this.§`"?§ = new §@B§();
         this.§'!#§ = new §@B§();
         this.§?g§ = new §@B§();
         this.§!"7§ = new §@B§();
         this.§0"8§ = new §@B§();
      }
      
      public function § !p§(param1:Object) : void
      {
         this.§-",§(param1);
         this.§6!1§(param1);
         if(param1.audioChannels)
         {
            this.§8f§(param1);
         }
         if(param1.sampleSettings)
         {
            this.§=_§(param1);
         }
         this.§0!s§(param1);
      }
      
      private function §-",§(param1:Object) : void
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
            this.§`"?§[_loc2_] = _loc3_;
         }
      }
      
      private function §8f§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1.audioChannels)
         {
            this.§'!#§[_loc2_] = param1.audioChannels[_loc2_];
         }
      }
      
      private function §=_§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:Sound = null;
         for(_loc2_ in param1.sampleSettings)
         {
            _loc3_ = param1.sampleSettings[_loc2_];
            if(_loc3_.channel)
            {
               this.§'!#§[_loc2_] = _loc3_.channel.toString();
            }
            if(_loc3_.volume)
            {
               this.§?g§[_loc2_] = parseFloat(_loc3_.volume);
            }
            _loc2_ = this.§]"%§(_loc2_);
            if(_loc4_ = §@!9§.getSound(_loc2_,false))
            {
            }
         }
      }
      
      private function §6!1§(param1:Object) : void
      {
         var _loc2_:* = null;
         if(!param1.sampleNameMappings)
         {
            return;
         }
         for(_loc2_ in param1.sampleNameMappings)
         {
            this.§!"7§[_loc2_] = param1.sampleNameMappings[_loc2_].toString();
         }
      }
      
      protected function §0!s§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         for(_loc4_ in param1.audioChannelSettings)
         {
            _loc2_ = param1.audioChannelSettings[_loc4_].numChannels;
            _loc3_ = param1.audioChannelSettings[_loc4_].volume;
            §@!9§.§#!-§(_loc4_,_loc2_,_loc3_);
            this.§0"8§[_loc4_] = _loc3_;
         }
      }
      
      protected function §3-§(param1:String) : String
      {
         var _loc2_:Vector.<String> = this.§`"?§[param1];
         if(!_loc2_)
         {
            return null;
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      protected function §'V§(param1:String) : String
      {
         return this.§'!#§[param1];
      }
      
      protected function §?!p§(param1:String) : Number
      {
         return this.§?g§[param1];
      }
      
      protected function §]"%§(param1:String) : String
      {
         return this.§!"7§[param1] || param1;
      }
      
      protected function §0V§(param1:String) : Number
      {
         return this.§0"8§[param1];
      }
      
      public function playSound(param1:String, param2:int = 0, param3:Number = 0) : void
      {
         var _loc4_:String;
         if(!(_loc4_ = this.§3-§(param1)))
         {
            _loc4_ = param1;
         }
         var _loc5_:String = this.§'V§(_loc4_);
         var _loc6_:Number = this.§?!p§(_loc4_);
         if(isNaN(_loc6_))
         {
            _loc6_ = -1;
         }
         var _loc7_:String;
         if(!(_loc7_ = this.§]"%§(_loc4_)))
         {
            return;
         }
         if(_loc5_ == null)
         {
            §@!9§.playSound(_loc7_,§@!9§.§,"%§,param2,_loc6_);
         }
         else
         {
            §@!9§.playSound(_loc7_,_loc5_,param2,_loc6_,param3);
         }
      }
      
      public function §"!y§(param1:String) : void
      {
         var _loc2_:String = this.§3-§(param1);
         if(!_loc2_)
         {
            _loc2_ = param1;
         }
         var _loc3_:String = this.§'V§(_loc2_);
         if(_loc3_ == null)
         {
            §@!9§.§"!y§(§@!9§.§,"%§);
         }
         else
         {
            §@!9§.§"!y§(_loc3_);
         }
      }
   }
}
