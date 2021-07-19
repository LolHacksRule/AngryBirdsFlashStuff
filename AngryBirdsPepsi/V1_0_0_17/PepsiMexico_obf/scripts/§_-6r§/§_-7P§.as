package §_-6r§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §_-7P§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §_-Ek§:int = 2;
      
      public static const §_-6q§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            if(!(_loc1_ && §_-7P§))
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               if(_loc2_ || §_-7P§)
               {
                  addr43:
                  §_-Ek§ = 2;
                  if(_loc1_ && §_-7P§)
                  {
                  }
                  §§goto(addr63);
               }
               §_-6q§ = 3;
            }
            addr63:
            return;
         }
         §§goto(addr43);
      }
      
      private var §_-Jb§:Sprite;
      
      public var §_-d5§:int = 0;
      
      public var §use§:Array;
      
      public function §_-7P§(param1:Sprite)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(_loc3_)
            {
               if(param1)
               {
                  if(_loc3_)
                  {
                     addr38:
                     this.§_-Jb§ = param1;
                     if(_loc2_)
                     {
                     }
                     §§goto(addr47);
                  }
               }
               this.§use§ = new Array();
               addr47:
               return;
            }
         }
         §§goto(addr38);
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.removeEventListeners();
            if(!_loc2_)
            {
               §§goto(addr27);
            }
            §§goto(addr32);
         }
         addr27:
         this.§_-Jb§ = param1;
         if(_loc3_)
         {
            addr32:
            this.addEventListeners();
         }
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(Boolean(this.§_-Jb§));
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     §§pop();
                     if(_loc3_ || _loc3_)
                     {
                        addr49:
                        §§push(this.§_-Jb§ is MovieClip);
                        if(_loc3_ || param2)
                        {
                           addr60:
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr64);
                              }
                              (this.§_-Jb§ as MovieClip).gotoAndPlay(param1);
                              if(_loc3_ || this)
                              {
                              }
                           }
                        }
                        addr64:
                        if(param2)
                        {
                           if(_loc4_)
                           {
                           }
                        }
                        else
                        {
                           (this.§_-Jb§ as MovieClip).gotoAndStop(param1);
                        }
                        §§goto(addr94);
                     }
                     addr94:
                     return;
                  }
                  §§goto(addr64);
               }
            }
            §§goto(addr60);
         }
         §§goto(addr49);
      }
      
      public function §_-q3§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(this);
            §§push(this.§_-d5§);
            if(_loc4_)
            {
               §§push(1);
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§_-d5§ = §§pop();
            if(_loc4_)
            {
               this.§use§[param1] = param2.toUpperCase();
               if(!(_loc5_ && this))
               {
                  addr66:
                  if(param3)
                  {
                     if(!_loc5_)
                     {
                        addr70:
                        this.addEventListeners();
                     }
                  }
               }
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr66);
      }
      
      public function listenerEventOccured(param1:int, param2:String) : void
      {
      }
      
      public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.removeEventListeners();
         §§push(this.§_-d5§);
         §§push(1);
         §§push(LISTENER_EVENT_MOUSE_DOWN);
         if(_loc2_ || this)
         {
            §§push(§§pop() << §§pop());
            if(!_loc1_)
            {
               §§push(§§pop() & §§pop());
               §§push(0);
            }
            if(§§pop() != §§pop())
            {
               if(_loc2_)
               {
                  this.§_-Jb§.addEventListener(MouseEvent.MOUSE_DOWN,this.§_-gZ§);
                  addr42:
                  §§push(this.§_-d5§);
                  §§push(1);
                  if(!_loc1_)
                  {
                     §§push(LISTENER_EVENT_MOUSE_UP);
                     if(_loc2_)
                     {
                        addr50:
                        if((§§pop() & §§pop() << §§pop()) != 0)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr68:
                              this.§_-Jb§.addEventListener(MouseEvent.CLICK,this.§_-TK§);
                              addr75:
                              §§push(this.§_-d5§);
                              §§push(1);
                              §§push(§_-Ek§);
                              if(!_loc1_)
                              {
                                 §§push(§§pop() << §§pop());
                                 if(!_loc1_)
                                 {
                                    §§push(§§pop() & §§pop());
                                    if(_loc2_)
                                    {
                                       if(§§pop() != 0)
                                       {
                                          if(!_loc1_)
                                          {
                                             this.§_-Jb§.addEventListener(MouseEvent.ROLL_OVER,this.§_-v9§);
                                             addr98:
                                             addr100:
                                             §§push(this.§_-d5§);
                                             §§push(1);
                                             if(!_loc1_)
                                             {
                                                addr103:
                                                addr104:
                                                §§push(§§pop() << §_-6q§);
                                                if(_loc2_ || _loc1_)
                                                {
                                                }
                                                §§goto(addr121);
                                             }
                                             addr121:
                                             if(§§pop() != §§pop())
                                             {
                                                addr122:
                                                this.§_-Jb§.addEventListener(MouseEvent.ROLL_OUT,this.§_-Ii§);
                                                §§goto(addr129);
                                             }
                                             addr129:
                                             return;
                                             §§push(§§pop() & §§pop());
                                             §§push(0);
                                          }
                                          §§goto(addr122);
                                       }
                                       §§goto(addr98);
                                    }
                                    §§goto(addr100);
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr104);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr75);
                     }
                  }
                  §§goto(addr103);
               }
               §§goto(addr68);
            }
            §§goto(addr42);
         }
         §§goto(addr50);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-Jb§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§_-gZ§);
            if(!_loc1_)
            {
               this.§_-Jb§.removeEventListener(MouseEvent.MOUSE_UP,this.§_-TK§);
               if(_loc1_ && _loc2_)
               {
               }
               §§goto(addr62);
            }
            this.§_-Jb§.removeEventListener(MouseEvent.ROLL_OVER,this.§_-v9§);
            if(!_loc2_)
            {
            }
            §§goto(addr62);
         }
         addr62:
         this.§_-Jb§.removeEventListener(MouseEvent.ROLL_OUT,this.§_-Ii§);
      }
      
      public function §_-gZ§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§use§[LISTENER_EVENT_MOUSE_DOWN]);
            if(_loc2_)
            {
               addr31:
               param1.stopPropagation();
            }
            return;
         }
         §§goto(addr31);
      }
      
      public function §_-TK§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§use§[LISTENER_EVENT_MOUSE_UP]);
            if(!_loc2_)
            {
               param1.stopPropagation();
            }
         }
      }
      
      public function §_-v9§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.listenerEventOccured(§_-Ek§,this.§use§[§_-Ek§]);
         }
      }
      
      public function §_-Ii§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.listenerEventOccured(§_-6q§,this.§use§[§_-6q§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.removeEventListeners();
            if(_loc1_)
            {
               this.§_-Jb§ = null;
               if(!_loc2_)
               {
                  addr31:
                  this.§use§ = null;
               }
               return;
            }
         }
         §§goto(addr31);
      }
   }
}
