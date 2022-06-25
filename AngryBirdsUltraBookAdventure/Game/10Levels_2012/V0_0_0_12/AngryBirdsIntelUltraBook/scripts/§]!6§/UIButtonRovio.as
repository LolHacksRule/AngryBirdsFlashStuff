package §]!6§
{
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §>!-§.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   
   public class UIButtonRovio extends UIComponentInteractiveRovio
   {
       
      
      private var §#!&§:§!T§;
      
      public function UIButtonRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
            loop0:
            while(true)
            {
               if(mClip)
               {
                  loop1:
                  while(true)
                  {
                     mClip.buttonMode = true;
                     addr136:
                     while(true)
                     {
                        mClip.mouseChildren = false;
                        loop8:
                        while(true)
                        {
                           mClip.tabEnabled = false;
                           addr101:
                           addr120:
                           while(true)
                           {
                              if(_loc4_ || this)
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop8;
                           }
                        }
                     }
                  }
               }
               loop2:
               while(true)
               {
                  §5j§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                  loop3:
                  while(true)
                  {
                     §5j§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                     while(_loc4_)
                     {
                        continue loop0;
                        §5j§(§,!k§,param1.@MouseOver);
                        do
                        {
                           §5j§(§@8§,param1.@MouseOut);
                        }
                        while(!_loc4_);
                        
                        if(!(_loc4_ || param1))
                        {
                           continue;
                        }
                        if(!(_loc4_ || param2))
                        {
                           continue loop3;
                        }
                        if(!_loc5_)
                        {
                           break loop2;
                        }
                        §§goto(addr101);
                     }
                  }
                  §§goto(addr120);
               }
               return;
            }
         }
         §§goto(addr136);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1 != §1!M§)
            {
               mClip.useHandCursor = true;
               loop4:
               while(true)
               {
                  mClip.buttonMode = true;
                  loop5:
                  while(true)
                  {
                     if(_loc2_ || param1)
                     {
                        if(!_loc3_)
                        {
                           mClip.mouseChildren = false;
                           loop6:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 addr67:
                                 while(true)
                                 {
                                    super.setComponentState(param1);
                                    if(!_loc3_)
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             return;
                                          }
                                          continue loop4;
                                       }
                                       continue loop5;
                                    }
                                    continue loop6;
                                    §§goto(addr67);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr28);
                                    continue loop5;
                                 }
                                 addr28:
                                 addr106:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    mClip.useHandCursor = false;
                                 }
                                 addr111:
                              }
                              §§goto(addr106);
                           }
                        }
                        while(true)
                        {
                           mClip.buttonMode = false;
                        }
                     }
                     §§goto(addr67);
                  }
               }
               addr100:
            }
            §§goto(addr111);
         }
         §§goto(addr100);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§8j§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  while(§§pop() != §#!A§)
                  {
                     §§push(param1);
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     if(§§pop() == §5$§)
                     {
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              if(!(_loc3_ || _loc2_))
                              {
                                 break;
                              }
                              §§push(this.§#!&§);
                              loop2:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(null);
                                          if(_loc3_ || this)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§push(this.§#!&§);
                                                   while(true)
                                                   {
                                                      §§pop().stop();
                                                      addr137:
                                                      addr78:
                                                      while(true)
                                                      {
                                                      }
                                                      §§push(this.§#!&§);
                                                      if(!(_loc3_ || param1))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc2_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§pop().play();
                                                      loop6:
                                                      while(!_loc2_)
                                                      {
                                                         if(_loc3_ || param1)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               addr57:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  addr144:
                                                                  while(true)
                                                                  {
                                                                     this.§#!&§ = TweenManager.§8!X§.§8m§(mClip,{
                                                                        "scaleX":1.1,
                                                                        "scaleY":1.1
                                                                     },null,0.1);
                                                                     addr170:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§#!&§);
                                                                        addr141:
                                                                        while(true)
                                                                        {
                                                                           §§pop().play();
                                                                           addr143:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr193:
                                                            }
                                                            while(true)
                                                            {
                                                               super.setComponentVisualState(param1);
                                                               if(!_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop6;
                                                            }
                                                            return;
                                                            addr24:
                                                         }
                                                         §§goto(addr137);
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr78);
                                                         }
                                                         §§goto(addr170);
                                                      }
                                                      continue loop0;
                                                      addr74:
                                                   }
                                                }
                                                §§goto(addr137);
                                             }
                                             while(true)
                                             {
                                                this.§#!&§ = TweenManager.§8!X§.§8m§(mClip,{
                                                   "scaleX":1,
                                                   "scaleY":1
                                                },null,0.1);
                                                §§goto(addr74);
                                                §§goto(addr137);
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      §§push(this.§#!&§);
                                                      while(true)
                                                      {
                                                         §§pop().stop();
                                                      }
                                                      addr191:
                                                   }
                                                   §§goto(addr193);
                                                }
                                             }
                                             addr181:
                                          }
                                          §§goto(addr144);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr180:
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr191);
                                 }
                                 §§goto(addr141);
                              }
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr24);
                  }
                  §§goto(addr180);
               }
            }
            §§goto(addr24);
         }
         §§goto(addr57);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§#!&§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr70:
                     this.§#!&§.stop();
                     addr72:
                     while(true)
                     {
                     }
                     addr72:
                  }
                  §§goto(addr72);
               }
               while(true)
               {
                  super.viewWidth = param1;
                  if(!(_loc3_ && param1))
                  {
                     break;
                  }
                  §§goto(addr72);
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§#!&§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr55:
                     this.§#!&§.stop();
                  }
                  while(true)
                  {
                  }
                  addr57:
               }
               while(true)
               {
                  super.viewHeight = param1;
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr57);
               }
               return;
            }
         }
         §§goto(addr55);
      }
   }
}
