package §"R§
{
   import §^_§.§!>§;
   import com.rovio.assets.§%!G§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class § !Q§
   {
      
      private static var §"p§:Boolean = true;
      
      private static const §'E§:int = 128;
      
      private static var §@<§:int;
      
      private static var §?!q§:Dictionary;
      
      private static var §^!G§:Dictionary;
      
      public static const §[!c§:String = "Default_Channel";
      
      public static const §`!;§:Boolean = false;
      
      private static var §?!r§:Boolean = true;
       
      
      public function § !Q§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §?!r§ = param1;
      }
      
      public static function init() : void
      {
         §?!q§ = new Dictionary();
         §^!G§ = new Dictionary();
         §@<§ = 0;
         §]!h§(§[!c§,4,1);
      }
      
      public static function §]!h§(param1:String, param2:int, param3:Number) : void
      {
         if(§5s§(param1) != null)
         {
            return;
         }
         if(§@<§ >= §'E§)
         {
            if(§`!;§)
            {
               §!>§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §'E§ + " reserved");
            }
            return;
         }
         if(§@<§ + param2 >= §'E§)
         {
            param2 = §'E§ - §@<§;
         }
         var _loc4_:§[f§ = new §[f§(param1,param2,param3);
         if(!§"p§)
         {
            _loc4_.§1!@§();
         }
         §?!q§[param1.toLowerCase()] = _loc4_;
         §@<§ += param2;
      }
      
      public static function §5s§(param1:String) : §[f§
      {
         return §?!q§[param1.toLowerCase()];
      }
      
      public static function §each §(param1:Boolean) : void
      {
         var _loc2_:§[f§ = null;
         if(param1 == §"p§)
         {
            return;
         }
         §"p§ = param1;
         for each(_loc2_ in §?!q§)
         {
            if(§"p§)
            {
               _loc2_.§ !#§();
            }
            else
            {
               _loc2_.§1!@§();
            }
         }
      }
      
      public static function §"!"§() : void
      {
         var _loc1_:§[f§ = null;
         for each(_loc1_ in §?!q§)
         {
            _loc1_.§"!"§();
         }
      }
      
      public static function §3<§() : Boolean
      {
         return §"p§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §`a§
      {
         var _loc8_:Class = null;
         if(!§?!r§)
         {
            return null;
         }
         var _loc6_:§[f§;
         if(!(_loc6_ = §5s§(param2)))
         {
            if(§`!;§)
            {
               §!>§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc6_.§']§())
         {
            if(§`!;§)
            {
               §!>§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §^!G§[param1]) == null)
         {
            if(!(_loc8_ = §%!G§.§^!B§(param1,false) as Class))
            {
               §!>§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §^!G§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param3,param4,param5);
      }
      
      public static function §9!t§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§[f§ = §5s§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§"!"§();
         }
      }
      
      public static function §0!t§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§`!;§)
            {
               §!>§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         § !Q§.playSound(param1,param2);
      }
   }
}
