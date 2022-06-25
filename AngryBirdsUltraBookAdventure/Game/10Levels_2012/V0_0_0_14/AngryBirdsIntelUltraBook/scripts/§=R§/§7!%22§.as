package §=R§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §7!"§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §=!g§:int = 2;
      
      public static const §[$§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            loop0:
            while(true)
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               while(true)
               {
                  §=!g§ = 2;
                  loop2:
                  while(!(_loc1_ && §7!"§))
                  {
                     continue loop0;
                     while(true)
                     {
                        §[$§ = 3;
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
         §§goto(addr69);
      }
      
      private var §>!,§:Sprite;
      
      public var §?c§:int = 0;
      
      public var §[!J§:Array;
      
      public function §7!"§(param1:Sprite)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super();
            do
            {
               if(param1)
               {
                  if(_loc3_ || _loc2_)
                  {
                     this.§>!,§ = param1;
                     addr77:
                     while(true)
                     {
                     }
                     addr77:
                  }
                  §§goto(addr77);
               }
               while(true)
               {
                  this.§[!J§ = new Array();
                  if(_loc3_ || _loc2_)
                  {
                     break;
                  }
                  §§goto(addr77);
               }
            }
            while(_loc2_);
            
            return;
         }
         §§goto(addr77);
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.removeEventListeners();
            do
            {
               this.§>!,§ = param1;
               do
               {
                  this.addEventListeners();
               }
               while(_loc3_);
               
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(Boolean(this.§>!,§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr114:
                     loop4:
                     while(true)
                     {
                        §§push(this.§>!,§ is MovieClip);
                        if(_loc3_ || this)
                        {
                           while(§§pop())
                           {
                              if(!(_loc4_ && param1))
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop4;
                                 }
                                 §§push(param2);
                                 while(!(_loc3_ || this))
                                 {
                                    continue loop1;
                                 }
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 if(!§§pop())
                                 {
                                    (this.§>!,§ as MovieClip).gotoAndStop(param1);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          break;
                                       }
                                    }
                                    break;
                                    addr107:
                                 }
                                 (this.§>!,§ as MovieClip).gotoAndPlay(param1);
                              }
                              §§goto(addr107);
                           }
                           return;
                           addr69:
                        }
                        §§goto(addr91);
                     }
                  }
               }
               §§goto(addr69);
            }
         }
         §§goto(addr114);
      }
      
      public function §;!9§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this);
            §§push(this.§?c§);
            if(_loc4_ || this)
            {
               §§push(1);
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§?c§ = §§pop();
            loop0:
            while(true)
            {
               this.§[!J§[param1] = param2.toUpperCase();
               while(param3)
               {
                  if(!(_loc5_ && param3))
                  {
                     continue loop0;
                  }
                  addr52:
                  if(_loc4_)
                  {
                     addr54:
                     break;
                  }
               }
               return;
            }
         }
         §§goto(addr54);
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
               §§push(this.§?c§);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(1);
                  while(true)
                  {
                     §§push(LISTENER_EVENT_MOUSE_DOWN);
                     addr213:
                     while(true)
                     {
                        §§push(§§pop() << §§pop());
                        addr214:
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                        }
                     }
                     addr57:
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     addr65:
                     §§push(§§pop() & §§pop());
                     if(_loc2_)
                     {
                        if(!_loc1_)
                        {
                           addr70:
                           §§push(0);
                           if(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    if(!(_loc1_ && this))
                                    {
                                       if(_loc2_)
                                       {
                                          this.§>!,§.addEventListener(MouseEvent.ROLL_OUT,this.§4!Y§);
                                          addr91:
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr98:
                                             if(_loc2_ || _loc2_)
                                             {
                                                if(!_loc1_)
                                                {
                                                   if(_loc1_ && this)
                                                   {
                                                      loop7:
                                                      while(true)
                                                      {
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(this.§?c§);
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push(1);
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(LISTENER_EVENT_MOUSE_UP);
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() << §§pop());
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() & §§pop());
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() != §§pop())
                                                                              {
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    this.§>!,§.addEventListener(MouseEvent.MOUSE_UP,this.§&!X§);
                                                                                    addr200:
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr200:
                                                                                 }
                                                                                 §§goto(addr200);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§?c§);
                                                                                 addr128:
                                                                                 while(!_loc1_)
                                                                                 {
                                                                                    §§push(1);
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                §§push(§=!g§);
                                                                                                loop19:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc2_ || this))
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§pop() << §§pop());
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      §§push(§§pop() & §§pop());
                                                                                                      while(!(_loc1_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         while(!_loc1_)
                                                                                                         {
                                                                                                            if(§§pop() != §§pop())
                                                                                                            {
                                                                                                               while(_loc2_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§>!,§.addEventListener(MouseEvent.ROLL_OVER,this.§!!I§);
                                                                                                                     addr171:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr98);
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                               addr162:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§?c§);
                                                                                                               if(_loc2_ || _loc2_)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  §§push(1);
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  §§goto(addr57);
                                                                                                               }
                                                                                                               §§goto(addr65);
                                                                                                               §§goto(addr171);
                                                                                                            }
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         §§goto(addr214);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         break loop18;
                                                                                                      }
                                                                                                      addr151:
                                                                                                      addr215:
                                                                                                   }
                                                                                                   §§goto(addr159);
                                                                                                }
                                                                                                §§goto(addr213);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue loop10;
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          this.§>!,§.addEventListener(MouseEvent.MOUSE_DOWN,this.§,3§);
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop9;
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
                                                   §§goto(addr25);
                                                }
                                                §§goto(addr200);
                                             }
                                             §§goto(addr162);
                                          }
                                          §§goto(addr171);
                                       }
                                       §§goto(addr217);
                                    }
                                    §§goto(addr91);
                                 }
                                 addr25:
                                 return;
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr151);
                  }
               }
               §§goto(addr215);
            }
         }
         §§goto(addr164);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§>!,§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,3§);
            loop0:
            do
            {
               this.§>!,§.removeEventListener(MouseEvent.MOUSE_UP,this.§&!X§);
               while(true)
               {
                  this.§>!,§.removeEventListener(MouseEvent.ROLL_OVER,this.§!!I§);
                  while(_loc2_ || this)
                  {
                     this.§>!,§.removeEventListener(MouseEvent.ROLL_OUT,this.§4!Y§);
                     if(!(_loc1_ && _loc2_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc1_ && this);
            
         }
      }
      
      public function §,3§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§[!J§[LISTENER_EVENT_MOUSE_DOWN]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(!_loc2_);
         
      }
      
      public function §&!X§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§[!J§[LISTENER_EVENT_MOUSE_UP]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(_loc2_);
         
      }
      
      public function §!!I§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.listenerEventOccured(§=!g§,this.§[!J§[§=!g§]);
         }
      }
      
      public function §4!Y§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(§[$§,this.§[!J§[§[$§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.removeEventListeners();
            while(true)
            {
               this.§>!,§ = null;
               while(!(_loc1_ && _loc1_))
               {
                  this.§[!J§ = null;
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr60:
               }
            }
         }
         §§goto(addr60);
      }
   }
}
