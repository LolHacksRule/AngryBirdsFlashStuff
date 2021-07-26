package §1!t§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §""B§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §?"H§:int = 2;
      
      public static const §6!E§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §""B§)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            while(true)
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               §§goto(addr83);
            }
         }
         addr83:
         while(true)
         {
            §?"H§ = 2;
            do
            {
               §6!E§ = 3;
            }
            while(!(_loc1_ || _loc2_));
            
            if(_loc1_ || _loc1_)
            {
               if(_loc1_ || §""B§)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §&!`§:Sprite;
      
      public var §-!W§:int = 0;
      
      public var §=!U§:Array;
      
      public function §""B§(param1:Sprite)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super();
            loop0:
            while(true)
            {
               if(!param1)
               {
                  while(true)
                  {
                     this.§=!U§ = new Array();
                     if(_loc3_ || this)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return;
                  addr39:
               }
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
            }
         }
         while(true)
         {
            this.§&!`§ = param1;
            §§goto(addr75);
         }
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.removeEventListeners();
            while(true)
            {
               this.§&!`§ = param1;
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            this.addEventListeners();
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(Boolean(this.§&!`§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr109:
                     loop4:
                     while(true)
                     {
                        §§push(this.§&!`§ is MovieClip);
                        if(_loc3_ || param1)
                        {
                           loop2:
                           while(§§pop())
                           {
                              if(_loc3_)
                              {
                                 §§push(param2);
                                 while(true)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(§§pop())
                                          {
                                             break;
                                             addr102:
                                          }
                                          (this.§&!`§ as MovieClip).gotoAndStop(param1);
                                          if(!(_loc3_ || this))
                                          {
                                             break loop2;
                                          }
                                          if(!(_loc3_ || this))
                                          {
                                             break;
                                          }
                                          if(!_loc4_)
                                          {
                                             break loop2;
                                          }
                                          continue loop4;
                                       }
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                                 (this.§&!`§ as MovieClip).gotoAndPlay(param1);
                                 addr86:
                              }
                              §§goto(addr102);
                           }
                           return;
                           addr81:
                        }
                        §§goto(addr86);
                     }
                  }
               }
               §§goto(addr81);
            }
         }
         §§goto(addr109);
      }
      
      public function §[o§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.§-!W§);
            if(_loc5_)
            {
               §§push(1);
               if(_loc5_)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§-!W§ = §§pop();
            while(true)
            {
               this.§=!U§[param1] = param2.toUpperCase();
               addr63:
               if(!(_loc5_ || param2))
               {
                  continue;
               }
               §§goto(addr20);
            }
         }
         while(param3)
         {
            if(_loc5_ || this)
            {
               this.addEventListeners();
            }
            if(!(_loc5_ || param1))
            {
               continue;
            }
            §§goto(addr63);
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
         if(!_loc1_)
         {
            this.removeEventListeners();
            loop0:
            while(true)
            {
               §§push(this.§-!W§);
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
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       this.§&!`§.addEventListener(MouseEvent.MOUSE_DOWN,this.§8!R§);
                                    }
                                    while(true)
                                    {
                                    }
                                    addr264:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§-!W§);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(1);
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             break;
                                          }
                                          §§push(LISTENER_EVENT_MOUSE_UP);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop() << §§pop());
                                             addr213:
                                             while(!(_loc1_ && this))
                                             {
                                                §§push(§§pop() & §§pop());
                                                while(true)
                                                {
                                                   §§push(0);
                                                }
                                             }
                                             continue loop2;
                                             loop19:
                                             while(true)
                                             {
                                                if(!(_loc2_ || this))
                                                {
                                                   continue loop10;
                                                }
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() << §§pop());
                                                if(!(_loc1_ && this))
                                                {
                                                   §§push(§§pop() & §§pop());
                                                   while(_loc2_)
                                                   {
                                                      §§push(0);
                                                      addr34:
                                                      if(!(_loc2_ || _loc1_))
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(1);
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            §§push(§6!E§);
                                                            if(_loc1_)
                                                            {
                                                               continue loop19;
                                                            }
                                                            §§push(§§pop() << §§pop());
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               addr71:
                                                               if(!_loc1_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     addr76:
                                                                     §§push(§§pop() & §§pop());
                                                                     if(!_loc1_)
                                                                     {
                                                                        addr79:
                                                                        §§push(0);
                                                                        if(_loc2_)
                                                                        {
                                                                           if(§§pop() != §§pop())
                                                                           {
                                                                              if(!(_loc1_ && this))
                                                                              {
                                                                                 if(!(_loc1_ && _loc2_))
                                                                                 {
                                                                                    if(_loc1_ && _loc1_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§&!`§.addEventListener(MouseEvent.ROLL_OVER,this.§^"0§);
                                                                                          addr183:
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc1_ && _loc2_))
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§-!W§);
                                                                                                      if(_loc2_ || this)
                                                                                                      {
                                                                                                         §§goto(addr34);
                                                                                                      }
                                                                                                      §§goto(addr76);
                                                                                                   }
                                                                                                   addr20:
                                                                                                   return;
                                                                                                   addr24:
                                                                                                }
                                                                                                §§goto(addr264);
                                                                                             }
                                                                                             addr223:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§&!`§.addEventListener(MouseEvent.MOUSE_UP,this.§!4§);
                                                                                                break loop23;
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             addr135:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§-!W§);
                                                                                                addr138:
                                                                                                while(!_loc1_)
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   while(!(_loc1_ && _loc1_))
                                                                                                   {
                                                                                                      §§push(§?"H§);
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                             addr103:
                                                                                             if(!(_loc1_ && _loc2_))
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr176:
                                                                                    }
                                                                                    §§goto(addr103);
                                                                                 }
                                                                                 §§goto(addr183);
                                                                              }
                                                                              addr134:
                                                                           }
                                                                           §§goto(addr20);
                                                                        }
                                                                        §§goto(addr141);
                                                                     }
                                                                     §§goto(addr138);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        §§goto(addr223);
                                                                     }
                                                                     §§goto(addr135);
                                                                  }
                                                                  addr222:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     §§goto(addr176);
                                                                  }
                                                                  §§goto(addr24);
                                                               }
                                                               addr175:
                                                            }
                                                            §§goto(addr79);
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                      §§goto(addr71);
                                                   }
                                                   §§goto(addr221);
                                                }
                                                §§goto(addr175);
                                             }
                                             continue loop3;
                                          }
                                       }
                                       §§goto(addr222);
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
         this.§&!`§.addEventListener(MouseEvent.ROLL_OUT,this.§7"3§);
         §§goto(addr134);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§&!`§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§8!R§);
            loop0:
            while(true)
            {
               this.§&!`§.removeEventListener(MouseEvent.MOUSE_UP,this.§!4§);
               while(true)
               {
                  this.§&!`§.removeEventListener(MouseEvent.ROLL_OVER,this.§^"0§);
                  while(!_loc1_)
                  {
                     if(_loc2_)
                     {
                        this.§&!`§.removeEventListener(MouseEvent.ROLL_OUT,this.§7"3§);
                        if(_loc2_)
                        {
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §8!R§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§=!U§[LISTENER_EVENT_MOUSE_DOWN]);
            do
            {
               param1.stopPropagation();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §!4§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§=!U§[LISTENER_EVENT_MOUSE_UP]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(!_loc2_);
         
      }
      
      public function §^"0§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.listenerEventOccured(§?"H§,this.§=!U§[§?"H§]);
         }
      }
      
      public function §7"3§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.listenerEventOccured(§6!E§,this.§=!U§[§6!E§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.removeEventListeners();
         }
         while(true)
         {
            this.§&!`§ = null;
            while(!_loc2_)
            {
               this.§=!U§ = null;
               if(_loc1_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§&!`§;
      }
   }
}
