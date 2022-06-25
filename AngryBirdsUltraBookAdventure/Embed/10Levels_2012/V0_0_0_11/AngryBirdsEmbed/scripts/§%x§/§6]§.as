package §%x§
{
   import §-!0§.§'!3§;
   import §-!0§.§2h§;
   import §-!0§.§<@§;
   import §-!0§.§`Q§;
   import §6!@§.§5l§;
   import §6!@§.§;Y§;
   import §>!C§.§6M§;
   import §>!C§.§9R§;
   import §?^§.Sprite;
   import §[F§.§`m§;
   import §]!9§.§75§;
   import §]!9§.§]!H§;
   import flash.display.Stage;
   
   public class §6]§ extends §#;§
   {
       
      
      private var §<!1§:Stage;
      
      public function §6]§(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<!1§ = param1;
            if(_loc2_)
            {
               super(param1);
            }
         }
      }
      
      override protected function initThemeGraphicsManager() : §2h§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§2h§));
         if(!(_loc2_ && this))
         {
            §§push(this.§<!1§.loaderInfo.parameters.assetsUrl);
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
                        §§push(this.§<!1§.loaderInfo.parameters.buildNumber);
                        if(_loc1_ || _loc1_)
                        {
                           return new §§pop().§2h§(§§pop(),§§pop() || "");
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
      
      override public function get backgroundTextureManager() : §'!3§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(§-!"§)
            {
               if(_loc2_)
               {
                  §§goto(addr28);
               }
            }
            return null;
         }
         addr28:
         return §-!"§.textureManager;
      }
      
      override protected function initAnimationManager(param1:§'!3§) : §`Q§
      {
         return new §<@§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§'!3§, param4:Number) : §5l§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(param1 == "BACKGROUND_FB_MOUNTAINS")
            {
               if(_loc5_ || param3)
               {
                  return new §;Y§(param1,param2,param3,param4);
               }
            }
         }
         return new §5l§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§9R§) : §3=§
      {
         return new §,6§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§9R§) : §]!H§
      {
         return new §75§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§9R§) : §`m§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§6M§.§[z§);
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
                              return new §`m§(this,param1,1.1);
                           }
                        }
                     }
                     §§goto(addr77);
                  }
                  return new §`m§(this,param1,1);
               }
               §§goto(addr77);
            }
         }
         §§goto(addr77);
      }
   }
}
