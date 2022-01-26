package §>Z§
{
   import §'m§.§^S§;
   import com.rovio.assets.§-!1§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §2;§
   {
      
      private static var §4!1§:Boolean = true;
      
      private static const §^!"§:int = 128;
      
      private static var §#e§:int;
      
      private static var §%r§:Dictionary;
      
      private static var §8!§:Dictionary;
      
      public static const §,Z§:String = "Default_Channel";
      
      public static const §@&§:Boolean = false;
      
      private static var §%n§:Boolean = true;
       
      
      public function §2;§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §%n§ = param1;
      }
      
      public static function init() : void
      {
         §%r§ = new Dictionary();
         §8!§ = new Dictionary();
         §#e§ = 0;
         §^=§(§,Z§,4,1);
      }
      
      public static function §^=§(param1:String, param2:int, param3:Number) : void
      {
         if(§1Z§(param1) != null)
         {
            return;
         }
         if(§#e§ >= §^!"§)
         {
            if(§@&§)
            {
               §^S§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §^!"§ + " reserved");
            }
            return;
         }
         if(§#e§ + param2 >= §^!"§)
         {
            param2 = §^!"§ - §#e§;
         }
         var _loc4_:§=C§ = new §=C§(param1,param2,param3);
         if(!§4!1§)
         {
            _loc4_.§?!,§();
         }
         §%r§[param1.toLowerCase()] = _loc4_;
         §#e§ += param2;
      }
      
      public static function §1Z§(param1:String) : §=C§
      {
         return §%r§[param1.toLowerCase()];
      }
      
      public static function §;P§(param1:Boolean) : void
      {
         var _loc2_:§=C§ = null;
         if(param1 == §4!1§)
         {
            return;
         }
         §4!1§ = param1;
         for each(_loc2_ in §%r§)
         {
            if(§4!1§)
            {
               _loc2_.§-!4§();
            }
            else
            {
               _loc2_.§?!,§();
            }
         }
      }
      
      public static function §'T§() : void
      {
         var _loc1_:§=C§ = null;
         for each(_loc1_ in §%r§)
         {
            _loc1_.§'T§();
         }
      }
      
      public static function §]!D§() : Boolean
      {
         return §4!1§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §`!A§
      {
         var _loc7_:Class = null;
         if(!§%n§)
         {
            return null;
         }
         var _loc5_:§=C§;
         if(!(_loc5_ = §1Z§(param2)))
         {
            if(§@&§)
            {
               §^S§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§&c§())
         {
            if(§@&§)
            {
               §^S§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §8!§[param1]) == null)
         {
            if(!(_loc7_ = §-!1§.§-T§(param1,false) as Class))
            {
               §^S§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §8!§[param1] = _loc6_;
         }
         return _loc5_.playSound(_loc6_,param3,param4);
      }
      
      public static function §%j§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§=C§ = §1Z§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§'T§();
         }
      }
      
      public static function §#5§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§@&§)
            {
               §^S§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §2;§.playSound(param1,param2);
      }
   }
}
