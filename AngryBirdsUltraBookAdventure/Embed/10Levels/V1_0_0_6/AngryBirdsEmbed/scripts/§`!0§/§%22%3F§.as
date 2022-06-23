package §`!0§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §"?§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §;!4§:int = 2;
      
      public static const §#x§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            if(!(_loc2_ && §"?§))
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               if(_loc2_)
               {
               }
               §§goto(addr53);
            }
            §;!4§ = 2;
            if(_loc2_ && _loc1_)
            {
            }
            §§goto(addr53);
         }
         addr53:
      }
      
      private var §[!3§:Sprite;
      
      public var §3!G§:int = 0;
      
      public var §,>§:Array;
      
      public function §"?§(param1:Sprite)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super();
            if(_loc2_ || this)
            {
               if(param1)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr56);
                  }
               }
               §§goto(addr66);
            }
         }
         addr56:
         this.§[!3§ = param1;
         if(!(_loc3_ && _loc2_))
         {
            addr66:
            this.§,>§ = new Array();
         }
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.removeEventListeners();
            if(_loc3_ || _loc3_)
            {
               this.§[!3§ = param1;
               if(!_loc2_)
               {
                  this.addEventListeners();
               }
            }
         }
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(Boolean(this.§[!3§));
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_ || param2)
                  {
                     addr38:
                     §§pop();
                     if(_loc4_)
                     {
                        addr51:
                        §§push(this.§[!3§ is MovieClip);
                        if(!(_loc3_ && param2))
                        {
                           §§goto(addr62);
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr102);
                  }
               }
               addr62:
               if(§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr81:
                     if(param2)
                     {
                        if(!(_loc3_ && param2))
                        {
                           (this.§[!3§ as MovieClip).gotoAndPlay(param1);
                           if(_loc4_ || this)
                           {
                              addr102:
                           }
                        }
                     }
                     else
                     {
                        (this.§[!3§ as MovieClip).gotoAndStop(param1);
                     }
                  }
                  §§goto(addr102);
               }
               return;
            }
            §§goto(addr38);
         }
         §§goto(addr51);
      }
      
      public function §1?§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this);
            §§push(this.§3!G§);
            if(_loc4_)
            {
               §§push(1);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§3!G§ = §§pop();
            if(!(_loc5_ && param1))
            {
               this.§,>§[param1] = param2.toUpperCase();
               if(_loc4_ || param1)
               {
                  if(param3)
                  {
                     if(!(_loc5_ && param2))
                     {
                        addr84:
                        this.addEventListeners();
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr84);
      }
      
      public function listenerEventOccured(param1:int, param2:String) : void
      {
      }
      
      public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.removeEventListeners();
         if(!_loc1_)
         {
            §§push(this.§3!G§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(1);
               §§push(LISTENER_EVENT_MOUSE_DOWN);
               if(!_loc1_)
               {
                  §§push(§§pop() << §§pop());
                  if(!(_loc1_ && this))
                  {
                     if((§§pop() & §§pop()) != 0)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           this.§[!3§.addEventListener(MouseEvent.MOUSE_DOWN,this.§05§);
                           if(!_loc1_)
                           {
                              addr61:
                              §§push(this.§3!G§);
                              if(_loc2_ || this)
                              {
                                 §§push(1);
                                 §§push(LISTENER_EVENT_MOUSE_UP);
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    §§push(§§pop() << §§pop());
                                    if(_loc2_)
                                    {
                                       addr92:
                                       if((§§pop() & §§pop()) != 0)
                                       {
                                          if(!_loc1_)
                                          {
                                             this.§[!3§.addEventListener(MouseEvent.MOUSE_UP,this.§8h§);
                                             if(_loc2_)
                                             {
                                                §§goto(addr106);
                                             }
                                             §§goto(addr182);
                                          }
                                          §§goto(addr141);
                                       }
                                       §§goto(addr106);
                                    }
                                    §§goto(addr122);
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr110);
                           }
                           addr106:
                           §§push(this.§3!G§);
                           if(!_loc1_)
                           {
                              addr110:
                              §§push(1);
                              §§push(§;!4§);
                              if(!_loc1_)
                              {
                                 addr114:
                                 §§push(§§pop() << §§pop());
                                 if(!(_loc1_ && this))
                                 {
                                    addr122:
                                    §§push(§§pop() & §§pop());
                                    §§push(0);
                                    if(_loc2_)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          addr127:
                                          this.§[!3§.addEventListener(MouseEvent.ROLL_OVER,this.§0!B§);
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr141:
                                             §§push(this.§3!G§);
                                             if(!_loc1_)
                                             {
                                                §§goto(addr145);
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr182);
                                       }
                                       §§goto(addr141);
                                    }
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr164);
                           }
                           addr145:
                           §§push(1);
                           if(!(_loc1_ && _loc2_))
                           {
                              addr164:
                              §§push(§§pop() << §#x§);
                              if(!(_loc1_ && _loc1_))
                              {
                                 addr173:
                                 §§push(§§pop() & §§pop());
                                 §§push(0);
                              }
                           }
                           if(§§pop() != §§pop())
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 addr182:
                                 this.§[!3§.addEventListener(MouseEvent.ROLL_OUT,this.§%!H§);
                              }
                           }
                           return;
                        }
                        §§goto(addr182);
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr92);
               }
               §§goto(addr114);
            }
            §§goto(addr122);
         }
         §§goto(addr127);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§[!3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§05§);
            if(_loc1_ || _loc2_)
            {
               this.§[!3§.removeEventListener(MouseEvent.MOUSE_UP,this.§8h§);
               §§goto(addr47);
            }
            §§goto(addr80);
         }
         addr47:
         if(_loc1_)
         {
            this.§[!3§.removeEventListener(MouseEvent.ROLL_OVER,this.§0!B§);
            if(!(_loc2_ && _loc1_))
            {
               addr80:
               this.§[!3§.removeEventListener(MouseEvent.ROLL_OUT,this.§%!H§);
            }
         }
      }
      
      public function §05§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§,>§[LISTENER_EVENT_MOUSE_DOWN]);
            if(_loc3_)
            {
               addr28:
               param1.stopPropagation();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §8h§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§,>§[LISTENER_EVENT_MOUSE_UP]);
            if(!(_loc3_ && _loc2_))
            {
               param1.stopPropagation();
            }
         }
      }
      
      public function §0!B§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.listenerEventOccured(§;!4§,this.§,>§[§;!4§]);
         }
      }
      
      public function §%!H§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerEventOccured(§#x§,this.§,>§[§#x§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.removeEventListeners();
            if(_loc2_ || _loc2_)
            {
               this.§[!3§ = null;
               if(!_loc2_)
               {
               }
               §§goto(addr51);
            }
            this.§,>§ = null;
         }
         addr51:
      }
   }
}
