package §1!T§
{
   import §6z§.§[g§;
   import com.rovio.assets.§9!N§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §6!H§
   {
      
      private static var §^!G§:Boolean = true;
      
      private static const §,y§:int = 128;
      
      private static var § 6§:int;
      
      private static var §3X§:Dictionary;
      
      private static var §34§:Dictionary;
      
      public static const §8!$§:String = "Default_Channel";
      
      public static const §]!+§:Boolean = false;
      
      private static var §<"§:Boolean = true;
       
      
      public function §6!H§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §<"§ = param1;
      }
      
      public static function init() : void
      {
         §3X§ = new Dictionary();
         §34§ = new Dictionary();
         § 6§ = 0;
         §^!s§(§8!$§,4,1);
      }
      
      public static function §^!s§(param1:String, param2:int, param3:Number) : void
      {
         if(§-^§(param1) != null)
         {
            return;
         }
         if(§ 6§ >= §,y§)
         {
            if(§]!+§)
            {
               §[g§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §,y§ + " reserved");
            }
            return;
         }
         if(§ 6§ + param2 >= §,y§)
         {
            param2 = §,y§ - § 6§;
         }
         var _loc4_:§,k§ = new §,k§(param1,param2,param3);
         if(!§^!G§)
         {
            _loc4_.§`!@§();
         }
         §3X§[param1.toLowerCase()] = _loc4_;
         § 6§ += param2;
      }
      
      public static function §-^§(param1:String) : §,k§
      {
         return §3X§[param1.toLowerCase()];
      }
      
      public static function §1^§(param1:Boolean) : void
      {
         var _loc2_:§,k§ = null;
         if(param1 == §^!G§)
         {
            return;
         }
         §^!G§ = param1;
         for each(_loc2_ in §3X§)
         {
            if(§^!G§)
            {
               _loc2_.§]!Y§();
            }
            else
            {
               _loc2_.§`!@§();
            }
         }
      }
      
      public static function §[!W§() : void
      {
         var _loc1_:§,k§ = null;
         for each(_loc1_ in §3X§)
         {
            _loc1_.§[!W§();
         }
      }
      
      public static function §?!'§() : Boolean
      {
         return §^!G§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §&!v§
      {
         var _loc8_:Class = null;
         if(!§<"§)
         {
            return null;
         }
         var _loc6_:§,k§;
         if(!(_loc6_ = §-^§(param2)))
         {
            if(§]!+§)
            {
               §[g§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc6_.§]!W§())
         {
            if(§]!+§)
            {
               §[g§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §34§[param1]) == null)
         {
            if(!(_loc8_ = §9!N§.§0!k§(param1,false) as Class))
            {
               §[g§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §34§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param3,param4,param5);
      }
      
      public static function §1x§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§,k§ = §-^§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§[!W§();
         }
      }
      
      public static function §;!M§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§]!+§)
            {
               §[g§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §6!H§.playSound(param1,param2);
      }
   }
}
