package §'!A§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §-!S§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §%x§:int = 2;
      
      public static const §2"3§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
         }
         do
         {
            LISTENER_EVENT_MOUSE_UP = 1;
            do
            {
               §%x§ = 2;
               do
               {
                  §2"3§ = 3;
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(_loc1_ && _loc2_);
            
         }
         while(_loc1_);
         
      }
      
      private var §33§:Sprite;
      
      public var §2"§:int = 0;
      
      public var §9!$§:Array;
      
      public function §-!S§(param1:Sprite)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
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
                  this.§9!$§ = new Array();
                  if(!(_loc3_ && this))
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  addr76:
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.removeEventListeners();
            while(true)
            {
               this.§33§ = param1;
               while(_loc3_ || this)
               {
                  this.addEventListeners();
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr39:
               }
            }
         }
         §§goto(addr39);
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(Boolean(this.§33§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr105:
                     loop5:
                     while(true)
                     {
                        §§push(this.§33§ is MovieClip);
                        if(_loc4_ || _loc3_)
                        {
                           if(!_loc3_)
                           {
                              loop2:
                              while(§§pop())
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(param2);
                                    addr77:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       if(!§§pop())
                                       {
                                          (this.§33§ as MovieClip).gotoAndStop(param1);
                                          if(_loc4_)
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   break loop2;
                                                }
                                                continue loop3;
                                             }
                                             addr80:
                                             (this.§33§ as MovieClip).gotoAndPlay(param1);
                                          }
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       §§goto(addr80);
                                    }
                                    break loop2;
                                 }
                              }
                              return;
                              addr74:
                           }
                           continue;
                        }
                        §§goto(addr77);
                     }
                  }
               }
               §§goto(addr74);
            }
         }
         §§goto(addr105);
      }
      
      public function § "<§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this);
            §§push(this.§2"§);
            if(_loc4_ || this)
            {
               §§push(1);
               if(!_loc5_)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§2"§ = §§pop();
         }
         loop0:
         while(true)
         {
            this.§9!$§[param1] = param2.toUpperCase();
            do
            {
               if(_loc4_)
               {
                  if(!param3)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            while(if(!(_loc5_ && this))
            {
               this.addEventListeners();
            }, _loc5_ && param1);
            
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
         if(!_loc1_)
         {
            this.removeEventListeners();
            loop0:
            while(true)
            {
               §§push(this.§2"§);
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
                                       §§push(this.§2"§);
                                       if(!_loc1_)
                                       {
                                          §§push(1);
                                          loop10:
                                          while(_loc2_)
                                          {
                                             §§push(LISTENER_EVENT_MOUSE_UP);
                                             while(true)
                                             {
                                                §§push(§§pop() << §§pop());
                                                addr178:
                                                while(true)
                                                {
                                                   §§push(§§pop() & §§pop());
                                                }
                                                addr56:
                                                if(_loc1_ && _loc1_)
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop() << §§pop());
                                                if(!_loc1_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         addr71:
                                                         §§push(§§pop() & §§pop());
                                                         if(!_loc1_)
                                                         {
                                                            addr74:
                                                            §§push(0);
                                                            if(_loc2_)
                                                            {
                                                               if(_loc2_ || this)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     if(_loc2_ || this)
                                                                     {
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           if(_loc2_ || this)
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§2"§);
                                                                                       if(_loc2_ || _loc2_)
                                                                                       {
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                                §§push(1);
                                                                                                if(_loc2_ || this)
                                                                                                {
                                                                                                   addr48:
                                                                                                   §§push(§2"3§);
                                                                                                   loop18:
                                                                                                   for(; !_loc1_; §§goto(addr48))
                                                                                                   {
                                                                                                      §§push(§§pop() << §§pop());
                                                                                                      while(_loc2_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop() & §§pop());
                                                                                                         while(_loc2_ || this)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() == §§pop())
                                                                                                               {
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               if(!_loc1_)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  this.§33§.addEventListener(MouseEvent.ROLL_OVER,this.§6M§);
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               addr195:
                                                                                                               addr195:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr127:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§2"§);
                                                                                                                     addr130:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(1);
                                                                                                                        addr131:
                                                                                                                        while(_loc2_)
                                                                                                                        {
                                                                                                                           §§push(§%x§);
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() != §§pop())
                                                                                                         {
                                                                                                            if(!(_loc1_ && _loc2_))
                                                                                                            {
                                                                                                               this.§33§.addEventListener(MouseEvent.MOUSE_UP,this.§[!?§);
                                                                                                            }
                                                                                                            §§goto(addr195);
                                                                                                         }
                                                                                                         §§goto(addr127);
                                                                                                      }
                                                                                                   }
                                                                                                   if(_loc2_ || this)
                                                                                                   {
                                                                                                      §§goto(addr56);
                                                                                                   }
                                                                                                   continue loop3;
                                                                                                }
                                                                                                §§goto(addr74);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr145);
                                                                                       }
                                                                                       §§goto(addr71);
                                                                                    }
                                                                                    addr179:
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr180);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              this.§33§.addEventListener(MouseEvent.ROLL_OUT,this.§"Q§);
                                                                           }
                                                                           if(_loc1_ && this)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§33§.addEventListener(MouseEvent.MOUSE_DOWN,this.§2!a§);
                                                                                 continue loop0;
                                                                              }
                                                                              addr205:
                                                                           }
                                                                        }
                                                                        return;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               §§goto(addr131);
                                                            }
                                                            §§goto(addr153);
                                                         }
                                                         §§goto(addr130);
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr137);
                                                }
                                                §§goto(addr74);
                                             }
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr179);
                                    }
                                    addr168:
                                 }
                                 §§goto(addr205);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr195);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§33§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§2!a§);
            while(true)
            {
               this.§33§.removeEventListener(MouseEvent.MOUSE_UP,this.§[!?§);
               while(_loc2_)
               {
                  this.§33§.removeEventListener(MouseEvent.ROLL_OVER,this.§6M§);
                  loop2:
                  while(!(_loc1_ && _loc1_))
                  {
                     while(true)
                     {
                        this.§33§.removeEventListener(MouseEvent.ROLL_OUT,this.§"Q§);
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function §2!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§9!$§[LISTENER_EVENT_MOUSE_DOWN]);
            do
            {
               param1.stopPropagation();
            }
            while(_loc3_);
            
         }
      }
      
      public function §[!?§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§9!$§[LISTENER_EVENT_MOUSE_UP]);
            do
            {
               param1.stopPropagation();
            }
            while(_loc2_);
            
         }
      }
      
      public function §6M§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.listenerEventOccured(§%x§,this.§9!$§[§%x§]);
         }
      }
      
      public function §"Q§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerEventOccured(§2"3§,this.§9!$§[§2"3§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.removeEventListeners();
         }
         while(true)
         {
            this.§33§ = null;
            while(!(_loc2_ && this))
            {
               this.§9!$§ = null;
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§33§;
      }
   }
}
