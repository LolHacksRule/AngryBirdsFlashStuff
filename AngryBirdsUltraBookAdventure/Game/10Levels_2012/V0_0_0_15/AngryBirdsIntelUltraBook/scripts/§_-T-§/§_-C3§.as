package §_-T-§
{
   import §_-0A-§.§_-08e§;
   import §_-6C§.§_-Mu§;
   import §_-7§.§_-EJ§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-wU§;
   import §_-Y8§.§_-05J§;
   import §_-ad§.§_-rF§;
   import §_-eS§.§_-OY§;
   import §_-qO§.§ in§;
   import com.angrybirds.friendsbar.§_-ri§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-C3§ extends §_-rF§
   {
       
      
      private var §_-tl§:Array;
      
      public function §_-C3§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§_-tl§ = [];
         }
         do
         {
            super(param1,param2);
         }
         while(_loc3_ && param1);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               §_-s0§.getItemByName("Button_Fullscreen").setVisibility(false);
               loop1:
               while(true)
               {
                  §§push(this.§_-tl§);
                  addr67:
                  loop2:
                  while(true)
                  {
                     §§pop().push((§_-s0§.getItemByName("Button_Menu") as §_-Mu§).x);
                     addr74:
                     while(_loc2_)
                     {
                        if(!_loc1_)
                        {
                           continue loop2;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§_-tl§);
            if(!_loc1_)
            {
               §§pop().push((§_-s0§.getItemByName("Button_Replay") as §_-Mu§).x);
               if(!(_loc1_ && _loc2_))
               {
                  break;
               }
               §§goto(addr74);
            }
            §§goto(addr67);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.activate();
            loop0:
            while(true)
            {
               (§ in§.§_-HY§ as §_-rG§).§_-KA§(§_-ri§.§_-02b§);
               loop1:
               while(true)
               {
                  § in§.§_-Dc§.background.§_-Ye§();
                  loop2:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(LevelManager.§_-1a§().name == "1000")
                        {
                           if(_loc1_)
                           {
                              continue loop1;
                           }
                           addr68:
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                        break;
                     }
                     continue loop0;
                  }
                  return;
               }
            }
         }
         while(true)
         {
            §_-s0§.getItemByName("Button_NextLevel").setVisibility(false);
            §§goto(addr68);
         }
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setComponentVisualState(param1);
            while(true)
            {
               (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setComponentVisualState(param1);
               loop1:
               while(!(_loc2_ && _loc3_))
               {
                  while(true)
                  {
                     (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setComponentVisualState(param1);
                     if(_loc3_)
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
         §§push(LevelManager.§_-xE§());
         if(_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            §§push(Boolean(_loc1_));
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.sUserProgress);
                           loop4:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr165:
                              while(true)
                              {
                                 §§push(§§pop().isLevelOpen(§§pop()));
                                 if(!_loc3_)
                                 {
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr171:
                                       while(true)
                                       {
                                       }
                                       addr72:
                                       if(_loc3_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc2_)
                                          {
                                             (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
                                          }
                                       }
                                       else
                                       {
                                          (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(true);
                                          if(!(_loc3_ && this))
                                          {
                                             if(_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop4;
                                                }
                                                addr50:
                                             }
                                             else
                                             {
                                                (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
                                                addr160:
                                                addr143:
                                             }
                                             §§goto(addr25);
                                          }
                                          addr99:
                                          if(_loc2_ || this)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop3;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr160);
                                          }
                                          addr25:
                                          return;
                                          §§goto(addr160);
                                       }
                                       §§goto(addr99);
                                    }
                                 }
                                 addr172:
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(LevelManager.§_-z2§());
                                             if(_loc3_)
                                             {
                                                addr139:
                                                while(_loc2_)
                                                {
                                                   continue loop11;
                                                }
                                                continue loop2;
                                                addr139:
                                             }
                                             addr58:
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(!(_loc2_ || this))
                                                {
                                                   continue loop7;
                                                }
                                                §§goto(addr72);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop4;
                                                   §§goto(addr58);
                                                }
                                                addr176:
                                             }
                                          }
                                          §§goto(addr143);
                                       }
                                       §§goto(addr99);
                                    }
                                    §§goto(addr176);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr171);
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr139);
               §§push(!§§pop());
            }
         }
         §§goto(addr50);
      }
      
      override protected function hideButtons() : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         if(_loc8_ || param1)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc6_:* = param2;
         if(_loc8_)
         {
            §§push("FRIENDS_BUTTON");
            if(_loc8_ || param1)
            {
               §§push(_loc6_);
               if(!_loc7_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc7_ && this))
                     {
                        §§push(0);
                        if(_loc8_ || param2)
                        {
                        }
                        §§goto(addr234);
                     }
                     else
                     {
                        §§goto(addr214);
                     }
                  }
                  else
                  {
                     §§push("SHARE_DEFAULT");
                     if(!(_loc7_ && this))
                     {
                        addr208:
                        §§push(_loc6_);
                        if(_loc8_)
                        {
                           addr211:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc7_)
                              {
                                 addr214:
                                 §§push(1);
                                 if(_loc7_)
                                 {
                                    addr229:
                                 }
                              }
                           }
                           else
                           {
                              addr220:
                              if("EMBED" !== _loc6_)
                              {
                                 addr234:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
                                       loop0:
                                       while(true)
                                       {
                                          addr41:
                                          while(true)
                                          {
                                             §_-OY§.§_-7i§(_loc4_);
                                             continue loop0;
                                          }
                                       }
                                       break;
                                    case 1:
                                       §§push(§_-05J§);
                                       §§push("shareDefault");
                                       §§push(LevelManager.§_-HM§);
                                       §§push(LevelManager.§_-1a§().writtenName + "-");
                                       if(!(_loc7_ && param3))
                                       {
                                          §§push(§§pop() + §_-08e§.§_-i8§(LevelManager.§_-HM§));
                                       }
                                       §§pop().§_-0At§(§§pop(),§§pop(),§§pop(),0,false);
                                       break;
                                       addr149:
                                    case 2:
                                       §§push(§_-EJ§);
                                       §§push(LevelManager.§_-HM§);
                                       §§push(LevelManager.§_-1a§().writtenName + "-");
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() + §_-08e§.§_-i8§(LevelManager.§_-HM§));
                                       }
                                       §§pop().§_-05y§(§§pop(),§§pop(),§ in§.§_-03s§.getScore(),"");
                                       if(!(_loc7_ && param3))
                                       {
                                          if(_loc8_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr154);
                                          }
                                          §§goto(addr122);
                                       }
                                       else
                                       {
                                          §§goto(addr149);
                                       }
                                 }
                                 return;
                                 §§push(3);
                              }
                           }
                           §§goto(addr234);
                           §§goto(addr234);
                        }
                     }
                     §§goto(addr220);
                  }
                  §§goto(addr234);
               }
               §§goto(addr211);
            }
            §§goto(addr208);
         }
         §§goto(addr214);
      }
   }
}
