package §0!#§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §-P§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §[F§:int = 2;
      
      public static const §@^§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §-P§))
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            if(_loc2_)
            {
               §§goto(addr39);
            }
            §§goto(addr54);
         }
         addr39:
         if(!(_loc1_ && _loc1_))
         {
            §[F§ = 2;
            if(_loc2_)
            {
               addr54:
               §@^§ = 3;
            }
         }
      }
      
      private var §"1§:Sprite;
      
      public var §-d§:int = 0;
      
      public var §5`§:Array;
      
      public function §-P§(param1:Sprite)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super();
            if(_loc2_ || _loc2_)
            {
               if(param1)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§"1§ = param1;
                     if(_loc3_)
                     {
                     }
                     §§goto(addr70);
                  }
               }
               this.§5`§ = new Array();
            }
         }
         addr70:
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.removeEventListeners();
            if(!(_loc3_ && _loc3_))
            {
               this.§"1§ = param1;
               if(_loc2_ || _loc2_)
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
         if(_loc4_ || this)
         {
            §§push(Boolean(this.§"1§));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     §§pop();
                     if(!(_loc3_ && param1))
                     {
                        §§push(this.§"1§ is MovieClip);
                        if(_loc4_)
                        {
                           addr67:
                           if(§§pop())
                           {
                              addr79:
                              if(_loc4_ || param1)
                              {
                                 §§push(param2);
                              }
                              (this.§"1§ as MovieClip).gotoAndPlay(param1);
                              if(_loc4_)
                              {
                                 addr94:
                                 return;
                                 addr87:
                              }
                           }
                           §§goto(addr94);
                        }
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              §§goto(addr79);
                           }
                           §§goto(addr87);
                        }
                        else
                        {
                           (this.§"1§ as MovieClip).gotoAndStop(param1);
                        }
                     }
                     §§goto(addr94);
                  }
               }
            }
            §§goto(addr67);
         }
         §§goto(addr79);
      }
      
      public function §else§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            §§push(this);
            §§push(this.§-d§);
            if(!(_loc4_ && this))
            {
               §§push(1);
               if(_loc5_)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§-d§ = §§pop();
            if(!_loc4_)
            {
               this.§5`§[param1] = param2.toUpperCase();
               if(_loc5_ || param1)
               {
                  if(param3)
                  {
                     if(_loc5_ || this)
                     {
                        addr85:
                        this.addEventListeners();
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr85);
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
            §§push(this.§-d§);
            §§push(1);
            if(!_loc1_)
            {
               §§push(LISTENER_EVENT_MOUSE_DOWN);
               if(_loc2_)
               {
                  §§push(§§pop() & §§pop() << §§pop());
                  if(_loc2_)
                  {
                     addr34:
                     if(§§pop() != 0)
                     {
                        this.§"1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!4§);
                        if(!_loc1_)
                        {
                           addr44:
                           §§push(this.§-d§);
                           if(_loc2_)
                           {
                              §§push(1);
                              if(!_loc1_)
                              {
                                 §§push(LISTENER_EVENT_MOUSE_UP);
                                 if(!_loc1_)
                                 {
                                    §§push(§§pop() & §§pop() << §§pop());
                                    §§push(0);
                                    if(_loc2_)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          if(!_loc1_)
                                          {
                                             this.§"1§.addEventListener(MouseEvent.MOUSE_UP,this.§5e§);
                                             if(_loc2_ || _loc1_)
                                             {
                                                §§goto(addr86);
                                             }
                                          }
                                          §§goto(addr142);
                                       }
                                       addr86:
                                       §§push(this.§-d§);
                                       §§push(1);
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(§[F§);
                                          if(!_loc1_)
                                          {
                                             addr99:
                                             §§push(§§pop() << §§pop());
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                §§goto(addr141);
                                             }
                                          }
                                          §§goto(addr139);
                                       }
                                       §§goto(addr141);
                                    }
                                 }
                                 §§goto(addr99);
                              }
                              addr141:
                              §§push(§§pop() & §§pop());
                              if(!(_loc1_ && _loc2_))
                              {
                                 addr125:
                                 if(§§pop() != 0)
                                 {
                                    this.§"1§.addEventListener(MouseEvent.ROLL_OVER,this.§@4§);
                                 }
                                 addr139:
                                 §§push(this.§-d§ & 1 << §@^§);
                              }
                              if(§§pop() != 0)
                              {
                                 addr142:
                                 this.§"1§.addEventListener(MouseEvent.ROLL_OUT,this.§"`§);
                                 §§goto(addr149);
                              }
                              addr149:
                              return;
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr44);
                  }
                  §§goto(addr125);
               }
               §§goto(addr99);
            }
            §§goto(addr34);
         }
         §§goto(addr86);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!4§);
            if(_loc2_)
            {
               this.§"1§.removeEventListener(MouseEvent.MOUSE_UP,this.§5e§);
               if(!(_loc1_ && _loc2_))
               {
                  this.§"1§.removeEventListener(MouseEvent.ROLL_OVER,this.§@4§);
                  if(_loc1_)
                  {
                  }
               }
               §§goto(addr78);
            }
            this.§"1§.removeEventListener(MouseEvent.ROLL_OUT,this.§"`§);
         }
         addr78:
      }
      
      public function §3!4§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§5`§[LISTENER_EVENT_MOUSE_DOWN]);
            if(!(_loc2_ && _loc2_))
            {
               addr48:
               param1.stopPropagation();
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function §5e§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§5`§[LISTENER_EVENT_MOUSE_UP]);
            if(_loc3_)
            {
               param1.stopPropagation();
            }
         }
      }
      
      public function §@4§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.listenerEventOccured(§[F§,this.§5`§[§[F§]);
         }
      }
      
      public function §"`§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(§@^§,this.§5`§[§@^§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.removeEventListeners();
            if(!(_loc1_ && _loc1_))
            {
               this.§"1§ = null;
               if(_loc2_ || _loc1_)
               {
               }
               §§goto(addr51);
            }
            this.§5`§ = null;
         }
         addr51:
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§"1§;
      }
   }
}
