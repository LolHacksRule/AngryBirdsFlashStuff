package §"$§
{
   import §=!5§.§`X§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class TutorialPowerUpPopup extends Popup
   {
       
      
      private var §2!_§:Sprite;
      
      private var §>K§:String;
      
      public function TutorialPowerUpPopup(data:XML, currentUIView:§`X§, tutorialSprite:Sprite, tutorialName:String)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         if(_loc5_ || currentUIView)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        addr147:
                        while(true)
                        {
                           super(data,currentUIView);
                           continue loop0;
                        }
                        addr62:
                        if(!(_loc6_ && tutorialSprite))
                        {
                           continue loop2;
                        }
                     }
                  }
                  if(!(_loc5_ || tutorialSprite))
                  {
                     continue;
                  }
                  §§goto(addr58);
               }
            }
         }
         §§goto(addr55);
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_ && this)
         {
         }
         if(_loc7_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(!_loc6_)
                  {
                     loop3:
                     while(true)
                     {
                        addr42:
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                     if(!(_loc7_ || x))
                     {
                        continue;
                     }
                     if(false)
                     {
                        §§goto(addr42);
                     }
                     else
                     {
                        addr72:
                        var container:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
                        if(!_loc7_)
                        {
                        }
                        §§push(container.width - this.§2!_§.width >> 1);
                        if(_loc7_)
                        {
                           §§push(int(§§pop()));
                        }
                        var x:* = §§pop();
                        if(!_loc7_)
                        {
                        }
                        §§push(container.height - this.§2!_§.height >> 1);
                        if(!_loc6_)
                        {
                           §§push(int(§§pop()));
                        }
                        var y:* = §§pop();
                        if(_loc7_ || x)
                        {
                        }
                        var rect:Rectangle = this.§2!_§.getBounds(this.§2!_§);
                        if(_loc7_ || x)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(x);
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop() - rect.left);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    loop10:
                                    while(true)
                                    {
                                       x = §§pop();
                                       loop11:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(y);
                                             if(!_loc6_)
                                             {
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() - rect.top);
                                                if(_loc6_)
                                                {
                                                   continue loop9;
                                                }
                                                §§push(int(§§pop()));
                                             }
                                             if(_loc6_ && useFadeEffect)
                                             {
                                                continue loop10;
                                             }
                                             y = §§pop();
                                             while(true)
                                             {
                                             }
                                             addr230:
                                             if(!(_loc7_ || this))
                                             {
                                                continue;
                                             }
                                             loop34:
                                             while(true)
                                             {
                                                super.open(useFadeEffect);
                                                loop35:
                                                while(true)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      loop17:
                                                      while(_loc7_)
                                                      {
                                                         loop18:
                                                         while(true)
                                                         {
                                                            mClip.ButtonEasterEgg5.visible = false;
                                                            addr267:
                                                            while(true)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!(_loc6_ && useFadeEffect))
                                                                           {
                                                                              loop30:
                                                                              while(true)
                                                                              {
                                                                                 this.§2!_§.x = x;
                                                                                 loop31:
                                                                                 while(true)
                                                                                 {
                                                                                    addr240:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§2!_§.y = y - 10;
                                                                                       addr217:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop31;
                                                                                          }
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr223:
                                                                                             if(!(_loc6_ && container))
                                                                                             {
                                                                                                §§goto(addr230);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   loop16:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(this.§>K§ == "POWERUP_TUTORIAL_SLINGSCOPE")
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr368:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean((AngryBirdsFP11.sUserProgress as Object).isEggUnlocked("1000-5")));
                                                                                                            }
                                                                                                         }
                                                                                                         addr367:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(Boolean(mClip.ButtonEasterEgg5));
                                                                                                         if(_loc7_ || useFadeEffect)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         addr332:
                                                                                                         mClip.ButtonEasterEgg5.visible = true;
                                                                                                         loop29:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr320:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  mClip.ButtonEasterEgg5.buttonMode = true;
                                                                                                                  break loop35;
                                                                                                               }
                                                                                                               addr339:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  loop24:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop30;
                                                                                                                     addr303:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop29;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr223);
                                                                                                }
                                                                                                addr378:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr303);
                                                                                       }
                                                                                       continue loop18;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr367);
                                                                        }
                                                                        §§goto(addr359);
                                                                     }
                                                                     §§goto(addr320);
                                                                  }
                                                               }
                                                               addr381:
                                                               while(true)
                                                               {
                                                                  container.addChild(this.§2!_§);
                                                                  §§goto(addr378);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   continue loop34;
                                                   addr161:
                                                   if(_loc6_ && container)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         addr172:
                                                         if(!_loc7_)
                                                         {
                                                            addr306:
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop34;
                                                               }
                                                               §§goto(addr161);
                                                               §§goto(addr172);
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§%!E§);
                                                                  §§goto(addr303);
                                                               }
                                                               §§goto(addr332);
                                                            }
                                                            §§goto(addr412);
                                                            addr306:
                                                            addr159:
                                                         }
                                                         if(_loc7_ || container)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               return;
                                                            }
                                                            continue loop11;
                                                         }
                                                         §§goto(addr351);
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                   §§goto(addr240);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr306);
                                                }
                                             }
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr381);
                     }
                  }
                  continue loop0;
                  if(!(_loc7_ || container))
                  {
                     continue;
                  }
                  while(true)
                  {
                     if(_loc7_)
                     {
                        §§goto(addr33);
                     }
                     §§goto(addr44);
                  }
                  §§goto(addr72);
               }
            }
         }
         §§goto(addr58);
      }
      
      private function §%!E§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
         }
         if(!(_loc3_ && _loc2_))
         {
            while(true)
            {
               loop1:
               for(; _loc2_ || _loc2_; while(_loc2_ || this)
               {
                  while(_loc2_)
                  {
                     mClip.ButtonEasterEgg5.visible = false;
                     while(_loc2_)
                     {
                        if(_loc2_)
                        {
                           return;
                        }
                     }
                  }
               })
               {
                  while(true)
                  {
                     (AngryBirdsFP11.sUserProgress as Object).setEggUnlocked("1000-5");
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      override public function preClose(useFadeEffect:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && useFadeEffect)
         {
         }
         if(_loc4_ || container)
         {
         }
         while(true)
         {
            loop1:
            while(!(_loc3_ && container))
            {
               loop2:
               while(true)
               {
                  addr47:
                  while(true)
                  {
                     super.preClose(useFadeEffect);
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               super.close();
               loop1:
               while(!_loc1_)
               {
                  while(_loc1_)
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr54);
      }
   }
}
