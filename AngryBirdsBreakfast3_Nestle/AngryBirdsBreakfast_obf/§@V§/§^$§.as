package §@V§
{
   import §#!I§.§0k§;
   import §#!I§.§@N§;
   import §%!B§.§0![§;
   import §%!B§.§5L§;
   import §%8§.§4O§;
   import §%8§.§;!=§;
   import §2`§.§%!!§;
   import §2`§.§+$§;
   import §2`§.§;!#§;
   import §3!J§.Sprite;
   import §4!i§.§@"#§;
   import §>z§.§+E§;
   import §>z§.§5!d§;
   import §?!M§.§;!q§;
   import §?!M§.§[j§;
   import §@!"§.§#!C§;
   import §@!"§.§<!l§;
   import §[+§.§+"'§;
   import §[+§.§3!O§;
   import flash.display.Stage;
   
   public class §^$§ extends §#=§
   {
       
      
      public function §^$§(param1:Stage, param2:§4O§, param3:§5!d§, param4:§0![§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override public function init(param1:§5L§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§@"#§.§,2§.§0!x§());
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:§3!O§ = (§ !4§.§%"7§ as AngryBirdsCustom).§6!g§.§^S§(_loc2_);
         §§push(_loc3_.brand);
         if(_loc6_ || param1)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:String;
         §§push(_loc5_ = §4a§.currentLevel);
         if(!(_loc7_ && this))
         {
            §§push(§§pop() == "1-1");
            if(!_loc7_)
            {
               if(!§§pop())
               {
                  if(_loc6_ || _loc3_)
                  {
                     §§pop();
                     if(_loc6_)
                     {
                        addr133:
                        if(_loc5_ != "2-1")
                        {
                           param1.theme = (§ !4§.§%"7§ as AngryBirdsCustom).§,h§.§!S§(_loc4_);
                           loop0:
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 if(_loc6_ || _loc3_)
                                 {
                                    continue;
                                 }
                                 addr134:
                                 while(true)
                                 {
                                    param1.theme = §+"'§.§#Z§;
                                 }
                              }
                              while(true)
                              {
                                 continue loop0;
                              }
                           }
                           return;
                           addr97:
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr97);
                  }
               }
            }
         }
         §§goto(addr133);
      }
      
      override protected function initializeLevelObjectManager(param1:§5L§) : §<!l§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§+E§.§-V§);
         if(!(_loc3_ && this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         return new §#!C§(this,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeLevelCamera(param1:§5L§) : §0k§
      {
         return new §@N§(this,param1);
      }
      
      override protected function initializeLevelSlingshot(param1:§5L§) : §0"§
      {
         return new §7,§(this,param1,new Sprite());
      }
      
      override protected function initThemeSoundsManager() : §;!#§
      {
         return null;
      }
      
      override protected function initCutSceneManager() : §;!#§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(§[j§));
         if(!(_loc2_ && _loc1_))
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr52:
                        §§pop();
                        addr54:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(!_loc2_)
                        {
                           return new §§pop().§[j§(§§pop(),§§pop() || "",§4a§,§;!=§(§@!]§));
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr54);
               }
               §§goto(addr73);
            }
         }
         §§goto(addr52);
      }
      
      override protected function initAnimationManager(param1:§%!!§) : §+$§
      {
         return new §;!q§(param1);
      }
   }
}
