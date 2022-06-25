package §?!7§
{
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §9Y§.§+!!§;
   import flash.display.MovieClip;
   
   public class §5!I§ extends §+!!§
   {
       
      
      private var §-J§:§4!Z§;
      
      public function §5!I§(param1:XML, param2:§8;§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super(param1,param2,param3);
         }
         loop0:
         for(; mClip; if(_loc4_ && param3)
         {
            continue;
         },mClip.buttonMode = true,§§goto(addr124))
         {
            if(!_loc4_)
            {
               continue;
            }
            addr124:
            while(true)
            {
               mClip.mouseChildren = false;
               loop2:
               while(_loc5_ || this)
               {
                  mClip.tabEnabled = false;
                  while(true)
                  {
                     break loop0;
                     addr72:
                     while(!(_loc4_ && param3))
                     {
                        if(!_loc4_)
                        {
                           §7k§(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
                           do
                           {
                              §7k§(§^§,param1.@MouseOver);
                              do
                              {
                                 §7k§(§[!J§,param1.@MouseOut);
                              }
                              while(_loc4_);
                              
                           }
                           while(!_loc5_);
                           
                           if(_loc5_)
                           {
                              return;
                           }
                           continue;
                           continue;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §7k§(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
            §§goto(addr72);
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
            if(param1 == § H§)
            {
               if(!_loc2_)
               {
                  mClip.useHandCursor = false;
               }
               loop0:
               while(true)
               {
                  mClip.buttonMode = false;
                  addr85:
                  while(true)
                  {
                     while(true)
                     {
                        super.setComponentState(param1);
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           while(_loc2_)
                           {
                              mClip.buttonMode = true;
                           }
                           continue loop0;
                        }
                        addr47:
                     }
                     §§goto(addr42);
                  }
               }
            }
            else
            {
               mClip.useHandCursor = true;
            }
            while(true)
            {
               if(_loc3_)
               {
                  §§goto(addr80);
               }
               §§goto(addr85);
            }
         }
         addr42:
      }
      
      override public function setComponentVisualState(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(§&&§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(§§pop() != §;=§)
                  {
                     §§push(param1);
                     if(!_loc2_)
                     {
                        continue;
                     }
                     if(§§pop() == §?!0§)
                     {
                        if(_loc2_)
                        {
                           §§push(this.§-J§);
                           if(!(_loc3_ && _loc3_))
                           {
                              if(!_loc3_)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§push(null);
                                    if(!_loc3_)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push(this.§-J§);
                                                loop14:
                                                while(true)
                                                {
                                                   §§pop().stop();
                                                   addr132:
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break loop1;
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         addr143:
                                                         while(true)
                                                         {
                                                            this.§-J§ = §,!b§.§<d§.§>a§(mClip,{
                                                               "scaleX":1,
                                                               "scaleY":1
                                                            },null,0.1);
                                                            while(true)
                                                            {
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  §§push(this.§-J§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§pop().play();
                                                                     loop9:
                                                                     while(!(_loc3_ && param1))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           super.setComponentVisualState(param1);
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        return;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue loop14;
                                                               }
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  addr168:
                                                                  while(true)
                                                                  {
                                                                     this.§-J§ = §,!b§.§<d§.§>a§(mClip,{
                                                                        "scaleX":1.1,
                                                                        "scaleY":1.1
                                                                     },null,0.1);
                                                                     addr182:
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§-J§);
                                                                        addr147:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              §§pop().play();
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop().stop();
                                                                                 continue loop5;
                                                                              }
                                                                              addr194:
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr28);
                                                            }
                                                            §§goto(addr143);
                                                         }
                                                      }
                                                      while(_loc2_)
                                                      {
                                                         §§goto(addr28);
                                                      }
                                                      §§goto(addr182);
                                                   }
                                                   continue loop0;
                                                }
                                                addr131:
                                             }
                                             addr192:
                                             while(true)
                                             {
                                                §§goto(addr194);
                                             }
                                          }
                                       }
                                       §§goto(addr63);
                                    }
                                    while(true)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          §§goto(addr192);
                                       }
                                       §§goto(addr168);
                                    }
                                    addr191:
                                 }
                                 while(true)
                                 {
                                    §§goto(addr191);
                                 }
                                 addr190:
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr28);
                  }
                  while(true)
                  {
                     §§goto(addr190);
                  }
               }
            }
            §§goto(addr28);
         }
         §§goto(addr182);
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§-J§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  addr68:
                  while(true)
                  {
                     §§push(this.§-J§);
                     addr70:
                     while(true)
                     {
                        §§pop().stop();
                        addr71:
                        while(true)
                        {
                        }
                     }
                  }
                  addr68:
               }
               while(true)
               {
                  super.viewWidth = param1;
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr68);
               }
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr68);
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§-J§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr55:
                     this.§-J§.stop();
                  }
                  while(true)
                  {
                  }
                  addr56:
               }
               while(true)
               {
                  super.viewHeight = param1;
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr56);
               }
               return;
               addr45:
            }
            §§goto(addr55);
         }
         §§goto(addr45);
      }
   }
}
