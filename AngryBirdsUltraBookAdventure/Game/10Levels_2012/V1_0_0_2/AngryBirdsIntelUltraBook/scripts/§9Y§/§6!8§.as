package §9Y§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §6!8§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §^§:int = 2;
      
      public static const §[!J§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            while(true)
            {
               LISTENER_EVENT_MOUSE_UP = 1;
            }
            addr73:
         }
         loop1:
         do
         {
            §^§ = 2;
            while(!_loc1_)
            {
               §[!J§ = 3;
               if(_loc2_)
               {
                  continue loop1;
               }
            }
            §§goto(addr73);
         }
         while(!_loc2_);
         
      }
      
      private var §,u§:Sprite;
      
      public var §^H§:int = 0;
      
      public var §#8§:Array;
      
      public function §6!8§(param1:Sprite)
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
                  while(true)
                  {
                     this.§#8§ = new Array();
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return;
                  addr33:
               }
               if(_loc3_)
               {
                  continue;
               }
            }
         }
         while(true)
         {
            this.§,u§ = param1;
            §§goto(addr49);
         }
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.removeEventListeners();
            do
            {
               this.§,u§ = param1;
               do
               {
                  this.addEventListeners();
               }
               while(_loc3_ && _loc3_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(Boolean(this.§,u§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop2:
                  while(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(param2);
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              (this.§,u§ as MovieClip).gotoAndStop(param1);
                              if(_loc3_ || param2)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(_loc3_ || param2)
                                    {
                                       break loop2;
                                    }
                                    continue loop3;
                                 }
                                 addr104:
                                 (this.§,u§ as MovieClip).gotoAndPlay(param1);
                              }
                              if(!_loc4_)
                              {
                                 break;
                              }
                              addr119:
                              while(true)
                              {
                                 §§push(this.§,u§ is MovieClip);
                                 if(_loc3_ || param1)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    continue;
                                 }
                                 continue loop4;
                              }
                           }
                           §§goto(addr104);
                        }
                        break loop2;
                     }
                  }
                  return;
                  addr100:
               }
               §§goto(addr118);
            }
         }
         §§goto(addr119);
      }
      
      public function §7k§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this);
            §§push(this.§^H§);
            if(!_loc4_)
            {
               §§push(1);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§^H§ = §§pop();
            loop0:
            while(true)
            {
               this.§#8§[param1] = param2.toUpperCase();
               while(param3)
               {
                  if(_loc5_)
                  {
                     this.addEventListeners();
                  }
                  if(!(_loc4_ && param3))
                  {
                     continue loop0;
                  }
               }
               §§goto(addr20);
            }
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
         if(!(_loc1_ && this))
         {
            this.removeEventListeners();
            loop0:
            while(true)
            {
               §§push(this.§^H§);
               loop1:
               while(true)
               {
                  §§push(1);
                  loop2:
                  while(true)
                  {
                     §§push(LISTENER_EVENT_MOUSE_DOWN);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() << §§pop());
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           loop5:
                           while(true)
                           {
                              §§push(0);
                              loop6:
                              while(true)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§^H§);
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(1);
                                          loop8:
                                          while(!(_loc1_ && this))
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop2;
                                             }
                                             §§push(LISTENER_EVENT_MOUSE_UP);
                                             while(true)
                                             {
                                                §§push(§§pop() << §§pop());
                                                addr201:
                                                while(!_loc1_)
                                                {
                                                   §§push(§§pop() & §§pop());
                                                }
                                                continue loop6;
                                                loop17:
                                                while(_loc2_ || _loc1_)
                                                {
                                                   if(_loc1_ && _loc2_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(§§pop() << §§pop());
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() & §§pop());
                                                      loop19:
                                                      while(_loc2_)
                                                      {
                                                         §§push(0);
                                                         loop20:
                                                         for(; _loc2_ || _loc2_; if(_loc1_ && _loc2_)
                                                         {
                                                            continue;
                                                         },if(_loc2_ || _loc2_)
                                                         {
                                                            §§push(§[!J§);
                                                            if(_loc1_)
                                                            {
                                                               continue loop17;
                                                            }
                                                            §§push(§§pop() << §§pop());
                                                            if(_loc2_)
                                                            {
                                                               continue loop18;
                                                            }
                                                            §§goto(addr94);
                                                         },§§goto(addr201))
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               loop21:
                                                               while(_loc2_)
                                                               {
                                                                  this.§,u§.addEventListener(MouseEvent.ROLL_OVER,this.§=!T§);
                                                                  loop22:
                                                                  while(!(_loc1_ && _loc2_))
                                                                  {
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§^H§);
                                                                        if(_loc2_)
                                                                        {
                                                                           addr34:
                                                                           if(!(_loc1_ && _loc2_))
                                                                           {
                                                                              if(!(_loc1_ && _loc1_))
                                                                              {
                                                                                 §§push(1);
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 continue loop18;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           addr204:
                                                                           addr126:
                                                                           while(!(_loc1_ && _loc2_))
                                                                           {
                                                                              §§push(1);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§^§);
                                                                                 addr78:
                                                                                 continue loop17;
                                                                                 if(!(_loc1_ && this))
                                                                                 {
                                                                                    addr86:
                                                                                    §§push(§§pop() & §§pop());
                                                                                    if(_loc2_ || _loc2_)
                                                                                    {
                                                                                       addr94:
                                                                                       §§push(0);
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          break loop23;
                                                                                       }
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          return;
                                                                                       }
                                                                                       addr25:
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          this.§,u§.addEventListener(MouseEvent.ROLL_OUT,this.§>d§);
                                                                                       }
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop21;
                                                                                       }
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          §§goto(addr25);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.§,u§.addEventListener(MouseEvent.MOUSE_DOWN,this.§4!2§);
                                                                                             break loop21;
                                                                                          }
                                                                                          addr240:
                                                                                       }
                                                                                       continue loop22;
                                                                                    }
                                                                                    continue loop19;
                                                                                 }
                                                                              }
                                                                              §§goto(addr34);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              break loop20;
                                                                              §§goto(addr126);
                                                                           }
                                                                           addr126:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr86);
                                                                        }
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr113:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr126);
                                                                     }
                                                                     §§goto(addr171);
                                                                  }
                                                                  addr171:
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr29);
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               if(!(_loc1_ && _loc1_))
                                                               {
                                                                  this.§,u§.addEventListener(MouseEvent.MOUSE_UP,this.§function§);
                                                               }
                                                               §§goto(addr230);
                                                            }
                                                            §§goto(addr113);
                                                         }
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                             }
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr204);
                                    }
                                    addr179:
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr240);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§,u§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4!2§);
         }
         while(true)
         {
            this.§,u§.removeEventListener(MouseEvent.MOUSE_UP,this.§function§);
            while(_loc2_)
            {
               this.§,u§.removeEventListener(MouseEvent.ROLL_OVER,this.§=!T§);
               do
               {
                  this.§,u§.removeEventListener(MouseEvent.ROLL_OUT,this.§>d§);
               }
               while(_loc1_ && _loc1_);
               
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §4!2§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§#8§[LISTENER_EVENT_MOUSE_DOWN]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(!_loc3_);
         
      }
      
      public function §function§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§#8§[LISTENER_EVENT_MOUSE_UP]);
            do
            {
               param1.stopPropagation();
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      public function §=!T§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.listenerEventOccured(§^§,this.§#8§[§^§]);
         }
      }
      
      public function §>d§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerEventOccured(§[!J§,this.§#8§[§[!J§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.removeEventListeners();
            do
            {
               this.§,u§ = null;
               do
               {
                  this.§#8§ = null;
               }
               while(!(_loc1_ || _loc1_));
               
            }
            while(_loc2_);
            
         }
      }
   }
}
