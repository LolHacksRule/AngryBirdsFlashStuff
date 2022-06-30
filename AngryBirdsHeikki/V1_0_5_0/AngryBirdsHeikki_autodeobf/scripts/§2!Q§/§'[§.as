package §2!Q§
{
   import §1!K§.§>!<§;
   import §@u§.§]!-§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §'[§
   {
      
      private static var §#3§:Boolean = true;
      
      private static const §<§:int = 128;
      
      private static var §#T§:int;
      
      private static var §1!F§:Dictionary;
      
      private static var §<J§:Dictionary;
      
      public static const §@-§:String = "Default_Channel";
      
      public static const §@!D§:Boolean = false;
      
      private static var §[!P§:Boolean = true;
       
      
      public function §'[§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §[!P§ = param1;
      }
      
      public static function init() : void
      {
         §1!F§ = new Dictionary();
         §<J§ = new Dictionary();
         §#T§ = 0;
         §`V§(§@-§,4,1);
      }
      
      public static function §`V§(param1:String, param2:int, param3:Number) : void
      {
         if(§[!Z§(param1) != null)
         {
            return;
         }
         if(§#T§ >= §<§)
         {
            if(§@!D§)
            {
               §>!<§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §<§ + " reserved");
            }
            return;
         }
         if(§#T§ + param2 >= §<§)
         {
            param2 = §<§ - §#T§;
         }
         var _loc4_:§0!H§ = new §0!H§(param1,param2,param3);
         if(!§#3§)
         {
            _loc4_.§ z§();
         }
         §1!F§[param1.toLowerCase()] = _loc4_;
         §#T§ += param2;
      }
      
      public static function §[!Z§(param1:String) : §0!H§
      {
         return §1!F§[param1.toLowerCase()];
      }
      
      public static function §7!H§(param1:Boolean) : void
      {
         var _loc2_:§0!H§ = null;
         if(param1 == §#3§)
         {
            return;
         }
         §#3§ = param1;
         for each(_loc2_ in §1!F§)
         {
            if(§#3§)
            {
               _loc2_.§"!B§();
            }
            else
            {
               _loc2_.§ z§();
            }
         }
      }
      
      public static function §9!;§() : void
      {
         var _loc1_:§0!H§ = null;
         for each(_loc1_ in §1!F§)
         {
            _loc1_.§9!;§();
         }
      }
      
      public static function §^!!§() : Boolean
      {
         return §#3§;
      }
      
      public static function §"]§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §@!-§
      {
         var _loc8_:Class = null;
         if(!§[!P§)
         {
            return null;
         }
         var _loc6_:§0!H§;
         if(!(_loc6_ = §[!Z§(param2)))
         {
            if(§@!D§)
            {
               §>!<§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc6_.§!E§())
         {
            if(§@!D§)
            {
               §>!<§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §<J§[param1]) == null)
         {
            if(!(_loc8_ = §]!-§.§=!M§(param1,false) as Class))
            {
               §>!<§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §<J§[param1] = _loc7_;
         }
         return _loc6_.§"]§(_loc7_,param3,param4,param5);
      }
      
      public static function §,!?§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§0!H§ = §[!Z§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§9!;§();
         }
      }
      
      public static function § !T§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§@!D§)
            {
               §>!<§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §'[§.§"]§(param1,param2);
      }
   }
}
