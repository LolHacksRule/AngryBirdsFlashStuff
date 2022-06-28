package §3!j§
{
   import §'N§.Log;
   import com.rovio.assets.AssetCache;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class SoundEngine
   {
      
      private static var §[9§:Boolean = true;
      
      private static const §1g§:int = 128;
      
      private static var §!!R§:int;
      
      private static var §6!5§:Dictionary;
      
      private static var §2!R§:Dictionary;
      
      public static const §[2§:String = "Default_Channel";
      
      public static const §+!_§:Boolean = false;
      
      private static var §+!,§:Boolean = true;
       
      
      public function SoundEngine()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §+!,§ = param1;
      }
      
      public static function init() : void
      {
         §6!5§ = new Dictionary();
         §2!R§ = new Dictionary();
         §!!R§ = 0;
         §"!"§(§[2§,4,1);
      }
      
      public static function §"!"§(param1:String, param2:int, param3:Number) : void
      {
         if(§while§(param1) != null)
         {
            return;
         }
         if(§!!R§ >= §1g§)
         {
            if(§+!_§)
            {
               Log.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §1g§ + " reserved");
            }
            return;
         }
         if(§!!R§ + param2 >= §1g§)
         {
            param2 = §1g§ - §!!R§;
         }
         var _loc4_:SoundChannelController = new SoundChannelController(param1,param2,param3);
         if(!§[9§)
         {
            _loc4_.§0!Q§();
         }
         §6!5§[param1.toLowerCase()] = _loc4_;
         §!!R§ += param2;
      }
      
      public static function §while§(param1:String) : SoundChannelController
      {
         return §6!5§[param1.toLowerCase()];
      }
      
      public static function §-!'§(param1:Boolean) : void
      {
         var _loc2_:SoundChannelController = null;
         if(param1 == §[9§)
         {
            return;
         }
         §[9§ = param1;
         for each(_loc2_ in §6!5§)
         {
            if(§[9§)
            {
               _loc2_.§[!%§();
            }
            else
            {
               _loc2_.§0!Q§();
            }
         }
      }
      
      public static function §=O§() : void
      {
         var _loc1_:SoundChannelController = null;
         for each(_loc1_ in §6!5§)
         {
            _loc1_.§=O§();
         }
      }
      
      public static function §=U§() : Boolean
      {
         return §[9§;
      }
      
      public static function §`B§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §%[§
      {
         var _loc8_:Class = null;
         if(!§+!,§)
         {
            return null;
         }
         var _loc6_:SoundChannelController = §while§(param2);
         if(!_loc6_)
         {
            if(§+!_§)
            {
               Log.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc6_.§4=§())
         {
            if(§+!_§)
            {
               Log.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc7_:Sound = §2!R§[param1];
         if(_loc7_ == null)
         {
            _loc8_ = AssetCache.§,!k§(param1,false) as Class;
            if(!_loc8_)
            {
               Log.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §2!R§[param1] = _loc7_;
         }
         return _loc6_.§`B§(_loc7_,param3,param4,param5);
      }
      
      public static function §5v§(param1:String = "Default_Channel") : void
      {
         var _loc2_:SoundChannelController = §while§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§=O§();
         }
      }
      
      public static function §4!k§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§+!_§)
            {
               Log.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         SoundEngine.§`B§(param1,param2);
      }
   }
}
