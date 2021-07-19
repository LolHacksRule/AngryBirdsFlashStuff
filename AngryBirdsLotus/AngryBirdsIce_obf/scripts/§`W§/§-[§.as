package §`W§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §-[§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §&!<§:int = 2;
      
      public static const §@K§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            while(true)
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               while(true)
               {
                  §&!<§ = 2;
                  §§goto(addr53);
               }
            }
         }
         addr53:
         while(true)
         {
            §@K§ = 3;
            if(!(_loc2_ && §-[§))
            {
               if(_loc1_)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      private var § ^§:Sprite;
      
      public var §`L§:int = 0;
      
      public var §>t§:Array;
      
      public function §-[§(param1:Sprite)
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
                  while(true)
                  {
                     this.§ ^§ = param1;
                     addr54:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
                  addr51:
               }
               while(true)
               {
                  this.§>t§ = new Array();
                  if(_loc3_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.removeEventListeners();
         }
         do
         {
            this.§ ^§ = param1;
            do
            {
               this.addEventListeners();
            }
            while(!(_loc2_ || this));
            
         }
         while(_loc3_ && this);
         
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §§push(Boolean(this.§ ^§));
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
                        §§push(this.§ ^§ is MovieClip);
                        if(_loc3_)
                        {
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    addr77:
                                    §§push(param2);
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             addr81:
                                             (this.§ ^§ as MovieClip).gotoAndPlay(param1);
                                             break;
                                          }
                                          break;
                                       }
                                       (this.§ ^§ as MovieClip).gotoAndStop(param1);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop5;
                                       }
                                       §§goto(addr77);
                                    }
                                 }
                              }
                              return;
                           }
                        }
                        §§goto(addr78);
                     }
                     continue loop0;
                  }
               }
               §§goto(addr73);
            }
         }
         §§goto(addr81);
      }
      
      public function §`!E§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            §§push(this);
            §§push(this.§`L§);
            if(_loc5_ || this)
            {
               §§push(1);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§`L§ = §§pop();
            loop0:
            while(true)
            {
               this.§>t§[param1] = param2.toUpperCase();
               while(param3)
               {
                  if(_loc4_ && param1)
                  {
                     break;
                  }
                  addr65:
                  if(!(_loc4_ && this))
                  {
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr65);
      }
      
      public function listenerEventOccured(param1:int, param2:String) : void
      {
      }
      
      public function addEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.removeEventListeners();
         §§push(this.§`L§);
         §§push(1);
         §§push(LISTENER_EVENT_MOUSE_DOWN);
         loop0:
         while(true)
         {
            §§push(§§pop() << §§pop());
            while(true)
            {
               if((§§pop() & §§pop()) != 0)
               {
                  while(true)
                  {
                     this.§ ^§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"r§);
                  }
                  addr160:
               }
               while(true)
               {
                  §§push(this.§`L§);
                  §§push(1);
                  §§push(LISTENER_EVENT_MOUSE_UP);
                  loop4:
                  while(true)
                  {
                     §§push(§§pop() << §§pop());
                     loop5:
                     while(true)
                     {
                        if((§§pop() & §§pop()) != 0)
                        {
                           this.§ ^§.addEventListener(MouseEvent.CLICK,this.§`?§);
                           while(true)
                           {
                              addr88:
                              if(_loc1_ || _loc1_)
                              {
                                 §§goto(addr17);
                              }
                           }
                           addr150:
                        }
                        while(true)
                        {
                           §§push(this.§`L§);
                           loop8:
                           do
                           {
                              §§push(1);
                              §§push(§&!<§);
                              loop9:
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() << §§pop());
                                    while(true)
                                    {
                                       if((§§pop() & §§pop()) != 0)
                                       {
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             this.§ ^§.addEventListener(MouseEvent.ROLL_OVER,this.§6!?§);
                                          }
                                       }
                                       §§push(this.§`L§);
                                       if(!(_loc1_ || _loc1_))
                                       {
                                          break;
                                       }
                                       §§push(1);
                                       §§push(§@K§);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          continue;
                                       }
                                       continue loop9;
                                    }
                                    continue loop8;
                                 }
                                 continue loop4;
                              }
                              continue loop0;
                           }
                           while(_loc2_ && _loc2_);
                           
                           §§push(0);
                           if(_loc1_)
                           {
                              if(§§pop() != §§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       this.§ ^§.addEventListener(MouseEvent.ROLL_OUT,this.§4Z§);
                                    }
                                    else
                                    {
                                       §§goto(addr160);
                                    }
                                 }
                                 §§goto(addr88);
                              }
                              break;
                           }
                           continue loop5;
                           §§goto(addr150);
                        }
                        addr17:
                        return;
                     }
                  }
               }
            }
         }
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§ ^§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"r§);
            while(true)
            {
               this.§ ^§.removeEventListener(MouseEvent.MOUSE_UP,this.§`?§);
               loop1:
               while(_loc2_)
               {
                  this.§ ^§.removeEventListener(MouseEvent.ROLL_OVER,this.§6!?§);
                  while(true)
                  {
                     this.§ ^§.removeEventListener(MouseEvent.ROLL_OUT,this.§4Z§);
                     if(_loc2_)
                     {
                        if(_loc2_)
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
         §§goto(addr65);
      }
      
      public function §"r§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§>t§[LISTENER_EVENT_MOUSE_DOWN]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function §`?§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§>t§[LISTENER_EVENT_MOUSE_UP]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function §6!?§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.listenerEventOccured(§&!<§,this.§>t§[§&!<§]);
         }
      }
      
      public function §4Z§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.listenerEventOccured(§@K§,this.§>t§[§@K§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.removeEventListeners();
         }
         do
         {
            this.§ ^§ = null;
            do
            {
               this.§>t§ = null;
            }
            while(!(_loc2_ || _loc1_));
            
         }
         while(_loc1_ && _loc1_);
         
      }
   }
}
