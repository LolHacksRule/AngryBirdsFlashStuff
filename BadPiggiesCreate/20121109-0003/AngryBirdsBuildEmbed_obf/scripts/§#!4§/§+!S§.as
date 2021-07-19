package §#!4§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §+!S§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §`"§:int = 2;
      
      public static const §<H§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            if(!(_loc2_ && §+!S§))
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               if(_loc1_ || _loc1_)
               {
                  §`"§ = 2;
                  if(_loc2_ && _loc1_)
                  {
                  }
               }
               §§goto(addr71);
            }
            §<H§ = 3;
         }
         addr71:
      }
      
      private var §;C§:Sprite;
      
      public var §@!§:int = 0;
      
      public var §!!X§:Array;
      
      public function §+!S§(param1:Sprite)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
            if(_loc3_)
            {
               addr48:
               if(param1)
               {
                  if(!(_loc2_ && this))
                  {
                     this.§;C§ = param1;
                     if(_loc3_ || _loc3_)
                     {
                     }
                  }
                  §§goto(addr71);
               }
               this.§!!X§ = new Array();
            }
            addr71:
            return;
         }
         §§goto(addr48);
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.removeEventListeners();
            if(_loc3_)
            {
               this.§;C§ = param1;
               if(_loc2_)
               {
               }
               §§goto(addr30);
            }
            this.addEventListeners();
         }
         addr30:
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(Boolean(this.§;C§));
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || param2)
                  {
                     §§goto(addr47);
                  }
                  §§goto(addr80);
               }
               §§goto(addr71);
            }
            addr47:
            §§pop();
            if(_loc3_ || param2)
            {
               §§push(this.§;C§ is MovieClip);
               if(_loc3_)
               {
                  addr71:
                  if(§§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        §§goto(addr80);
                     }
                  }
               }
               addr80:
               if(param2)
               {
                  if(!_loc4_)
                  {
                     (this.§;C§ as MovieClip).gotoAndPlay(param1);
                     if(_loc4_)
                     {
                     }
                  }
               }
               else
               {
                  (this.§;C§ as MovieClip).gotoAndStop(param1);
               }
               §§goto(addr98);
            }
            addr98:
            return;
         }
         §§goto(addr80);
      }
      
      public function §<!k§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.§@!§);
            if(!(_loc4_ && param1))
            {
               §§push(1);
               if(_loc5_ || param3)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§@!§ = §§pop();
            if(_loc5_ || this)
            {
               this.§!!X§[param1] = param2.toUpperCase();
               if(!(_loc4_ && this))
               {
                  if(param3)
                  {
                     if(!(_loc4_ && param3))
                     {
                        addr90:
                        this.addEventListeners();
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr90);
      }
      
      public function listenerEventOccured(param1:int, param2:String) : void
      {
      }
      
      public function addEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.removeEventListeners();
            §§push(this.§@!§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(1);
               if(_loc1_)
               {
                  §§push(LISTENER_EVENT_MOUSE_DOWN);
                  if(_loc1_ || _loc1_)
                  {
                     §§push(§§pop() & §§pop() << §§pop());
                     if(!_loc2_)
                     {
                        if(§§pop() != 0)
                        {
                           if(_loc1_)
                           {
                              this.§;C§.addEventListener(MouseEvent.MOUSE_DOWN,this.§[!@§);
                              addr60:
                              §§push(this.§@!§);
                              §§push(1);
                              §§push(LISTENER_EVENT_MOUSE_UP);
                              if(_loc1_)
                              {
                                 §§push(§§pop() << §§pop());
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() & §§pop());
                                    §§push(0);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          this.§;C§.addEventListener(MouseEvent.CLICK,this.§<1§);
                                          addr96:
                                          §§push(this.§@!§);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             §§push(1);
                                             if(_loc1_)
                                             {
                                                §§push(§`"§);
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   addr116:
                                                   §§push(§§pop() & §§pop() << §§pop());
                                                   if(!_loc2_)
                                                   {
                                                      addr120:
                                                      if(§§pop() != 0)
                                                      {
                                                         this.§;C§.addEventListener(MouseEvent.ROLL_OVER,this.§ $§);
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            addr146:
                                                            §§push(this.§@!§);
                                                            if(_loc1_ || _loc2_)
                                                            {
                                                               addr159:
                                                               if((§§pop() & 1 << §<H§) != 0)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     addr163:
                                                                     this.§;C§.addEventListener(MouseEvent.ROLL_OUT,this.§%c§);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr159);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr146);
                                                   }
                                                }
                                             }
                                             §§goto(addr159);
                                          }
                                          §§goto(addr120);
                                       }
                                       §§goto(addr96);
                                    }
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr60);
                     }
                  }
               }
            }
            §§goto(addr159);
         }
         §§goto(addr96);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§;C§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§[!@§);
            if(_loc1_ || this)
            {
               this.§;C§.removeEventListener(MouseEvent.MOUSE_UP,this.§<1§);
               if(!_loc1_)
               {
               }
               §§goto(addr77);
            }
            this.§;C§.removeEventListener(MouseEvent.ROLL_OVER,this.§ $§);
            if(_loc1_)
            {
               this.§;C§.removeEventListener(MouseEvent.ROLL_OUT,this.§%c§);
            }
         }
         addr77:
      }
      
      public function §[!@§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§!!X§[LISTENER_EVENT_MOUSE_DOWN]);
            if(!(_loc3_ && _loc3_))
            {
               addr47:
               param1.stopPropagation();
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §<1§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§!!X§[LISTENER_EVENT_MOUSE_UP]);
            if(!_loc3_)
            {
               param1.stopPropagation();
            }
         }
      }
      
      public function § $§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.listenerEventOccured(§`"§,this.§!!X§[§`"§]);
         }
      }
      
      public function §%c§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.listenerEventOccured(§<H§,this.§!!X§[§<H§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.removeEventListeners();
            if(!_loc2_)
            {
               this.§;C§ = null;
               if(!_loc2_)
               {
                  addr27:
                  this.§!!X§ = null;
               }
            }
            return;
         }
         §§goto(addr27);
      }
   }
}
