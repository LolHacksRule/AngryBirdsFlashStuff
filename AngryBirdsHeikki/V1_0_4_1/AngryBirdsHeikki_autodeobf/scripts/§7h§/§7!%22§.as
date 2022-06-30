package §7h§
{
   import §%!$§.§[Z§;
   import §7S§.§3t§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §7!"§
   {
      
      private static var §<!,§:Boolean = true;
      
      private static const §8'§:int = 128;
      
      private static var §#!_§:int;
      
      private static var §>T§:Dictionary;
      
      private static var §>P§:Dictionary;
      
      public static const §53§:String = "Default_Channel";
      
      public static const §>,§:Boolean = false;
      
      private static var §6j§:Boolean = true;
       
      
      public function §7!"§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §6j§ = param1;
      }
      
      public static function init() : void
      {
         §>T§ = new Dictionary();
         §>P§ = new Dictionary();
         §#!_§ = 0;
         §@c§(§53§,4,1);
      }
      
      public static function §@c§(param1:String, param2:int, param3:Number) : void
      {
         if(§[!C§(param1) != null)
         {
            return;
         }
         if(§#!_§ >= §8'§)
         {
            if(§>,§)
            {
               §[Z§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §8'§ + " reserved");
            }
            return;
         }
         if(§#!_§ + param2 >= §8'§)
         {
            param2 = §8'§ - §#!_§;
         }
         var _loc4_:§ [§ = new § [§(param1,param2,param3);
         if(!§<!,§)
         {
            _loc4_.§5!1§();
         }
         §>T§[param1.toLowerCase()] = _loc4_;
         §#!_§ += param2;
      }
      
      public static function §[!C§(param1:String) : § [§
      {
         return §>T§[param1.toLowerCase()];
      }
      
      public static function §8K§(param1:Boolean) : void
      {
         var _loc2_:§ [§ = null;
         if(param1 == §<!,§)
         {
            return;
         }
         §<!,§ = param1;
         for each(_loc2_ in §>T§)
         {
            if(§<!,§)
            {
               _loc2_.§8L§();
            }
            else
            {
               _loc2_.§5!1§();
            }
         }
      }
      
      public static function §9!0§() : void
      {
         var _loc1_:§ [§ = null;
         for each(_loc1_ in §>T§)
         {
            _loc1_.§9!0§();
         }
      }
      
      public static function §else §() : Boolean
      {
         return §<!,§;
      }
      
      public static function §#W§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §4!O§
      {
         var _loc8_:Class = null;
         if(!§6j§)
         {
            return null;
         }
         var _loc6_:§ [§;
         if(!(_loc6_ = §[!C§(param2)))
         {
            if(§>,§)
            {
               §[Z§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc6_.§;u§())
         {
            if(§>,§)
            {
               §[Z§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §>P§[param1]) == null)
         {
            if(!(_loc8_ = §3t§.§#v§(param1,false) as Class))
            {
               §[Z§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §>P§[param1] = _loc7_;
         }
         return _loc6_.§#W§(_loc7_,param3,param4,param5);
      }
      
      public static function §`!-§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§ [§ = §[!C§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§9!0§();
         }
      }
      
      public static function §!!R§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§>,§)
            {
               §[Z§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §7!"§.§#W§(param1,param2);
      }
   }
}
