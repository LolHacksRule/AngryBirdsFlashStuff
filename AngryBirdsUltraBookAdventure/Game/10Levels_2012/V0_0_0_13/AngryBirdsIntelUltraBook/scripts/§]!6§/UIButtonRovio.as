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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
         }
         while(true)
         {
            if(!mClip)
            {
               loop5:
               while(true)
               {
                  §5j§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                  while(true)
                  {
                     §5j§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                     while(_loc5_ || param1)
                     {
                        §5j§(§,!k§,param1.@MouseOver);
                        do
                        {
                           §5j§(§@8§,param1.@MouseOut);
                        }
                        while(!_loc5_);
                        
                        if(_loc4_ && param2)
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              if(!_loc4_)
                              {
                                 break loop5;
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr97);
                     }
                  }
               }
               return;
            }
            loop1:
            for(; _loc5_; while(_loc5_ || param2)
            {
            })
            {
               mClip.buttonMode = true;
               while(true)
               {
                  mClip.mouseChildren = false;
                  addr120:
                  while(true)
                  {
                     mClip.tabEnabled = false;
                     continue loop1;
                  }
               }
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1 != §1!M§)
            {
               mClip.useHandCursor = true;
               while(true)
               {
                  mClip.buttonMode = true;
                  loop1:
                  while(!_loc2_)
                  {
                     if(_loc3_)
                     {
                        mClip.mouseChildren = false;
                        while(true)
                        {
                        }
                        addr63:
                     }
                     else
                     {
                        while(true)
                        {
                        }
                        addr97:
                     }
                     while(true)
                     {
                        super.setComponentState(param1);
                        if(_loc3_)
                        {
                           if(_loc2_ && this)
                           {
                              continue loop1;
                           }
                           if(!(_loc2_ && param1))
                           {
                              if(!_loc3_)
                              {
                                 while(true)
                                 {
                                    mClip.useHandCursor = false;
                                 }
                                 addr102:
                              }
                              §§goto(addr57);
                           }
                           while(true)
                           {
                              mClip.buttonMode = false;
                              §§goto(addr97);
                           }
                           continue loop1;
                        }
                        §§goto(addr63);
                     }
                     return;
                  }
               }
            }
            §§goto(addr102);
         }
         §§goto(addr57);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(§8j§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(§§pop() != §#!A§)
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(§§pop() == §5$§)
                     {
                        loop2:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              §§push(this.§#!&§);
                              if(!(_loc3_ && this))
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc2_ || this)
                                       {
                                          §§push(null);
                                          if(!_loc3_)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(this.§#!&§);
                                                   addr144:
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§pop().stop();
                                                      loop10:
                                                      while(!_loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§#!&§);
                                                            addr195:
                                                            while(true)
                                                            {
                                                               §§pop().stop();
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  addr155:
                                                                  while(true)
                                                                  {
                                                                     this.§#!&§ = TweenManager.§8!X§.§8m§(mClip,{
                                                                        "scaleX":1.1,
                                                                        "scaleY":1.1
                                                                     },null,0.1);
                                                                     addr181:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§#!&§);
                                                                        addr152:
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§pop().play();
                                                                           addr154:
                                                                           while(true)
                                                                           {
                                                                              addr28:
                                                                              while(true)
                                                                              {
                                                                                 super.setComponentVisualState(param1);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                                 addr97:
                                                                                 while(_loc2_ || param1)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_ || param1)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          break loop1;
                                                                                       }
                                                                                       §§push(this.§#!&§);
                                                                                       if(!(_loc3_ && param1))
                                                                                       {
                                                                                          §§pop().play();
                                                                                          continue;
                                                                                       }
                                                                                       continue loop16;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 addr52:
                                                                              }
                                                                              return;
                                                                              continue loop15;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr148:
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                this.§#!&§ = TweenManager.§8!X§.§8m§(mClip,{
                                                   "scaleX":1,
                                                   "scaleY":1
                                                },null,0.1);
                                                §§goto(addr97);
                                                §§goto(addr148);
                                             }
                                          }
                                          while(true)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                §§goto(addr193);
                                             }
                                             §§goto(addr155);
                                          }
                                          addr192:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr192);
                                       }
                                       addr191:
                                    }
                                    §§goto(addr195);
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr181);
                        }
                     }
                     §§goto(addr28);
                  }
                  while(true)
                  {
                     §§goto(addr191);
                  }
               }
            }
            §§goto(addr28);
         }
         §§goto(addr181);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§#!&§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr70:
                     this.§#!&§.stop();
                  }
                  while(true)
                  {
                  }
                  addr72:
               }
               while(true)
               {
                  super.viewWidth = param1;
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr72);
               }
               return;
               addr54:
            }
            §§goto(addr70);
         }
         §§goto(addr54);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§#!&§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr51:
                     this.§#!&§.stop();
                  }
                  while(true)
                  {
                  }
                  addr53:
               }
               while(true)
               {
                  super.viewHeight = param1;
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr53);
               }
               return;
               addr40:
            }
            §§goto(addr51);
         }
         §§goto(addr40);
      }
   }
}
