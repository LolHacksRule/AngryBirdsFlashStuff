package §=L§
{
   import § !K§.§'h§;
   import §<!!§.§-"§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §@E§
   {
      
      private static var §+#§:Boolean = true;
      
      private static const §=!]§:int = 128;
      
      private static var §2!1§:int;
      
      private static var §`T§:Dictionary;
      
      private static var §6H§:Dictionary;
      
      public static const §#!%§:String = "Default_Channel";
      
      public static const §+[§:Boolean = false;
      
      private static var §5-§:Boolean = true;
       
      
      public function §@E§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §5-§ = param1;
      }
      
      public static function init() : void
      {
         §`T§ = new Dictionary();
         §6H§ = new Dictionary();
         §2!1§ = 0;
         §8!-§(§#!%§,4,1);
      }
      
      public static function §8!-§(param1:String, param2:int, param3:Number) : void
      {
         if(§,s§(param1) != null)
         {
            return;
         }
         if(§2!1§ >= §=!]§)
         {
            if(§+[§)
            {
               §-"§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §=!]§ + " reserved");
            }
            return;
         }
         if(§2!1§ + param2 >= §=!]§)
         {
            param2 = §=!]§ - §2!1§;
         }
         var _loc4_:§6B§ = new §6B§(param1,param2,param3);
         if(!§+#§)
         {
            _loc4_.§]3§();
         }
         §`T§[param1.toLowerCase()] = _loc4_;
         §2!1§ += param2;
      }
      
      public static function §,s§(param1:String) : §6B§
      {
         return §`T§[param1.toLowerCase()];
      }
      
      public static function §&A§(param1:Boolean) : void
      {
         var _loc2_:§6B§ = null;
         if(param1 == §+#§)
         {
            return;
         }
         §+#§ = param1;
         for each(_loc2_ in §`T§)
         {
            if(§+#§)
            {
               _loc2_.§,h§();
            }
            else
            {
               _loc2_.§]3§();
            }
         }
      }
      
      public static function §>!^§() : void
      {
         var _loc1_:§6B§ = null;
         for each(_loc1_ in §`T§)
         {
            _loc1_.§>!^§();
         }
      }
      
      public static function §]Q§() : Boolean
      {
         return §+#§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §]!5§
      {
         var _loc7_:Class = null;
         if(!§5-§)
         {
            return null;
         }
         var _loc5_:§6B§;
         if(!(_loc5_ = §,s§(param2)))
         {
            if(§+[§)
            {
               §-"§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§`!`§())
         {
            if(§+[§)
            {
               §-"§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §6H§[param1]) == null)
         {
            if(!(_loc7_ = §'h§.§`E§(param1,false) as Class))
            {
               §-"§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §6H§[param1] = _loc6_;
         }
         return _loc5_.playSound(_loc6_,param3,param4);
      }
      
      public static function §1o§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§6B§ = §,s§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§>!^§();
         }
      }
      
      public static function §`d§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§+[§)
            {
               §-"§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §@E§.playSound(param1,param2);
      }
   }
}
