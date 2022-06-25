package §>!<§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class UIEventListenerRovio
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §"!H§:int = 2;
      
      public static const §2!O§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            while(true)
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               addr61:
               if(!(_loc2_ && UIEventListenerRovio))
               {
                  §2!O§ = 3;
                  addr68:
                  if(!_loc1_)
                  {
                     while(!(_loc2_ && UIEventListenerRovio))
                     {
                        §§goto(addr61);
                        §§goto(addr68);
                     }
                     while(true)
                     {
                        §"!H§ = 2;
                        §§goto(addr54);
                     }
                     addr54:
                     addr73:
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      private var §#>§:Sprite;
      
      public var §4!Z§:int = 0;
      
      public var §-!Z§:Array;
      
      public function UIEventListenerRovio(param1:Sprite)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super();
            do
            {
               if(param1)
               {
                  while(true)
                  {
                     this.§#>§ = param1;
                     addr73:
                     while(true)
                     {
                     }
                  }
                  addr70:
               }
               while(true)
               {
                  this.§-!Z§ = new Array();
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr70);
               }
            }
            while(_loc2_);
            
            return;
         }
         §§goto(addr73);
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.removeEventListeners();
            while(true)
            {
               this.§#>§ = param1;
               while(!_loc2_)
               {
                  this.addEventListeners();
                  if(!(_loc2_ && param1))
                  {
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(Boolean(this.§#>§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(_loc4_ || param1)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr126:
                     while(true)
                     {
                        §§push(this.§#>§ is MovieClip);
                        if(!_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(param2);
                        continue loop0;
                     }
                     addr86:
                     while(true)
                     {
                        (this.§#>§ as MovieClip).gotoAndPlay(param1);
                        addr104:
                        while(true)
                        {
                           if(_loc3_ && param1)
                           {
                              §§goto(addr126);
                           }
                           else
                           {
                              addr111:
                           }
                        }
                     }
                  }
                  addr20:
                  return;
                  §§goto(addr66);
               }
            }
         }
         §§goto(addr126);
      }
      
      public function §?o§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            §§push(this);
            §§push(this.§4!Z§);
            if(!(_loc4_ && this))
            {
               §§push(1);
               if(!(_loc4_ && param3))
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§4!Z§ = §§pop();
         }
         loop0:
         while(true)
         {
            this.§-!Z§[param1] = param2.toUpperCase();
            while(param3)
            {
               if(_loc5_)
               {
                  if(!(_loc4_ && this))
                  {
                     this.addEventListeners();
                     continue loop0;
                  }
                  continue;
                  continue;
               }
               continue loop0;
            }
            addr25:
            return;
         }
      }
      
      public function listenerEventOccured(param1:int, param2:String) : void
      {
      }
      
      public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.removeEventListeners();
            loop0:
            while(true)
            {
               §§push(this.§4!Z§);
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
                                 if(§§pop() != §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§#>§.addEventListener(MouseEvent.MOUSE_DOWN,this.§=!J§);
                                       addr241:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr232:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§4!Z§);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(1);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(LISTENER_EVENT_MOUSE_UP);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(§§pop() << §§pop());
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop() & §§pop());
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               break loop15;
                                                            }
                                                            this.§#>§.addEventListener(MouseEvent.MOUSE_UP,this.§^!]§);
                                                            while(_loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr241);
                                                         }
                                                         addr198:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§4!Z§);
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(1);
                                                            loop20:
                                                            while(!(_loc1_ && this))
                                                            {
                                                               §§push(§"!H§);
                                                               loop21:
                                                               while(_loc2_)
                                                               {
                                                                  §§push(§§pop() << §§pop());
                                                                  loop22:
                                                                  while(!(_loc1_ && this))
                                                                  {
                                                                     §§push(§§pop() & §§pop());
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        addr173:
                                                                        while(_loc2_)
                                                                        {
                                                                           if(§§pop() != §§pop())
                                                                           {
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 this.§#>§.addEventListener(MouseEvent.ROLL_OVER,this.§>;§);
                                                                                 loop26:
                                                                                 while(_loc2_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§4!Z§);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          if(_loc1_ && _loc1_)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          §§push(1);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             if(_loc2_ || _loc1_)
                                                                                             {
                                                                                                §§push(§2!O§);
                                                                                                if(!(_loc2_ || this))
                                                                                                {
                                                                                                   continue loop21;
                                                                                                }
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                                §§push(§§pop() << §§pop());
                                                                                                if(_loc2_ || _loc1_)
                                                                                                {
                                                                                                   if(_loc2_ || _loc1_)
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      §§goto(addr84);
                                                                                                      §§push(§§pop() & §§pop());
                                                                                                   }
                                                                                                   §§goto(addr173);
                                                                                                }
                                                                                                §§goto(addr96);
                                                                                                continue loop21;
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr84:
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             continue loop23;
                                                                                          }
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          if(!(_loc2_ || this))
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          §§push(0);
                                                                                       }
                                                                                       addr96:
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!(_loc1_ && _loc1_))
                                                                                          {
                                                                                             if(§§pop() != §§pop())
                                                                                             {
                                                                                                if(_loc2_ || this)
                                                                                                {
                                                                                                   continue loop25;
                                                                                                }
                                                                                                addr141:
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   continue loop26;
                                                                                                }
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr198);
                                                                                                }
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       continue loop22;
                                                                                    }
                                                                                    continue loop20;
                                                                                 }
                                                                                 §§goto(addr219);
                                                                              }
                                                                           }
                                                                           §§goto(addr29);
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop15;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr232);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr221);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§#>§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=!J§);
            loop0:
            while(true)
            {
               this.§#>§.removeEventListener(MouseEvent.MOUSE_UP,this.§^!]§);
               while(true)
               {
                  this.§#>§.removeEventListener(MouseEvent.ROLL_OVER,this.§>;§);
                  while(!_loc2_)
                  {
                     continue loop0;
                     this.§#>§.removeEventListener(MouseEvent.ROLL_OUT,this.§]"§);
                     if(!_loc2_)
                     {
                        return;
                        addr50:
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §=!J§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§-!Z§[LISTENER_EVENT_MOUSE_DOWN]);
            do
            {
               param1.stopPropagation();
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      public function §^!]§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§-!Z§[LISTENER_EVENT_MOUSE_UP]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(!(_loc3_ || this));
         
      }
      
      public function §>;§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.listenerEventOccured(§"!H§,this.§-!Z§[§"!H§]);
         }
      }
      
      public function §]"§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.listenerEventOccured(§2!O§,this.§-!Z§[§2!O§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.removeEventListeners();
            do
            {
               this.§#>§ = null;
               do
               {
                  this.§-!Z§ = null;
               }
               while(_loc1_);
               
            }
            while(!(_loc2_ || this));
            
         }
      }
   }
}
