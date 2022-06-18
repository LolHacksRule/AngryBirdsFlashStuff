package §1!?§
{
   import §9H§.§@M§;
   import com.rovio.assets.§ 3§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §7_§
   {
      
      private static var §4j§:Boolean = true;
      
      private static const §-!&§:int = 128;
      
      private static var §#+§:int;
      
      private static var §]w§:Dictionary;
      
      private static var §;G§:Dictionary;
      
      public static const §<$§:String = "Default_Channel";
      
      public static const §`[§:Boolean = false;
      
      private static var §^B§:Boolean = true;
       
      
      public function §7_§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §^B§ = param1;
      }
      
      public static function init() : void
      {
         §]w§ = new Dictionary();
         §;G§ = new Dictionary();
         §#+§ = 0;
         §#I§(§<$§,4,1);
      }
      
      public static function §#I§(param1:String, param2:int, param3:Number) : void
      {
         if(§4l§(param1) != null)
         {
            return;
         }
         if(§#+§ >= §-!&§)
         {
            if(§`[§)
            {
               §@M§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §-!&§ + " reserved");
            }
            return;
         }
         if(§#+§ + param2 >= §-!&§)
         {
            param2 = §-!&§ - §#+§;
         }
         var _loc4_:§>h§ = new §>h§(param1,param2,param3);
         if(!§4j§)
         {
            _loc4_.§6c§();
         }
         §]w§[param1.toLowerCase()] = _loc4_;
         §#+§ += param2;
      }
      
      public static function §4l§(param1:String) : §>h§
      {
         return §]w§[param1.toLowerCase()];
      }
      
      public static function §=!2§(param1:Boolean) : void
      {
         var _loc2_:§>h§ = null;
         if(param1 == §4j§)
         {
            return;
         }
         §4j§ = param1;
         for each(_loc2_ in §]w§)
         {
            if(§4j§)
            {
               _loc2_.§3!$§();
            }
            else
            {
               _loc2_.§6c§();
            }
         }
      }
      
      public static function §@l§() : void
      {
         var _loc1_:§>h§ = null;
         for each(_loc1_ in §]w§)
         {
            _loc1_.§@l§();
         }
      }
      
      public static function §;!<§() : Boolean
      {
         return §4j§;
      }
      
      public static function §4!5§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §[! §
      {
         var _loc7_:Class = null;
         if(!§^B§)
         {
            return null;
         }
         var _loc5_:§>h§;
         if(!(_loc5_ = §4l§(param2)))
         {
            if(§`[§)
            {
               §@M§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§=!7§())
         {
            if(§`[§)
            {
               §@M§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §;G§[param1]) == null)
         {
            if(!(_loc7_ = § 3§.§+i§(param1,false) as Class))
            {
               §@M§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §;G§[param1] = _loc6_;
         }
         return _loc5_.§4!5§(_loc6_,param3,param4);
      }
      
      public static function §!4§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§>h§ = §4l§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§@l§();
         }
      }
      
      public static function §"u§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§`[§)
            {
               §@M§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §7_§.§4!5§(param1,param2);
      }
   }
}
