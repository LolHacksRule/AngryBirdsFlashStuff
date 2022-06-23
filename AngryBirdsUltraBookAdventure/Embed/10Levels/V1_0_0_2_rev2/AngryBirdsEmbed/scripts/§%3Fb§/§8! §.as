package §?b§
{
   import §!+§.§#-§;
   import §!+§.§5! §;
   import §'k§.§ >§;
   import §'k§.§#k§;
   import §'k§.§2!3§;
   import §'k§.§;[§;
   import §6!'§.§2!<§;
   import §6!'§.§2i§;
   import §6J§.§&!;§;
   import §6J§.§5j§;
   import §9W§.Sprite;
   import §@!!§.§=_§;
   import flash.display.Stage;
   
   public class §8! § extends §7!,§
   {
       
      
      private var §%E§:Stage;
      
      public function §8! §(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%E§ = param1;
            if(_loc2_)
            {
               super(param1);
            }
         }
      }
      
      override protected function initThemeGraphicsManager() : §;[§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§;[§));
         if(!(_loc2_ && this))
         {
            §§push(this.§%E§.loaderInfo.parameters.assetsUrl);
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
                        §§push(this.§%E§.loaderInfo.parameters.buildNumber);
                        if(_loc1_ || _loc1_)
                        {
                           return new §§pop().§;[§(§§pop(),§§pop() || "");
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
      
      override public function get backgroundTextureManager() : § >§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(§1!B§)
            {
               if(_loc2_)
               {
                  §§goto(addr28);
               }
            }
            return null;
         }
         addr28:
         return §1!B§.textureManager;
      }
      
      override protected function initAnimationManager(param1:§ >§) : §#k§
      {
         return new §2!3§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§ >§, param4:Number) : §2!<§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(param1 == "BACKGROUND_FB_MOUNTAINS")
            {
               if(_loc5_ || param3)
               {
                  return new §2i§(param1,param2,param3,param4);
               }
            }
         }
         return new §2!<§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§&!;§) : §4K§
      {
         return new §'D§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§&!;§) : §#-§
      {
         return new §5! §(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§&!;§) : §=_§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§5j§.§%V§);
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
                              return new §=_§(this,param1,1.1);
                           }
                        }
                     }
                     §§goto(addr77);
                  }
                  return new §=_§(this,param1,1);
               }
               §§goto(addr77);
            }
         }
         §§goto(addr77);
      }
   }
}
