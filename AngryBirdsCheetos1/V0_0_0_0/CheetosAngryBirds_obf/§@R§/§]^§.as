package §@R§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §]^§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §'8§:int = 2;
      
      public static const §@!$§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
         }
         while(true)
         {
            LISTENER_EVENT_MOUSE_UP = 1;
            while(_loc2_ || _loc2_)
            {
               §'8§ = 2;
               while(!(_loc1_ && §]^§))
               {
                  §@!$§ = 3;
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private var §1C§:Sprite;
      
      public var §^?§:int = 0;
      
      public var §=a§:Array;
      
      public function §]^§(param1:Sprite)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               if(param1)
               {
                  continue;
               }
               loop3:
               while(true)
               {
                  this.§=a§ = new Array();
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  addr67:
                  while(true)
                  {
                     continue loop3;
                  }
               }
            }
         }
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.removeEventListeners();
            while(true)
            {
               this.§1C§ = param1;
               loop1:
               while(!(_loc3_ && _loc2_))
               {
                  while(true)
                  {
                     this.addEventListeners();
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr65);
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(Boolean(this.§1C§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(§§pop())
                  {
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           §§push(param2);
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(_loc4_)
                                    {
                                       (this.§1C§ as MovieClip).gotoAndPlay(param1);
                                    }
                                    else
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          §§push(this.§1C§ is MovieClip);
                                          if(_loc3_ && this)
                                          {
                                             continue loop5;
                                          }
                                          if(!(_loc3_ && this))
                                          {
                                             continue loop0;
                                          }
                                          addr114:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 (this.§1C§ as MovieClip).gotoAndStop(param1);
                                 if(!(_loc3_ && this))
                                 {
                                    break loop3;
                                 }
                              }
                           }
                        }
                        addr81:
                     }
                     break;
                  }
                  return;
                  addr77:
               }
               §§goto(addr114);
            }
         }
         §§goto(addr81);
      }
      
      public function §?^§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(this);
            §§push(this.§^?§);
            if(!_loc5_)
            {
               §§push(1);
               if(!_loc5_)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§^?§ = §§pop();
            while(true)
            {
               this.§=a§[param1] = param2.toUpperCase();
               loop1:
               while(_loc4_ || param3)
               {
                  while(param3)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     addr52:
                     if(!(_loc4_ || param3))
                     {
                        continue loop1;
                     }
                     this.addEventListeners();
                     §§goto(addr52);
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
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
               §§push(this.§^?§);
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
                                       §§push(this.§^?§);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(1);
                                          loop11:
                                          while(_loc2_ || _loc1_)
                                          {
                                             §§push(LISTENER_EVENT_MOUSE_UP);
                                             while(!_loc1_)
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
                                                            if(!(_loc1_ && _loc1_))
                                                            {
                                                               this.§1C§.addEventListener(MouseEvent.CLICK,this.§1!2§);
                                                            }
                                                            loop16:
                                                            while(!_loc1_)
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  if(!(_loc1_ && _loc2_))
                                                                  {
                                                                     loop25:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§^?§);
                                                                        if(!(_loc2_ || _loc1_))
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        if(_loc2_)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§push(1);
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr100:
                                                                                 if(!(_loc1_ && _loc2_))
                                                                                 {
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr140:
                                                                                          continue loop24;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§'8§);
                                                                                    addr146:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() << §§pop());
                                                                                    }
                                                                                 }
                                                                                 addr145:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() & §§pop());
                                                                                 addr148:
                                                                                 while(_loc2_ || _loc2_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    while(_loc2_ || this)
                                                                                    {
                                                                                       if(§§pop() != §§pop())
                                                                                       {
                                                                                          if(!(_loc1_ && _loc1_))
                                                                                          {
                                                                                             this.§1C§.addEventListener(MouseEvent.ROLL_OVER,this.§";§);
                                                                                          }
                                                                                          continue loop24;
                                                                                       }
                                                                                       continue loop25;
                                                                                       if(_loc2_ || this)
                                                                                       {
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             §§push(§§pop() & §§pop());
                                                                                             continue loop10;
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                              }
                                                                              addr144:
                                                                           }
                                                                           §§goto(addr145);
                                                                        }
                                                                        §§goto(addr148);
                                                                     }
                                                                     return;
                                                                  }
                                                                  continue loop16;
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr144);
                                                         }
                                                      }
                                                   }
                                                }
                                                if(!(_loc2_ || this))
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop() << §§pop());
                                                if(_loc2_ || _loc2_)
                                                {
                                                   §§goto(addr80);
                                                }
                                                §§goto(addr100);
                                             }
                                             continue loop3;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    addr186:
                                 }
                                 §§goto(addr230);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr220);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§1C§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%!@§);
            while(true)
            {
               this.§1C§.removeEventListener(MouseEvent.MOUSE_UP,this.§1!2§);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§1C§.removeEventListener(MouseEvent.ROLL_OVER,this.§";§);
                     do
                     {
                        this.§1C§.removeEventListener(MouseEvent.ROLL_OUT,this.§91§);
                     }
                     while(_loc2_ && this);
                     
                     if(_loc1_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §%!@§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§=a§[LISTENER_EVENT_MOUSE_DOWN]);
            do
            {
               param1.stopPropagation();
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function §1!2§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§=a§[LISTENER_EVENT_MOUSE_UP]);
            do
            {
               param1.stopPropagation();
            }
            while(_loc2_);
            
         }
      }
      
      public function §";§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.listenerEventOccured(§'8§,this.§=a§[§'8§]);
         }
      }
      
      public function §91§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.listenerEventOccured(§@!$§,this.§=a§[§@!$§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.removeEventListeners();
         }
         do
         {
            this.§1C§ = null;
            do
            {
               this.§=a§ = null;
            }
            while(_loc1_);
            
         }
         while(_loc1_);
         
      }
   }
}
