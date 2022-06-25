package §0o§
{
   import § !k§.§0!e§;
   import §!!§.LevelManager;
   import §&!h§.§]V§;
   import §&9§.§1?§;
   import §5!t§.§+!g§;
   import §5i§.§4!]§;
   import §9!Q§.§7o§;
   import §=R§.§7!"§;
   import §`M§.§,c§;
   import com.angrybirds.friendsbar.§&E§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §5!S§ extends §0!e§
   {
       
      
      private var §#A§:Array;
      
      public function §5!S§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§#A§ = [];
            do
            {
               super(param1,param2);
            }
            while(_loc3_);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.init();
            while(true)
            {
               §`-§.getItemByName("Button_Fullscreen").setVisibility(false);
               loop1:
               for(; _loc2_; while(_loc2_ || _loc2_)
               {
               })
               {
                  §§push(this.§#A§);
                  while(true)
                  {
                     §§pop().push((§`-§.getItemByName("Button_Menu") as §,c§).x);
                     continue loop1;
                     §§goto(addr91);
                  }
               }
            }
         }
         addr91:
         while(true)
         {
            §§push(this.§#A§);
            if(!(_loc1_ && _loc2_))
            {
               §§pop().push((§`-§.getItemByName("Button_Replay") as §,c§).x);
               if(!(_loc1_ && _loc2_))
               {
                  break;
               }
               continue loop1;
            }
            continue loop2;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               (§4!]§.§7!G§ as §[!m§).§ P§(§&E§.§"!0§);
               loop1:
               while(true)
               {
                  §4!]§.§8C§.background.§&[§();
                  while(LevelManager.§5!K§().name == "1000")
                  {
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc1_)
                        {
                           continue loop1;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  addr25:
                  return;
               }
            }
         }
         while(true)
         {
            §`-§.getItemByName("Button_NextLevel").setVisibility(false);
            §§goto(addr76);
         }
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            (§`-§.getItemByName("Button_Menu") as §,c§).setComponentVisualState(param1);
            do
            {
               (§`-§.getItemByName("Button_Replay") as §,c§).setComponentVisualState(param1);
               do
               {
                  (§`-§.getItemByName("Button_NextLevel") as §,c§).setComponentVisualState(param1);
               }
               while(!_loc3_);
               
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      override protected function showButtons() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(LevelManager.§=L§());
         if(!(_loc3_ && this))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            §§push(Boolean(_loc1_));
            loop0:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr189:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.sUserProgress);
                           addr162:
                           loop8:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr163:
                              while(true)
                              {
                                 §§push(§§pop().isLevelOpen(§§pop()));
                                 addr164:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    addr165:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          break loop8;
                                       }
                                       §§push(Boolean(§§pop()));
                                       while(!(_loc2_ || _loc1_))
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        break;
                     }
                     if(!§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(AngryBirdsFP11.sUserProgress);
                              if(_loc2_)
                              {
                                 §§push(LevelManager.§^!F§);
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§push(§§pop().§+G§(§§pop()));
                                    if(_loc2_ || this)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop4;
                                       }
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(!§§pop());
                                          loop6:
                                          for(; _loc2_; §§push(LevelManager.§-!q§()),if(_loc3_ && _loc3_)
                                          {
                                             continue;
                                          },if(§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(false);
                                                }
                                                else
                                                {
                                                   §§goto(addr189);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(true);
                                             if(_loc2_ || this)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                      continue loop5;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr148);
                                                }
                                             }
                                             else
                                             {
                                                addr100:
                                             }
                                             §§goto(addr35);
                                          },§§goto(addr100))
                                          {
                                             if(_loc2_)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(false);
                                                      }
                                                      break;
                                                      addr148:
                                                   }
                                                   continue loop6;
                                                }
                                                addr35:
                                                return;
                                                addr137:
                                             }
                                             §§goto(addr164);
                                          }
                                          §§goto(addr165);
                                          addr133:
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr163);
                              }
                              break;
                           }
                           §§goto(addr162);
                        }
                     }
                     §§goto(addr137);
                  }
               }
            }
         }
         §§goto(addr189);
      }
      
      override protected function hideButtons() : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         if(_loc8_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc6_:* = param2;
         if(_loc8_)
         {
            §§push("FRIENDS_BUTTON");
            if(_loc8_)
            {
               §§push(_loc6_);
               if(_loc8_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc7_ && this))
                     {
                        §§push(0);
                        if(!_loc8_)
                        {
                           addr214:
                        }
                     }
                     else
                     {
                        addr199:
                        §§push(1);
                        if(_loc8_ || param2)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push("SHARE_DEFAULT");
                     if(!_loc7_)
                     {
                        §§push(_loc6_);
                        if(_loc8_ || param1)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc7_)
                              {
                                 §§goto(addr199);
                              }
                           }
                           else
                           {
                              addr210:
                              if("EMBED" !== _loc6_)
                              {
                                 addr219:
                                 loop3:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
                                       loop0:
                                       while(true)
                                       {
                                          addr43:
                                          while(true)
                                          {
                                             §]V§.§ 4§(_loc4_);
                                             while(true)
                                             {
                                                §[!m§.§1H§.§2!3§();
                                                if(_loc7_)
                                                {
                                                   break loop3;
                                                }
                                                if(!_loc7_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             break loop3;
                                          }
                                       }
                                       break;
                                    case 1:
                                       §§push(§1?§);
                                       §§push("shareDefault");
                                       §§push(LevelManager.§^!F§);
                                       §§push(LevelManager.§5!K§().writtenName + "-");
                                       if(_loc8_ || param1)
                                       {
                                          §§push(§§pop() + §+!g§.§,!X§(LevelManager.§^!F§));
                                       }
                                       §§pop().§>!X§(§§pop(),§§pop(),§§pop(),0,false);
                                       break;
                                       addr144:
                                    case 2:
                                       §§push(§7o§);
                                       §§push(LevelManager.§^!F§);
                                       §§push(LevelManager.§5!K§().writtenName + "-");
                                       if(!(_loc7_ && param3))
                                       {
                                          §§push(§§pop() + §+!g§.§,!X§(LevelManager.§^!F§));
                                       }
                                       §§pop().§`J§(§§pop(),§§pop(),§4!]§.§=`§.getScore(),"");
                                       if(_loc8_)
                                       {
                                          if(_loc8_)
                                          {
                                             §§goto(addr115);
                                          }
                                          else
                                          {
                                             §§goto(addr149);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr144);
                                       }
                                 }
                                 return;
                                 §§push(3);
                              }
                           }
                           §§goto(addr219);
                           if(_loc8_)
                           {
                              §§goto(addr214);
                           }
                        }
                     }
                     §§goto(addr210);
                  }
                  §§goto(addr219);
               }
            }
            §§goto(addr210);
         }
         §§goto(addr199);
      }
   }
}
