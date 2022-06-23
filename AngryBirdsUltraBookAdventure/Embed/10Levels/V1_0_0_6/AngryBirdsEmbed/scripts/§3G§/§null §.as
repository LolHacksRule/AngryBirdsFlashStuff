package §3G§
{
   import §,_§.Sprite;
   import §3c§.§^z§;
   import §5`§.§+q§;
   import §5`§.§1p§;
   import §5`§.§?y§;
   import §5`§.§@B§;
   import §8u§.§,!<§;
   import §8u§.§6a§;
   import §=!B§.§59§;
   import §=!B§.§^!9§;
   import §@§.§ f§;
   import §@§.§5r§;
   import flash.display.Stage;
   
   public class §null § extends §!E§
   {
       
      
      private var §?$§:Stage;
      
      public function §null §(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?$§ = param1;
            if(_loc2_)
            {
               super(param1);
            }
         }
      }
      
      override protected function initThemeGraphicsManager() : §@B§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§@B§));
         if(!(_loc2_ && this))
         {
            §§push(this.§?$§.loaderInfo.parameters.assetsUrl);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        addr68:
                        §§pop();
                        addr70:
                        §§push("");
                        §§push(this.§?$§.loaderInfo.parameters.buildNumber);
                        if(_loc1_ || _loc1_)
                        {
                           return new §§pop().§@B§(§§pop(),§§pop() || "");
                        }
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr70);
               }
               §§goto(addr85);
            }
         }
         §§goto(addr68);
      }
      
      override public function get backgroundTextureManager() : §?y§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(§<!?§)
            {
               if(_loc2_)
               {
                  §§goto(addr28);
               }
            }
            return null;
         }
         addr28:
         return §<!?§.textureManager;
      }
      
      override protected function initAnimationManager(param1:§?y§) : §+q§
      {
         return new §1p§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§?y§, param4:Number) : §5r§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(param1 == "BACKGROUND_FB_MOUNTAINS")
            {
               if(_loc5_ || param3)
               {
                  return new § f§(param1,param2,param3,param4);
               }
            }
         }
         return new §5r§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§^!9§) : §3X§
      {
         return new §!!I§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§^!9§) : §6a§
      {
         return new §,!<§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§^!9§) : §^z§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§59§.§%j§);
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Array = _loc2_.split("-");
         var _loc4_:int;
         §§push((_loc4_ = parseInt(_loc3_[0])) < 9);
         if(!_loc6_)
         {
            if(§§pop())
            {
               if(_loc5_ || this)
               {
                  §§pop();
                  if(_loc5_)
                  {
                     §§push(_loc2_ == "3-2");
                     if(!_loc6_)
                     {
                        addr77:
                        if(!§§pop())
                        {
                           if(_loc5_ || param1)
                           {
                              return new §^z§(this,param1,1.1);
                           }
                        }
                     }
                     §§goto(addr77);
                  }
                  return new §^z§(this,param1,1);
               }
               §§goto(addr77);
            }
         }
         §§goto(addr77);
      }
   }
}
