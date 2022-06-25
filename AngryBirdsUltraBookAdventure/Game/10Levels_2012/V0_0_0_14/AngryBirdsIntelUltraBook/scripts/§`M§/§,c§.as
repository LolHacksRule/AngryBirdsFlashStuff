package §`M§
{
   import § !x§.§4F§;
   import § !x§.§5+§;
   import §=R§.§5!a§;
   import flash.display.MovieClip;
   
   public class §,c§ extends §5!a§
   {
       
      
      private var §9!`§:§4F§;
      
      public function §,c§(param1:XML, param2:§9!#§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super(param1,param2,param3);
            loop0:
            while(true)
            {
               if(!mClip)
               {
                  loop5:
                  while(true)
                  {
                     §;!9§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
                     addr92:
                     loop6:
                     while(_loc4_)
                     {
                        §;!9§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                        loop7:
                        while(true)
                        {
                           if(_loc4_ || param1)
                           {
                              while(true)
                              {
                                 §;!9§(§=!g§,param1.@MouseOver);
                                 for(; !_loc5_; §;!9§(§[$§,param1.@MouseOut),if(_loc4_)
                                 {
                                    continue loop7;
                                 })
                                 {
                                    if(_loc4_ || param2)
                                    {
                                       continue;
                                    }
                                    addr128:
                                    while(true)
                                    {
                                       mClip.mouseChildren = false;
                                       break loop6;
                                    }
                                 }
                                 continue loop6;
                              }
                              return;
                              addr45:
                              addr85:
                           }
                           break;
                           if(!(_loc4_ || param2))
                           {
                              continue;
                           }
                           if(!_loc5_)
                           {
                              §§goto(addr45);
                           }
                           else
                           {
                              while(true)
                              {
                                 mClip.buttonMode = true;
                                 §§goto(addr128);
                              }
                              addr125:
                           }
                        }
                        continue loop5;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr125);
            }
         }
         §§goto(addr85);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(param1 != §-n§)
            {
               mClip.useHandCursor = true;
               while(true)
               {
                  mClip.buttonMode = true;
                  loop1:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        mClip.mouseChildren = false;
                        continue;
                     }
                     addr104:
                     while(true)
                     {
                        mClip.buttonMode = false;
                        addr97:
                        while(true)
                        {
                           addr29:
                           while(true)
                           {
                              super.setComponentState(param1);
                              if(!_loc2_)
                              {
                                 return;
                                 addr35:
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr101);
         }
         §§goto(addr78);
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§"!E§)
            {
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(true)
                  {
                     if(§§pop() != §8j§)
                     {
                        §§push(param1);
                        if(_loc3_ || this)
                        {
                           if(§§pop() == §'0§)
                           {
                              §§goto(addr123);
                           }
                           break;
                        }
                        continue;
                     }
                     if(_loc3_)
                     {
                        §§push(this.§9!`§);
                        loop2:
                        while(true)
                        {
                           §§push(null);
                           addr187:
                           loop3:
                           while(true)
                           {
                              if(§§pop() != §§pop())
                              {
                                 addr188:
                                 while(true)
                                 {
                                    §§push(this.§9!`§);
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
                                 this.§9!`§ = §5+§.§^Z§.§=!a§(mClip,{
                                    "scaleX":1.1,
                                    "scaleY":1.1
                                 },null,0.1);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§9!`§);
                                    while(true)
                                    {
                                       §§pop().play();
                                       addr151:
                                       while(true)
                                       {
                                          break loop1;
                                       }
                                       addr54:
                                       if(_loc2_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       if(!_loc2_)
                                       {
                                          §§pop().play();
                                          while(_loc2_ && param1)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§9!`§);
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(null);
                                                   if(_loc2_ && this)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(§§pop() != §§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc2_ && _loc3_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§push(this.§9!`§);
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§pop().stop();
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      addr134:
                                                   }
                                                   loop19:
                                                   while(true)
                                                   {
                                                      this.§9!`§ = §5+§.§^Z§.§=!a§(mClip,{
                                                         "scaleX":1,
                                                         "scaleY":1
                                                      },null,0.1);
                                                      addr96:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(this.§9!`§);
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        §§goto(addr54);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr143);
                                                                     }
                                                                  }
                                                                  §§goto(addr191);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr151);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr134);
                                                            }
                                                            §§goto(addr143);
                                                         }
                                                         §§goto(addr146);
                                                         continue loop19;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                          }
                                          addr71:
                                          break loop1;
                                          addr64:
                                       }
                                       §§goto(addr190);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr188);
                     §§goto(addr187);
                  }
                  addr39:
                  if(!(_loc3_ || param1))
                  {
                     continue;
                  }
                  return;
                  addr46:
               }
            }
            while(true)
            {
               super.setComponentVisualState(param1);
               if(_loc3_)
               {
                  if(_loc3_ || param1)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr39);
                     }
                     §§goto(addr188);
                  }
                  §§goto(addr96);
               }
               §§goto(addr64);
               §§goto(addr71);
            }
            §§goto(addr46);
         }
         §§goto(addr123);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§9!`§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr54:
                     this.§9!`§.stop();
                  }
                  while(true)
                  {
                  }
                  addr55:
               }
               while(true)
               {
                  super.viewWidth = param1;
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr55);
               }
               return;
               addr44:
            }
            §§goto(addr54);
         }
         §§goto(addr44);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§9!`§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr54:
                     this.§9!`§.stop();
                  }
                  while(true)
                  {
                  }
                  addr55:
               }
               while(true)
               {
                  super.viewHeight = param1;
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr55);
               }
               return;
               addr39:
            }
            §§goto(addr54);
         }
         §§goto(addr39);
      }
   }
}
