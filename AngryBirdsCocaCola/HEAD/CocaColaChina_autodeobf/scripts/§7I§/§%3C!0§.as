package §7I§
{
   import §'!G§.§1C§;
   import §="§.§@5§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §<!0§
   {
      
      private static var §8!+§:Boolean = true;
      
      private static const §7!H§:int = 128;
      
      private static var §"e§:int;
      
      private static var §`!,§:Dictionary;
      
      private static var §-r§:Dictionary;
      
      public static const §!!G§:String = "Default_Channel";
      
      public static const §`Q§:Boolean = false;
      
      private static var §<!P§:Boolean = true;
       
      
      public function §<!0§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §<!P§ = param1;
      }
      
      public static function init() : void
      {
         §`!,§ = new Dictionary();
         §-r§ = new Dictionary();
         §"e§ = 0;
         §"!#§(§!!G§,4,1);
      }
      
      public static function §"!#§(param1:String, param2:int, param3:Number) : void
      {
         if(§9x§(param1) != null)
         {
            return;
         }
         if(§"e§ >= §7!H§)
         {
            if(§`Q§)
            {
               §1C§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §7!H§ + " reserved");
            }
            return;
         }
         if(§"e§ + param2 >= §7!H§)
         {
            param2 = §7!H§ - §"e§;
         }
         var _loc4_:§<!U§ = new §<!U§(param1,param2,param3);
         if(!§8!+§)
         {
            _loc4_.§]3§();
         }
         §`!,§[param1.toLowerCase()] = _loc4_;
         §"e§ += param2;
      }
      
      public static function §9x§(param1:String) : §<!U§
      {
         return §`!,§[param1.toLowerCase()];
      }
      
      public static function §1!F§(param1:Boolean) : void
      {
         var _loc2_:§<!U§ = null;
         if(param1 == §8!+§)
         {
            return;
         }
         §8!+§ = param1;
         for each(_loc2_ in §`!,§)
         {
            if(§8!+§)
            {
               _loc2_.§;!&§();
            }
            else
            {
               _loc2_.§]3§();
            }
         }
      }
      
      public static function §[p§() : void
      {
         var _loc1_:§<!U§ = null;
         for each(_loc1_ in §`!,§)
         {
            _loc1_.§[p§();
         }
      }
      
      public static function §#K§() : Boolean
      {
         return §8!+§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §%'§
      {
         var _loc7_:Class = null;
         if(!§<!P§)
         {
            return null;
         }
         var _loc5_:§<!U§;
         if(!(_loc5_ = §9x§(param2)))
         {
            if(§`Q§)
            {
               §1C§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§;!L§())
         {
            if(§`Q§)
            {
               §1C§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §-r§[param1]) == null)
         {
            if(!(_loc7_ = §@5§.§>! §(param1,false) as Class))
            {
               §1C§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §-r§[param1] = _loc6_;
         }
         return _loc5_.playSound(_loc6_,param3,param4);
      }
      
      public static function §-w§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§<!U§ = §9x§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§[p§();
         }
      }
      
      public static function §"!M§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§`Q§)
            {
               §1C§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §<!0§.playSound(param1,param2);
      }
   }
}
