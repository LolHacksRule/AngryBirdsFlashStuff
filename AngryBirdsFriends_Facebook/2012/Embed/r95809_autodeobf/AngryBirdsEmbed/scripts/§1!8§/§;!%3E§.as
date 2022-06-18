package §1!8§
{
   import §2x§.§'!@§;
   import com.rovio.assets.§0v§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §;!>§
   {
      
      private static var §?!4§:Boolean = true;
      
      private static const §4!B§:int = 128;
      
      private static var §!!A§:int;
      
      private static var §'y§:Dictionary;
      
      private static var § !"§:Dictionary;
      
      public static const §`x§:String = "Default_Channel";
      
      public static const §2!3§:Boolean = false;
      
      private static var §;n§:Boolean = true;
       
      
      public function §;!>§()
      {
         super();
      }
      
      public static function set enabled(param1:Boolean) : void
      {
         §;n§ = param1;
      }
      
      public static function init() : void
      {
         §'y§ = new Dictionary();
         § !"§ = new Dictionary();
         §!!A§ = 0;
         §]t§(§`x§,4,1);
      }
      
      public static function §]t§(param1:String, param2:int, param3:Number) : void
      {
         if(§5!4§(param1) != null)
         {
            return;
         }
         if(§!!A§ >= §4!B§)
         {
            if(§2!3§)
            {
               §'!@§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §4!B§ + " reserved");
            }
            return;
         }
         if(§!!A§ + param2 >= §4!B§)
         {
            param2 = §4!B§ - §!!A§;
         }
         var _loc4_:§[l§ = new §[l§(param1,param2,param3);
         if(!§?!4§)
         {
            _loc4_.§8P§();
         }
         §'y§[param1.toLowerCase()] = _loc4_;
         §!!A§ += param2;
      }
      
      public static function §5!4§(param1:String) : §[l§
      {
         return §'y§[param1.toLowerCase()];
      }
      
      public static function §`i§(param1:Boolean) : void
      {
         var _loc2_:§[l§ = null;
         if(param1 == §?!4§)
         {
            return;
         }
         §?!4§ = param1;
         for each(_loc2_ in §'y§)
         {
            if(§?!4§)
            {
               _loc2_.§,!!§();
            }
            else
            {
               _loc2_.§8P§();
            }
         }
      }
      
      public static function §&;§() : void
      {
         var _loc1_:§[l§ = null;
         for each(_loc1_ in §'y§)
         {
            _loc1_.§&;§();
         }
      }
      
      public static function §`!B§() : Boolean
      {
         return §?!4§;
      }
      
      public static function §>t§(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §]f§
      {
         var _loc7_:Class = null;
         if(!§;n§)
         {
            return null;
         }
         var _loc5_:§[l§;
         if(!(_loc5_ = §5!4§(param2)))
         {
            if(§2!3§)
            {
               §'!@§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§8I§())
         {
            if(§2!3§)
            {
               §'!@§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = § !"§[param1]) == null)
         {
            if(!(_loc7_ = §0v§.§#w§(param1,false) as Class))
            {
               §'!@§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            § !"§[param1] = _loc6_;
         }
         return _loc5_.§>t§(_loc6_,param3,param4);
      }
      
      public static function §8!"§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§[l§ = §5!4§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§&;§();
         }
      }
      
      public static function §#k§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§2!3§)
            {
               §'!@§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §;!>§.§>t§(param1,param2);
      }
   }
}
