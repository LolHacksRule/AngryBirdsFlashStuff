package §@!&§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §'!o§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §4§:int = 2;
      
      public static const § M§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §'!o§))
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            while(true)
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               while(!_loc2_)
               {
                  §4§ = 2;
                  do
                  {
                     § M§ = 3;
                  }
                  while(_loc2_ && _loc2_);
                  
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                     addr66:
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      private var §-1§:Sprite;
      
      public var §`![§:int = 0;
      
      public var §%0§:Array;
      
      public function §'!o§(param1:Sprite)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super();
            loop0:
            while(param1)
            {
               if(!(_loc2_ && this))
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  this.§-1§ = param1;
                  while(true)
                  {
                     break loop0;
                  }
                  addr72:
               }
               §§goto(addr72);
            }
            while(true)
            {
               this.§%0§ = new Array();
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr72);
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.removeEventListeners();
         }
         while(true)
         {
            this.§-1§ = param1;
            while(_loc3_ || this)
            {
               this.addEventListeners();
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(Boolean(this.§-1§));
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr119:
                     loop2:
                     while(true)
                     {
                        §§push(this.§-1§ is MovieClip);
                        if(_loc4_ && _loc3_)
                        {
                           break;
                        }
                        addr64:
                        if(!(_loc4_ && this))
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr105:
                                 if(_loc3_ || this)
                                 {
                                    §§push(param2);
                                    break loop2;
                                 }
                                 break;
                              }
                              break;
                              §§goto(addr64);
                           }
                           addr19:
                           return;
                           addr71:
                        }
                        continue loop3;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              (this.§-1§ as MovieClip).gotoAndPlay(param1);
                              break;
                           }
                           break;
                        }
                        (this.§-1§ as MovieClip).gotoAndStop(param1);
                        if(!(_loc3_ || this))
                        {
                           break;
                        }
                        if(_loc4_)
                        {
                           continue;
                        }
                        §§goto(addr19);
                     }
                     §§goto(addr105);
                  }
                  addr118:
               }
               §§goto(addr71);
            }
            §§goto(addr118);
         }
         §§goto(addr105);
      }
      
      public function §,9§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            §§push(this);
            §§push(this.§`![§);
            if(_loc4_)
            {
               §§push(1);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§`![§ = §§pop();
         }
         loop0:
         while(true)
         {
            this.§%0§[param1] = param2.toUpperCase();
            while(true)
            {
               if(_loc4_)
               {
                  if(param3)
                  {
                     if(_loc4_)
                     {
                        if(!_loc4_)
                        {
                           continue;
                        }
                        this.addEventListeners();
                     }
                     break;
                  }
                  break;
               }
               continue loop0;
            }
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
               §§push(this.§`![§);
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
                                       this.§-1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§@1§);
                                       addr244:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr237:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§`![§);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(1);
                                       addr187:
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
                                                addr190:
                                                while(_loc2_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                       loop21:
                                       while(true)
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(0);
                                             loop22:
                                             while(_loc2_)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   continue loop0;
                                                }
                                                addr24:
                                                loop25:
                                                while(true)
                                                {
                                                   §§push(this.§`![§);
                                                   if(!_loc2_)
                                                   {
                                                      continue loop21;
                                                   }
                                                   if(!(_loc1_ && this))
                                                   {
                                                      §§push(1);
                                                      if(_loc2_)
                                                      {
                                                         addr39:
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            addr46:
                                                            §§push(§ M§);
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               if(!(_loc1_ && this))
                                                               {
                                                                  §§push(§§pop() << §§pop());
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(_loc2_ || this)
                                                                     {
                                                                        if(!(_loc1_ && _loc2_))
                                                                        {
                                                                           if(§§pop() != §§pop())
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    addr227:
                                                                                    while(!_loc1_)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          break loop21;
                                                                                       }
                                                                                       §§goto(addr24);
                                                                                    }
                                                                                    loop26:
                                                                                    while(true)
                                                                                    {
                                                                                       addr121:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§`![§);
                                                                                          if(_loc1_ && _loc2_)
                                                                                          {
                                                                                             continue loop21;
                                                                                          }
                                                                                          §§goto(addr132);
                                                                                          continue loop26;
                                                                                       }
                                                                                    }
                                                                                    addr227:
                                                                                    addr178:
                                                                                 }
                                                                                 addr94:
                                                                                 if(_loc1_ && this)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    this.§-1§.addEventListener(MouseEvent.ROLL_OUT,this.§ n§);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(_loc2_)
                                                                                    {
                                                                                       this.§-1§.addEventListener(MouseEvent.MOUSE_UP,this.§3F§);
                                                                                       §§goto(addr227);
                                                                                    }
                                                                                    §§goto(addr244);
                                                                                    addr218:
                                                                                 }
                                                                              }
                                                                           }
                                                                           return;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     continue loop22;
                                                                     continue loop22;
                                                                  }
                                                                  addr64:
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§push(§§pop() & §§pop());
                                                                     continue loop21;
                                                                  }
                                                                  addr132:
                                                                  while(_loc2_)
                                                                  {
                                                                     if(_loc2_ || _loc1_)
                                                                     {
                                                                        §§push(§4§);
                                                                        while(!(_loc1_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() << §§pop());
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§push(§§pop() & §§pop());
                                                                                 break loop25;
                                                                              }
                                                                              break;
                                                                              §§goto(addr39);
                                                                           }
                                                                           §§goto(addr187);
                                                                           §§goto(addr46);
                                                                        }
                                                                        continue loop3;
                                                                        addr142:
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  §§goto(addr189);
                                                               }
                                                               §§goto(addr188);
                                                            }
                                                            §§goto(addr142);
                                                         }
                                                         §§goto(addr150);
                                                      }
                                                      §§goto(addr64);
                                                   }
                                                   §§goto(addr190);
                                                }
                                                continue loop21;
                                             }
                                             while(_loc2_ || _loc1_)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   §§goto(addr218);
                                                }
                                                §§goto(addr121);
                                             }
                                             continue loop2;
                                             addr200:
                                          }
                                          continue loop10;
                                       }
                                       §§goto(addr237);
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
         §§goto(addr227);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§-1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§@1§);
            do
            {
               this.§-1§.removeEventListener(MouseEvent.MOUSE_UP,this.§3F§);
               do
               {
                  this.§-1§.removeEventListener(MouseEvent.ROLL_OVER,this.§4!g§);
                  do
                  {
                     this.§-1§.removeEventListener(MouseEvent.ROLL_OUT,this.§ n§);
                  }
                  while(_loc2_);
                  
               }
               while(!(_loc1_ || this));
               
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §@1§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§%0§[LISTENER_EVENT_MOUSE_DOWN]);
            do
            {
               param1.stopPropagation();
            }
            while(_loc3_);
            
         }
      }
      
      public function §3F§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§%0§[LISTENER_EVENT_MOUSE_UP]);
            do
            {
               param1.stopPropagation();
            }
            while(!_loc3_);
            
         }
      }
      
      public function §4!g§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.listenerEventOccured(§4§,this.§%0§[§4§]);
         }
      }
      
      public function § n§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.listenerEventOccured(§ M§,this.§%0§[§ M§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.removeEventListeners();
         }
         while(true)
         {
            this.§-1§ = null;
            while(_loc2_)
            {
               this.§%0§ = null;
               if(_loc2_ || this)
               {
                  return;
               }
            }
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§-1§;
      }
   }
}
