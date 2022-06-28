package §=?§
{
   import §6b§.Log;
   import com.rovio.assets.AssetCache;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class SoundEngine
   {
      
      private static var §^o§:Boolean = true;
      
      private static const §]'§:int = 128;
      
      private static var §!G§:int;
      
      private static var §;!A§:Dictionary;
      
      private static var § X§:Dictionary;
      
      public static const §0R§:String = "Default_Channel";
      
      public static const §+9§:Boolean = false;
      
      private static var §%D§:Boolean = true;
       
      
      public function SoundEngine()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §%D§ = param1;
      }
      
      public static function init() : void
      {
         §;!A§ = new Dictionary();
         § X§ = new Dictionary();
         §!G§ = 0;
         §#!`§(§0R§,4,1);
      }
      
      public static function §#!`§(param1:String, param2:int, param3:Number) : void
      {
         if(§!_§(param1) != null)
         {
            return;
         }
         if(§!G§ >= §]'§)
         {
            if(§+9§)
            {
               Log.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §]'§ + " reserved");
            }
            return;
         }
         if(§!G§ + param2 >= §]'§)
         {
            param2 = §]'§ - §!G§;
         }
         var _loc4_:SoundChannelController = new SoundChannelController(param1,param2,param3);
         if(!§^o§)
         {
            _loc4_.§#!6§();
         }
         §;!A§[param1.toLowerCase()] = _loc4_;
         §!G§ += param2;
      }
      
      public static function §!_§(param1:String) : SoundChannelController
      {
         return §;!A§[param1.toLowerCase()];
      }
      
      public static function §?!$§(param1:Boolean) : void
      {
         var _loc2_:SoundChannelController = null;
         if(param1 == §^o§)
         {
            return;
         }
         §^o§ = param1;
         for each(_loc2_ in §;!A§)
         {
            if(§^o§)
            {
               _loc2_.§`!=§();
            }
            else
            {
               _loc2_.§#!6§();
            }
         }
      }
      
      public static function §;!8§() : void
      {
         var _loc1_:SoundChannelController = null;
         for each(_loc1_ in §;!A§)
         {
            _loc1_.§;!8§();
         }
      }
      
      public static function §4!7§() : Boolean
      {
         return §^o§;
      }
      
      public static function §9!X§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1, param5:Function = null) : §7[§
      {
         var _loc8_:Class = null;
         if(!§%D§)
         {
            return null;
         }
         var _loc6_:SoundChannelController = §!_§(param2);
         if(!_loc6_)
         {
            if(§+9§)
            {
               Log.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc6_.§'!a§())
         {
            if(§+9§)
            {
               Log.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc7_:Sound = § X§[param1];
         if(_loc7_ == null)
         {
            _loc8_ = AssetCache.§-9§(param1,false) as Class;
            if(!_loc8_)
            {
               Log.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc7_ = new _loc8_();
            § X§[param1] = _loc7_;
         }
         return _loc6_.§9!X§(_loc7_,param3,param4,param5);
      }
      
      public static function §'!B§(param1:String = "Default_Channel") : void
      {
         var _loc2_:SoundChannelController = §!_§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§;!8§();
         }
      }
      
      public static function §1h§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§+9§)
            {
               Log.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         SoundEngine.§9!X§(param1,param2);
      }
   }
}
