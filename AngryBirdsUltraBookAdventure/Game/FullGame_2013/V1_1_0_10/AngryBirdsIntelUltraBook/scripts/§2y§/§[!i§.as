package §2y§
{
   import §@!&§.§-0§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import flash.display.MovieClip;
   
   public class §[!i§ extends §-0§
   {
       
      
      private var §?X§:§^v§;
      
      public function §[!i§(param1:XML, param2:§^! §, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super(param1,param2,param3);
            loop0:
            while(true)
            {
               targetSprite.buttonMode = true;
               loop1:
               while(true)
               {
                  targetSprite.mouseChildren = false;
                  while(true)
                  {
                     targetSprite.tabEnabled = false;
                     while(!(_loc5_ && param2))
                     {
                        §,9§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                        loop4:
                        for(; !(_loc5_ && param2); if(_loc5_ && param1)
                        {
                           continue;
                        },§§goto(addr74))
                        {
                           §,9§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                           loop5:
                           while(_loc4_)
                           {
                              §,9§(§4§,param1.@MouseOver);
                              while(true)
                              {
                                 if(!(_loc5_ && param2))
                                 {
                                    continue loop4;
                                 }
                                 continue loop5;
                                 addr74:
                                 §,9§(§ M§,param1.@MouseOut);
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                              }
                              continue loop4;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
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
            if(param1 != §6!q§)
            {
               targetSprite.useHandCursor = true;
               loop0:
               do
               {
                  if(_loc3_ || _loc3_)
                  {
                     if(!(_loc2_ && this))
                     {
                        targetSprite.buttonMode = true;
                        while(true)
                        {
                           if(_loc3_)
                           {
                              targetSprite.mouseChildren = false;
                              loop2:
                              while(!_loc2_)
                              {
                                 while(true)
                                 {
                                    super.setComponentState(param1);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 continue loop0;
                              }
                              continue;
                           }
                           addr97:
                           while(true)
                           {
                           }
                           §§goto(addr24);
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           targetSprite.useHandCursor = false;
                           addr104:
                           while(true)
                           {
                              targetSprite.buttonMode = false;
                           }
                        }
                        addr101:
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr104);
               }
               while(_loc2_);
               
               return;
               addr47:
            }
            §§goto(addr101);
         }
         §§goto(addr47);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§-D§)
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(param1);
                  loop0:
                  while(§§pop() != §5§)
                  {
                     §§push(param1);
                     if(!_loc2_)
                     {
                        continue;
                     }
                     if(§§pop() == §`"#§)
                     {
                        while(true)
                        {
                           §§push(this.§?X§);
                           loop2:
                           while(true)
                           {
                              if(_loc2_ || this)
                              {
                                 §§push(null);
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          if(!(_loc3_ && param1))
                                          {
                                             if(_loc3_)
                                             {
                                                break loop0;
                                             }
                                             §§push(this.§?X§);
                                             loop3:
                                             while(true)
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   §§pop().stop();
                                                   addr151:
                                                   loop7:
                                                   while(true)
                                                   {
                                                      addr67:
                                                      while(true)
                                                      {
                                                         this.§?X§ = §`!G§.§[U§.§-]§(mClip,{
                                                            "scaleX":1,
                                                            "scaleY":1
                                                         },null,0.1);
                                                         continue loop7;
                                                      }
                                                   }
                                                   addr151:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(null);
                                                      addr199:
                                                      while(true)
                                                      {
                                                         if(§§pop() != §§pop())
                                                         {
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               §§push(this.§?X§);
                                                               while(true)
                                                               {
                                                                  §§pop().stop();
                                                               }
                                                               addr209:
                                                            }
                                                            while(true)
                                                            {
                                                            }
                                                            addr210:
                                                         }
                                                         while(true)
                                                         {
                                                            this.§?X§ = §`!G§.§[U§.§-]§(mClip,{
                                                               "scaleX":1.1,
                                                               "scaleY":1.1
                                                            },null,0.1);
                                                            addr183:
                                                            while(true)
                                                            {
                                                               §§push(this.§?X§);
                                                               addr155:
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§pop().play();
                                                                     addr158:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr23);
                                                                     }
                                                                     addr158:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr209);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr198:
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§goto(addr151);
                                                }
                                                continue loop2;
                                             }
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr67);
                                 }
                                 §§goto(addr199);
                              }
                              §§goto(addr155);
                           }
                        }
                     }
                     §§goto(addr23);
                  }
               }
               while(true)
               {
                  §§goto(addr198);
               }
            }
            addr23:
            while(true)
            {
               super.setComponentVisualState(param1);
               if(!_loc2_)
               {
                  continue loop1;
               }
               if(!_loc3_)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     break;
                  }
                  continue loop4;
               }
            }
            return;
         }
         §§goto(addr158);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§?X§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     addr70:
                     this.§?X§.stop();
                  }
                  while(true)
                  {
                     §§goto(addr44);
                  }
               }
               addr44:
               while(true)
               {
                  super.viewWidth = param1;
                  if(!(_loc2_ && _loc3_))
                  {
                     break;
                  }
                  continue loop0;
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
         if(!_loc3_)
         {
            §§push(this.§?X§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§?X§);
                     addr54:
                     while(true)
                     {
                        §§pop().stop();
                        addr55:
                        while(true)
                        {
                        }
                     }
                  }
                  addr52:
               }
               while(true)
               {
                  super.viewHeight = param1;
                  if(_loc3_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr52);
               }
               return;
            }
            §§goto(addr54);
         }
         §§goto(addr55);
      }
   }
}
