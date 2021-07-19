package §'"!§
{
   import §!""§.§]H§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §+§ implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §]'§:int = 2;
      
      public static const §<!H§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §+§)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            loop0:
            while(true)
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               while(true)
               {
                  §]'§ = 2;
                  while(_loc1_)
                  {
                     if(_loc1_)
                     {
                        §<!H§ = 3;
                        if(_loc2_ && _loc2_)
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
      
      private var §-"8§:Sprite;
      
      public var §`N§:int = 0;
      
      public var §7""§:Array;
      
      private var §=%§:EventDispatcher;
      
      private var §&,§:Dictionary;
      
      public function §+§(param1:Sprite)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               if(param1)
               {
                  if(_loc2_ || _loc3_)
                  {
                     this.§-"8§ = param1;
                  }
                  while(true)
                  {
                     addr30:
                     if(_loc2_ || _loc3_)
                     {
                        return;
                        addr37:
                     }
                  }
                  addr97:
               }
               while(true)
               {
                  this.§7""§ = new Array();
                  continue loop0;
                  §§goto(addr97);
               }
            }
         }
         §§goto(addr60);
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§?<§();
            while(true)
            {
               this.§-"8§ = param1;
               §§goto(addr65);
            }
         }
         addr65:
         while(true)
         {
            this.§8!c§();
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(Boolean(this.§-"8§));
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
                        §§push(this.§-"8§ is MovieClip);
                        if(!_loc4_)
                        {
                           if(_loc4_ && param1)
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
                                    §§push(param2);
                                    addr71:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                (this.§-"8§ as MovieClip).gotoAndPlay(param1);
                                                break;
                                             }
                                             break;
                                          }
                                          (this.§-"8§ as MovieClip).gotoAndStop(param1);
                                          if(_loc4_ && param2)
                                          {
                                             break;
                                          }
                                          if(_loc3_)
                                          {
                                             if(!_loc4_)
                                             {
                                                break loop1;
                                             }
                                             continue loop2;
                                          }
                                          continue loop5;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 addr70:
                              }
                              §§goto(addr19);
                           }
                        }
                        §§goto(addr71);
                     }
                  }
                  addr19:
                  return;
               }
               §§goto(addr68);
            }
         }
         §§goto(addr70);
      }
      
      public function §^1§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this);
            §§push(this.§`N§);
            if(!_loc5_)
            {
               §§push(1);
               if(!(_loc5_ && param3))
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§`N§ = §§pop();
            loop0:
            while(true)
            {
               this.§7""§[param1] = param2.toUpperCase();
               while(param3)
               {
                  if(!(_loc5_ && this))
                  {
                     if(_loc4_ || param3)
                     {
                     }
                     continue;
                  }
                  continue loop0;
               }
               addr19:
               return;
            }
         }
         while(true)
         {
            this.§8!c§();
            §§goto(addr52);
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §]H§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§]H§ = new §]H§(§]H§.§59§,param1,param2,this,true,true);
         if(!(_loc4_ && param1))
         {
            this.dispatchEvent(_loc3_);
         }
         return _loc3_;
      }
      
      public function §8!c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§?<§();
            while(true)
            {
               §§push(this.§`N§);
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
                                    addr236:
                                    while(true)
                                    {
                                       this.§-"8§.addEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
                                       addr253:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr236:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§`N§);
                                    if(_loc1_)
                                    {
                                       §§push(1);
                                       if(_loc1_ || _loc2_)
                                       {
                                          §§push(LISTENER_EVENT_MOUSE_UP);
                                          while(true)
                                          {
                                             §§push(§§pop() << §§pop());
                                          }
                                          addr213:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() & §§pop());
                                       }
                                       addr214:
                                    }
                                    loop10:
                                    while(!_loc2_)
                                    {
                                       §§push(0);
                                       loop11:
                                       while(true)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             while(true)
                                             {
                                                this.§-"8§.addEventListener(MouseEvent.CLICK,this.mouseUp);
                                                addr226:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr219:
                                          }
                                          while(true)
                                          {
                                             §§push(this.§`N§);
                                             loop15:
                                             while(true)
                                             {
                                                §§push(1);
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(§]'§);
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(!(_loc1_ || _loc2_))
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(§§pop() << §§pop());
                                                      if(_loc2_ && this)
                                                      {
                                                         continue loop11;
                                                      }
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() & §§pop());
                                                      while(true)
                                                      {
                                                         continue loop11;
                                                         addr75:
                                                         if(!(_loc1_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc2_ && _loc2_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         addr90:
                                                         §§push(0);
                                                         if(_loc2_ && _loc1_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(!(_loc1_ || this))
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(§§pop() != §§pop())
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  addr189:
                                                                  while(true)
                                                                  {
                                                                     if(_loc1_)
                                                                     {
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§`N§);
                                                                              if(_loc1_ || _loc1_)
                                                                              {
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§push(1);
                                                                                 if(_loc1_ || _loc1_)
                                                                                 {
                                                                                    if(!(_loc1_ || _loc1_))
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    §§push(§<!H§);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§push(§§pop() << §§pop());
                                                                                       if(_loc1_ || _loc1_)
                                                                                       {
                                                                                          if(!(_loc1_ || _loc1_))
                                                                                          {
                                                                                             continue loop16;
                                                                                          }
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§goto(addr75);
                                                                                          §§push(§§pop() & §§pop());
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr213);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr90);
                                                                              }
                                                                              §§goto(addr75);
                                                                           }
                                                                           addr19:
                                                                           return;
                                                                           addr23:
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr226);
                                                                  }
                                                                  §§goto(addr236);
                                                                  addr189:
                                                               }
                                                               this.§-"8§.addEventListener(MouseEvent.ROLL_OUT,this.§ "$§);
                                                            }
                                                            if(!(_loc1_ || this))
                                                            {
                                                               §§goto(addr219);
                                                            }
                                                         }
                                                         §§goto(addr19);
                                                      }
                                                   }
                                                   §§goto(addr214);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               this.§-"8§.addEventListener(MouseEvent.ROLL_OVER,this.§4"2§);
               §§goto(addr189);
            }
         }
         §§goto(addr236);
      }
      
      public function §?<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§-"8§.removeEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
            while(true)
            {
               this.§-"8§.removeEventListener(MouseEvent.CLICK,this.mouseUp);
               while(true)
               {
                  this.§-"8§.removeEventListener(MouseEvent.ROLL_OVER,this.§4"2§);
                  §§goto(addr67);
               }
            }
         }
         addr67:
         while(true)
         {
            this.§-"8§.removeEventListener(MouseEvent.ROLL_OUT,this.§ "$§);
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr58:
      }
      
      public function mouseDown(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§7""§[LISTENER_EVENT_MOUSE_DOWN]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(_loc2_);
         
      }
      
      public function mouseUp(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§7""§[LISTENER_EVENT_MOUSE_UP]);
            do
            {
               param1.stopPropagation();
            }
            while(_loc2_ && param1);
            
         }
      }
      
      public function §4"2§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.listenerUIEventOccured(§]'§,this.§7""§[§]'§]);
         }
      }
      
      public function § "$§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.listenerUIEventOccured(§<!H§,this.§7""§[§<!H§]);
         }
      }
      
      public function clear() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:* = 0;
         if(_loc7_ || _loc3_)
         {
            this.§?<§();
         }
         while(true)
         {
            while(true)
            {
               this.§-"8§ = null;
               do
               {
                  this.§7""§ = null;
               }
               while(!_loc7_);
               
               if(_loc7_)
               {
                  if(true)
                  {
                     loop3:
                     for(_loc1_ in this.§&,§)
                     {
                        _loc2_ = this.§&,§[_loc1_];
                        if(_loc7_)
                        {
                           §§push(0);
                           loop4:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc6_)
                                    {
                                       continue loop4;
                                    }
                                    if(§§pop() >= _loc2_.length)
                                    {
                                       if(_loc7_)
                                       {
                                          if(!_loc7_)
                                          {
                                             continue;
                                          }
                                          delete this.§&,§[_loc1_];
                                       }
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          if(true)
                                          {
                                             continue loop3;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr134:
                                       }
                                       while(true)
                                       {
                                          _loc3_++;
                                          continue loop6;
                                       }
                                    }
                                    else
                                    {
                                       this.§=%§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr134);
                     }
                  }
                  continue;
                  return;
               }
               break;
            }
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§-"8§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            this.§=%§.addEventListener(param1,param2,false,param4,param5);
            if(_loc8_)
            {
               if(!this.§&,§[param1])
               {
                  if(!_loc8_)
                  {
                  }
                  var _loc6_:Vector.<Function>;
                  (_loc6_ = this.§&,§[param1]).push(param2);
                  return;
                  addr54:
               }
               §§goto(addr54);
            }
            this.§&,§[param1] = new Vector.<Function>();
         }
         §§goto(addr54);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Vector.<Function> = null;
         var _loc5_:* = 0;
         if(!(_loc7_ && param1))
         {
            this.§=%§.removeEventListener(param1,param2,false);
            if(_loc6_ || param3)
            {
               if(this.§&,§[param1])
               {
                  addr56:
                  §§push(int((_loc4_ = this.§&,§[param1]).indexOf(param2)));
                  if(_loc6_)
                  {
                     §§push(§§pop());
                     if(_loc6_)
                     {
                        _loc5_ = §§pop();
                        addr72:
                        §§push(0);
                     }
                     if(§§pop() >= §§pop())
                     {
                        if(!(_loc7_ && param1))
                        {
                           _loc4_.splice(_loc5_,1);
                        }
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr72);
               }
               addr95:
               return;
            }
         }
         §§goto(addr56);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§=%§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§=%§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§=%§.willTrigger(param1);
      }
   }
}
