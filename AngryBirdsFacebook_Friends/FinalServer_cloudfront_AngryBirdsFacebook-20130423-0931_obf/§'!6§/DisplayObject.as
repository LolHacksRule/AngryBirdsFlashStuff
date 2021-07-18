package §'!6§
{
   import §"a§.§>w§;
   import §`#§.§3!#§;
   import §`#§.§7!p§;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.TouchEvent;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var static:Vector.<DisplayObject>;
      
      private static var §,"$§:Rectangle;
      
      private static var §`+§:Matrix;
      
      private static var §[!O§:Matrix;
      
      protected static var §%"<§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && DisplayObject))
         {
            static = new Vector.<DisplayObject>(0);
            loop0:
            do
            {
               §,"$§ = new Rectangle();
               while(true)
               {
                  §`+§ = new Matrix();
                  while(_loc1_ || _loc2_)
                  {
                     §[!O§ = new Matrix();
                     do
                     {
                        §%"<§ = 0;
                     }
                     while(!_loc1_);
                     
                     if(!(_loc2_ && _loc1_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc2_);
            
         }
      }
      
      private var §4!K§:Number;
      
      private var §7!#§:Number;
      
      private var §5'§:Number;
      
      private var §>K§:Number;
      
      private var §'@§:Number;
      
      private var §[!d§:Number;
      
      private var §!"W§:Number;
      
      private var §2"D§:Number;
      
      private var §,!W§:Boolean;
      
      private var §]!o§:Boolean;
      
      private var §#!a§:Number;
      
      private var mName:String;
      
      private var §3!H§:Number;
      
      private var §8!2§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
            if(!_loc3_)
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     throw new §7!p§();
                  }
                  §§goto(addr153);
               }
               else
               {
                  addr49:
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this.§!"W§ = 0);
                  if(!(_loc3_ && _loc3_))
                  {
                     var _loc1_:*;
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§>K§ = §§pop();
                  §§push(_loc1_);
                  if(!(_loc3_ && this))
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§5'§ = §§pop();
                  §§push(_loc1_);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§7!#§ = §§pop();
                  §§pop().§4!K§ = _loc1_;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr114:
                     §§push(this);
                     §§push(this);
                     §§push(this.§2"D§ = 1);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(_loc1_ = §§pop());
                     }
                     §§pop().§[!d§ = §§pop();
                     §§pop().§'@§ = _loc1_;
                     if(_loc2_ || this)
                     {
                        addr153:
                        this.§,!W§ = this.§]!o§ = true;
                        if(_loc2_ || _loc1_)
                        {
                           addr169:
                           this.§3!H§ = -1;
                        }
                        return;
                     }
                  }
               }
               §§goto(addr169);
            }
            §§goto(addr114);
         }
         §§goto(addr49);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.removeEventListeners();
         }
      }
      
      public function §,!s§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§8!2§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§8!2§);
                     addr57:
                     while(true)
                     {
                        §§pop().removeChild(this);
                        addr59:
                        while(true)
                        {
                        }
                     }
                  }
                  addr55:
               }
               for(; param1; §§goto(addr59))
               {
                  if(_loc2_ || param1)
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     this.dispose();
                  }
                  if(!_loc3_)
                  {
                     addr49:
                     break;
                  }
                  §§goto(addr55);
               }
               return;
            }
            §§goto(addr57);
         }
         §§goto(addr49);
      }
      
      public function §'!D§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            if(param2)
            {
               if(!_loc6_)
               {
                  param2.identity();
                  if(!_loc6_)
                  {
                     addr36:
                     if(param1 == this)
                     {
                        if(_loc5_)
                        {
                           return param2;
                        }
                        loop20:
                        while(true)
                        {
                           §§push(this.§>K§);
                           loop19:
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 addr327:
                                 §§push(0);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    loop8:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(_loc5_)
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         param2.translate(-this.§5'§,-this.§>K§);
                                                      }
                                                      addr336:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§'@§);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§push(1);
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               addr273:
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                                  addr274:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr275:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_ && param1)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          break loop13;
                                                                                       }
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(this.§[!d§);
                                                                                             continue loop13;
                                                                                          }
                                                                                          continue loop20;
                                                                                       }
                                                                                       §§goto(addr336);
                                                                                    }
                                                                                 }
                                                                                 addr285:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                param2.scale(this.§'@§,this.§[!d§);
                                                                                                addr265:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             addr259:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§5'§);
                                                                                                addr368:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   addr369:
                                                                                                   loop30:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      addr370:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         addr371:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            addr372:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  continue loop20;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop30;
                                                                                                      }
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr366:
                                                                                          }
                                                                                       }
                                                                                       addr252:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§!"W§);
                                                                                       continue loop12;
                                                                                    }
                                                                                 }
                                                                                 addr250:
                                                                              }
                                                                              §§goto(addr373);
                                                                           }
                                                                           else
                                                                           {
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr382:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§8!2§ == null);
                                                                                          addr350:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc5_ || param2))
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             if(_loc6_ && this)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(_loc6_ && param2)
                                                                                                   {
                                                                                                      break loop13;
                                                                                                   }
                                                                                                   §§push(param1 == null);
                                                                                                   continue loop14;
                                                                                                }
                                                                                                addr389:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr364:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(param1 == null)
                                                                                       {
                                                                                          break loop13;
                                                                                       }
                                                                                       if(param1.§8!2§ == this)
                                                                                       {
                                                                                          if(_loc5_ || param2)
                                                                                          {
                                                                                             param1.§'!D§(this,param2);
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                param2.invert();
                                                                                                addr470:
                                                                                             }
                                                                                             §§goto(addr470);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr462:
                                                                                             if(true)
                                                                                             {
                                                                                                var _loc3_:DisplayObject = null;
                                                                                                var _loc4_:DisplayObject = this;
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr495:
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      static.push(_loc4_);
                                                                                                      if(!(_loc6_ && this))
                                                                                                      {
                                                                                                         _loc4_ = _loc4_.parent;
                                                                                                         §§goto(addr495);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                _loc4_ = param1;
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr508:
                                                                                                   §§push(Boolean(_loc4_));
                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr546:
                                                                                                            if(!(_loc6_ && this))
                                                                                                            {
                                                                                                               §§push(static.indexOf(_loc4_) == -1);
                                                                                                            }
                                                                                                            _loc3_ = _loc4_;
                                                                                                            _loc4_ = this;
                                                                                                            if(!(_loc6_ && param1))
                                                                                                            {
                                                                                                               addr582:
                                                                                                               if(_loc4_ != _loc3_)
                                                                                                               {
                                                                                                                  _loc4_.§'!D§(_loc4_.§8!2§,§`+§);
                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr573:
                                                                                                                     param2.concat(§`+§);
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        _loc4_ = _loc4_.parent;
                                                                                                                        §§goto(addr582);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr594:
                                                                                                                  _loc4_ = param1;
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     addr637:
                                                                                                                     if(_loc4_ != _loc3_)
                                                                                                                     {
                                                                                                                        _loc4_.§'!D§(_loc4_.§8!2§,§`+§);
                                                                                                                        if(_loc5_ || this)
                                                                                                                        {
                                                                                                                           §[!O§.concat(§`+§);
                                                                                                                           if(!(_loc6_ && param1))
                                                                                                                           {
                                                                                                                              _loc4_ = _loc4_.parent;
                                                                                                                              §§goto(addr637);
                                                                                                                           }
                                                                                                                           addr642:
                                                                                                                           §[!O§.invert();
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           §§goto(addr649);
                                                                                                                        }
                                                                                                                        param2.concat(§[!O§);
                                                                                                                        addr649:
                                                                                                                        return param2;
                                                                                                                     }
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§goto(addr642);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr642);
                                                                                                               }
                                                                                                               if(!(_loc6_ && this))
                                                                                                               {
                                                                                                                  §[!O§.identity();
                                                                                                               }
                                                                                                               §§goto(addr594);
                                                                                                            }
                                                                                                            §§goto(addr573);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      _loc4_ = _loc4_.parent;
                                                                                                      §§goto(addr508);
                                                                                                   }
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      if(_loc4_ == null)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§goto(addr546);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr546);
                                                                                                   }
                                                                                                   throw new ArgumentError("Object not connected to target");
                                                                                                }
                                                                                                §§goto(addr546);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr464);
                                                                                       }
                                                                                       addr450:
                                                                                       static.length = 0;
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§goto(addr450);
                                                                                       }
                                                                                       if(_loc5_ || this)
                                                                                       {
                                                                                          §§goto(addr462);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr470);
                                                                                       }
                                                                                       §§goto(addr470);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr366);
                                                                        }
                                                                        §§goto(addr372);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr402:
                                                            _loc4_ = this;
                                                            addr421:
                                                            if(_loc4_)
                                                            {
                                                               _loc4_.§'!D§(_loc4_.§8!2§,§`+§);
                                                               param2.concat(§`+§);
                                                               if(_loc5_)
                                                               {
                                                                  _loc4_ = _loc4_.parent;
                                                                  §§goto(addr421);
                                                               }
                                                            }
                                                            return param2;
                                                         }
                                                         continue loop19;
                                                      }
                                                      continue loop19;
                                                   }
                                                }
                                             }
                                             §§goto(addr379);
                                          }
                                          §§goto(addr350);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr368);
                           }
                        }
                     }
                     else
                     {
                        addr383:
                        §§push(param1 == this.§8!2§);
                     }
                     §§goto(addr387);
                  }
                  §§goto(addr216);
               }
               §§goto(addr383);
            }
            else
            {
               param2 = new Matrix();
            }
            §§goto(addr36);
         }
         §§goto(addr259);
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §3!#§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr150:
                           loop9:
                           while(true)
                           {
                              §§push(this.§,!W§);
                              addr122:
                              while(_loc4_ && _loc3_)
                              {
                                 continue loop3;
                              }
                              if(!_loc3_)
                              {
                                 continue loop1;
                              }
                              §§push(!§§pop());
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    addr97:
                                    if(§§pop())
                                    {
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc4_ && param2))
                                          {
                                             return null;
                                          }
                                          else
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                addr31:
                                                while(this.getBounds(this,§,"$§).containsPoint(param1))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop9;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§]!o§);
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(!(_loc3_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         §§push(!§§pop());
                                                         break;
                                                      }
                                                      §§goto(addr122);
                                                   }
                                                   continue loop0;
                                                }
                                                §§push(null);
                                                if(!_loc4_)
                                                {
                                                   return §§pop();
                                                }
                                             }
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr31);
                                    }
                                    continue loop0;
                                    addr97:
                                 }
                                 continue loop2;
                              }
                              §§goto(addr143);
                           }
                        }
                     }
                     §§goto(addr97);
                  }
               }
            }
         }
         §§goto(addr150);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §[!O§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§'!D§(_loc2_.§8!2§,§`+§);
            if(_loc3_ && _loc3_)
            {
               break;
            }
            §[!O§.concat(§`+§);
            if(!(_loc4_ || _loc2_))
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         return §[!O§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §[!O§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(!(_loc4_ && this))
               {
                  addr75:
                  §[!O§.invert();
                  break;
               }
               break;
            }
            _loc2_.§'!D§(_loc2_.§8!2§,§`+§);
            if(_loc3_)
            {
               §[!O§.concat(§`+§);
               if(!_loc4_)
               {
                  continue;
               }
               §§goto(addr75);
            }
            break;
            §§goto(addr75);
         }
         return §[!O§.transformPoint(param1);
      }
      
      public function render(param1:§>w§, param2:Number) : void
      {
         throw new §3!#§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TouchEvent = null;
         if(!_loc3_)
         {
            if(param1 is TouchEvent)
            {
               if(!(_loc3_ && this))
               {
                  _loc2_ = param1 as TouchEvent;
                  addr43:
                  if(_loc4_)
                  {
                     if(_loc2_.timestamp == this.§3!H§)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           return;
                        }
                     }
                  }
                  this.§3!H§ = _loc2_.timestamp;
                  addr79:
                  super.dispatchEvent(param1);
               }
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr43);
      }
      
      function §;!X§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(!_loc8_)
            {
               §§push(!§§pop());
               if(!_loc8_)
               {
                  if(§§pop())
                  {
                     if(!(_loc8_ && this))
                     {
                        addr48:
                        §§pop();
                        if(_loc7_ || param1)
                        {
                           §§push(_loc2_ == null);
                           if(!_loc8_)
                           {
                              addr62:
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(_loc7_)
                              {
                                 if(_loc2_ == this)
                                 {
                                    if(_loc7_ || param1)
                                    {
                                       break;
                                    }
                                 }
                              }
                              _loc3_ = §-"4§();
                              if(!_loc8_)
                              {
                                 §§push(param1 == this.§8!2§);
                                 if(!_loc8_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc7_ || this)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc7_ || _loc2_)
                                       {
                                          §§push(§§pop());
                                          if(_loc7_ || _loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc8_)
                                                {
                                                   addr121:
                                                   §§pop();
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      §§push(this.§8!2§);
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc8_)
                                                         {
                                                            addr142:
                                                            §§push(§§pop());
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               addr160:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(_loc3_.length > 0);
                                                                        if(_loc8_ && _loc2_)
                                                                        {
                                                                        }
                                                                        §§goto(addr277);
                                                                     }
                                                                     addr273:
                                                                     addr277:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           addr291:
                                                                           var _loc5_:* = 0;
                                                                           addr290:
                                                                           if(_loc7_)
                                                                           {
                                                                              addr294:
                                                                              var _loc6_:* = _loc3_;
                                                                              if(_loc8_)
                                                                              {
                                                                              }
                                                                              loop4:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§hasnext(_loc6_,_loc5_));
                                                                                 addr313:
                                                                                 while(§§pop())
                                                                                 {
                                                                                    _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       this.addEventListeningObject(this,_loc4_);
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 addr314:
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     return;
                                                                     §§push(_loc3_.length > 0);
                                                                  }
                                                                  §§goto(addr277);
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(0);
                                                                     if(_loc7_)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           _loc6_ = _loc3_;
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              loop1:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§hasnext(_loc6_,_loc5_));
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc7_ || _loc2_)
                                                                                       {
                                                                                          if(!(_loc8_ && _loc3_))
                                                                                          {
                                                                                             if(_loc7_ || _loc2_)
                                                                                             {
                                                                                                addr246:
                                                                                                this.§8!2§ = param1;
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   addr251:
                                                                                                   addr253:
                                                                                                   §§push(Boolean(this.§8!2§));
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      addr257:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc8_ && param1)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr277);
                                                                                                   }
                                                                                                   §§pop();
                                                                                                   if(!(_loc8_ && _loc2_))
                                                                                                   {
                                                                                                      §§goto(addr273);
                                                                                                   }
                                                                                                   §§goto(addr277);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr290);
                                                                                       }
                                                                                       §§goto(addr314);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                       if(_loc8_ && this)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          this.removeEventListeningObject(this,_loc4_);
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr313);
                                                                           }
                                                                           §§goto(addr215);
                                                                        }
                                                                        §§goto(addr294);
                                                                     }
                                                                     §§goto(addr291);
                                                                  }
                                                                  §§goto(addr251);
                                                               }
                                                               §§goto(addr246);
                                                            }
                                                            §§goto(addr257);
                                                         }
                                                         §§goto(addr277);
                                                      }
                                                      §§goto(addr253);
                                                   }
                                                   §§goto(addr273);
                                                }
                                                §§goto(addr257);
                                             }
                                             §§goto(addr142);
                                          }
                                          §§goto(addr160);
                                       }
                                    }
                                    §§goto(addr257);
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr291);
                           }
                           §§goto(addr62);
                        }
                        break;
                     }
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr48);
         }
         throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(this.§8!2§);
            if(!(_loc3_ && param2))
            {
               if(!§§pop())
               {
               }
               §§goto(addr56);
            }
            §§pop().removeEventListeningObject(param1,param2);
         }
         addr56:
         if(_loc4_ || param2)
         {
            §§push(this.§8!2§);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§8!2§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr31);
            }
            §§pop().addEventListeningObject(param1,param2);
         }
         addr31:
         if(!_loc3_)
         {
            §§push(this.§8!2§);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §#!x§() : Matrix
      {
         return this.§'!D§(this.§8!2§);
      }
      
      public function get § #§() : Rectangle
      {
         return this.getBounds(this.§8!2§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§8!2§,§,"$§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§'@§ = 1;
         }
         §§push(this.width);
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(!_loc3_)
               {
                  addr95:
               }
               return;
            }
            if(_loc3_)
            {
               §§push(this);
               §§push(param1);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleX = §§pop();
            }
         }
         §§goto(addr95);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§8!2§,§,"$§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§[!d§ = 1;
         }
         §§push(this.height);
         if(!(_loc3_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(_loc4_ || _loc3_)
               {
                  if(_loc3_ && this)
                  {
                     addr89:
                     §§push(this);
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleY = §§pop();
                     addr96:
                  }
                  else
                  {
                     addr85:
                  }
                  return;
               }
               §§goto(addr96);
            }
            §§goto(addr89);
         }
         §§goto(addr85);
      }
      
      public function get root() : DisplayObject
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:DisplayObject = this;
         loop0:
         while(true)
         {
            §§push(_loc1_.parent);
            while(§§pop())
            {
               §§push(_loc1_.parent);
               if(!(_loc2_ && _loc2_))
               {
                  continue loop0;
               }
            }
            return _loc1_;
         }
      }
      
      override public function addEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            super.addEventListener(param1,param2);
         }
         do
         {
            this.addEventListeningObject(this,param1);
         }
         while(_loc4_);
         
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.removeEventListener(param1,param2);
            while(!hasEventListener(param1))
            {
               if(_loc4_ && param2)
               {
                  break;
               }
               addr66:
               if(_loc4_ && this)
               {
                  continue;
               }
               this.removeEventListeningObject(this,param1);
               §§goto(addr66);
            }
            return;
         }
         §§goto(addr66);
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:Array = §-"4§();
         if(!_loc6_)
         {
            super.removeEventListeners(param1);
            if(_loc7_ || _loc2_)
            {
               if(param1 == null)
               {
                  addr49:
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc7_)
                     {
                        this.removeEventListeningObject(this,_loc3_);
                     }
                  }
                  if(_loc7_ || this)
                  {
                  }
               }
               else
               {
                  this.removeEventListeningObject(this,param1);
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      public function §#,§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§!"W§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§'@§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr509:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    addr214:
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§push(1);
                                    if(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             loop43:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                loop44:
                                                while(true)
                                                {
                                                   loop45:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop46:
                                                         while(true)
                                                         {
                                                            param1.prependScale(this.§'@§,this.§[!d§,1);
                                                            loop47:
                                                            while(_loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§5'§);
                                                                  loop49:
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     addr125:
                                                                     loop50:
                                                                     while(!(_loc2_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           continue loop43;
                                                                        }
                                                                        addr157:
                                                                        loop51:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop45;
                                                                           }
                                                                           if(_loc3_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr163:
                                                                              §§push(§§pop());
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop54:
                                                                                    while(§§pop())
                                                                                    {
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          if(!(_loc2_ && this))
                                                                                          {
                                                                                             if(_loc3_ || this)
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.prependTranslation(this.§5'§,this.§>K§,0);
                                                                                                      addr99:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc3_ || this))
                                                                                                         {
                                                                                                            continue loop47;
                                                                                                         }
                                                                                                         addr106:
                                                                                                         if(!(_loc2_ && _loc3_))
                                                                                                         {
                                                                                                            if(!(_loc2_ && param1))
                                                                                                            {
                                                                                                               break loop54;
                                                                                                            }
                                                                                                            loop27:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  if(!(_loc3_ || param1))
                                                                                                                  {
                                                                                                                     continue loop5;
                                                                                                                  }
                                                                                                                  param1.prependTranslation(this.§4!K§,this.§7!#§,0);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop29:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§!"W§);
                                                                                                                        loop30:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              addr457:
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 break loop50;
                                                                                                                              }
                                                                                                                              §§push(§§pop() + this.§5'§);
                                                                                                                              §§push(0);
                                                                                                                              loop55:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 addr462:
                                                                                                                                 addr423:
                                                                                                                                 addr357:
                                                                                                                                 loop14:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr463:
                                                                                                                                    §§push(!§§pop());
                                                                                                                                    if(!(_loc2_ && param1))
                                                                                                                                    {
                                                                                                                                       addr470:
                                                                                                                                       if(!(_loc2_ && this))
                                                                                                                                       {
                                                                                                                                          addr478:
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(_loc3_ || this)
                                                                                                                                          {
                                                                                                                                             if(!(_loc2_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   addr503:
                                                                                                                                                   §§pop();
                                                                                                                                                   §§push(this.§7!#§);
                                                                                                                                                   break loop30;
                                                                                                                                                   addr504:
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue loop3;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             §§goto(addr470);
                                                                                                                                          }
                                                                                                                                          addr511:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                addr514:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§[!d§);
                                                                                                                                                   addr442:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(1);
                                                                                                                                                      if(!(_loc3_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         continue loop55;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop14;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr513:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                §§push(this.§4!K§);
                                                                                                                                                continue loop0;
                                                                                                                                             }
                                                                                                                                             §§goto(addr457);
                                                                                                                                             §§push(this.§4!K§);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr513);
                                                                                                                                 }
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr425);
                                                                                                                                 }
                                                                                                                                 break loop54;
                                                                                                                              }
                                                                                                                              addr461:
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           loop42:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc2_ && _loc3_)
                                                                                                                              {
                                                                                                                                 continue loop30;
                                                                                                                              }
                                                                                                                              addr193:
                                                                                                                              if(_loc3_ || param1)
                                                                                                                              {
                                                                                                                                 addr200:
                                                                                                                                 if(!(_loc2_ && this))
                                                                                                                                 {
                                                                                                                                    if(_loc3_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr214);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              while(!_loc2_)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    addr337:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(!§§pop());
                                                                                                                                       addr338:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr339:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                             continue loop29;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr193);
                                                                                                                              }
                                                                                                                              §§push(§§pop() == 0);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 §§goto(addr462);
                                                                                                                              }
                                                                                                                              §§push(!§§pop());
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 continue loop2;
                                                                                                                              }
                                                                                                                              §§goto(addr423);
                                                                                                                              addr34:
                                                                                                                              if(!(_loc3_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop50;
                                                                                                                                 }
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop1;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    if(!(_loc2_ && this))
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          addr61:
                                                                                                                                          §§push(!§§pop());
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop51;
                                                                                                                                          }
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                continue loop54;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr279:
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      while(_loc3_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               continue loop44;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               addr295:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop42;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr478);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr163);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               break loop47;
                                                                                                                                                            }
                                                                                                                                                            addr399:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr338);
                                                                                                                                                         §§goto(addr279);
                                                                                                                                                      }
                                                                                                                                                      addr279:
                                                                                                                                                      addr398:
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§goto(addr337);
                                                                                                                                             }
                                                                                                                                             §§goto(addr463);
                                                                                                                                             addr269:
                                                                                                                                          }
                                                                                                                                          §§goto(addr294);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr172);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr61);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(!(_loc2_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(_loc3_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(!§§pop());
                                                                                                                                             break loop51;
                                                                                                                                          }
                                                                                                                                          break loop51;
                                                                                                                                       }
                                                                                                                                       §§goto(addr457);
                                                                                                                                    }
                                                                                                                                    addr415:
                                                                                                                                    §§goto(addr416);
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    addr370:
                                                                                                                                 }
                                                                                                                                 §§goto(addr462);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(1);
                                                                                                                                    addr256:
                                                                                                                                    while(!(_loc2_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr269);
                                                                                                                                                §§push(!§§pop());
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr339);
                                                                                                                                       }
                                                                                                                                       §§goto(addr418);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr255:
                                                                                                                              }
                                                                                                                              §§goto(addr461);
                                                                                                                           }
                                                                                                                           §§goto(addr457);
                                                                                                                        }
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           §§goto(addr415);
                                                                                                                           §§push(this.§>K§);
                                                                                                                        }
                                                                                                                        §§goto(addr442);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr455);
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               if(_loc3_ || param1)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr255);
                                                                                                                  }
                                                                                                                  addr242:
                                                                                                               }
                                                                                                               §§goto(addr504);
                                                                                                            }
                                                                                                            break;
                                                                                                            §§goto(addr106);
                                                                                                         }
                                                                                                         §§goto(addr425);
                                                                                                      }
                                                                                                   }
                                                                                                   addr92:
                                                                                                }
                                                                                                while(!_loc2_)
                                                                                                {
                                                                                                   param1.prependRotation(this.§!"W§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                   §§goto(addr320);
                                                                                                }
                                                                                                §§goto(addr356);
                                                                                                addr307:
                                                                                             }
                                                                                             §§goto(addr295);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr173);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr99);
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr173:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc2_ && this)
                                                                                       {
                                                                                          continue loop46;
                                                                                       }
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop49;
                                                                                       }
                                                                                       addr425:
                                                                                       param1.prependTranslation(this.§4!K§ + this.§5'§,this.§7!#§ + this.§>K§,0);
                                                                                    }
                                                                                    continue loop47;
                                                                                 }
                                                                                 addr172:
                                                                                 §§goto(addr357);
                                                                              }
                                                                              §§goto(addr279);
                                                                           }
                                                                           §§goto(addr264);
                                                                        }
                                                                        while(_loc3_ || param1)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           §§goto(addr398);
                                                                           §§push(§§pop());
                                                                        }
                                                                        §§goto(addr503);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(§§pop() != §§pop())
                                                                           {
                                                                              §§goto(addr307);
                                                                           }
                                                                           §§goto(addr242);
                                                                        }
                                                                        break;
                                                                        §§goto(addr125);
                                                                     }
                                                                     §§goto(addr336);
                                                                  }
                                                               }
                                                            }
                                                            while(_loc3_ || param1)
                                                            {
                                                               §§goto(addr333);
                                                               §§push(this.§7!#§);
                                                            }
                                                            §§goto(addr514);
                                                         }
                                                      }
                                                      §§goto(addr121);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr509);
                                       }
                                       §§goto(addr417);
                                    }
                                    §§goto(addr256);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr511);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public function get x() : Number
      {
         return this.§4!K§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§4!K§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§7!#§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§7!#§ = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.§#!a§;
      }
      
      public function set z(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!this.§8!2§)
            {
               if(_loc2_ || _loc2_)
               {
                  addr28:
                  this.§#!a§ = param1;
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function get pivotX() : Number
      {
         return this.§5'§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5'§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§>K§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§>K§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§'@§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§'@§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§[!d§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§[!d§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§!"W§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         if(_loc4_ || _loc2_)
         {
            §§push(param1);
            if(!(_loc3_ && this))
            {
               if(§§pop() > Math.PI)
               {
                  if(_loc4_ || param1)
                  {
                     addr196:
                     §§push(Number(Math.ceil(param1 / (Math.PI * 2))));
                     while(true)
                     {
                        _loc2_ = §§pop();
                     }
                     addr196:
                  }
                  while(true)
                  {
                     §§push(param1);
                     addr147:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           §§push(Math.PI * 2);
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                           }
                           addr154:
                        }
                        addr155:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           addr156:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr157:
                              while(true)
                              {
                                 param1 = §§pop();
                                 addr158:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr197:
               }
               loop7:
               while(true)
               {
                  §§push(param1);
                  loop8:
                  for(; _loc4_; if(!(_loc4_ || this))
                  {
                     continue;
                  },§§push(_loc2_),if(!(_loc3_ && _loc3_))
                  {
                     if(_loc4_)
                     {
                        §§push(Math.PI * 2);
                        if(!_loc3_)
                        {
                           addr80:
                           §§push(§§pop() * §§pop());
                           if(_loc4_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc4_ || _loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr125);
                  },§§goto(addr80))
                  {
                     if(!_loc3_)
                     {
                        §§push(-Math.PI);
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              loop14:
                              while(true)
                              {
                                 §§push(Number(Math.ceil(-param1 / (Math.PI * 2))));
                                 loop15:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    addr137:
                                    addr103:
                                    while(true)
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          §§push(param1);
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop8;
                                          }
                                          continue loop15;
                                       }
                                       §§goto(addr197);
                                    }
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr110:
                                       param1 = §§pop();
                                       loop11:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                while(true)
                                                {
                                                   this.§!"W§ = param1;
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         break;
                                                      }
                                                      continue loop14;
                                                   }
                                                   continue loop11;
                                                }
                                                return;
                                                addr31:
                                             }
                                             break;
                                          }
                                          §§goto(addr137);
                                       }
                                       continue loop7;
                                    }
                                    §§goto(addr156);
                                 }
                              }
                              addr126:
                           }
                           §§goto(addr31);
                        }
                        addr125:
                     }
                     §§goto(addr147);
                  }
                  §§goto(addr157);
               }
            }
            §§goto(addr196);
         }
         §§goto(addr126);
      }
      
      public function get alpha() : Number
      {
         return this.§2"D§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            if(_loc3_ || _loc2_)
            {
               §§push(param1);
               if(_loc3_ || param1)
               {
                  §§push(§§pop() < 0);
                  if(_loc3_ || param1)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || param1)
                        {
                           addr72:
                           §§push(0);
                           if(_loc3_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc3_)
                              {
                              }
                           }
                           else
                           {
                              addr93:
                              §§push(Number(§§pop()));
                           }
                        }
                        else
                        {
                           addr85:
                           §§push(Number(1));
                           if(!_loc3_)
                           {
                           }
                        }
                        §§goto(addr94);
                     }
                     else
                     {
                        §§push(param1);
                        if(!_loc2_)
                        {
                           §§goto(addr84);
                        }
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr84);
               }
               addr84:
               if(§§pop() > 1)
               {
                  §§goto(addr85);
               }
               else
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§goto(addr93);
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr72);
         }
         addr94:
         §§pop().§2"D§ = §§pop();
      }
      
      public function get visible() : Boolean
      {
         return this.§,!W§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,!W§ = param1;
         }
      }
      
      public function get §^]§() : Boolean
      {
         return this.§]!o§;
      }
      
      public function set §^]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§]!o§ = param1;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§8!2§;
      }
      
      public function get stage() : Stage
      {
         return this.root as Stage;
      }
      
      public function set color(param1:uint) : void
      {
      }
   }
}
