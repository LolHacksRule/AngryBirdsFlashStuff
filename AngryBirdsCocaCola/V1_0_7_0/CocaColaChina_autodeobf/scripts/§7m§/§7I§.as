package §7m§
{
   import §?@§.§"]§;
   import §^!L§.§@x§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §7I§
   {
      
      private static var §<!0§:Boolean = true;
      
      private static const §8!+§:int = 128;
      
      private static var §7!H§:int;
      
      private static var §"e§:Dictionary;
      
      private static var §`!,§:Dictionary;
      
      public static const §-r§:String = "Default_Channel";
      
      public static const §!!G§:Boolean = false;
      
      private static var §`Q§:Boolean = true;
       
      
      public function §7I§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §`Q§ = param1;
      }
      
      public static function init() : void
      {
         §"e§ = new Dictionary();
         §`!,§ = new Dictionary();
         §7!H§ = 0;
         §<!P§(§-r§,4,1);
      }
      
      public static function §<!P§(param1:String, param2:int, param3:Number) : void
      {
         if(§"!#§(param1) != null)
         {
            return;
         }
         if(§7!H§ >= §8!+§)
         {
            if(§!!G§)
            {
               §"]§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §8!+§ + " reserved");
            }
            return;
         }
         if(§7!H§ + param2 >= §8!+§)
         {
            param2 = §8!+§ - §7!H§;
         }
         var _loc4_:§<!U§ = new §<!U§(param1,param2,param3);
         if(!§<!0§)
         {
            _loc4_.§]3§();
         }
         §"e§[param1.toLowerCase()] = _loc4_;
         §7!H§ += param2;
      }
      
      public static function §"!#§(param1:String) : §<!U§
      {
         return §"e§[param1.toLowerCase()];
      }
      
      public static function §9x§(param1:Boolean) : void
      {
         var _loc2_:§<!U§ = null;
         if(param1 == §<!0§)
         {
            return;
         }
         §<!0§ = param1;
         for each(_loc2_ in §"e§)
         {
            if(§<!0§)
            {
               _loc2_.§;!&§();
            }
            else
            {
               _loc2_.§]3§();
            }
         }
      }
      
      public static function §1!F§() : void
      {
         var _loc1_:§<!U§ = null;
         for each(_loc1_ in §"e§)
         {
            _loc1_.§1!F§();
         }
      }
      
      public static function §1![§() : Boolean
      {
         return §<!0§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §"!M§
      {
         var _loc8_:Class = null;
         if(!§`Q§)
         {
            return null;
         }
         var _loc6_:§<!U§;
         if(!(_loc6_ = §"!#§(param2)))
         {
            if(§!!G§)
            {
               §"]§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc6_.§;!L§())
         {
            if(§!!G§)
            {
               §"]§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc7_:Sound;
         if((_loc7_ = §`!,§[param1]) == null)
         {
            if(!(_loc8_ = §@x§.§="§(param1,false) as Class))
            {
               §"]§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §`!,§[param1] = _loc7_;
         }
         return _loc6_.playSound(_loc7_,param3,param4,param5);
      }
      
      public static function §[p§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§<!U§ = §"!#§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§1!F§();
         }
      }
      
      public static function §-w§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§!!G§)
            {
               §"]§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §7I§.playSound(param1,param2);
      }
   }
}
