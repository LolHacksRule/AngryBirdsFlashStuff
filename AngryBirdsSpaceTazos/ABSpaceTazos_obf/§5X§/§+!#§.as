package §5X§
{
   import §<W§.§]"+§;
   import flash.display.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §+!#§ implements IEventDispatcher
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §3!R§:int = 2;
      
      public static const § h§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            while(true)
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               while(true)
               {
                  §3!R§ = 2;
                  §§goto(addr69);
               }
            }
         }
         addr69:
         while(true)
         {
            § h§ = 3;
            if(_loc2_)
            {
               if(!(_loc1_ && §+!#§))
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      private var §'K§:Sprite;
      
      public var §#!$§:int = 0;
      
      public var §"d§:Array;
      
      private var §`!<§:EventDispatcher;
      
      private var §0z§:Dictionary;
      
      public function §+!#§(param1:Sprite)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               if(!param1)
               {
                  while(true)
                  {
                     this.§"d§ = new Array();
                     loop4:
                     while(!(_loc2_ && _loc2_))
                     {
                        while(true)
                        {
                           this.§`!<§ = new EventDispatcher();
                           for(; !_loc2_; this.§0z§ = new Dictionary(),if(!_loc2_)
                           {
                              return;
                           })
                           {
                              if(_loc3_)
                              {
                                 continue;
                              }
                           }
                           continue loop4;
                        }
                     }
                     continue loop0;
                  }
                  addr52:
               }
               while(true)
               {
                  this.§'K§ = param1;
                  continue loop0;
               }
            }
         }
         §§goto(addr64);
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§'I§();
            while(true)
            {
               this.§'K§ = param1;
               §§goto(addr60);
            }
         }
         addr60:
         while(true)
         {
            this.§#!#§();
            if(!_loc3_)
            {
               if(_loc2_)
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
         if(_loc3_ || _loc3_)
         {
            §§push(Boolean(this.§'K§));
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
                     addr91:
                     while(true)
                     {
                        §§push(this.§'K§ is MovieClip);
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(param2);
                                    while(true)
                                    {
                                       if(!(_loc4_ && param2))
                                       {
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    addr76:
                                 }
                                 else
                                 {
                                    addr107:
                                 }
                              }
                              addr24:
                              return;
                           }
                           addr71:
                        }
                        §§goto(addr76);
                     }
                     (this.§'K§ as MovieClip).gotoAndPlay(param1);
                     §§goto(addr107);
                  }
               }
               §§goto(addr71);
            }
         }
         §§goto(addr107);
      }
      
      public function §]!d§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §§push(this);
            §§push(this.§#!$§);
            if(!(_loc5_ && param2))
            {
               §§push(1);
               if(!_loc5_)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§#!$§ = §§pop();
            while(true)
            {
               this.§"d§[param1] = param2.toUpperCase();
               addr38:
               if(_loc5_ && param2)
               {
                  continue;
               }
               this.§#!#§();
               addr57:
               if(_loc5_)
               {
                  while(param3)
                  {
                     if(_loc4_ || param1)
                     {
                        §§goto(addr38);
                     }
                     §§goto(addr57);
                  }
                  addr24:
                  return;
                  addr67:
               }
               §§goto(addr24);
            }
         }
         §§goto(addr67);
      }
      
      public function listenerUIEventOccured(param1:int, param2:String) : §]"+§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§]"+§ = new §]"+§(§]"+§.§`!C§,param1,param2,this,true,true);
         if(!(_loc4_ && _loc3_))
         {
            this.dispatchEvent(_loc3_);
         }
         return _loc3_;
      }
      
      public function §#!#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§'I§();
            loop0:
            while(true)
            {
               §§push(this.§#!$§);
               loop1:
               while(true)
               {
                  §§push(1);
                  if(!_loc2_)
                  {
                     §§push(LISTENER_EVENT_MOUSE_DOWN);
                     while(true)
                     {
                        §§push(§§pop() << §§pop());
                     }
                     addr217:
                  }
                  loop3:
                  while(true)
                  {
                     §§push(§§pop() & §§pop());
                     loop4:
                     while(true)
                     {
                        §§push(0);
                        loop5:
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              while(true)
                              {
                                 this.§'K§.addEventListener(MouseEvent.MOUSE_DOWN,this.§-!,§);
                                 addr238:
                                 while(true)
                                 {
                                 }
                              }
                              addr221:
                           }
                           while(true)
                           {
                              §§push(this.§#!$§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(1);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(LISTENER_EVENT_MOUSE_UP);
                                    addr180:
                                    while(true)
                                    {
                                       §§push(§§pop() << §§pop());
                                       addr181:
                                       while(!(_loc2_ && _loc1_))
                                       {
                                          if(!(_loc1_ || _loc1_))
                                          {
                                             continue loop3;
                                          }
                                          §§push(§§pop() & §§pop());
                                       }
                                       continue loop5;
                                    }
                                    loop20:
                                    while(true)
                                    {
                                       if(_loc2_ && _loc1_)
                                       {
                                          continue loop9;
                                       }
                                       if(§§pop() != §§pop())
                                       {
                                          loop21:
                                          while(_loc1_ || _loc1_)
                                          {
                                             this.§'K§.addEventListener(MouseEvent.ROLL_OVER,this.§?5§);
                                             loop22:
                                             while(!_loc2_)
                                             {
                                                loop23:
                                                while(true)
                                                {
                                                   §§push(this.§#!$§);
                                                   if(!(_loc1_ || _loc2_))
                                                   {
                                                      addr80:
                                                      if(_loc1_ || this)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§goto(addr90);
                                                         §§push(0);
                                                      }
                                                      break;
                                                   }
                                                   if(_loc1_)
                                                   {
                                                      §§push(1);
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         if(_loc1_ || this)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               §§push(§ h§);
                                                               if(!_loc2_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     break loop20;
                                                                  }
                                                                  §§push(§§pop() << §§pop());
                                                                  if(!(_loc2_ && _loc1_))
                                                                  {
                                                                     continue loop20;
                                                                  }
                                                                  addr90:
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        return;
                                                                     }
                                                                     addr24:
                                                                     if(_loc1_)
                                                                     {
                                                                        this.§'K§.addEventListener(MouseEvent.ROLL_OUT,this.§'!x§);
                                                                     }
                                                                     if(_loc2_ && _loc1_)
                                                                     {
                                                                        continue loop22;
                                                                     }
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop21;
                                                                     }
                                                                     if(_loc1_)
                                                                     {
                                                                        addr123:
                                                                        §§goto(addr24);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr221);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§3!R§);
                                                                  }
                                                                  addr135:
                                                               }
                                                               while(!_loc2_)
                                                               {
                                                                  §§push(§§pop() << §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() & §§pop());
                                                                     break loop23;
                                                                  }
                                                               }
                                                               §§goto(addr217);
                                                            }
                                                            §§goto(addr181);
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  this.§'K§.addEventListener(MouseEvent.CLICK,this.§!!x§);
                                                                  break loop21;
                                                               }
                                                               break loop21;
                                                            }
                                                            addr124:
                                                            while(true)
                                                            {
                                                               §§push(this.§#!$§);
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  §§goto(addr135);
                                                                  §§push(1);
                                                               }
                                                               break loop23;
                                                            }
                                                         }
                                                         addr197:
                                                      }
                                                      §§goto(addr90);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr197);
                                                   }
                                                   §§goto(addr90);
                                                }
                                                while(!_loc2_)
                                                {
                                                   continue loop20;
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr238);
                                          }
                                          while(_loc1_)
                                          {
                                             §§goto(addr124);
                                             §§goto(addr151);
                                          }
                                          addr151:
                                          continue loop0;
                                       }
                                       §§goto(addr28);
                                    }
                                    §§goto(addr180);
                                 }
                              }
                              §§goto(addr196);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr123);
      }
      
      public function §'I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§'K§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§-!,§);
            while(true)
            {
               this.§'K§.removeEventListener(MouseEvent.CLICK,this.§!!x§);
               addr65:
               if(_loc2_ || _loc2_)
               {
                  this.§'K§.removeEventListener(MouseEvent.ROLL_OUT,this.§'!x§);
                  addr72:
                  if(_loc1_)
                  {
                     while(_loc2_ || _loc2_)
                     {
                        §§goto(addr65);
                        §§goto(addr72);
                     }
                     while(true)
                     {
                        this.§'K§.removeEventListener(MouseEvent.ROLL_OVER,this.§?5§);
                        §§goto(addr58);
                     }
                     addr58:
                     addr91:
                  }
                  return;
               }
            }
         }
         §§goto(addr91);
      }
      
      public function §-!,§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§"d§[LISTENER_EVENT_MOUSE_DOWN]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(!_loc3_);
         
      }
      
      public function §!!x§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerUIEventOccured(LISTENER_EVENT_MOUSE_UP,this.§"d§[LISTENER_EVENT_MOUSE_UP]);
            do
            {
               param1.stopPropagation();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §?5§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.listenerUIEventOccured(§3!R§,this.§"d§[§3!R§]);
         }
      }
      
      public function §'!x§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerUIEventOccured(§ h§,this.§"d§[§ h§]);
         }
      }
      
      public function clear() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:* = null;
         var _loc2_:Vector.<Function> = null;
         var _loc3_:* = 0;
         if(_loc6_)
         {
            this.§'I§();
            loop0:
            while(true)
            {
               addr47:
               while(true)
               {
                  this.§'K§ = null;
                  continue loop0;
               }
            }
            addr54:
         }
         while(true)
         {
            this.§"d§ = null;
            if(!(_loc6_ || _loc3_))
            {
               continue;
            }
            if(_loc6_ || _loc2_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr54);
            }
            §§goto(addr47);
         }
         loop3:
         for(_loc1_ in this.§0z§)
         {
            _loc2_ = this.§0z§[_loc1_];
            if(!(_loc7_ && this))
            {
               §§push(0);
               loop4:
               while(true)
               {
                  _loc3_ = §§pop();
                  loop5:
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc7_)
                        {
                           continue loop4;
                        }
                        if(§§pop() >= _loc2_.length)
                        {
                           if(_loc6_ || this)
                           {
                              if(!(_loc6_ || _loc1_))
                              {
                                 continue;
                              }
                              if(_loc6_)
                              {
                                 if(_loc7_ && _loc3_)
                                 {
                                    continue loop5;
                                 }
                                 while(true)
                                 {
                                    delete this.§0z§[_loc1_];
                                    addr127:
                                    while(true)
                                    {
                                       if(true)
                                       {
                                          break loop6;
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 addr153:
                              }
                              while(true)
                              {
                                 _loc3_++;
                                 continue loop6;
                              }
                           }
                           §§goto(addr127);
                        }
                        else
                        {
                           this.§`!<§.removeEventListener(_loc1_,_loc2_[_loc3_],false);
                        }
                        §§goto(addr153);
                     }
                     continue loop3;
                  }
               }
            }
            §§goto(addr122);
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§'K§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            this.§`!<§.addEventListener(param1,param2,false,param4,param5);
            if(_loc8_ || param2)
            {
               §§goto(addr44);
            }
            §§goto(addr51);
         }
         addr44:
         if(!this.§0z§[param1])
         {
            if(!_loc7_)
            {
               addr51:
               this.§0z§[param1] = new Vector.<Function>();
            }
         }
         var _loc6_:Vector.<Function>;
         (_loc6_ = this.§0z§[param1]).push(param2);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Vector.<Function> = null;
         var _loc5_:* = 0;
         if(!_loc6_)
         {
            this.§`!<§.removeEventListener(param1,param2,false);
            if(_loc7_ || param3)
            {
               if(this.§0z§[param1])
               {
                  addr52:
                  §§push(int((_loc4_ = this.§0z§[param1]).indexOf(param2)));
                  if(_loc7_)
                  {
                     §§push(§§pop());
                     if(_loc7_ || this)
                     {
                        _loc5_ = §§pop();
                        addr83:
                        §§push(0);
                     }
                     if(§§pop() >= §§pop())
                     {
                        if(_loc7_)
                        {
                           _loc4_.splice(_loc5_,1);
                        }
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr83);
               }
               addr91:
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§`!<§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`!<§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`!<§.willTrigger(param1);
      }
   }
}
