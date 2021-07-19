package §;"Y§
{
   import §<w§.§6#'§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import flash.ui.Mouse;
   import flash.utils.Dictionary;
   
   public class §&#X§ implements IEventDispatcher
   {
      
      public static var §!"3§:Boolean = false;
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §;#V§:int = 2;
      
      public static const §<!^§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §&#X§))
         {
            §!"3§ = false;
            loop0:
            while(true)
            {
               LISTENER_EVENT_MOUSE_DOWN = 0;
               loop1:
               while(true)
               {
                  LISTENER_EVENT_MOUSE_UP = 1;
                  while(true)
                  {
                     §;#V§ = 2;
                     loop3:
                     while(_loc2_ || §&#X§)
                     {
                        if(!_loc1_)
                        {
                           while(true)
                           {
                              §<!^§ = 3;
                              if(_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      private var §?!B§:Sprite;
      
      public var §6#=§:int = 0;
      
      public var § !_§:Array;
      
      private var §[4§:EventDispatcher;
      
      private var §8R§:Dictionary;
      
      public function §&#X§(param1:Sprite)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               if(param1)
               {
                  if(_loc3_ || _loc3_)
                  {
                     this.§?!B§ = param1;
                  }
                  while(true)
                  {
                     addr54:
                     if(_loc3_ || _loc3_)
                     {
                        loop5:
                        while(true)
                        {
                           this.§8R§ = new Dictionary();
                           if(_loc3_ || _loc2_)
                           {
                              break;
                           }
                           addr52:
                           while(_loc3_)
                           {
                              §§goto(addr54);
                              continue loop5;
                           }
                           continue loop0;
                        }
                        return;
                        addr61:
                     }
                  }
                  addr98:
               }
               while(true)
               {
                  this.§ !_§ = new Array();
                  continue loop0;
                  §§goto(addr98);
               }
            }
         }
         §§goto(addr61);
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§#0§();
            while(true)
            {
               this.§?!B§ = param1;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§<P§();
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(Boolean(this.§?!B§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr110:
                     do
                     {
                        §§push(this.§?!B§ is MovieClip);
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                     }
                     while(_loc4_ || _loc3_);
                     
                  }
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     addr20:
                     return;
                  }
                  while(true)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr110);
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function § #A§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            §§push(this);
            §§push(this.§6#=§);
            if(!(_loc5_ && param1))
            {
               §§push(1);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§6#=§ = §§pop();
         }
         loop0:
         while(true)
         {
            this.§ !_§[param1] = param2.toUpperCase();
            while(param3)
            {
               if(_loc5_ && param1)
               {
                  break;
               }
               addr64:
               if(!(_loc5_ && param3))
               {
                  continue loop0;
               }
            }
            return;
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §6#'§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§6#'§ = new §6#'§(§6#'§.§+!>§,param1,param2,this,true,true);
         if(!(_loc5_ && param2))
         {
            this.dispatchEvent(_loc3_);
         }
         return _loc3_;
      }
      
      public function §<P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§#0§();
            loop0:
            while(true)
            {
               §§push(this.§6#=§);
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
                        if(_loc1_ || _loc2_)
                        {
                           §§push(§§pop() & §§pop());
                           while(true)
                           {
                              §§push(0);
                           }
                           addr394:
                        }
                        loop5:
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §§push(§!"3§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop9:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr411:
                                                while(true)
                                                {
                                                   §§push(!Mouse.supportsCursor);
                                                }
                                             }
                                             addr410:
                                          }
                                          while(true)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop14:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop16:
                                                         while(!(_loc2_ && _loc1_))
                                                         {
                                                            §§push(!Mouse.cursor);
                                                            while(true)
                                                            {
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     this.§?!B§.addEventListener(MouseEvent.MOUSE_DOWN,this.§^U§);
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        addr298:
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§6#=§);
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              §§push(1);
                                                                              loop24:
                                                                              while(_loc1_)
                                                                              {
                                                                                 §§push(LISTENER_EVENT_MOUSE_UP);
                                                                                 loop25:
                                                                                 for(; !(_loc2_ && _loc1_); if(_loc2_ && _loc2_)
                                                                                 {
                                                                                    continue;
                                                                                 },§§push(§§pop() << §§pop()),if(!_loc2_)
                                                                                 {
                                                                                    addr68:
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       continue loop24;
                                                                                    }
                                                                                    §§goto(addr71);
                                                                                    §§push(§§pop() & §§pop());
                                                                                 },§§goto(addr74))
                                                                                 {
                                                                                    §§push(§§pop() << §§pop());
                                                                                    loop26:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() & §§pop());
                                                                                       loop27:
                                                                                       while(_loc1_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          loop28:
                                                                                          while(_loc1_)
                                                                                          {
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                loop42:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§6#=§);
                                                                                                   loop43:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(1);
                                                                                                      if(!(_loc1_ || _loc2_))
                                                                                                      {
                                                                                                         loop47:
                                                                                                         for(; _loc1_; if(!(_loc1_ || _loc2_))
                                                                                                         {
                                                                                                            continue;
                                                                                                         },if(!_loc2_)
                                                                                                         {
                                                                                                            if(§§pop() != §§pop())
                                                                                                            {
                                                                                                               if(_loc1_ || _loc1_)
                                                                                                               {
                                                                                                                  §§goto(addr91);
                                                                                                               }
                                                                                                               §§goto(addr118);
                                                                                                            }
                                                                                                            addr19:
                                                                                                            return;
                                                                                                         })
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               continue loop26;
                                                                                                            }
                                                                                                            if(§§pop() != §§pop())
                                                                                                            {
                                                                                                               loop48:
                                                                                                               while(_loc1_)
                                                                                                               {
                                                                                                                  if(_loc1_)
                                                                                                                  {
                                                                                                                     if(_loc1_ || _loc1_)
                                                                                                                     {
                                                                                                                        this.§?!B§.addEventListener(MouseEvent.ROLL_OVER,this.§<#7§);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr23:
                                                                                                                           addr139:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§6#=§);
                                                                                                                              if(_loc1_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(!_loc1_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue loop23;
                                                                                                                              }
                                                                                                                              addr71:
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 continue loop47;
                                                                                                                              }
                                                                                                                              continue loop43;
                                                                                                                           }
                                                                                                                           while(_loc1_ || _loc1_)
                                                                                                                           {
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                           addr91:
                                                                                                                           continue loop27;
                                                                                                                           if(!(_loc1_ || _loc2_))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(_loc1_)
                                                                                                                           {
                                                                                                                              if(!(_loc2_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc1_)
                                                                                                                                 {
                                                                                                                                    if(_loc1_)
                                                                                                                                    {
                                                                                                                                       this.§?!B§.addEventListener(MouseEvent.ROLL_OUT,this.§^!=§);
                                                                                                                                       addr118:
                                                                                                                                       if(_loc1_)
                                                                                                                                       {
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr19);
                                                                                                                                             }
                                                                                                                                             continue loop6;
                                                                                                                                          }
                                                                                                                                          addr320:
                                                                                                                                          while(!_loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(§!"3§);
                                                                                                                                             while(_loc1_)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                continue loop18;
                                                                                                                                                loop35:
                                                                                                                                                while(!(_loc2_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(_loc1_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      break loop48;
                                                                                                                                                   }
                                                                                                                                                   §§push(!Mouse.cursor);
                                                                                                                                                   continue loop15;
                                                                                                                                                   if(!(_loc1_ || this))
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   if(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      loop33:
                                                                                                                                                      while(_loc1_)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(!Mouse.supportsCursor);
                                                                                                                                                            if(!(_loc2_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               addr240:
                                                                                                                                                               if(_loc1_ || this)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     loop40:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        if(_loc1_ || _loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc1_ || _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc2_ && this)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop9;
                                                                                                                                                                           }
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              continue loop35;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop33;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop40;
                                                                                                                                                                           }
                                                                                                                                                                           addr334:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop14;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop8;
                                                                                                                                                               }
                                                                                                                                                               continue loop18;
                                                                                                                                                            }
                                                                                                                                                            continue loop35;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr410);
                                                                                                                                                      }
                                                                                                                                                      continue loop7;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr221:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§?!B§.addEventListener(TouchEvent.TOUCH_END,this.§<"o§);
                                                                                                                                                         }
                                                                                                                                                         addr221:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         this.§?!B§.addEventListener(MouseEvent.CLICK,this.§<"o§);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc2_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop42;
                                                                                                                                                               }
                                                                                                                                                               addr205:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr188:
                                                                                                                                                      }
                                                                                                                                                      addr228:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop42;
                                                                                                                                                         §§goto(addr221);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop13;
                                                                                                                                          }
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                       continue loop48;
                                                                                                                                    }
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                              §§goto(addr221);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr188);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§?!B§.addEventListener(TouchEvent.TOUCH_BEGIN,this.§^U§);
                                                                                                                        }
                                                                                                                        addr356:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc2_ && _loc1_))
                                                                                                                  {
                                                                                                                     §§goto(addr297);
                                                                                                                  }
                                                                                                                  §§goto(addr338);
                                                                                                               }
                                                                                                               §§goto(addr275);
                                                                                                            }
                                                                                                            §§goto(addr23);
                                                                                                         }
                                                                                                         continue loop28;
                                                                                                         addr154:
                                                                                                      }
                                                                                                      §§push(§;#V§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() << §§pop());
                                                                                                         addr50:
                                                                                                         §§push(§<!^§);
                                                                                                         if(!(_loc2_ && _loc2_))
                                                                                                         {
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr139);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr320);
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§goto(addr394);
                                                                                    }
                                                                                 }
                                                                                 continue loop3;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr356);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr411);
                                                      }
                                                   }
                                                   §§goto(addr354);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr298);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr205);
      }
      
      public function §#0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§?!B§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§^U§);
            loop0:
            while(true)
            {
               this.§?!B§.removeEventListener(TouchEvent.TOUCH_BEGIN,this.§^U§);
               while(true)
               {
                  this.§?!B§.removeEventListener(MouseEvent.CLICK,this.§<"o§);
                  addr84:
                  while(!(_loc2_ && _loc2_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §^U§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§ !_§[LISTENER_EVENT_MOUSE_DOWN]);
            do
            {
               param1.stopPropagation();
            }
            while(_loc3_);
            
         }
      }
      
      public function §<"o§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§ !_§[LISTENER_EVENT_MOUSE_UP]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(_loc3_);
         
      }
      
      public function §<#7§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.listenerUIEventOccured(§;#V§,this.§ !_§[§;#V§]);
         }
      }
      
      public function §^!=§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.listenerUIEventOccured(§<!^§,this.§ !_§[§<!^§]);
         }
      }
      
      public function clear() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:* = 0;
         if(_loc7_)
         {
            this.§#0§();
         }
         loop0:
         while(true)
         {
            addr36:
            addr51:
            while(true)
            {
               this.§?!B§ = null;
               continue loop0;
            }
            addr153:
            loop3:
            for(_loc1_ in this.§8R§)
            {
               _loc2_ = this.§8R§[_loc1_];
               if(!(_loc6_ && _loc3_))
               {
                  §§push(0);
                  while(true)
                  {
                     _loc3_ = §§pop();
                     loop6:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc6_ && this)
                        {
                           break;
                        }
                        if(§§pop() >= _loc2_.length)
                        {
                           if(_loc7_ || this)
                           {
                              if(!_loc7_)
                              {
                                 continue;
                              }
                              if(!(_loc6_ && _loc2_))
                              {
                                 delete this.§8R§[_loc1_];
                              }
                              else
                              {
                                 while(true)
                                 {
                                    continue loop6;
                                 }
                                 addr152:
                              }
                           }
                           if(_loc7_)
                           {
                              if(true)
                              {
                                 continue loop3;
                              }
                           }
                           else
                           {
                              addr149:
                           }
                           _loc3_++;
                           continue;
                        }
                        this.§[4§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
                        §§goto(addr149);
                     }
                  }
               }
               §§goto(addr152);
            }
            return;
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§?!B§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param1))
         {
            this.§[4§.addEventListener(param1,param2,false,param4,param5);
            if(_loc8_ || param3)
            {
               §§goto(addr49);
            }
            §§goto(addr61);
         }
         addr49:
         if(!this.§8R§[param1])
         {
            if(!(_loc7_ && param1))
            {
               addr61:
               this.§8R§[param1] = new Vector.<Function>();
            }
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§8R§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Vector.<Function> = null;
         var _loc5_:* = 0;
         if(_loc7_ || param1)
         {
            this.§[4§.removeEventListener(param1,param2,false);
            if(_loc7_)
            {
               §§goto(addr37);
            }
            §§goto(addr52);
         }
         addr37:
         if(this.§8R§[param1])
         {
            addr52:
            §§push(int((_loc4_ = this.§8R§[param1]).indexOf(param2)));
            if(!_loc6_)
            {
               §§push(§§pop());
               if(!(_loc6_ && param1))
               {
                  _loc5_ = §§pop();
                  addr73:
                  §§push(0);
               }
               if(§§pop() >= §§pop())
               {
                  if(_loc7_ || param1)
                  {
                     _loc4_.splice(_loc5_,1);
                  }
               }
               §§goto(addr96);
            }
            §§goto(addr73);
         }
         addr96:
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§[4§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§[4§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§[4§.willTrigger(param1);
      }
   }
}
