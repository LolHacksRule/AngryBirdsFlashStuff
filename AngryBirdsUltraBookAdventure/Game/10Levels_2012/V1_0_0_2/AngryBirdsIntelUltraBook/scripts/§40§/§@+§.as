package §40§
{
   import §0!N§.LevelManager;
   import §0X§.§'N§;
   import §4e§.§=!p§;
   import §9!5§.§"Y§;
   import §9!y§.§@M§;
   import §9Y§.§6!8§;
   import §?!7§.§5!I§;
   import §@i§.§=r§;
   import com.angrybirds.friendsbar.§`Y§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §true§.§ _§;
   
   public class §@+§ extends §"Y§
   {
       
      
      private var §+!s§:Array;
      
      public function §@+§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§+!s§ = [];
         }
         do
         {
            super(param1,param2);
         }
         while(!(_loc4_ || _loc3_));
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            while(true)
            {
               §5!P§.getItemByName("Button_Fullscreen").setVisibility(false);
               loop1:
               for(; !_loc2_; if(!(_loc2_ && this))
               {
                  addr74:
                  return;
               })
               {
                  §§push(this.§+!s§);
                  loop2:
                  while(true)
                  {
                     §§pop().push((§5!P§.getItemByName("Button_Menu") as §5!I§).x);
                     addr85:
                     while(true)
                     {
                        §§push(this.§+!s§);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§pop().push((§5!P§.getItemByName("Button_Replay") as §5!I§).x);
                           if(!(_loc2_ && _loc2_))
                           {
                              continue loop1;
                           }
                           continue;
                        }
                        continue loop2;
                     }
                     §§goto(addr74);
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               (§ _§.§1s§ as §@!9§).§>=§(§`Y§.§9!O§);
               while(true)
               {
                  § _§.§!6§.background.§>G§();
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(LevelManager.§0v§().name != "1000")
                        {
                           break;
                        }
                        if(_loc1_)
                        {
                           break;
                        }
                        addr71:
                        continue;
                     }
                     continue loop0;
                  }
                  return;
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  §5!P§.getItemByName("Button_NextLevel").setVisibility(false);
                  §§goto(addr71);
               }
            }
         }
         §§goto(addr66);
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§5!P§.getItemByName("Button_Menu") as §5!I§).setComponentVisualState(param1);
            while(true)
            {
               (§5!P§.getItemByName("Button_Replay") as §5!I§).setComponentVisualState(param1);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setComponentVisualState(param1);
                     if(_loc3_ || _loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      override protected function showButtons() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(LevelManager.§9!j§());
         if(_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(Boolean(_loc1_));
            if(_loc2_ || _loc3_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     addr188:
                     while(true)
                     {
                        §§pop();
                        addr189:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.sUserProgress);
                           addr138:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr139:
                              while(true)
                              {
                                 §§push(§§pop().isLevelOpen(§§pop()));
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(!§§pop());
                                 if(_loc3_ && _loc1_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                     }
                     addr188:
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            §§goto(addr188);
         }
         §§goto(addr175);
      }
      
      override protected function hideButtons() : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         if(_loc7_ || param2)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc6_:* = param2;
         if(!(_loc8_ && param2))
         {
            §§push("FRIENDS_BUTTON");
            if(_loc7_)
            {
               §§push(_loc6_);
               if(_loc7_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc8_)
                     {
                        §§push(0);
                        if(_loc8_)
                        {
                        }
                        §§goto(addr223);
                     }
                     else
                     {
                        §§goto(addr203);
                     }
                  }
                  else
                  {
                     §§push("SHARE_DEFAULT");
                     if(!_loc8_)
                     {
                        §§push(_loc6_);
                        if(!(_loc8_ && param3))
                        {
                           addr185:
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc8_ && param2))
                              {
                                 addr203:
                                 §§push(1);
                                 if(!_loc7_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              addr209:
                              if("EMBED" !== _loc6_)
                              {
                                 addr223:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
                                       loop0:
                                       while(true)
                                       {
                                          addr40:
                                          while(true)
                                          {
                                             §'N§.§`I§(_loc4_);
                                             continue loop0;
                                          }
                                       }
                                       break;
                                    case 1:
                                       §§push(§=r§);
                                       §§push("shareDefault");
                                       §§push(LevelManager.§4Y§);
                                       §§push(LevelManager.§0v§().writtenName + "-");
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop() + §=!p§.§1!j§(LevelManager.§4Y§));
                                       }
                                       §§pop().§[!3§(§§pop(),§§pop(),§§pop(),0,false);
                                       addr136:
                                       if(_loc7_ || param3)
                                       {
                                          break;
                                       }
                                       §§goto(addr148);
                                       break;
                                    case 2:
                                       §§push(§@M§);
                                       §§push(LevelManager.§4Y§);
                                       §§push(LevelManager.§0v§().writtenName + "-");
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() + §=!p§.§1!j§(LevelManager.§4Y§));
                                       }
                                       §§pop().§'t§(§§pop(),§§pop(),§ _§.§?!]§.getScore(),"");
                                       if(!(_loc8_ && param2))
                                       {
                                          §§goto(addr112);
                                       }
                                       else
                                       {
                                          §§goto(addr136);
                                       }
                                 }
                                 return;
                                 §§push(3);
                              }
                           }
                           §§goto(addr223);
                           §§goto(addr223);
                        }
                     }
                     §§goto(addr209);
                  }
                  §§goto(addr223);
               }
               §§goto(addr185);
            }
            §§goto(addr209);
         }
         §§goto(addr203);
      }
   }
}
