package §,L§
{
   import §-!;§.§>!B§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §6!W§ implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §,!y§:int = 2;
      
      public static const §-g§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            loop0:
            while(true)
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               while(true)
               {
                  §,!y§ = 2;
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        §-g§ = 3;
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      private var §`!S§:Sprite;
      
      public var § !F§:int = 0;
      
      public var §8!=§:Array;
      
      private var §`!'§:EventDispatcher;
      
      private var §9!x§:Dictionary;
      
      public function §6!W§(param1:Sprite)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            loop0:
            while(true)
            {
               if(param1)
               {
                  loop1:
                  while(true)
                  {
                     this.§`!S§ = param1;
                     addr102:
                     while(true)
                     {
                     }
                     loop5:
                     while(true)
                     {
                        if(_loc3_ && _loc3_)
                        {
                           continue loop1;
                           while(true)
                           {
                              this.§9!x§ = new Dictionary();
                              if(_loc3_ && param1)
                              {
                                 continue loop5;
                              }
                              addr40:
                              if(_loc2_ || _loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 break loop5;
                              }
                              while(true)
                              {
                                 this.§`!'§ = new EventDispatcher();
                                 continue loop5;
                                 §§goto(addr40);
                              }
                           }
                        }
                        continue loop0;
                        §§goto(addr79);
                     }
                     §§goto(addr102);
                  }
               }
               while(true)
               {
                  this.§8!=§ = new Array();
                  §§goto(addr85);
                  §§goto(addr102);
               }
            }
         }
         addr79:
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[!?§();
         }
         while(true)
         {
            this.§`!S§ = param1;
            while(!_loc2_)
            {
               this.§8l§();
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(Boolean(this.§`!S§));
            if(!(_loc4_ && _loc3_))
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
                        §§push(this.§`!S§ is MovieClip);
                        if(!(_loc4_ && param1))
                        {
                           loop0:
                           while(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(param2);
                                 addr69:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             (this.§`!S§ as MovieClip).gotoAndPlay(param1);
                                             break;
                                          }
                                          break;
                                       }
                                       (this.§`!S§ as MovieClip).gotoAndStop(param1);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       if(!(_loc4_ && this))
                                       {
                                          if(!_loc4_)
                                          {
                                             addr53:
                                             break loop0;
                                          }
                                          continue loop4;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 break loop0;
                              }
                           }
                           return;
                           addr66:
                        }
                        §§goto(addr69);
                     }
                  }
                  addr103:
               }
               §§goto(addr66);
            }
            §§goto(addr103);
         }
         §§goto(addr53);
      }
      
      public function §9E§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            §§push(this);
            §§push(this.§ !F§);
            if(!(_loc4_ && this))
            {
               §§push(1);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§ !F§ = §§pop();
            loop0:
            while(true)
            {
               this.§8!=§[param1] = param2.toUpperCase();
               loop1:
               for(; param3; while(true)
               {
                  if(_loc5_)
                  {
                     if(!_loc4_)
                     {
                        break loop1;
                     }
                     continue loop0;
                  }
                  continue loop1;
               })
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
               return;
            }
         }
         while(true)
         {
            this.§8l§();
            §§goto(addr36);
         }
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §>!B§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§>!B§ = new §>!B§(§>!B§.§7"&§,param1,param2,this,true,true);
         if(_loc4_)
         {
            this.dispatchEvent(_loc3_);
         }
         return _loc3_;
      }
      
      public function §8l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§[!?§();
         }
         loop0:
         while(true)
         {
            §§push(this.§ !F§);
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
                                    this.§`!S§.addEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
                                    addr243:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr226:
                              }
                              while(true)
                              {
                                 §§push(this.§ !F§);
                                 loop10:
                                 for(; _loc1_; loop18:
                                 while(!(_loc2_ && this))
                                 {
                                    §§push(1);
                                    loop19:
                                    while(true)
                                    {
                                       §§push(§,!y§);
                                       loop20:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() << §§pop());
                                             if(_loc1_ || _loc1_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop() & §§pop());
                                                   loop21:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      addr171:
                                                      loop22:
                                                      while(true)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            loop25:
                                                            while(true)
                                                            {
                                                               §§push(this.§ !F§);
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  §§push(1);
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        continue loop19;
                                                                     }
                                                                     if(_loc1_)
                                                                     {
                                                                        §§push(§-g§);
                                                                        if(!(_loc1_ || _loc2_))
                                                                        {
                                                                           continue loop20;
                                                                        }
                                                                        §§push(§§pop() << §§pop());
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr58:
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              if(_loc2_ && this)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              addr73:
                                                                              §§push(§§pop() & §§pop());
                                                                              if(!_loc1_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              if(!_loc2_)
                                                                              {
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    addr80:
                                                                                    §§push(0);
                                                                                    if(_loc1_ || this)
                                                                                    {
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          if(_loc1_ || _loc1_)
                                                                                          {
                                                                                             if(§§pop() != §§pop())
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   addr104:
                                                                                                   if(_loc1_ || _loc2_)
                                                                                                   {
                                                                                                      if(!(_loc1_ || _loc1_))
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      this.§`!S§.addEventListener(MouseEvent.ROLL_OUT,this.§-!P§);
                                                                                                      §§goto(addr135);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                         §§goto(addr226);
                                                                                                         §§goto(addr104);
                                                                                                      }
                                                                                                      addr186:
                                                                                                   }
                                                                                                   §§goto(addr243);
                                                                                                }
                                                                                                §§goto(addr135);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop22;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              §§goto(addr198);
                                                                              §§goto(addr143);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr197);
                                                                           }
                                                                        }
                                                                        §§goto(addr80);
                                                                     }
                                                                     §§goto(addr199);
                                                                  }
                                                                  §§goto(addr58);
                                                               }
                                                               §§goto(addr73);
                                                            }
                                                            addr24:
                                                         }
                                                         continue loop0;
                                                         return;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr195);
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr171);
                                          }
                                          §§goto(addr196);
                                       }
                                       continue loop3;
                                    }
                                 })
                                 {
                                    §§push(1);
                                    while(true)
                                    {
                                       §§push(LISTENER_EVENT_MOUSE_UP);
                                       addr196:
                                       while(true)
                                       {
                                          §§push(§§pop() << §§pop());
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
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         this.§`!S§.addEventListener(MouseEvent.CLICK,this.mouseUp);
                                                      }
                                                      while(_loc1_)
                                                      {
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            §§goto(addr24);
                                                         }
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                   addr143:
                                                   while(true)
                                                   {
                                                      §§push(this.§ !F§);
                                                      continue loop10;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(!(_loc2_ && this))
            {
               this.§`!S§.addEventListener(MouseEvent.ROLL_OVER,this.§%!w§);
               §§goto(addr186);
            }
         }
      }
      
      public function §[!?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§`!S§.removeEventListener(MouseEvent.MOUSE_DOWN,this.mouseDown);
            while(true)
            {
               this.§`!S§.removeEventListener(MouseEvent.CLICK,this.mouseUp);
            }
            addr94:
         }
         loop1:
         do
         {
            this.§`!S§.removeEventListener(MouseEvent.ROLL_OVER,this.§%!w§);
            while(!_loc1_)
            {
               this.§`!S§.removeEventListener(MouseEvent.ROLL_OUT,this.§-!P§);
               if(_loc2_ || _loc1_)
               {
                  continue loop1;
               }
            }
            §§goto(addr94);
         }
         while(!_loc2_);
         
      }
      
      public function mouseDown(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§8!=§[LISTENER_EVENT_MOUSE_DOWN]);
            do
            {
               param1.stopPropagation();
            }
            while(_loc3_);
            
         }
      }
      
      public function mouseUp(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§8!=§[LISTENER_EVENT_MOUSE_UP]);
            do
            {
               param1.stopPropagation();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §%!w§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.listenerUIEventOccured(§,!y§,this.§8!=§[§,!y§]);
         }
      }
      
      public function §-!P§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerUIEventOccured(§-g§,this.§8!=§[§-g§]);
         }
      }
      
      public function clear() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:* = 0;
         if(!_loc6_)
         {
            this.§[!?§();
            loop0:
            while(true)
            {
               addr41:
               while(true)
               {
                  this.§`!S§ = null;
                  addr45:
                  while(_loc7_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§8!=§ = null;
            if(_loc7_ || _loc3_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr41);
            }
            §§goto(addr45);
         }
         for(_loc1_ in this.§9!x§)
         {
            _loc2_ = this.§9!x§[_loc1_];
            if(_loc7_ || this)
            {
               §§push(0);
               loop5:
               while(true)
               {
                  _loc3_ = §§pop();
                  addr152:
                  while(true)
                  {
                     continue loop5;
                  }
               }
            }
            §§goto(addr114);
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§`!S§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            this.§`!'§.addEventListener(param1,param2,false,param4,param5);
            if(_loc8_)
            {
               if(!this.§9!x§[param1])
               {
                  if(_loc8_)
                  {
                     this.§9!x§[param1] = new Vector.<Function>();
                  }
               }
            }
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§9!x§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Vector.<Function> = null;
         var _loc5_:* = 0;
         if(_loc7_ || param1)
         {
            this.§`!'§.removeEventListener(param1,param2,false);
            if(_loc7_)
            {
               if(this.§9!x§[param1])
               {
                  addr52:
                  §§push(int((_loc4_ = this.§9!x§[param1]).indexOf(param2)));
                  if(_loc7_ || param1)
                  {
                     §§push(§§pop());
                     if(!_loc6_)
                     {
                        _loc5_ = §§pop();
                        addr73:
                        §§push(0);
                     }
                     if(§§pop() >= §§pop())
                     {
                        if(_loc7_ || param3)
                        {
                           _loc4_.splice(_loc5_,1);
                        }
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr73);
               }
               addr96:
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§`!'§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`!'§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`!'§.willTrigger(param1);
      }
   }
}
