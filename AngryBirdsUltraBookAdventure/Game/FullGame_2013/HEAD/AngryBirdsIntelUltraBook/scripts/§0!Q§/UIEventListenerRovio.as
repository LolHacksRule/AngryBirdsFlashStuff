package §0!Q§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class UIEventListenerRovio
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §9O§:int = 2;
      
      public static const §!!Q§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            while(true)
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               while(!_loc1_)
               {
                  §9O§ = 2;
                  do
                  {
                     §!!Q§ = 3;
                  }
                  while(!(_loc2_ || _loc2_));
                  
                  if(_loc2_)
                  {
                     return;
                     addr57:
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      private var §6J§:Sprite;
      
      public var §'>§:int = 0;
      
      public var §]r§:Array;
      
      public function UIEventListenerRovio(param1:Sprite)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         while(true)
         {
            if(param1)
            {
               if(!_loc2_)
               {
                  this.§6J§ = param1;
               }
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§]r§ = new Array();
                     if(!(_loc2_ && _loc3_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
               continue;
            }
            §§goto(addr34);
         }
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
               this.§6J§ = param1;
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            this.addEventListeners();
            if(_loc2_ || param1)
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(Boolean(this.§6J§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(!(_loc3_ && _loc3_))
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§6J§ is MovieClip);
                        if(_loc4_ || this)
                        {
                           continue loop0;
                        }
                        addr113:
                        addr113:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 while(true)
                                 {
                                    (this.§6J§ as MovieClip).gotoAndPlay(param1);
                                 }
                                 addr116:
                              }
                           }
                           else
                           {
                              (this.§6J§ as MovieClip).gotoAndStop(param1);
                              if(!(_loc3_ && param1))
                              {
                                 §§goto(addr25);
                              }
                           }
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                     }
                     addr86:
                     if(!(_loc4_ || param1))
                     {
                        continue;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc4_ || _loc3_)
                           {
                              §§goto(addr113);
                              §§push(param2);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr25);
                     }
                     addr93:
                  }
               }
               else
               {
                  §§goto(addr93);
               }
               addr25:
               return;
            }
         }
         §§goto(addr86);
      }
      
      public function §[!5§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §§push(this);
            §§push(this.§'>§);
            if(!_loc5_)
            {
               §§push(1);
               if(_loc4_ || this)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§'>§ = §§pop();
            loop0:
            while(true)
            {
               this.§]r§[param1] = param2.toUpperCase();
               loop1:
               while(param3)
               {
                  if(!_loc5_)
                  {
                     if(_loc5_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        this.addEventListeners();
                     }
                  }
                  while(true)
                  {
                     if(_loc4_)
                     {
                        break loop1;
                     }
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr45);
      }
      
      public function listenerEventOccured(param1:int, param2:String) : void
      {
      }
      
      public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.removeEventListeners();
            loop0:
            while(true)
            {
               §§push(this.§'>§);
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
                                       this.§6J§.addEventListener(MouseEvent.MOUSE_DOWN,this.§<p§);
                                       addr256:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr247:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§'>§);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(1);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(LISTENER_EVENT_MOUSE_UP);
                                          while(_loc2_ || this)
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
                                                            if(!_loc1_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§6J§.addEventListener(MouseEvent.MOUSE_UP,this.§'n§);
                                                                  addr236:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr247);
                                                            }
                                                         }
                                                         §§goto(addr256);
                                                         addr213:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§'>§);
                                                         loop18:
                                                         while(!(_loc1_ && this))
                                                         {
                                                            §§push(1);
                                                            while(_loc2_ || _loc1_)
                                                            {
                                                               §§push(§9O§);
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() << §§pop());
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() & §§pop());
                                                                     loop22:
                                                                     while(_loc2_)
                                                                     {
                                                                        §§push(0);
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 if(§§pop() != §§pop())
                                                                                 {
                                                                                    if(_loc2_ || this)
                                                                                    {
                                                                                       this.§6J§.addEventListener(MouseEvent.ROLL_OVER,this.§7g§);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          break loop23;
                                                                                       }
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          §§goto(addr256);
                                                                                       }
                                                                                    }
                                                                                    addr191:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§'>§);
                                                                                    if(!(_loc1_ && _loc2_))
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       §§push(1);
                                                                                       if(_loc2_ || _loc2_)
                                                                                       {
                                                                                          if(_loc2_ || this)
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr87:
                                                                                       if(_loc1_ && this)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       §§push(0);
                                                                                    }
                                                                                    addr99:
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       if(!(_loc1_ && _loc1_))
                                                                                       {
                                                                                          if(§§pop() != §§pop())
                                                                                          {
                                                                                             if(_loc2_ || this)
                                                                                             {
                                                                                                if(_loc2_ || this)
                                                                                                {
                                                                                                   this.§6J§.addEventListener(MouseEvent.ROLL_OUT,this.§#!D§);
                                                                                                   addr142:
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr191);
                                                                                                }
                                                                                                §§goto(addr236);
                                                                                             }
                                                                                             §§goto(addr142);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop21;
                                                                                    }
                                                                                    continue loop23;
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        §§goto(addr213);
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               if(!(_loc2_ || _loc1_))
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc1_ && _loc2_)
                                                               {
                                                                  continue loop15;
                                                               }
                                                               if(_loc1_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               §§goto(addr87);
                                                               §§push(§§pop() & §§pop());
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          continue loop3;
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
         §§goto(addr217);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§6J§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§<p§);
            while(true)
            {
               this.§6J§.removeEventListener(MouseEvent.MOUSE_UP,this.§'n§);
               while(!_loc2_)
               {
                  while(_loc1_ || _loc1_)
                  {
                     this.§6J§.removeEventListener(MouseEvent.ROLL_OUT,this.§#!D§);
                     if(!_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§6J§.removeEventListener(MouseEvent.ROLL_OVER,this.§7g§);
            §§goto(addr61);
         }
      }
      
      public function §<p§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§]r§[LISTENER_EVENT_MOUSE_DOWN]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(_loc3_);
         
      }
      
      public function §'n§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§]r§[LISTENER_EVENT_MOUSE_UP]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      public function §7g§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerEventOccured(§9O§,this.§]r§[§9O§]);
         }
      }
      
      public function §#!D§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.listenerEventOccured(§!!Q§,this.§]r§[§!!Q§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.removeEventListeners();
            do
            {
               this.§6J§ = null;
               do
               {
                  this.§]r§ = null;
               }
               while(_loc2_ && this);
               
            }
            while(!_loc1_);
            
         }
      }
   }
}
