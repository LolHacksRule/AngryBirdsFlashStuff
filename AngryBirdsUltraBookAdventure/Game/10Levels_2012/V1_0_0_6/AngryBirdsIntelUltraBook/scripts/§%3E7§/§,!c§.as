package §>7§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §,!c§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §"!n§:int = 2;
      
      public static const §^v§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
         }
         while(true)
         {
            LISTENER_EVENT_MOUSE_UP = 1;
            while(_loc1_ || §,!c§)
            {
               §"!n§ = 2;
               while(!(_loc2_ && _loc2_))
               {
                  §^v§ = 3;
                  if(_loc1_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private var §5a§:Sprite;
      
      public var §4q§:int = 0;
      
      public var §9t§:Array;
      
      public function §,!c§(param1:Sprite)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
         }
         loop0:
         do
         {
            if(param1)
            {
               while(true)
               {
                  this.§5a§ = param1;
                  addr77:
                  while(true)
                  {
                  }
                  addr61:
                  if(_loc3_ || _loc2_)
                  {
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               this.§9t§ = new Array();
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               §§goto(addr61);
            }
         }
         while(_loc2_);
         
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.removeEventListeners();
            while(true)
            {
               this.§5a§ = param1;
               §§goto(addr55);
            }
         }
         addr55:
         while(true)
         {
            this.addEventListeners();
            if(_loc2_ || _loc2_)
            {
               if(!(_loc3_ && _loc3_))
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
         if(!(_loc4_ && param1))
         {
            §§push(Boolean(this.§5a§));
            if(_loc3_)
            {
               if(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(this.§5a§ is MovieClip);
                        if(_loc3_ || _loc3_)
                        {
                           loop0:
                           while(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(param2);
                                 addr84:
                                 while(true)
                                 {
                                    if(_loc3_ || param2)
                                    {
                                       if(!§§pop())
                                       {
                                          (this.§5a§ as MovieClip).gotoAndStop(param1);
                                          if(!_loc4_)
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(_loc3_)
                                                {
                                                   break loop0;
                                                }
                                                continue loop1;
                                             }
                                          }
                                          addr100:
                                          break loop0;
                                          addr100:
                                       }
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    continue loop3;
                                 }
                                 (this.§5a§ as MovieClip).gotoAndPlay(param1);
                                 §§goto(addr100);
                              }
                           }
                           return;
                           addr81:
                        }
                        §§goto(addr84);
                     }
                  }
                  addr108:
               }
               §§goto(addr81);
            }
            §§goto(addr108);
         }
         §§goto(addr100);
      }
      
      public function §-?§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this);
            §§push(this.§4q§);
            if(!_loc5_)
            {
               §§push(1);
               if(_loc4_)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§4q§ = §§pop();
            loop0:
            while(true)
            {
               this.§9t§[param1] = param2.toUpperCase();
               while(param3)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  addr59:
                  if(!(_loc4_ || param3))
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     continue loop0;
                  }
                  this.addEventListeners();
                  §§goto(addr59);
               }
               return;
            }
         }
         §§goto(addr57);
      }
      
      public function listenerEventOccured(param1:int, param2:String) : void
      {
      }
      
      public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.removeEventListeners();
            loop0:
            while(true)
            {
               §§push(this.§4q§);
               loop1:
               while(true)
               {
                  §§push(1);
                  if(!_loc1_)
                  {
                     §§push(LISTENER_EVENT_MOUSE_DOWN);
                     while(true)
                     {
                        §§push(§§pop() << §§pop());
                        loop11:
                        while(!(_loc1_ && _loc2_))
                        {
                           §§push(§§pop() << §§pop());
                           if(!_loc1_)
                           {
                              §§push(§§pop() & §§pop());
                              while(true)
                              {
                                 §§push(0);
                                 loop22:
                                 while(!(_loc1_ && _loc1_))
                                 {
                                    if(_loc2_)
                                    {
                                       §§push(0);
                                       loop19:
                                       while(true)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             if(!_loc1_)
                                             {
                                                this.§5a§.addEventListener(MouseEvent.ROLL_OVER,this.§6!m§);
                                             }
                                             loop20:
                                             while(!_loc1_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§4q§);
                                                   if(_loc2_ || this)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         §§push(1);
                                                         if(!_loc1_)
                                                         {
                                                            addr39:
                                                            §§push(§^v§);
                                                            if(_loc2_ || this)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§push(§§pop() << §§pop());
                                                               if(!_loc1_)
                                                               {
                                                                  addr52:
                                                                  if(_loc1_)
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                                  addr55:
                                                                  §§push(§§pop() & §§pop());
                                                                  if(!(_loc2_ || _loc1_))
                                                                  {
                                                                     continue loop22;
                                                                  }
                                                                  §§push(0);
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           if(_loc2_)
                                                                           {
                                                                              this.§5a§.addEventListener(MouseEvent.ROLL_OUT,this.§ C§);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc1_ && _loc1_))
                                                                                 {
                                                                                    this.§5a§.addEventListener(MouseEvent.MOUSE_UP,this.§]!%§);
                                                                                    break loop20;
                                                                                 }
                                                                                 addr200:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§5a§.addEventListener(MouseEvent.MOUSE_DOWN,this.§&#§);
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                              addr162:
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     break;
                                                                  }
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        §§push(LISTENER_EVENT_MOUSE_UP);
                                                                        continue loop11;
                                                                     }
                                                                     addr197:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() & §§pop());
                                                                        addr198:
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           addr199:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() != §§pop())
                                                                              {
                                                                                 §§goto(addr200);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§4q§);
                                                                                    addr136:
                                                                                    while(_loc2_)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 addr133:
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               while(!(_loc1_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() & §§pop());
                                                                  continue loop22;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc2_ || _loc1_)
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        §§goto(addr162);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§4q§);
                                                                        if(!_loc2_)
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                        §§push(1);
                                                                        if(_loc1_)
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                        §§push(§"!n§);
                                                                     }
                                                                     addr82:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr199);
                                                                  }
                                                               }
                                                               §§goto(addr200);
                                                               addr92:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr92);
                                                               §§goto(addr39);
                                                            }
                                                         }
                                                         §§goto(addr52);
                                                      }
                                                      §§goto(addr136);
                                                   }
                                                   §§goto(addr55);
                                                }
                                                return;
                                             }
                                             while(!_loc1_)
                                             {
                                                while(true)
                                                {
                                                   §§goto(addr82);
                                                }
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr24);
                                       }
                                    }
                                    §§goto(addr198);
                                 }
                              }
                           }
                           §§goto(addr154);
                        }
                     }
                  }
                  §§goto(addr197);
               }
            }
         }
         §§goto(addr188);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§5a§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§&#§);
            while(true)
            {
               this.§5a§.removeEventListener(MouseEvent.MOUSE_UP,this.§]!%§);
               loop1:
               while(!_loc2_)
               {
                  this.§5a§.removeEventListener(MouseEvent.ROLL_OVER,this.§6!m§);
                  while(true)
                  {
                     this.§5a§.removeEventListener(MouseEvent.ROLL_OUT,this.§ C§);
                     if(!_loc2_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §&#§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§9t§[LISTENER_EVENT_MOUSE_DOWN]);
            do
            {
               param1.stopPropagation();
            }
            while(_loc2_);
            
         }
      }
      
      public function §]!%§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§9t§[LISTENER_EVENT_MOUSE_UP]);
            do
            {
               param1.stopPropagation();
            }
            while(_loc2_);
            
         }
      }
      
      public function §6!m§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.listenerEventOccured(§"!n§,this.§9t§[§"!n§]);
         }
      }
      
      public function § C§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.listenerEventOccured(§^v§,this.§9t§[§^v§]);
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
         do
         {
            this.§5a§ = null;
            do
            {
               this.§9t§ = null;
            }
            while(!_loc1_);
            
         }
         while(!_loc1_);
         
      }
   }
}
