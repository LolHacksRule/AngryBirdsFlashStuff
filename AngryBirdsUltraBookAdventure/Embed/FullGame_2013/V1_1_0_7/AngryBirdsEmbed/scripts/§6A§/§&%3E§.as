package §6A§
{
   import §!j§.§8!G§;
   import §!j§.§;[§;
   import §&o§.Sprite;
   import §1!-§.§@Z§;
   import §1!-§.§[4§;
   import §2k§.§`n§;
   import §9K§.§"!?§;
   import §9K§.§5!H§;
   import §9K§.§9!E§;
   import §9K§.§`!H§;
   import §^!A§.§@H§;
   import §^!A§.§[Q§;
   import flash.display.Stage;
   
   public class §&>§ extends § !§
   {
       
      
      private var §]!M§:Stage;
      
      public function §&>§(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§]!M§ = param1;
            if(!_loc3_)
            {
               super(param1);
            }
         }
      }
      
      override protected function initThemeGraphicsManager() : §`!H§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§`!H§));
         if(!_loc1_)
         {
            §§push(this.§]!M§.loaderInfo.parameters.assetsUrl);
            if(_loc2_)
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        addr59:
                        §§pop();
                        addr61:
                        §§push("");
                        §§push(this.§]!M§.loaderInfo.parameters.buildNumber);
                        if(_loc2_ || _loc2_)
                        {
                           return new §§pop().§`!H§(§§pop(),§§pop() || "");
                        }
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr61);
               }
               §§goto(addr76);
            }
         }
         §§goto(addr59);
      }
      
      override public function get backgroundTextureManager() : §5!H§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§-!<§)
            {
               if(!(_loc1_ && this))
               {
                  §§goto(addr28);
               }
            }
            return null;
         }
         addr28:
         return §-!<§.textureManager;
      }
      
      override protected function initAnimationManager(param1:§5!H§) : §"!?§
      {
         return new §9!E§(param1);
      }
      
      override protected function initLevelBackground(param1:String, param2:Number, param3:§5!H§, param4:Number) : §;[§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(param1 == "BACKGROUND_FB_MOUNTAINS")
            {
               if(_loc5_ || param1)
               {
                  §§goto(addr38);
               }
            }
            return new §;[§(param1,param2,param3,param4);
         }
         addr38:
         return new §8!G§(param1,param2,param3,param4);
      }
      
      override protected function initLevelSlingshot(param1:§@Z§) : §4!C§
      {
         return new §"T§(this,param1,new Sprite());
      }
      
      override protected function initLevelObjectManager(param1:§@Z§) : §@H§
      {
         return new §[Q§(this,param1,new Sprite());
      }
      
      override protected function initLevelCamera(param1:§@Z§) : §`n§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§[4§.§"!>§);
         if(_loc5_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Array = _loc2_.split("-");
         var _loc4_:int;
         §§push((_loc4_ = parseInt(_loc3_[0])) < 9);
         if(_loc5_ || _loc3_)
         {
            if(§§pop())
            {
               if(_loc5_ || param1)
               {
                  addr78:
                  §§pop();
                  if(_loc5_ || _loc2_)
                  {
                     §§push(_loc2_ == "3-2");
                     if(!_loc5_)
                     {
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr95);
               }
            }
            addr92:
            if(!§§pop())
            {
               if(!_loc6_)
               {
                  addr95:
                  return new §`n§(this,param1,1.1);
               }
            }
            return new §`n§(this,param1,1);
         }
         §§goto(addr78);
      }
   }
}
