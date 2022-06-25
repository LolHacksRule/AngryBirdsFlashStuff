package §"!2§
{
   import §<!G§.§9h§;
   import §<!G§.TweenManager;
   import §>!<§.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   
   public class UIButtonRovio extends UIComponentInteractiveRovio
   {
       
      
      private var § !^§:§9h§;
      
      public function UIButtonRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super(param1,param2,param3);
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
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  §?o§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                  §§goto(addr93);
                  §§goto(addr113);
               }
            }
         }
         §§goto(addr40);
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
         if(!_loc3_)
         {
            if(param1 != §,a§)
            {
               mClip.useHandCursor = true;
               loop0:
               while(true)
               {
                  mClip.buttonMode = true;
                  loop1:
                  while(true)
                  {
                     if(!(_loc2_ || _loc2_))
                     {
                        loop2:
                        while(true)
                        {
                           mClip.buttonMode = false;
                           loop3:
                           while(true)
                           {
                              addr23:
                              while(true)
                              {
                                 super.setComponentState(param1);
                                 if(!_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop1;
                              }
                              continue loop1;
                           }
                           continue loop0;
                           addr101:
                           while(true)
                           {
                              mClip.useHandCursor = false;
                              continue loop2;
                           }
                        }
                        return;
                     }
                     while(true)
                     {
                        mClip.mouseChildren = false;
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr101);
         }
         §§goto(addr82);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§3q§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(§§pop() != §@!a§)
                  {
                     §§push(param1);
                     if(_loc2_)
                     {
                        continue;
                     }
                     if(§§pop() == §1>§)
                     {
                        while(true)
                        {
                           if(_loc2_)
                           {
                              break loop1;
                           }
                           while(true)
                           {
                              §§push(this.§ !^§);
                              loop17:
                              while(true)
                              {
                                 if(_loc3_ || this)
                                 {
                                    §§push(null);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          while(true)
                                          {
                                             if(!(_loc3_ || this))
                                             {
                                                continue loop0;
                                             }
                                             addr129:
                                             §§push(this.§ !^§);
                                             if(_loc3_ || param1)
                                             {
                                                addr136:
                                                §§pop().stop();
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      break loop17;
                                                   }
                                                   break;
                                                   §§goto(addr136);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr24);
                                                }
                                                addr138:
                                                addr146:
                                             }
                                             while(true)
                                             {
                                                §§pop().play();
                                                §§goto(addr146);
                                                §§goto(addr129);
                                             }
                                          }
                                          addr120:
                                       }
                                       break;
                                    }
                                    §§goto(addr191);
                                 }
                                 §§goto(addr196);
                              }
                              while(true)
                              {
                                 this.§ !^§ = TweenManager.§&!'§.§3L§(mClip,{
                                    "scaleX":1,
                                    "scaleY":1
                                 },null,0.1);
                                 §§goto(addr76);
                              }
                           }
                        }
                     }
                     §§goto(addr24);
                  }
                  while(true)
                  {
                     §§goto(addr190);
                  }
               }
            }
            addr24:
            while(true)
            {
               super.setComponentVisualState(param1);
               if(!(_loc2_ && param1))
               {
                  break;
               }
               while(true)
               {
                  if(_loc3_)
                  {
                     if(!_loc2_)
                     {
                        continue loop2;
                     }
                     §§goto(addr138);
                  }
                  addr76:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        continue loop18;
                     }
                     if(_loc3_)
                     {
                        §§push(this.§ !^§);
                        if(_loc3_)
                        {
                           if(_loc2_)
                           {
                              continue loop17;
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                           addr190:
                           while(true)
                           {
                              §§push(null);
                              addr191:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(this.§ !^§);
                                       while(true)
                                       {
                                          §§pop().stop();
                                          addr198:
                                          while(true)
                                          {
                                          }
                                          continue loop17;
                                       }
                                       addr196:
                                    }
                                    §§goto(addr198);
                                 }
                                 while(true)
                                 {
                                    this.§ !^§ = TweenManager.§&!'§.§3L§(mClip,{
                                       "scaleX":1.1,
                                       "scaleY":1.1
                                    },null,0.1);
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr129);
                        }
                     }
                     §§goto(addr198);
                  }
                  §§pop().play();
               }
               addr59:
            }
            return;
         }
         §§goto(addr102);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§ !^§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§ !^§);
                     addr76:
                     while(true)
                     {
                        §§pop().stop();
                        addr78:
                        while(true)
                        {
                        }
                     }
                     addr55:
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     return;
                     addr62:
                  }
               }
               while(true)
               {
                  super.viewWidth = param1;
                  if(_loc2_ && _loc3_)
                  {
                     continue;
                  }
                  §§goto(addr55);
               }
               §§goto(addr62);
            }
            §§goto(addr76);
         }
         §§goto(addr78);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§ !^§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr71:
                     this.§ !^§.stop();
                     addr73:
                     while(true)
                     {
                     }
                     addr73:
                  }
                  §§goto(addr73);
               }
               while(true)
               {
                  super.viewHeight = param1;
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr73);
               }
               return;
            }
         }
         §§goto(addr71);
      }
   }
}
