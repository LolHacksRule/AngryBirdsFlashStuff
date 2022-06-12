package §2!i§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §'M§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §'!f§:int = 2;
      
      public static const §`!k§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            while(true)
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               while(!_loc1_)
               {
                  §'!f§ = 2;
                  do
                  {
                     §`!k§ = 3;
                  }
                  while(_loc1_);
                  
                  if(!_loc1_)
                  {
                     return;
                     addr42:
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      private var §#G§:Sprite;
      
      public var §0d§:int = 0;
      
      public var §=!E§:Array;
      
      public function §'M§(param1:Sprite)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            do
            {
               if(param1)
               {
                  while(true)
                  {
                     this.§#G§ = param1;
                     while(true)
                     {
                     }
                  }
                  addr54:
               }
               do
               {
                  this.§=!E§ = new Array();
                  if(!_loc3_)
                  {
                     continue;
                  }
               }
               while(!(_loc3_ || _loc3_));
               
            }
            while(_loc2_);
            
            return;
         }
         §§goto(addr54);
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
               this.§#G§ = param1;
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.addEventListeners();
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(Boolean(this.§#G§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§#G§ is MovieClip);
                        if(!(_loc4_ && param2))
                        {
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(param2);
                                    addr81:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             (this.§#G§ as MovieClip).gotoAndPlay(param1);
                                             break;
                                          }
                                          break;
                                       }
                                       (this.§#G§ as MovieClip).gotoAndStop(param1);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       if(_loc3_)
                                       {
                                          addr51:
                                       }
                                       continue loop5;
                                    }
                                    if(_loc3_ || param2)
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                              }
                              §§goto(addr24);
                           }
                        }
                        §§goto(addr81);
                     }
                     addr24:
                     return;
                  }
               }
               §§goto(addr78);
            }
         }
         §§goto(addr51);
      }
      
      public function §@!L§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            §§push(this);
            §§push(this.§0d§);
            if(_loc4_)
            {
               §§push(1);
               if(_loc4_)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§0d§ = §§pop();
         }
         loop0:
         while(true)
         {
            this.§=!E§[param1] = param2.toUpperCase();
            do
            {
               if(!(_loc5_ && param2))
               {
                  if(!param3)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            while(if(!_loc5_)
            {
               this.addEventListeners();
            }, _loc5_);
            
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
               §§push(this.§0d§);
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
                                       this.§#G§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<5§);
                                       addr239:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr232:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§0d§);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(1);
                                       loop11:
                                       while(_loc2_ || this)
                                       {
                                          §§push(LISTENER_EVENT_MOUSE_UP);
                                          loop12:
                                          for(; _loc2_ || _loc1_; while(_loc2_ || _loc2_)
                                          {
                                             §§goto(addr133);
                                             §§push(§§pop() << §§pop());
                                             §§goto(addr34);
                                          })
                                          {
                                             §§push(§§pop() << §§pop());
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop() & §§pop());
                                                continue loop1;
                                                loop23:
                                                while(true)
                                                {
                                                   if(!(_loc1_ && _loc2_))
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(§§pop() != §§pop())
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(!(_loc1_ && this))
                                                               {
                                                                  this.§#G§.addEventListener(MouseEvent.ROLL_OVER,this.§`8§);
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr24);
                                                                  }
                                                                  addr167:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr232);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                      addr24:
                                                   }
                                                   continue loop13;
                                                   while(true)
                                                   {
                                                      §§push(this.§0d§);
                                                      if(_loc2_)
                                                      {
                                                         §§push(1);
                                                         if(_loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               while(!_loc1_)
                                                               {
                                                                  §§push(§§pop() & §§pop());
                                                               }
                                                               continue loop2;
                                                               addr133:
                                                            }
                                                            §§push(§`!k§);
                                                            if(!(_loc2_ || this))
                                                            {
                                                               continue loop12;
                                                            }
                                                            §§push(§§pop() << §§pop());
                                                            if(!_loc1_)
                                                            {
                                                               addr45:
                                                               if(_loc1_)
                                                               {
                                                                  continue loop23;
                                                               }
                                                               addr47:
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  if(_loc1_ && this)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  addr62:
                                                                  §§push(§§pop() & §§pop());
                                                                  if(_loc2_)
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        addr67:
                                                                        if(§§pop() != 0)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr72:
                                                                              if(_loc2_ || _loc1_)
                                                                              {
                                                                                 if(_loc1_ && _loc1_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 this.§#G§.addEventListener(MouseEvent.ROLL_OUT,this.§ t§);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    addr94:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§0d§);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       addr136:
                                                                                       while(!_loc1_)
                                                                                       {
                                                                                          continue loop23;
                                                                                       }
                                                                                       continue loop1;
                                                                                    }
                                                                                    continue loop10;
                                                                                    §§goto(addr72);
                                                                                 }
                                                                                 addr222:
                                                                              }
                                                                           }
                                                                           addr93:
                                                                           break;
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  §§goto(addr136);
                                                               }
                                                               else
                                                               {
                                                                  addr117:
                                                                  while(!(_loc1_ && _loc1_))
                                                                  {
                                                                     §§push(§'!f§);
                                                                     continue loop12;
                                                                     §§goto(addr47);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr117);
                                                                  }
                                                                  addr117:
                                                                  addr197:
                                                               }
                                                               §§goto(addr94);
                                                            }
                                                            §§goto(addr67);
                                                            §§goto(addr136);
                                                         }
                                                         §§goto(addr45);
                                                      }
                                                      §§goto(addr62);
                                                   }
                                                   return;
                                                }
                                                §§goto(addr239);
                                             }
                                          }
                                          continue loop3;
                                       }
                                       continue loop6;
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
         §§goto(addr93);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§#G§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<5§);
            loop0:
            while(true)
            {
               this.§#G§.removeEventListener(MouseEvent.MOUSE_UP,this.§[b§);
               while(true)
               {
                  this.§#G§.removeEventListener(MouseEvent.ROLL_OVER,this.§`8§);
                  loop2:
                  while(_loc2_ || _loc1_)
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§#G§.removeEventListener(MouseEvent.ROLL_OUT,this.§ t§);
                        if(!(_loc1_ && _loc1_))
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
         §§goto(addr82);
      }
      
      public function §<5§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§=!E§[LISTENER_EVENT_MOUSE_DOWN]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(_loc2_ && _loc3_);
         
      }
      
      public function §[b§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§=!E§[LISTENER_EVENT_MOUSE_UP]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(!_loc2_);
         
      }
      
      public function §`8§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.listenerEventOccured(§'!f§,this.§=!E§[§'!f§]);
         }
      }
      
      public function § t§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.listenerEventOccured(§`!k§,this.§=!E§[§`!k§]);
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
               this.§#G§ = null;
               do
               {
                  this.§=!E§ = null;
               }
               while(!_loc1_);
               
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§#G§;
      }
   }
}
