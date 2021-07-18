package §1!c§
{
   import §%!B§.§0![§;
   import §%!B§.§7C§;
   import §'"!§.§+§;
   import §,M§.§+f§;
   import §<!0§.§-k§;
   import §[!Z§.§>D§;
   import flash.display.Loader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class §8!A§ extends StateCutScene
   {
       
      
      private var § 4§:Loader;
      
      private var §31§:Boolean;
      
      private var §%"§:Boolean;
      
      public function §8!A§(param1:§0![§, param2:§+f§, param3:Boolean = true, param4:String = "StateCutScene")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.activate(param1);
            while(true)
            {
               §§push(§ !4§.§%"7§);
               loop1:
               while(true)
               {
                  §§pop().§+!J§.closeAllPopups();
                  loop2:
                  while(true)
                  {
                     this.§31§ = (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§.§9!Z§;
                     while(true)
                     {
                        §§push(§ !4§.§%"7§);
                        continue loop1;
                        addr57:
                        if(_loc2_ || _loc3_)
                        {
                           if(!_loc3_)
                           {
                              return;
                              addr76:
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr96);
            }
         }
         §§goto(addr113);
      }
      
      override protected function startCutScene() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc1_)
         {
            §^!T§.getItemByName("MovieClip_Loading").setVisibility(false);
         }
         §§push(this.getCutSceneName());
         if(_loc4_ || this)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:ByteArray = §-k§.§]t§(_loc1_);
         if(_loc4_ || this)
         {
            if(!_loc2_)
            {
               §2!m§(null);
               if(!(_loc4_ || _loc3_))
               {
                  loop0:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.§ 4§ = new Loader();
                        loop2:
                        while(true)
                        {
                           this.§ 4§.loadBytes(_loc2_,new LoaderContext(false,new ApplicationDomain()));
                           loop3:
                           while(true)
                           {
                              §^!T§.getItemByName("Container_Cutscene").mClip.addChild(this.§ 4§);
                              loop4:
                              do
                              {
                                 §§push(_loc1_);
                                 while(§§pop().search("intro") == -1)
                                 {
                                    §§push(_loc1_);
                                    if(!_loc3_)
                                    {
                                       if(§§pop().search("outro") == -1)
                                       {
                                          break loop0;
                                       }
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(!_loc3_)
                                          {
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             if(!_loc3_)
                                             {
                                                §>D§.§9!q§("birds_outro");
                                                continue loop0;
                                             }
                                             continue loop2;
                                          }
                                          continue loop4;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 continue loop3;
                              }
                              while(_loc3_ && _loc1_);
                              
                              addr133:
                              break loop0;
                           }
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr166);
         }
         §§goto(addr133);
      }
      
      override protected function getCutSceneName() : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = null;
         var _loc2_:§7C§ = null;
         var _loc3_:* = null;
         if(_loc4_)
         {
            if(§4a§.previousLevel)
            {
               if(_loc4_)
               {
                  _loc2_ = §4a§.getEpisodeForLevel(§4a§.previousLevel);
                  if(!(_loc5_ && this))
                  {
                     _loc3_ = §4a§.previousLevelNumericName + "-OUTRO";
                     if(_loc4_ || _loc2_)
                     {
                        if(_loc2_)
                        {
                           if(_loc5_ && this)
                           {
                           }
                           addr83:
                           §§push(_loc1_);
                           if(_loc4_)
                           {
                              if(!§§pop())
                              {
                                 addr87:
                                 _loc2_ = §4a§.getEpisodeForLevel(§4a§.currentLevel);
                                 if(!_loc5_)
                                 {
                                    _loc3_ = §4a§.currentLevelNumericName + "-INTRO";
                                    if(_loc5_)
                                    {
                                    }
                                    addr129:
                                    return _loc1_;
                                    addr128:
                                 }
                                 if(_loc2_)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(_loc2_.getCutScene(_loc3_));
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(§§pop());
                                       }
                                       _loc1_ = §§pop();
                                    }
                                 }
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr129);
                        }
                     }
                     §§goto(addr83);
                  }
                  §§push(_loc2_.getCutScene(_loc3_));
                  if(_loc4_)
                  {
                     §§push(§§pop());
                  }
                  _loc1_ = §§pop();
               }
               §§goto(addr87);
            }
            §§goto(addr83);
         }
         §§goto(addr87);
      }
      
      override protected function loadCutSceneContent(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §=""§.loadContent(param1);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§ 4§)
            {
               loop0:
               while(true)
               {
                  §^!T§.getItemByName("Container_Cutscene").mClip.removeChild(this.§ 4§);
                  addr148:
                  while(true)
                  {
                     this.§ 4§.unloadAndStop();
                     addr127:
                     while(true)
                     {
                        this.§ 4§ = null;
                        addr122:
                        while(true)
                        {
                        }
                     }
                  }
                  loop8:
                  while(true)
                  {
                     if(_loc2_ && _loc1_)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        §§push(§ !4§.§%"7§);
                        if(_loc1_)
                        {
                           §§push((§§pop() as AngryBirdsCustom).§<=§);
                           if(_loc1_)
                           {
                              §§push(§§pop().§08§);
                              if(_loc1_)
                              {
                                 §§push(this.§%"§);
                                 if(!(_loc2_ && this))
                                 {
                                    §§pop().§4!4§(§§pop());
                                    loop10:
                                    while(_loc1_)
                                    {
                                       super.deActivate();
                                       if(_loc2_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc2_ && this))
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             if(_loc1_ || _loc1_)
                                             {
                                                return;
                                                addr54:
                                             }
                                             break loop8;
                                          }
                                          §§goto(addr127);
                                       }
                                       while(_loc1_ || this)
                                       {
                                          §§push(§ !4§.§%"7§);
                                          while(true)
                                          {
                                             §§push((§§pop() as AngryBirdsCustom).§<=§);
                                             addr107:
                                             while(true)
                                             {
                                                §§push(§§pop().§08§);
                                                addr108:
                                                while(true)
                                                {
                                                   §§push(true);
                                                   addr109:
                                                   while(true)
                                                   {
                                                      §§pop().§;!I§(§§pop());
                                                      break loop10;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr122);
                                    }
                                    continue loop8;
                                 }
                                 §§goto(addr109);
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr104);
                     }
                  }
                  §§goto(addr148);
               }
            }
            while(true)
            {
               if(this.§31§)
               {
                  §§goto(addr95);
               }
               §§goto(addr55);
               §§goto(addr122);
            }
            §§goto(addr54);
         }
         §§goto(addr127);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || param3)
         {
            if("SKIP" === _loc4_)
            {
               addr52:
               §§push(0);
               if(_loc6_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  §>D§.§>!%§();
                  if(!(_loc6_ && this))
                  {
                     break;
                  }
                  §§goto(addr84);
            }
            super.onUIInteraction(param1,param2,param3);
            addr84:
            return;
         }
         §§goto(addr52);
      }
   }
}
