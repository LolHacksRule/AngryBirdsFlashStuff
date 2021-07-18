package §'!O§
{
   import §-!"§.§=p§;
   import §20§.§"!b§;
   import §20§.§-Z§;
   import §2`§.HighscoreSidebar;
   import §8P§.§&-§;
   import §8P§.§1A§;
   import §9!@§.§-k§;
   import §9!@§.ColorFadeLayerEvent;
   import §9b§.§"!S§;
   import §@R§.set;
   import §^!5§.§,4§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §=j§ extends §=p§
   {
      
      public static var sHighscoreSidebar:HighscoreSidebar;
       
      
      private var §]V§:Class;
      
      protected var §4!N§:§-k§ = null;
      
      public function §=j§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§]V§ = §7w§;
            do
            {
               super(param1,param2);
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
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
               §§push(sHighscoreSidebar);
               loop1:
               while(true)
               {
                  if(§§pop() == null)
                  {
                     while(true)
                     {
                        sHighscoreSidebar = new HighscoreSidebar();
                        addr275:
                        while(true)
                        {
                        }
                     }
                     addr271:
                  }
                  loop4:
                  while(true)
                  {
                     this.§%!f§();
                     loop5:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           §§push(sHighscoreSidebar);
                           loop6:
                           while(true)
                           {
                              §§pop().§%?§(set.§=!^§(this.§]V§),§]!9§.container,null,null);
                              loop7:
                              while(true)
                              {
                                 §§push(sHighscoreSidebar);
                                 while(true)
                                 {
                                    §§pop().container.x = §,L§.§1'§;
                                    addr234:
                                    while(!_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop4;
                                       }
                                       §]!9§.container.addComponent(sHighscoreSidebar.container);
                                    }
                                    addr92:
                                    continue loop5;
                                    if(!(_loc2_ || this))
                                    {
                                       continue;
                                    }
                                    addr99:
                                    §§push(true);
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       if(!_loc1_)
                                       {
                                          §§pop().enableHelpButton(§§pop());
                                          loop16:
                                          while(!_loc1_)
                                          {
                                             §]!9§.getItemByName("Button_Credits").setVisibility(false);
                                             loop17:
                                             while(!(_loc1_ && this))
                                             {
                                                §]!9§.getItemByName("Button_Tutorial").setVisibility(true);
                                                while(_loc2_ || this)
                                                {
                                                   while(true)
                                                   {
                                                      this.setInitialState();
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         if(!(_loc1_ && _loc1_))
                                                         {
                                                            if(!(_loc2_ || _loc2_))
                                                            {
                                                               §§goto(addr196);
                                                            }
                                                            return;
                                                         }
                                                         continue loop16;
                                                         continue loop16;
                                                      }
                                                      continue loop17;
                                                      addr153:
                                                   }
                                                }
                                                §§goto(addr234);
                                             }
                                             loop15:
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   if(!(_loc1_ && this))
                                                   {
                                                      §§push(sHighscoreSidebar);
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§goto(addr92);
                                                         }
                                                         loop25:
                                                         while(true)
                                                         {
                                                            §§push(false);
                                                            addr173:
                                                            while(true)
                                                            {
                                                               if(!(_loc1_ && this))
                                                               {
                                                                  §§pop().enableHelpButton(§§pop());
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     §]!9§.getItemByName("Button_Credits").setVisibility(true);
                                                                     addr160:
                                                                     addr205:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc1_)
                                                                        {
                                                                           addr162:
                                                                           if(_loc2_ || this)
                                                                           {
                                                                              §]!9§.getItemByName("Button_Tutorial").setVisibility(false);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    continue loop22;
                                                                                 }
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr153);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §]!9§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
                                                                                    break loop16;
                                                                                 }
                                                                              }
                                                                              addr147:
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr186:
                                                                        while(true)
                                                                        {
                                                                           §§push(sHighscoreSidebar);
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                     while(_loc2_ || _loc2_)
                                                                     {
                                                                        if(!this.showCreditsButton())
                                                                        {
                                                                           §§push(sHighscoreSidebar);
                                                                           break loop15;
                                                                        }
                                                                        §§goto(addr186);
                                                                        §§goto(addr162);
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop().enableCreditsButton(§§pop());
                                                                     addr196:
                                                                     while(true)
                                                                     {
                                                                        continue loop25;
                                                                     }
                                                                  }
                                                                  addr195:
                                                               }
                                                            }
                                                         }
                                                      }
                                                      break;
                                                      addr140:
                                                   }
                                                   §§goto(addr160);
                                                }
                                                §§goto(addr147);
                                             }
                                             while(_loc2_)
                                             {
                                                §§push(false);
                                                while(true)
                                                {
                                                   §§pop().enableCreditsButton(§§pop());
                                                   §§goto(addr121);
                                                   §§goto(addr99);
                                                }
                                                §§goto(addr140);
                                             }
                                             addr121:
                                             continue loop6;
                                          }
                                          while(true)
                                          {
                                             §]!9§.getItemByName("MovieClip_SoundOff").setVisibility(!§,L§.§`!+§());
                                             §§goto(addr205);
                                          }
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr120);
                                 }
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr271);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr227);
      }
      
      protected function §%!f§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§&-§ = null;
         if(_loc2_)
         {
            §§push(this.§4!N§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§4!N§);
                     addr110:
                     loop1:
                     while(true)
                     {
                        §§pop().§import§(1);
                        while(true)
                        {
                           §§push(this.§4!N§);
                           if(_loc3_ && _loc2_)
                           {
                              continue loop1;
                           }
                           if(§§pop().parent == §]!9§.container.mClip)
                           {
                              break;
                           }
                           §]!9§.container.mClip.addChild(this.§4!N§);
                           if(_loc2_ || _loc2_)
                           {
                              if(!_loc3_)
                              {
                                 if(_loc3_ && _loc2_)
                                 {
                                    break;
                                 }
                                 if(!(_loc2_ || this))
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    addr56:
                                    §]!9§.container.mClip.addChild(this.§4!N§);
                                    addr63:
                                 }
                                 _loc1_ = §]!9§.getItemByName("HighScoreSideBar");
                                 if(!_loc3_)
                                 {
                                    if(_loc1_ != null)
                                    {
                                       if(!_loc3_)
                                       {
                                          §]!9§.container.setObjectToFront(_loc1_);
                                       }
                                       while(true)
                                       {
                                          addr143:
                                          if(_loc3_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          while(false)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§4!N§);
                                                while(true)
                                                {
                                                   §§pop().§4!?§(0,0.2);
                                                   while(true)
                                                   {
                                                      §§push(this.§4!N§);
                                                      if(!(_loc2_ || _loc1_))
                                                      {
                                                         break;
                                                      }
                                                      §§pop().addEventListener(ColorFadeLayerEvent.override,this.§=%§);
                                                      if(_loc3_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr143);
                                                   }
                                                }
                                             }
                                          }
                                          return;
                                          addr150:
                                       }
                                    }
                                    §§goto(addr152);
                                 }
                                 §§goto(addr150);
                              }
                              else
                              {
                                 addr102:
                              }
                              §§goto(addr56);
                           }
                           §§goto(addr63);
                        }
                        continue loop0;
                     }
                     addr96:
                     §]!9§.container.mClip.removeChild(this.§4!N§);
                     §§goto(addr102);
                  }
               }
               §§goto(addr179);
            }
            §§goto(addr110);
         }
         §§goto(addr102);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            sHighscoreSidebar.run(param1);
         }
         return _loc2_;
      }
      
      protected function setInitialState() : void
      {
      }
      
      protected function showCreditsButton() : Boolean
      {
         return false;
      }
      
      private function §=%§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(Boolean(this.§4!N§));
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr89:
                     while(true)
                     {
                        §§push(Boolean(§]!9§.container.mClip.contains(this.§4!N§)));
                        if(_loc2_ || _loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr88:
               }
               while(§§pop())
               {
                  if(_loc2_)
                  {
                     §]!9§.container.mClip.removeChild(this.§4!N§);
                  }
                  if(_loc2_ || this)
                  {
                     addr70:
                     break;
                  }
                  §§goto(addr89);
               }
               return;
            }
            §§goto(addr88);
         }
         §§goto(addr70);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§4!N§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr145:
                        while(true)
                        {
                           §§push(Boolean(§]!9§.container.mClip.contains(this.§4!N§)));
                           if(!_loc1_)
                           {
                              break;
                           }
                           if(!_loc1_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop5:
                        while(_loc1_ || _loc1_)
                        {
                           §]!9§.container.mClip.removeChild(this.§4!N§);
                           while(true)
                           {
                           }
                           loop9:
                           while(true)
                           {
                              if(_loc2_ && this)
                              {
                                 continue loop5;
                              }
                              sHighscoreSidebar.deActivate();
                              loop10:
                              for(; _loc1_; super.deActivate(),if(_loc1_ || _loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    break loop9;
                                 }
                                 continue loop9;
                              })
                              {
                                 addr46:
                                 if(!(_loc2_ && this))
                                 {
                                    continue;
                                 }
                                 addr91:
                                 while(_loc1_)
                                 {
                                    §§push(this.§4!N§);
                                    while(true)
                                    {
                                       §§pop().removeEventListener(ColorFadeLayerEvent.override,this.§=%§);
                                       break loop10;
                                    }
                                    §§goto(addr46);
                                 }
                                 §§goto(addr138);
                              }
                              while(true)
                              {
                                 addr54:
                                 while(true)
                                 {
                                    §]!9§.container.removeComponent(sHighscoreSidebar.container);
                                    continue loop9;
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr145);
                     }
                     while(true)
                     {
                        §§push(this.§4!N§);
                        if(_loc1_ || _loc1_)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              §§goto(addr91);
                           }
                           §§goto(addr54);
                        }
                        §§goto(addr95);
                        §§goto(addr138);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr138);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         do
         {
            sHighscoreSidebar.uiInteractionHandler(param1,param2,param3);
         }
         while(_loc5_);
         
         var _loc4_:* = param2;
         if(_loc6_)
         {
            if("BUTTON_FACEBOOK" !== _loc4_)
            {
               if("MUTE" === _loc4_)
               {
                  if(!_loc5_)
                  {
                     §§push(1);
                     if(_loc6_)
                     {
                        §§goto(addr353);
                     }
                  }
                  else
                  {
                     addr368:
                     §§push(3);
                     if(!_loc5_)
                     {
                        addr371:
                     }
                  }
                  §§goto(addr398);
               }
               else if("LOGOUT" === _loc4_)
               {
                  if(!_loc5_)
                  {
                     addr359:
                     §§push(2);
                     if(!_loc6_)
                     {
                     }
                     §§goto(addr398);
                  }
                  else
                  {
                     §§goto(addr368);
                  }
               }
               else
               {
                  if("CREDITS" === _loc4_)
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr368);
                     }
                     else
                     {
                        §§goto(addr375);
                     }
                  }
                  else if("TUTORIAL" === _loc4_)
                  {
                     §§goto(addr375);
                  }
                  else
                  {
                     §§push(5);
                  }
                  §§goto(addr375);
               }
               addr398:
               loop15:
               switch(§§pop())
               {
                  case 0:
                     navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
                     break;
                     addr303:
                  case 1:
                     §§push(§,L§);
                     §§push(§,L§.§`!+§());
                     if(!_loc5_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§`!b§(§§pop());
                     §]!9§.getItemByName("MovieClip_SoundOff").setVisibility(!§,L§.§`!+§());
                     loop1:
                     while(true)
                     {
                        §§push(§,L§.§`!+§());
                        loop2:
                        for(; §§pop(); while(true)
                        {
                           if(!(_loc6_ || this))
                           {
                              continue loop2;
                           }
                           §§pop();
                           §§goto(addr258);
                        })
                        {
                           while(true)
                           {
                              §§push(§,L§.§+w§);
                              loop3:
                              while(§§pop().§2!0§() != StatePlay.§@o§)
                              {
                                 §§push(§,L§.§+w§);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§§pop().§2!0§() == §#!_§.§@o§);
                                    if(_loc6_)
                                    {
                                       if(§§pop())
                                       {
                                          break;
                                       }
                                    }
                                    continue loop2;
                                    addr258:
                                    while(true)
                                    {
                                       §§push(§,L§.§+w§);
                                       if(!(_loc5_ && param3))
                                       {
                                          if(_loc6_)
                                          {
                                             §§push(§§pop().§2!0§() == §0L§.§@o§);
                                             break loop4;
                                          }
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 while(true)
                                 {
                                    addr219:
                                    while(§§pop())
                                    {
                                       while(true)
                                       {
                                          if(!(_loc6_ || param3))
                                          {
                                             break loop3;
                                          }
                                          §,L§.§`!]§();
                                          continue loop1;
                                       }
                                    }
                                    break loop2;
                                 }
                              }
                              addr271:
                              §"!S§.§-!7§.background.§`!B§();
                              addr273:
                              break loop2;
                           }
                        }
                        addr185:
                        break loop15;
                     }
                     break;
                     addr293:
                  case 2:
                     §"!b§.§,!Z§(§]!9§);
                     break;
                     addr201:
                  case 3:
                     §"!S§.§99§();
                     addr182:
                     if(!_loc5_)
                     {
                        §§push(§"!S§.§-!7§);
                        loop5:
                        while(true)
                        {
                           §§push(false);
                           addr168:
                           loop6:
                           while(true)
                           {
                              §§pop().§%2§(§§pop());
                              addr169:
                              while(true)
                              {
                                 if(!(_loc5_ && param2))
                                 {
                                    continue loop5;
                                 }
                                 §§goto(addr293);
                                 continue loop6;
                              }
                           }
                        }
                     }
                     §§goto(addr258);
                  case 4:
                     §§push(§-Z§.§ !6§);
                     if(_loc6_ || this)
                     {
                        if(_loc6_ || param2)
                        {
                           if(!§§pop())
                           {
                              if(!_loc5_)
                              {
                                 if(_loc6_ || param2)
                                 {
                                    if(_loc6_ || this)
                                    {
                                       if(!(_loc5_ && param2))
                                       {
                                          if(!(_loc5_ && param3))
                                          {
                                             if(_loc6_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §-Z§.§8G§();
                                                      if(!_loc5_)
                                                      {
                                                         addr90:
                                                         if(_loc6_ || param1)
                                                         {
                                                            if(!(_loc5_ && param3))
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     §-Z§.§0;§(§]!9§);
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              addr319:
                                                                              break;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr169);
                                                                        }
                                                                        §§goto(addr30);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr201);
                                                               }
                                                               §§goto(addr141);
                                                            }
                                                            §§goto(addr127);
                                                         }
                                                         §§goto(addr119);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr303);
                                                }
                                                §§goto(addr263);
                                             }
                                             §§goto(addr220);
                                          }
                                          §§goto(addr229);
                                       }
                                       else
                                       {
                                          §§goto(addr182);
                                       }
                                    }
                                    §§goto(addr163);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr319);
                        }
                        §§goto(addr250);
                     }
                     §§goto(addr219);
               }
               return;
            }
            if(_loc6_ || this)
            {
               §§push(0);
               if(_loc5_ && param1)
               {
                  addr353:
               }
            }
            else
            {
               addr375:
               §§push(4);
               if(_loc6_ || param3)
               {
                  addr393:
               }
            }
            §§goto(addr398);
            §§goto(addr375);
         }
         §§goto(addr359);
      }
   }
}
