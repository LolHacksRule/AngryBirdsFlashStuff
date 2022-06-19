package §_-cb§
{
   import §_-3-§.§_-ki§;
   import §_-U0§.§_-tF§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   
   public class §_-0B§
   {
      
      private static var §_-cS§:Boolean = true;
      
      private static const §_-4Z§:int = 128;
      
      private static var §_-Mx§:int;
      
      private static var §_-Bx§:Dictionary;
      
      private static var §_-sa§:Dictionary;
      
      public static const §_-f3§:String = "Default_Channel";
      
      public static const §_-kB§:Boolean = false;
       
      
      public function §_-0B§()
      {
         super();
      }
      
      public static function init() : void
      {
         §_-Bx§ = new Dictionary();
         §_-sa§ = new Dictionary();
         §_-Mx§ = 0;
         §_-2b§(§_-f3§,4,1);
      }
      
      public static function §_-2b§(param1:String, param2:int, param3:Number) : void
      {
         if(§_-dO§(param1) != null)
         {
            return;
         }
         if(§_-Mx§ >= §_-4Z§)
         {
            if(§_-kB§)
            {
               §_-tF§.log("WARNING: SoundEngine:addNewChannelControl() " + param1 + " failed because we already have more than " + §_-4Z§ + " reserved");
            }
            return;
         }
         if(§_-Mx§ + param2 >= §_-4Z§)
         {
            param2 = §_-4Z§ - §_-Mx§;
         }
         var _loc4_:§_-Tl§ = new §_-Tl§(param1,param2,param3);
         if(!§_-cS§)
         {
            _loc4_.§_-Zs§();
         }
         §_-Bx§[param1.toLowerCase()] = _loc4_;
         §_-Mx§ += param2;
      }
      
      public static function §_-dO§(param1:String) : §_-Tl§
      {
         return §_-Bx§[param1.toLowerCase()];
      }
      
      public static function §_-Hu§(param1:Boolean) : void
      {
         var _loc2_:§_-Tl§ = null;
         if(param1 == §_-cS§)
         {
            return;
         }
         §_-cS§ = param1;
         for each(_loc2_ in §_-Bx§)
         {
            if(§_-cS§)
            {
               _loc2_.§_-NO§();
            }
            else
            {
               _loc2_.§_-Zs§();
            }
         }
      }
      
      public static function §_-ws§() : void
      {
         var _loc1_:§_-Tl§ = null;
         for each(_loc1_ in §_-Bx§)
         {
            _loc1_.§_-ws§();
         }
      }
      
      public static function §_-fS§() : Boolean
      {
         return §_-cS§;
      }
      
      public static function playSound(param1:String, param2:String = "Default_Channel", param3:int = 0, param4:Number = -1) : §_-E1§
      {
         var _loc7_:Class = null;
         var _loc5_:§_-Tl§;
         if(!(_loc5_ = §_-dO§(param2)))
         {
            if(§_-kB§)
            {
               §_-tF§.log("WARNING: SoundEngine->PlaySound() can not play new sound request " + param1 + " because this channel does not exist " + param2);
            }
            return null;
         }
         if(!_loc5_.§_-SH§())
         {
            if(§_-kB§)
            {
               §_-tF§.log("WARNING: SoundEngine->PlaySound() can not play new sound request  " + param1 + " this channel is full " + param2);
            }
            return null;
         }
         var _loc6_:Sound;
         if((_loc6_ = §_-sa§[param1]) == null)
         {
            if(!(_loc7_ = §_-ki§.§_-pB§(param1,false) as Class))
            {
               §_-tF§.log("WARNING: SoundChannelController->PlaySound(), this sound is not in AssetCache: " + param1);
               return null;
            }
            _loc6_ = new _loc7_();
            §_-sa§[param1] = _loc6_;
         }
         return _loc5_.playSound(_loc6_,param3,param4);
      }
      
      public static function §_-f8§(param1:String = "Default_Channel") : void
      {
         var _loc2_:§_-Tl§ = §_-dO§(param1);
         if(_loc2_ != null)
         {
            _loc2_.§_-ws§();
         }
      }
      
      public static function §_-ZU§(param1:String, param2:String = "Default_Channel") : void
      {
         var _loc3_:int = int(param1.charAt(param1.length - 1));
         if(_loc3_ == 0)
         {
            if(§_-kB§)
            {
               §_-tF§.log("WARNING: SoundEngine->playSoundFromVariation() method received wrong file name, number at the end is missing: " + param1);
            }
            return;
         }
         _loc3_ = Math.random() * _loc3_;
         _loc3_ += 1;
         param1 = param1.slice(0,param1.length - 1) + _loc3_;
         §_-0B§.playSound(param1,param2);
      }
   }
}
