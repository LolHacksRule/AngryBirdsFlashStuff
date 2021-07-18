package §'!D§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §08§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §&x§:int = 2;
      
      public static const §;=§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            while(true)
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               addr44:
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               return;
               addr51:
            }
         }
         while(true)
         {
            §&x§ = 2;
            while(_loc1_)
            {
               §;=§ = 3;
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr44);
            }
         }
         §§goto(addr51);
      }
      
      private var §`=§:Sprite;
      
      public var §%!V§:int = 0;
      
      public var §>S§:Array;
      
      public function §08§(param1:Sprite)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               if(!param1)
               {
                  do
                  {
                     this.§>S§ = new Array();
                     if(!(_loc2_ || param1))
                     {
                        continue loop0;
                     }
                  }
                  while(!_loc2_);
                  
                  return;
                  addr23:
               }
               while(true)
               {
                  this.§`=§ = param1;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§goto(addr23);
         }
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.removeEventListeners();
            while(true)
            {
               this.§`=§ = param1;
               while(!(_loc2_ && this))
               {
                  this.addEventListeners();
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(Boolean(this.§`=§));
            if(_loc3_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(this.§`=§ is MovieClip);
                        if(_loc3_)
                        {
                           loop0:
                           while(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§push(param2);
                                 loop1:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    if(!§§pop())
                                    {
                                       (this.§`=§ as MovieClip).gotoAndStop(param1);
                                       if(!_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             break loop0;
                                          }
                                          addr67:
                                          addr67:
                                          while(true)
                                          {
                                             (this.§`=§ as MovieClip).gotoAndPlay(param1);
                                          }
                                          addr67:
                                       }
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             break loop1;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    §§goto(addr67);
                                    continue loop3;
                                 }
                                 break;
                                 addr64:
                              }
                              §§goto(addr67);
                           }
                           return;
                           addr59:
                        }
                        §§goto(addr64);
                     }
                  }
                  addr93:
               }
               §§goto(addr59);
            }
            §§goto(addr93);
         }
         §§goto(addr67);
      }
      
      public function §8!h§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this);
            §§push(this.§%!V§);
            if(_loc5_ || param1)
            {
               §§push(1);
               if(!(_loc4_ && param3))
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§%!V§ = §§pop();
            while(true)
            {
               this.§>S§[param1] = param2.toUpperCase();
               addr33:
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               §§goto(addr20);
            }
         }
         while(param3)
         {
            if(_loc5_)
            {
               if(_loc4_)
               {
                  continue;
               }
               this.addEventListeners();
            }
            §§goto(addr33);
         }
         addr20:
      }
      
      public function listenerEventOccured(param1:int, param2:String) : void
      {
      }
      
      public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.removeEventListeners();
         }
         loop0:
         while(true)
         {
            §§push(this.§%!V§);
            if(!_loc1_)
            {
               §§push(1);
               if(!_loc1_)
               {
                  §§push(LISTENER_EVENT_MOUSE_DOWN);
                  while(true)
                  {
                     §§push(§§pop() << §§pop());
                  }
                  addr209:
               }
               while(true)
               {
                  §§push(§§pop() & §§pop());
               }
               addr210:
            }
            loop3:
            while(true)
            {
               §§push(0);
               loop4:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     if(_loc2_)
                     {
                        this.§`=§.addEventListener(MouseEvent.MOUSE_DOWN,this.§3l§);
                     }
                     continue loop0;
                  }
                  addr181:
                  while(true)
                  {
                     §§push(this.§%!V§);
                     if(!_loc1_)
                     {
                        §§push(1);
                        while(true)
                        {
                           §§push(LISTENER_EVENT_MOUSE_UP);
                           addr188:
                           while(true)
                           {
                              §§push(§§pop() << §§pop());
                              addr189:
                              while(true)
                              {
                                 §§push(§§pop() & §§pop());
                              }
                           }
                        }
                        addr187:
                     }
                     loop10:
                     while(true)
                     {
                        §§push(0);
                        loop11:
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              while(true)
                              {
                                 this.§`=§.addEventListener(MouseEvent.MOUSE_UP,this.§ !>§);
                                 addr199:
                                 while(true)
                                 {
                                 }
                              }
                              addr192:
                           }
                           while(true)
                           {
                              §§push(this.§%!V§);
                              loop15:
                              for(; _loc2_ || _loc1_; if(_loc1_ && this)
                              {
                                 continue;
                              },§§goto(addr86),§§push(0))
                              {
                                 §§push(1);
                                 loop16:
                                 while(true)
                                 {
                                    §§push(§&x§);
                                    loop17:
                                    while(!_loc1_)
                                    {
                                       §§push(§§pop() << §§pop());
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§push(§§pop() & §§pop());
                                          while(!(_loc1_ && this))
                                          {
                                             §§push(0);
                                          }
                                          continue loop10;
                                          addr153:
                                       }
                                       loop19:
                                       for(; !(_loc1_ && _loc1_); if(!(_loc2_ || _loc2_))
                                       {
                                          continue;
                                       },if(§§pop() != §§pop())
                                       {
                                          if(_loc2_ || _loc1_)
                                          {
                                             if(_loc2_)
                                             {
                                                if(_loc2_ || _loc1_)
                                                {
                                                   this.§`=§.addEventListener(MouseEvent.ROLL_OUT,this.§6Z§);
                                                   addr127:
                                                   if(!_loc2_)
                                                   {
                                                      §§goto(addr169);
                                                   }
                                                   §§goto(addr25);
                                                }
                                                §§goto(addr192);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr127);
                                       },§§goto(addr25))
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             while(_loc2_)
                                             {
                                                if(_loc1_)
                                                {
                                                   continue loop0;
                                                }
                                                this.§`=§.addEventListener(MouseEvent.ROLL_OVER,this.§%!?§);
                                                while(true)
                                                {
                                                }
                                             }
                                             §§goto(addr199);
                                             addr169:
                                          }
                                          while(true)
                                          {
                                             §§push(this.§%!V§);
                                             if(!_loc1_)
                                             {
                                                §§push(1);
                                                if(_loc1_ && this)
                                                {
                                                   continue loop19;
                                                }
                                                if(!_loc2_)
                                                {
                                                   continue loop4;
                                                }
                                                if(!_loc1_)
                                                {
                                                   §§push(§;=§);
                                                   if(!(_loc2_ || _loc1_))
                                                   {
                                                      continue loop17;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop() << §§pop());
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         continue loop19;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         continue loop16;
                                                      }
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            addr76:
                                                            §§push(§§pop() & §§pop());
                                                            if(_loc2_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            §§goto(addr153);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr187);
                                                         }
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr209);
                                                   }
                                                }
                                                §§goto(addr210);
                                             }
                                             §§goto(addr76);
                                             §§goto(addr180);
                                          }
                                          return;
                                       }
                                       continue loop11;
                                    }
                                    §§goto(addr188);
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§`=§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3l§);
            while(true)
            {
               this.§`=§.removeEventListener(MouseEvent.MOUSE_UP,this.§ !>§);
               §§goto(addr90);
            }
         }
         addr90:
         while(true)
         {
            this.§`=§.removeEventListener(MouseEvent.ROLL_OVER,this.§%!?§);
            do
            {
               this.§`=§.removeEventListener(MouseEvent.ROLL_OUT,this.§6Z§);
            }
            while(!_loc1_);
            
            if(!(_loc2_ && _loc2_))
            {
               if(!(_loc2_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §3l§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§>S§[LISTENER_EVENT_MOUSE_DOWN]);
            do
            {
               param1.stopPropagation();
            }
            while(!_loc2_);
            
         }
      }
      
      public function § !>§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§>S§[LISTENER_EVENT_MOUSE_UP]);
            do
            {
               param1.stopPropagation();
            }
            while(_loc3_);
            
         }
      }
      
      public function §%!?§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(§&x§,this.§>S§[§&x§]);
         }
      }
      
      public function §6Z§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.listenerEventOccured(§;=§,this.§>S§[§;=§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.removeEventListeners();
         }
         do
         {
            this.§`=§ = null;
            do
            {
               this.§>S§ = null;
            }
            while(_loc1_);
            
         }
         while(_loc1_);
         
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§`=§;
      }
   }
}
