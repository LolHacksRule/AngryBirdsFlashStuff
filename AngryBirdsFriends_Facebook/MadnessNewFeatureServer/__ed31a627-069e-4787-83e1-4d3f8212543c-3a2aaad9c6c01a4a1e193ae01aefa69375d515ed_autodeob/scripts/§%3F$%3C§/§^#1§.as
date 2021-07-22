package §?$<§
{
   import §&!_§.§[!j§;
   import §8#K§.§-!o§;
   import §8#K§.§3Z§;
   
   public class §^#1§
   {
      
      public static const §1!v§:String = "collision";
      
      public static const §%S§:String = "launch";
      
      public static const SPECIAL:String = "special";
      
      public static const §-"<§:String = "selection";
      
      public static const §-!&§:String = "unselection";
      
      public static const §2"W§:String = "collisionSound";
      
      public static const §#_§:String = "damageSound";
      
      public static const §4#D§:String = "destroyedSound";
      
      public static const §'$ §:String = "rollingSound";
      
      public static const §[$=§:String = "enter_atmosphere";
      
      public static const §7#=§:String = "exit_atmosphere";
       
      
      private var §3!H§:§[!j§;
      
      private var §<#[§:§[!j§;
      
      private var §<$7§:§[!j§;
      
      private var §[W§:§[!j§;
      
      private var §!!N§:§[!j§;
      
      public function §^#1§()
      {
         super();
         this.§3!H§ = new §[!j§();
         this.§<#[§ = new §[!j§();
         this.§<$7§ = new §[!j§();
         this.§[W§ = new §[!j§();
         this.§!!N§ = new §[!j§();
      }
      
      public function §##s§(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         this.§?"s§(param1);
         this.§8#O§(param1);
         if(param1.audioChannels)
         {
            this.§8!v§(param1);
         }
         this.§!1§(param1);
         this.§ U§(param1);
      }
      
      private function §?"s§(param1:Object) : void
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
            this.§3!H§[_loc2_] = _loc3_;
         }
      }
      
      private function §8!v§(param1:Object) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in param1.audioChannels)
         {
            this.§<#[§[_loc2_] = param1.audioChannels[_loc2_];
         }
      }
      
      private function §!1§(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1.files)
         {
            if(_loc2_.channel)
            {
               this.§<#[§[_loc2_.clipName] = _loc2_.channel;
            }
            if(_loc2_.volume)
            {
               this.§<$7§[_loc2_.clipName] = _loc2_.volume;
            }
         }
      }
      
      private function §8#O§(param1:Object) : void
      {
         var _loc2_:* = null;
         if(!param1.sampleNameMappings)
         {
            return;
         }
         for(_loc2_ in param1.sampleNameMappings)
         {
            this.§[W§[_loc2_] = param1.sampleNameMappings[_loc2_].toString();
         }
      }
      
      protected function § U§(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         for(_loc4_ in param1.audioChannelSettings)
         {
            _loc2_ = param1.audioChannelSettings[_loc4_].numChannels;
            _loc3_ = param1.audioChannelSettings[_loc4_].volume;
            §3Z§.§'#E§(_loc4_,_loc2_,_loc3_);
            this.§!!N§[_loc4_] = _loc3_;
         }
      }
      
      protected function §0X§(param1:String) : String
      {
         var _loc2_:Vector.<String> = this.§3!H§[param1];
         if(!_loc2_)
         {
            return null;
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      protected function §7J§(param1:String) : String
      {
         return this.§<#[§[param1];
      }
      
      protected function §+""§(param1:String) : Number
      {
         return this.§<$7§[param1];
      }
      
      protected function §6#'§(param1:String) : String
      {
         return this.§[W§[param1] || param1;
      }
      
      protected function §=!v§(param1:String) : Number
      {
         return this.§!!N§[param1];
      }
      
      public function playSound(param1:String, param2:String = null, param3:int = 0, param4:Number = 0) : §-!o§
      {
         var _loc7_:§-!o§ = null;
         var _loc5_:String;
         if(!(_loc5_ = this.§0X§(param1)))
         {
            _loc5_ = param1;
         }
         if(!param2)
         {
            param2 = this.§7J§(_loc5_);
         }
         var _loc6_:Number = this.§+""§(_loc5_);
         if(isNaN(_loc6_))
         {
            _loc6_ = -1;
         }
         if(!(_loc5_ = this.§6#'§(_loc5_)))
         {
            return null;
         }
         param2 = param2 == null ? §3Z§.§8#R§ : param2;
         if(§3Z§.§>#Q§(_loc5_) && param2 != "CHANNEL_AMBIENT")
         {
            _loc7_ = §3Z§.§8!K§(_loc5_,§3Z§.§8#R§,param3,_loc6_,param4);
         }
         else
         {
            _loc7_ = §3Z§.playSound(_loc5_,param2,param3,_loc6_,param4);
         }
         return _loc7_;
      }
      
      public function §&$?§(param1:String) : void
      {
         var _loc2_:String = this.§0X§(param1);
         if(!_loc2_)
         {
            _loc2_ = param1;
         }
         var _loc3_:String = this.§7J§(_loc2_);
         if(_loc3_ == null)
         {
            §3Z§.§&$?§(§3Z§.§8#R§);
         }
         else
         {
            §3Z§.§&$?§(_loc3_);
         }
      }
   }
}
