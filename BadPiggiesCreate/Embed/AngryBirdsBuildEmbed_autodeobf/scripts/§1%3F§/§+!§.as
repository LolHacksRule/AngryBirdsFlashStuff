package §1?§
{
   import § !r§.§`![§;
   import com.rovio.assets.§1F§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §+!§
   {
      
      private static var §-!3§:Boolean = true;
      
      private static const §"!+§:int = 128;
      
      private static var §4R§:int;
      
      private static var §%!a§:Dictionary;
      
      private static var §#!Z§:Dictionary;
      
      public static const §-!8§:String = "Default_Channel";
      
      public static const §5!l§:Boolean = false;
      
      private static var §@?§:Boolean = true;
       
      
      public function §+!§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §@?§ = param1;
      }
      
      public static function init() : void
      {
         §%!a§ = new Dictionary();
         §#!Z§ = new Dictionary();
         §4R§ = 0;
         §#n§(§-!8§,4,1);
      }
      
      public static function §#n§(param1:String, param2:int, param3:Number) : void
      {
         if(§%!6§(param1) != null)
         {
            return;
         }
         if(§4R§ >= §"!+§)
         {
            if(§5!l§)
            {
               §`![§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §"!+§ + " reserved");
            }
            return;
         }
         if(§4R§ + param2 >= §"!+§)
         {
            param2 = §"!+§ - §4R§;
         }
         var _loc4_:§8F§ = new §8F§(param1,param2,param3);
         if(!§-!3§)
         {
            _loc4_.§!!H§();
         }
         §%!a§[param1.toLowerCase()] = _loc4_;
         §4R§ += param2;
      }
      
      public static function §%!6§(param1:String) : §8F§
      {
         return §%!a§[param1.toLowerCase()];
      }
      
      public static function §4z§(param1:Boolean) : void
      {
         var _loc2_:§8F§ = null;
         if(param1 == §-!3§)
         {
            return;
         }
         §-!3§ = param1;
         for each(_loc2_ in §%!a§)
         {
            if(§-!3§)
            {
               _loc2_.§=!a§();
            }
            else
            {
               _loc2_.§!!H§();
            }
         }
      }
      
      public static function §'!Q§() : void
      {
         var _loc1_:§8F§ = null;
         for each(_loc1_ in §%!a§)
         {
            _loc1_.§'!Q§();
         }
      }
      
      public static function §4V§() : Boolean
      {
         return §-!3§;
      }
      
      public static function §4c§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §#!C§
      {
         var _loc7_:Class = null;
         if(!§@?§)
         {
            return null;
         }
         var _loc5_:§8F§;
         if(!(_loc5_ = §%!6§(param2)))
         {
            if(§5!l§)
            {
               §`![§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§6!C§())
         {
            if(§5!l§)
            {
               §`![§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §#!Z§[param1]) == null)
         {
            if(!(_loc7_ = §1F§.§"!_§(param1,false) as Class))
            {
               §`![§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §#!Z§[param1] = _loc6_;
         }
         return _loc5_.§4c§(_loc6_,param3,param4);
      }
      
      public static function §+!h§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§8F§ = §%!6§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§'!Q§();
         }
      }
      
      public static function §&!b§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§5!l§)
            {
               §`![§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §+!§.§4c§(param1,param2);
      }
   }
}
