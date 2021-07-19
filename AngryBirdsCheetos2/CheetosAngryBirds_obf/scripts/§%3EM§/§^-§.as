package §>M§
{
   import §'!D§.§0j§;
   import §<!0§.§%g§;
   import §<!0§.§7g§;
   import flash.display.MovieClip;
   
   public class §^-§ extends §0j§
   {
       
      
      private var §"!U§:§7g§;
      
      public function §^-§(param1:XML, param2:§<6§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2,param3);
         }
         while(true)
         {
            targetSprite.buttonMode = true;
            while(!(_loc4_ && param2))
            {
               targetSprite.mouseChildren = false;
               while(!_loc4_)
               {
                  targetSprite.tabEnabled = false;
                  loop3:
                  for(; !_loc4_; if(_loc4_ && param1)
                  {
                     continue;
                  },§§goto(addr82))
                  {
                     §8!h§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                     loop4:
                     while(true)
                     {
                        §8!h§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                        while(true)
                        {
                           if(!(_loc4_ && this))
                           {
                              continue loop3;
                           }
                           continue loop4;
                           addr82:
                           §8!h§(§&x§,param1.@MouseOver);
                           do
                           {
                              §8!h§(§;=§,param1.@MouseOut);
                           }
                           while(_loc4_ && param2);
                           
                           if(!(_loc4_ && this))
                           {
                              return;
                           }
                        }
                        continue loop3;
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
         if(!(_loc4_ && param1))
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
            if(param1 != §%!T§)
            {
               targetSprite.useHandCursor = true;
               loop0:
               while(true)
               {
                  targetSprite.buttonMode = true;
                  while(true)
                  {
                     targetSprite.mouseChildren = false;
                     loop2:
                     while(!_loc3_)
                     {
                        if(_loc2_)
                        {
                           if(_loc3_ && _loc3_)
                           {
                              while(true)
                              {
                                 targetSprite.useHandCursor = false;
                                 addr103:
                                 while(true)
                                 {
                                    targetSprite.buttonMode = false;
                                    addr96:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr100:
                           }
                           while(true)
                           {
                              super.setComponentState(param1);
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              continue loop2;
                              §§goto(addr96);
                           }
                           return;
                           addr53:
                        }
                        §§goto(addr96);
                     }
                  }
               }
            }
            §§goto(addr100);
         }
         §§goto(addr53);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§%!3§)
            {
               if(!(_loc2_ && this))
               {
                  §§push(param1);
                  loop0:
                  while(true)
                  {
                     if(§§pop() != §=Z§)
                     {
                        §§push(param1);
                        if(_loc3_)
                        {
                           if(§§pop() == §-y§)
                           {
                              if(!_loc2_)
                              {
                                 §§push(this.§"!U§);
                                 if(!_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(null);
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             if(_loc3_ || this)
                                             {
                                                addr129:
                                                §§push(this.§"!U§);
                                                while(true)
                                                {
                                                   §§pop().stop();
                                                   addr130:
                                                   while(true)
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr137:
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                }
                                                addr129:
                                             }
                                             §§goto(addr130);
                                          }
                                          while(true)
                                          {
                                             this.§"!U§ = §%g§.§'I§.§5!0§(mClip,{
                                                "scaleX":1,
                                                "scaleY":1
                                             },null,0.1);
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§push(this.§"!U§);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§pop().play();
                                                         while(_loc3_ || this)
                                                         {
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  break loop0;
                                                               }
                                                               §§goto(addr188);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr130);
                                                            }
                                                         }
                                                         continue;
                                                         addr46:
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr129);
                                                   }
                                                }
                                                §§goto(addr159);
                                             }
                                             §§goto(addr137);
                                          }
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr130);
                           }
                           break;
                        }
                        continue;
                     }
                     if(!_loc2_)
                     {
                        addr184:
                        §§push(this.§"!U§);
                        loop14:
                        while(true)
                        {
                           §§push(null);
                           addr187:
                           while(true)
                           {
                              if(§§pop() != §§pop())
                              {
                                 addr188:
                                 while(true)
                                 {
                                    §§push(this.§"!U§);
                                    addr190:
                                    while(true)
                                    {
                                       §§pop().stop();
                                       addr191:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 addr188:
                              }
                              while(true)
                              {
                                 this.§"!U§ = §%g§.§'I§.§5!0§(mClip,{
                                    "scaleX":1.1,
                                    "scaleY":1.1
                                 },null,0.1);
                                 addr159:
                                 while(true)
                                 {
                                    §§push(this.§"!U§);
                                    addr141:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop14;
                                       }
                                       §§pop().play();
                                       while(true)
                                       {
                                          break loop0;
                                       }
                                    }
                                 }
                                 §§goto(addr188);
                              }
                           }
                        }
                     }
                     §§goto(addr191);
                  }
                  while(true)
                  {
                     super.setComponentVisualState(param1);
                     if(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr46);
                     }
                     §§goto(addr144);
                  }
                  return;
                  addr24:
                  addr32:
               }
               §§goto(addr184);
            }
            §§goto(addr24);
         }
         §§goto(addr32);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§"!U§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§"!U§);
                     addr70:
                     while(true)
                     {
                        §§pop().stop();
                        addr71:
                        while(true)
                        {
                        }
                     }
                     addr45:
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     return;
                     addr52:
                  }
               }
               while(true)
               {
                  super.viewWidth = param1;
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr45);
               }
               §§goto(addr52);
            }
            §§goto(addr70);
         }
         §§goto(addr71);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§"!U§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  addr72:
                  while(true)
                  {
                     §§push(this.§"!U§);
                     addr74:
                     while(true)
                     {
                        §§pop().stop();
                        addr75:
                        while(true)
                        {
                        }
                     }
                  }
                  addr72:
               }
               while(true)
               {
                  super.viewHeight = param1;
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  if(_loc2_ || this)
                  {
                     break;
                  }
                  §§goto(addr72);
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr72);
      }
   }
}
