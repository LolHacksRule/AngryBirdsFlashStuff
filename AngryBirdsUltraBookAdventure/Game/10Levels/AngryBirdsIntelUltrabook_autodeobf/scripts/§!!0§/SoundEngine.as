package §!!0§
{
   import §<u§.Log;
   import com.rovio.assets.AssetCache;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class SoundEngine
   {
      
      private static var §""§:Boolean = true;
      
      private static const §@!a§:int = 128;
      
      private static var §1c§:int;
      
      private static var §^K§:Dictionary;
      
      private static var §&!V§:Dictionary;
      
      public static const §5!g§:String = "Default_Channel";
      
      public static const §&d§:Boolean = false;
      
      private static var §[!b§:Boolean = true;
       
      
      public function SoundEngine()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §[!b§ = param1;
      }
      
      public static function init() : void
      {
         §^K§ = new Dictionary();
         §&!V§ = new Dictionary();
         §1c§ = 0;
         § Q§(§5!g§,4,1);
      }
      
      public static function § Q§(param1:String, param2:int, param3:Number) : void
      {
         if(§'!'§(param1) != null)
         {
            return;
         }
         if(§1c§ >= §@!a§)
         {
            if(§&d§)
            {
               Log.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §@!a§ + " reserved");
            }
            return;
         }
         if(§1c§ + param2 >= §@!a§)
         {
            param2 = §@!a§ - §1c§;
         }
         var _loc4_:SoundChannelController = new SoundChannelController(param1,param2,param3);
         if(!§""§)
         {
            _loc4_.§!§();
         }
         §^K§[param1.toLowerCase()] = _loc4_;
         §1c§ += param2;
      }
      
      public static function §'!'§(param1:String) : SoundChannelController
      {
         return §^K§[param1.toLowerCase()];
      }
      
      public static function §=!f§(param1:Boolean) : void
      {
         var _loc2_:SoundChannelController = null;
         if(param1 == §""§)
         {
            return;
         }
         §""§ = param1;
         for each(_loc2_ in §^K§)
         {
            if(§""§)
            {
               _loc2_.§&!,§();
            }
            else
            {
               _loc2_.§!§();
            }
         }
      }
      
      public static function §%!V§() : void
      {
         var _loc1_:SoundChannelController = null;
         for each(_loc1_ in §^K§)
         {
            _loc1_.§%!V§();
         }
      }
      
      public static function §'5§() : Boolean
      {
         return §""§;
      }
      
      public static function §-!h§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §?!j§
      {
         var _loc8_:Class = null;
         if(!§[!b§)
         {
            return null;
         }
         var _loc6_:SoundChannelController = §'!'§(param2);
         if(!_loc6_)
         {
            if(§&d§)
            {
               Log.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc6_.§0!S§())
         {
            if(§&d§)
            {
               Log.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc7_:Sound = §&!V§[param1];
         if(_loc7_ == null)
         {
            _loc8_ = AssetCache.§%p§(param1,false) as Class;
            if(!_loc8_)
            {
               Log.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            §&!V§[param1] = _loc7_;
         }
         return _loc6_.§-!h§(_loc7_,param3,param4,param5);
      }
      
      public static function §]!&§(param1:String = "Default_Channel") : void
      {
         var _loc2_:SoundChannelController = §'!'§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§%!V§();
         }
      }
      
      public static function §[!D§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§&d§)
            {
               Log.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         SoundEngine.§-!h§(param1,param2);
      }
   }
}
