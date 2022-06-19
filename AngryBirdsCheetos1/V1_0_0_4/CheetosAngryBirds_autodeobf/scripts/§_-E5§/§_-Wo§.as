package §_-E5§
{
   import §_-2B§.§_-wA§;
   import §_-r6§.§_-Oy§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §_-Wo§
   {
      
      private static var §_-8v§:Boolean = true;
      
      private static const §_-qD§:int = 128;
      
      private static var §_-Ie§:int;
      
      private static var §_-sR§:Dictionary;
      
      private static var §_-J6§:Dictionary;
      
      public static const §_-5s§:String = "Default_Channel";
      
      public static const §_-vp§:Boolean = false;
       
      
      public function §_-Wo§()
      {
         super();
      }
      
      public static function init() : void
      {
         §_-sR§ = new Dictionary();
         §_-J6§ = new Dictionary();
         §_-Ie§ = 0;
         §_-FT§(§_-5s§,4,1);
      }
      
      public static function §_-FT§(param1:String, param2:int, param3:Number) : void
      {
         if(§_-XO§(param1) != null)
         {
            return;
         }
         if(§_-Ie§ >= §_-qD§)
         {
            if(§_-vp§)
            {
               §_-Oy§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §_-qD§ + " reserved");
            }
            return;
         }
         if(§_-Ie§ + param2 >= §_-qD§)
         {
            param2 = §_-qD§ - §_-Ie§;
         }
         var _loc4_:§_-RY§ = new §_-RY§(param1,param2,param3);
         if(!§_-8v§)
         {
            _loc4_.§_-pG§();
         }
         §_-sR§[param1.toLowerCase()] = _loc4_;
         §_-Ie§ += param2;
      }
      
      public static function §_-XO§(param1:String) : §_-RY§
      {
         return §_-sR§[param1.toLowerCase()];
      }
      
      public static function §_-VE§(param1:Boolean) : void
      {
         var _loc2_:§_-RY§ = null;
         if(param1 == §_-8v§)
         {
            return;
         }
         §_-8v§ = param1;
         for each(_loc2_ in §_-sR§)
         {
            if(§_-8v§)
            {
               _loc2_.§_-AL§();
            }
            else
            {
               _loc2_.§_-pG§();
            }
         }
      }
      
      public static function §_-EQ§() : void
      {
         var _loc1_:§_-RY§ = null;
         for each(_loc1_ in §_-sR§)
         {
            _loc1_.§_-EQ§();
         }
      }
      
      public static function §_-1b§() : Boolean
      {
         return §_-8v§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §_-DK§
      {
         var _loc7_:Class = null;
         var _loc5_:§_-RY§;
         if(!(_loc5_ = §_-XO§(param2)))
         {
            if(§_-vp§)
            {
               §_-Oy§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§_-s9§())
         {
            if(§_-vp§)
            {
               §_-Oy§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §_-J6§[param1]) == null)
         {
            if(!(_loc7_ = §_-wA§.§_-Mh§(param1,false) as Class))
            {
               §_-Oy§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §_-J6§[param1] = _loc6_;
         }
         return _loc5_.playSound(_loc6_,param3,param4);
      }
      
      public static function §_-qF§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§_-RY§ = §_-XO§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§_-EQ§();
         }
      }
      
      public static function §case§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§_-vp§)
            {
               §_-Oy§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §_-Wo§.playSound(param1,param2);
      }
   }
}
