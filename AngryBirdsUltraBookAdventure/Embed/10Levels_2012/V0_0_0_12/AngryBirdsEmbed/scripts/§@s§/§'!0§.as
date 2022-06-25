package §@s§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §'!0§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §3]§:int = 2;
      
      public static const §#H§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            if(!(_loc2_ && §'!0§))
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               if(_loc2_)
               {
               }
               §§goto(addr53);
            }
            §3]§ = 2;
            if(_loc2_ && _loc1_)
            {
            }
            §§goto(addr53);
         }
         addr53:
      }
      
      private var §^!E§:Sprite;
      
      public var §>"§:int = 0;
      
      public var §,E§:Array;
      
      public function §'!0§(param1:Sprite)
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
         this.§^!E§ = param1;
         if(!(_loc3_ && _loc2_))
         {
            addr66:
            this.§,E§ = new Array();
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
               this.§^!E§ = param1;
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
            §§push(Boolean(this.§^!E§));
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
                        §§push(this.§^!E§ is MovieClip);
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
                           (this.§^!E§ as MovieClip).gotoAndPlay(param1);
                           if(_loc4_ || this)
                           {
                              addr102:
                           }
                        }
                     }
                     else
                     {
                        (this.§^!E§ as MovieClip).gotoAndStop(param1);
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
      
      public function § [§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this);
            §§push(this.§>"§);
            if(_loc4_)
            {
               §§push(1);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§>"§ = §§pop();
            if(!(_loc5_ && param1))
            {
               this.§,E§[param1] = param2.toUpperCase();
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
            §§push(this.§>"§);
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
                           this.§^!E§.addEventListener(MouseEvent.MOUSE_DOWN,this.§'m§);
                           if(!_loc1_)
                           {
                              addr61:
                              §§push(this.§>"§);
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
                                             this.§^!E§.addEventListener(MouseEvent.MOUSE_UP,this.§[m§);
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
                           §§push(this.§>"§);
                           if(!_loc1_)
                           {
                              addr110:
                              §§push(1);
                              §§push(§3]§);
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
                                          this.§^!E§.addEventListener(MouseEvent.ROLL_OVER,this.§,!7§);
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr141:
                                             §§push(this.§>"§);
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
                              §§push(§§pop() << §#H§);
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
                                 this.§^!E§.addEventListener(MouseEvent.ROLL_OUT,this.§;!1§);
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
            this.§^!E§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'m§);
            if(_loc1_ || _loc2_)
            {
               this.§^!E§.removeEventListener(MouseEvent.MOUSE_UP,this.§[m§);
               §§goto(addr47);
            }
            §§goto(addr80);
         }
         addr47:
         if(_loc1_)
         {
            this.§^!E§.removeEventListener(MouseEvent.ROLL_OVER,this.§,!7§);
            if(!(_loc2_ && _loc1_))
            {
               addr80:
               this.§^!E§.removeEventListener(MouseEvent.ROLL_OUT,this.§;!1§);
            }
         }
      }
      
      public function §'m§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§,E§[LISTENER_EVENT_MOUSE_DOWN]);
            if(_loc3_)
            {
               addr28:
               param1.stopPropagation();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §[m§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§,E§[LISTENER_EVENT_MOUSE_UP]);
            if(!(_loc3_ && _loc2_))
            {
               param1.stopPropagation();
            }
         }
      }
      
      public function §,!7§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.listenerEventOccured(§3]§,this.§,E§[§3]§]);
         }
      }
      
      public function §;!1§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerEventOccured(§#H§,this.§,E§[§#H§]);
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
               this.§^!E§ = null;
               if(!_loc2_)
               {
               }
               §§goto(addr51);
            }
            this.§,E§ = null;
         }
         addr51:
      }
   }
}
