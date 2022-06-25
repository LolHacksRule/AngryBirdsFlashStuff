package §6a§
{
   import §0!Q§.UIComponentInteractiveRovio;
   import §?!O§.§?W§;
   import §?!O§.TweenManager;
   import flash.display.MovieClip;
   
   public class UIButtonRovio extends UIComponentInteractiveRovio
   {
       
      
      private var §,!C§:§?W§;
      
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
                     addr134:
                     while(!_loc5_)
                     {
                        mClip.mouseChildren = false;
                        while(true)
                        {
                           mClip.tabEnabled = false;
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
               while(true)
               {
                  §[!5§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
               }
            }
         }
         loop6:
         while(true)
         {
            §[!5§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
            while(true)
            {
               if(_loc4_ || param1)
               {
                  if(!_loc5_)
                  {
                     if(!_loc5_)
                     {
                        §[!5§(§9O§,param1.@MouseOver);
                        continue;
                     }
                     §§goto(addr134);
                  }
                  break;
               }
               continue loop6;
            }
            §§goto(addr101);
         }
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(param1 != §#!K§)
            {
               mClip.useHandCursor = true;
               loop0:
               while(true)
               {
                  if(_loc3_ || _loc2_)
                  {
                     while(true)
                     {
                        mClip.buttonMode = true;
                        loop7:
                        while(true)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              mClip.mouseChildren = false;
                              addr131:
                              while(true)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    continue loop0;
                                 }
                                 continue loop7;
                                 §§goto(addr101);
                              }
                              addr101:
                              while(true)
                              {
                                 continue loop7;
                              }
                              addr131:
                              addr64:
                           }
                           else
                           {
                              §§goto(addr131);
                           }
                           mClip.buttonMode = false;
                           do
                           {
                              while(true)
                              {
                                 super.setComponentState(param1);
                                 if(_loc3_ || this)
                                 {
                                    break;
                                 }
                                 §§goto(addr64);
                                 addr78:
                              }
                           }
                           while(!(_loc3_ || _loc2_));
                           
                           return;
                        }
                     }
                     addr116:
                  }
                  else
                  {
                     while(true)
                     {
                        mClip.useHandCursor = false;
                     }
                     addr127:
                  }
                  §§goto(addr131);
               }
            }
            §§goto(addr127);
         }
         §§goto(addr116);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(§5N§)
            {
               if(_loc2_)
               {
                  §§push(param1);
                  loop0:
                  while(true)
                  {
                     if(§§pop() != §@=§)
                     {
                        continue;
                     }
                     if(_loc2_ || param1)
                     {
                        addr209:
                        §§push(this.§,!C§);
                        loop14:
                        while(true)
                        {
                           §§push(null);
                           loop13:
                           while(true)
                           {
                              if(§§pop() != §§pop())
                              {
                                 addr213:
                                 while(true)
                                 {
                                    §§push(this.§,!C§);
                                    addr215:
                                    while(true)
                                    {
                                       §§pop().stop();
                                       addr217:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 addr213:
                              }
                              while(true)
                              {
                                 this.§,!C§ = TweenManager.§7!E§.§5§(mClip,{
                                    "scaleX":1.1,
                                    "scaleY":1.1
                                 },null,0.1);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§,!C§);
                                    loop6:
                                    while(_loc2_)
                                    {
                                       §§pop().play();
                                       continue loop5;
                                       loop17:
                                       while(true)
                                       {
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             continue loop6;
                                          }
                                          §§pop().stop();
                                          loop18:
                                          while(true)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                this.§,!C§ = TweenManager.§7!E§.§5§(mClip,{
                                                   "scaleX":1,
                                                   "scaleY":1
                                                },null,0.1);
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.§,!C§);
                                                      if(!(_loc2_ || this))
                                                      {
                                                         continue loop17;
                                                      }
                                                      addr51:
                                                      if(_loc2_ || param1)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §§pop().play();
                                                            for(; !_loc3_; break loop0)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop18;
                                                               }
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr213);
                                                               }
                                                               §§goto(addr217);
                                                            }
                                                            continue;
                                                            addr62:
                                                         }
                                                         continue loop14;
                                                      }
                                                      addr130:
                                                      while(true)
                                                      {
                                                         §§push(null);
                                                         if(!(_loc2_ || param1))
                                                         {
                                                            continue loop13;
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            continue loop10;
                                                         }
                                                         §§goto(addr51);
                                                      }
                                                   }
                                                   addr139:
                                                   while(true)
                                                   {
                                                      continue loop17;
                                                   }
                                                }
                                                addr126:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§goto(addr130);
                                                   §§push(this.§,!C§);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr215);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr213);
                  }
                  while(true)
                  {
                     super.setComponentVisualState(param1);
                     if(!(_loc3_ && _loc3_))
                     {
                        break;
                     }
                     §§goto(addr62);
                  }
                  return;
                  addr28:
               }
               §§goto(addr209);
            }
            §§goto(addr28);
         }
         §§goto(addr139);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§,!C§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  addr54:
                  while(true)
                  {
                     §§push(this.§,!C§);
                     addr56:
                     while(true)
                     {
                        §§pop().stop();
                        addr58:
                        while(true)
                        {
                        }
                     }
                  }
                  addr54:
               }
               while(true)
               {
                  super.viewWidth = param1;
                  if(!(_loc3_ || param1))
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr54);
               }
               return;
            }
            §§goto(addr56);
         }
         §§goto(addr54);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§,!C§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  addr53:
                  while(true)
                  {
                     §§push(this.§,!C§);
                     addr55:
                     while(true)
                     {
                        §§pop().stop();
                        addr57:
                        while(true)
                        {
                        }
                     }
                  }
                  addr53:
               }
               while(true)
               {
                  super.viewHeight = param1;
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr53);
               }
               return;
            }
            §§goto(addr55);
         }
         §§goto(addr53);
      }
   }
}
