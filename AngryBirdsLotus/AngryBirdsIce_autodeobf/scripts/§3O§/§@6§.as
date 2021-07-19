package §3O§
{
   import §;8§.§3f§;
   import com.rovio.assets.§>D§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §@6§
   {
      
      private static var §36§:Boolean = true;
      
      private static const §"w§:int = 128;
      
      private static var §1!7§:int;
      
      private static var § !7§:Dictionary;
      
      private static var §#!G§:Dictionary;
      
      public static const §`f§:String = "Default_Channel";
      
      public static const §'%§:Boolean = false;
      
      private static var §]@§:Boolean = true;
       
      
      public function §@6§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §]@§ = param1;
      }
      
      public static function init() : void
      {
         § !7§ = new Dictionary();
         §#!G§ = new Dictionary();
         §1!7§ = 0;
         §'!&§(§`f§,4,1);
      }
      
      public static function §'!&§(param1:String, param2:int, param3:Number) : void
      {
         if(§"7§(param1) != null)
         {
            return;
         }
         if(§1!7§ >= §"w§)
         {
            if(§'%§)
            {
               §3f§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §"w§ + " reserved");
            }
            return;
         }
         if(§1!7§ + param2 >= §"w§)
         {
            param2 = §"w§ - §1!7§;
         }
         var _loc4_:§?+§ = new §?+§(param1,param2,param3);
         if(!§36§)
         {
            _loc4_.§%K§();
         }
         § !7§[param1.toLowerCase()] = _loc4_;
         §1!7§ += param2;
      }
      
      public static function §"7§(param1:String) : §?+§
      {
         return § !7§[param1.toLowerCase()];
      }
      
      public static function §`n§(param1:Boolean) : void
      {
         var _loc2_:§?+§ = null;
         if(param1 == §36§)
         {
            return;
         }
         §36§ = param1;
         for each(_loc2_ in § !7§)
         {
            if(§36§)
            {
               _loc2_.§<m§();
            }
            else
            {
               _loc2_.§%K§();
            }
         }
      }
      
      public static function §&t§() : void
      {
         var _loc1_:§?+§ = null;
         for each(_loc1_ in § !7§)
         {
            _loc1_.§&t§();
         }
      }
      
      public static function §+!$§() : Boolean
      {
         return §36§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §%!D§
      {
         var _loc7_:Class = null;
         if(!§]@§)
         {
            return null;
         }
         var _loc5_:§?+§;
         if(!(_loc5_ = §"7§(param2)))
         {
            if(§'%§)
            {
               §3f§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§2V§())
         {
            if(§'%§)
            {
               §3f§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §#!G§[param1]) == null)
         {
            if(!(_loc7_ = §>D§.§`C§(param1,false) as Class))
            {
               §3f§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §#!G§[param1] = _loc6_;
         }
         return _loc5_.playSound(_loc6_,param3,param4);
      }
      
      public static function §!>§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§?+§ = §"7§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§&t§();
         }
      }
      
      public static function §0+§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§'%§)
            {
               §3f§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §@6§.playSound(param1,param2);
      }
   }
}
