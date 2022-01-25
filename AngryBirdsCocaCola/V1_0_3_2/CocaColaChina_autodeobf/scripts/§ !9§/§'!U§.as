package § !9§
{
   import §-!9§.§3!5§;
   import §6!Q§.§7!7§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §'!U§
   {
      
      private static var §+!0§:Boolean = true;
      
      private static const §2!G§:int = 128;
      
      private static var §4!<§:int;
      
      private static var §>!6§:Dictionary;
      
      private static var §4Q§:Dictionary;
      
      public static const §?p§:String = "Default_Channel";
      
      public static const §=!S§:Boolean = false;
      
      private static var §9!>§:Boolean = true;
       
      
      public function §'!U§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §9!>§ = param1;
      }
      
      public static function init() : void
      {
         §>!6§ = new Dictionary();
         §4Q§ = new Dictionary();
         §4!<§ = 0;
         §,m§(§?p§,4,1);
      }
      
      public static function §,m§(param1:String, param2:int, param3:Number) : void
      {
         if(§`4§(param1) != null)
         {
            return;
         }
         if(§4!<§ >= §2!G§)
         {
            if(§=!S§)
            {
               §7!7§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §2!G§ + " reserved");
            }
            return;
         }
         if(§4!<§ + param2 >= §2!G§)
         {
            param2 = §2!G§ - §4!<§;
         }
         var _loc4_:§&T§ = new §&T§(param1,param2,param3);
         if(!§+!0§)
         {
            _loc4_.§,+§();
         }
         §>!6§[param1.toLowerCase()] = _loc4_;
         §4!<§ += param2;
      }
      
      public static function §`4§(param1:String) : §&T§
      {
         return §>!6§[param1.toLowerCase()];
      }
      
      public static function §3>§(param1:Boolean) : void
      {
         var _loc2_:§&T§ = null;
         if(param1 == §+!0§)
         {
            return;
         }
         §+!0§ = param1;
         for each(_loc2_ in §>!6§)
         {
            if(§+!0§)
            {
               _loc2_.§0!F§();
            }
            else
            {
               _loc2_.§,+§();
            }
         }
      }
      
      public static function §]P§() : void
      {
         var _loc1_:§&T§ = null;
         for each(_loc1_ in §>!6§)
         {
            _loc1_.§]P§();
         }
      }
      
      public static function §99§() : Boolean
      {
         return §+!0§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §&!F§
      {
         var _loc7_:Class = null;
         if(!§9!>§)
         {
            return null;
         }
         var _loc5_:§&T§;
         if(!(_loc5_ = §`4§(param2)))
         {
            if(§=!S§)
            {
               §7!7§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§-!D§())
         {
            if(§=!S§)
            {
               §7!7§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §4Q§[param1]) == null)
         {
            if(!(_loc7_ = §3!5§.§9g§(param1,false) as Class))
            {
               §7!7§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §4Q§[param1] = _loc6_;
         }
         return _loc5_.playSound(_loc6_,param3,param4);
      }
      
      public static function §;&§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§&T§ = §`4§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§]P§();
         }
      }
      
      public static function § !%§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§=!S§)
            {
               §7!7§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §'!U§.playSound(param1,param2);
      }
   }
}
