package §>!"§
{
   import §@!H§.§-!H§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class TutorialPowerUpPopup extends Popup
   {
       
      
      private var §`!#§:Sprite;
      
      private var §9u§:String;
      
      public function TutorialPowerUpPopup(data:XML, currentUIView:§-!H§, tutorialSprite:Sprite, tutorialName:String)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || currentUIView)
         {
         }
         if(_loc6_ || data)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(_loc6_)
                  {
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           super(data,currentUIView);
                           addr105:
                           while(_loc6_ || data)
                           {
                              continue loop3;
                              if(_loc6_ || data)
                              {
                                 return;
                              }
                           }
                        }
                     }
                     if(!(_loc6_ || currentUIView))
                     {
                        continue;
                     }
                     this.setVisibility(false);
                     while(_loc6_)
                     {
                        while(!_loc5_)
                        {
                           continue loop1;
                        }
                        §§goto(addr91);
                     }
                     while(true)
                     {
                        §§goto(addr132);
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr138);
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc6_)
         {
         }
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(!(_loc7_ && x))
                  {
                     loop4:
                     while(true)
                     {
                        while(_loc6_)
                        {
                           if(_loc7_ && this)
                           {
                              continue;
                           }
                           if(!_loc6_)
                           {
                              break loop4;
                           }
                           if(_loc7_)
                           {
                              continue loop0;
                           }
                           if(false)
                           {
                              continue loop4;
                           }
                           var container:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
                           if(_loc7_ && this)
                           {
                           }
                           §§push(container.width - this.§`!#§.width >> 1);
                           if(!_loc7_)
                           {
                              §§push(int(§§pop()));
                           }
                           var x:* = §§pop();
                           if(_loc6_ || useFadeEffect)
                           {
                           }
                           §§push(container.height - this.§`!#§.height >> 1);
                           if(_loc6_)
                           {
                              §§push(int(§§pop()));
                           }
                           var y:* = §§pop();
                           if(_loc6_ || this)
                           {
                           }
                           var rect:Rectangle = this.§`!#§.getBounds(this.§`!#§);
                           if(!_loc7_)
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(x);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() - rect.left);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       loop9:
                                       while(true)
                                       {
                                          x = §§pop();
                                          loop10:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(y);
                                                if(_loc6_ || useFadeEffect)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc7_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§push(§§pop() - rect.top);
                                                   if(_loc7_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   §§push(int(§§pop()));
                                                }
                                                y = §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      container.addChild(this.§`!#§);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         loop15:
                                                         while(_loc6_ || useFadeEffect)
                                                         {
                                                            if(this.§9u§ == "POWERUP_TUTORIAL_SLINGSCOPE")
                                                            {
                                                               while(_loc6_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     §§push(Boolean((AngryBirdsFP11.sUserProgress as Object).isEggUnlocked("1000-5")));
                                                                  }
                                                               }
                                                               continue loop6;
                                                               addr380:
                                                            }
                                                            else
                                                            {
                                                               §§push(Boolean(mClip.ButtonEasterEgg5));
                                                               if(!_loc7_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        addr296:
                                                                        loop33:
                                                                        while(true)
                                                                        {
                                                                           mClip.ButtonEasterEgg5.visible = false;
                                                                           loop34:
                                                                           while(true)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              loop35:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_ || useFadeEffect)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§`!#§.x = x;
                                                                                          while(true)
                                                                                          {
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue loop35;
                                                                                                }
                                                                                                if(!(_loc6_ || x))
                                                                                                {
                                                                                                   continue loop34;
                                                                                                }
                                                                                                if(_loc6_ || x)
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      this.§`!#§.y = y - 10;
                                                                                                      loop20:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         continue loop33;
                                                                                                         addr197:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc6_ || container)
                                                                                                            {
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         §§goto(addr383);
                                                                                                      }
                                                                                                      continue loop33;
                                                                                                   }
                                                                                                   addr354:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                   addr308:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop17;
                                                                                                }
                                                                                             }
                                                                                             continue loop35;
                                                                                          }
                                                                                          §§goto(addr380);
                                                                                       }
                                                                                       continue loop15;
                                                                                       addr257:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       addr341:
                                                                                       mClip.ButtonEasterEgg5.visible = true;
                                                                                    }
                                                                                    §§goto(addr337);
                                                                                 }
                                                                                 §§goto(addr311);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr257);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§goto(addr341);
                                                               }
                                                               §§goto(addr366);
                                                            }
                                                         }
                                                         continue loop10;
                                                      }
                                                      if(_loc7_ && container)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                }
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr296);
                        }
                        addr55:
                        while(true)
                        {
                           break loop4;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      private function §;@§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  (AngryBirdsFP11.sUserProgress as Object).setEggUnlocked("1000-5");
                  while(true)
                  {
                     addr71:
                     while(!_loc2_)
                     {
                        continue loop0;
                     }
                  }
                  addr51:
                  if(!(_loc2_ && this))
                  {
                     loop5:
                     while(_loc2_)
                     {
                        while(!_loc2_)
                        {
                           §§goto(addr51);
                           continue loop5;
                        }
                        §§goto(addr71);
                     }
                     return;
                     addr68:
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      override public function preClose(useFadeEffect:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr45:
                  while(_loc4_ || useFadeEffect)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            if(_loc4_ || this)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr35);
            }
            §§goto(addr40);
         }
         var container:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         if(!_loc3_)
         {
            loop6:
            while(true)
            {
               container.removeChild(this.§`!#§);
               loop7:
               while(true)
               {
                  loop8:
                  do
                  {
                     mClip.getChildByName("Container_Tutorial").visible = false;
                     while(!_loc3_)
                     {
                        continue loop6;
                        if(_loc4_ || useFadeEffect)
                        {
                           continue loop8;
                        }
                     }
                     continue loop7;
                  }
                  while(_loc3_);
                  
               }
            }
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc1_ || this)
         {
         }
         while(true)
         {
            super.close();
            while(_loc1_ || _loc2_)
            {
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
   }
}
