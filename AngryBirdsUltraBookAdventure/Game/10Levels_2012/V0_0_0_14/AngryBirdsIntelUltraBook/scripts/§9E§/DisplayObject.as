package §9E§
{
   import §@4§.§<!I§;
   import §`5§.§?;§;
   import §`5§.§?g§;
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
      
      private static var §0C§:Vector.<DisplayObject>;
      
      private static var §4!r§:Rectangle;
      
      private static var §1=§:Matrix;
      
      private static var §?x§:Matrix;
      
      protected static var §#E§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0C§ = new Vector.<DisplayObject>(0);
            while(true)
            {
               §4!r§ = new Rectangle();
               loop1:
               while(!_loc2_)
               {
                  §1=§ = new Matrix();
                  while(true)
                  {
                     §?x§ = new Matrix();
                     while(_loc1_)
                     {
                        §#E§ = 0;
                        if(_loc1_ || _loc2_)
                        {
                           if(!_loc2_)
                           {
                              return;
                              addr56:
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      private var §;!@§:Number;
      
      private var §3L§:Number;
      
      private var §if §:Number;
      
      private var §2w§:Number;
      
      private var §9P§:Number;
      
      private var §;!x§:Number;
      
      private var §3!f§:Number;
      
      private var §4!R§:Number;
      
      private var §%!Z§:Boolean;
      
      private var §@V§:Boolean;
      
      private var mName:String;
      
      private var §;7§:Number;
      
      private var §&`§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               addr27:
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(!_loc3_)
                  {
                     throw new §?g§();
                  }
               }
            }
            §§push(this);
            §§push(this);
            §§push(this);
            §§push(this);
            §§push(this.§3!f§ = 0);
            if(!(_loc3_ && this))
            {
               var _loc1_:*;
               §§push(_loc1_ = §§pop());
            }
            §§pop().§2w§ = §§pop();
            §§push(_loc1_);
            if(_loc2_ || _loc3_)
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().§if § = §§pop();
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(_loc1_ = §§pop());
            }
            §§pop().§3L§ = §§pop();
            §§pop().§;!@§ = _loc1_;
            if(!(_loc3_ && this))
            {
               §§push(this);
               §§push(this);
               §§push(this.§4!R§ = 1);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§;!x§ = §§pop();
               §§pop().§9P§ = _loc1_;
               if(_loc2_ || this)
               {
                  this.§%!Z§ = this.§@V§ = true;
                  if(!_loc3_)
                  {
                     addr149:
                     this.§;7§ = -1;
                  }
               }
               return;
            }
            §§goto(addr149);
         }
         §§goto(addr27);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.removeEventListeners();
         }
      }
      
      public function §7;§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§&`§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  addr70:
                  while(true)
                  {
                     §§push(this.§&`§);
                     addr72:
                     while(true)
                     {
                        §§pop().removeChild(this);
                        addr74:
                        while(true)
                        {
                        }
                     }
                  }
                  addr70:
               }
               for(; param1; §§goto(addr74))
               {
                  if(_loc2_ || this)
                  {
                     this.dispose();
                  }
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr70);
               }
               return;
            }
            §§goto(addr72);
         }
         §§goto(addr70);
      }
      
      public function §@P§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            if(param2)
            {
               if(!(_loc6_ && _loc3_))
               {
                  param2.identity();
                  if(!(_loc6_ && param2))
                  {
                     addr46:
                     if(param1 == this)
                     {
                        if(_loc5_ || param1)
                        {
                           return param2;
                        }
                        loop31:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(this.§;!@§);
                              loop7:
                              for(; !_loc6_; §§push(this.§3L§),if(!(_loc5_ || this))
                              {
                                 continue;
                              },if(_loc5_ || _loc3_)
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(0);
                                    if(_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc6_ && param2))
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                if(!(_loc6_ && param1))
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      addr139:
                                                      §§push(!§§pop());
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr143);
                                                         }
                                                         §§goto(addr274);
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                   §§goto(addr403);
                                                }
                                                §§goto(addr341);
                                             }
                                             §§goto(addr330);
                                          }
                                          §§goto(addr139);
                                       }
                                       §§goto(addr236);
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr377);
                              },§§goto(addr233))
                              {
                                 §§push(0);
                                 while(_loc5_ || param1)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc5_ || param2)
                                       {
                                          §§push(!§§pop());
                                          if(_loc5_ || _loc3_)
                                          {
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§push(§§pop());
                                                if(_loc5_)
                                                {
                                                   if(_loc5_ || param2)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(§§pop())
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  param2.translate(this.§;!@§,this.§3L§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr157:
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr300);
                                                                  }
                                                                  §§goto(addr417);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr222);
                                                               }
                                                            }
                                                            §§goto(addr157);
                                                         }
                                                         return param2;
                                                         addr143:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            addr221:
                                                            §§pop();
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  continue loop7;
                                                               }
                                                               addr404:
                                                               addr250:
                                                               addr250:
                                                               while(_loc5_)
                                                               {
                                                                  continue loop31;
                                                               }
                                                               addr285:
                                                               if(_loc5_)
                                                               {
                                                                  addr287:
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        param2.scale(this.§9P§,this.§;!x§);
                                                                        addr300:
                                                                        while(true)
                                                                        {
                                                                           addr230:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§3!f§);
                                                                              break loop10;
                                                                           }
                                                                        }
                                                                        §§goto(addr287);
                                                                     }
                                                                     addr294:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     break loop7;
                                                                     §§goto(addr287);
                                                                  }
                                                                  addr396:
                                                               }
                                                               loop21:
                                                               while(!(_loc6_ && param2))
                                                               {
                                                                  param2.translate(-this.§if §,-this.§2w§);
                                                                  if(_loc5_)
                                                                  {
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§9P§);
                                                                        loop29:
                                                                        while(true)
                                                                        {
                                                                           §§push(1);
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              addr306:
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr309:
                                                                                 §§push(!§§pop());
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr312:
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          addr330:
                                                                                          §§pop();
                                                                                          §§push(this.§;!x§);
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_ && this)
                                                                                             {
                                                                                                continue loop29;
                                                                                             }
                                                                                             §§push(1);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue loop28;
                                                                                             }
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      addr274:
                                                                                                      §§push(!§§pop());
                                                                                                      if(!(_loc6_ && this))
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            while(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr285);
                                                                                                            }
                                                                                                            §§goto(addr230);
                                                                                                            addr283:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr412:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1 == null);
                                                                                                                  loop26:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     loop27:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr403:
                                                                                                                           §§pop();
                                                                                                                           break loop21;
                                                                                                                        }
                                                                                                                        addr365:
                                                                                                                        loop14:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr366:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 break loop14;
                                                                                                                              }
                                                                                                                              if(_loc6_ && param1)
                                                                                                                              {
                                                                                                                                 §§goto(addr417);
                                                                                                                              }
                                                                                                                              §§push(this.§if § == 0);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(!§§pop());
                                                                                                                                 addr379:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr380:
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(_loc6_ && this)
                                                                                                                                    {
                                                                                                                                       continue loop27;
                                                                                                                                    }
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc5_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                          §§pop();
                                                                                                                                          §§goto(addr396);
                                                                                                                                       }
                                                                                                                                       addr388:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr341:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          continue loop21;
                                                                                                                                       }
                                                                                                                                       continue loop22;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop27;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(param1 == null)
                                                                                                                        {
                                                                                                                           §§goto(addr417);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           if(param1.§&`§ == this)
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 param1.§@P§(this,param2);
                                                                                                                                 if(_loc5_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    param2.invert();
                                                                                                                                    addr483:
                                                                                                                                 }
                                                                                                                                 §§goto(addr483);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr475:
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    var _loc3_:DisplayObject = null;
                                                                                                                                    var _loc4_:DisplayObject = this;
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       addr503:
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          §0C§.push(_loc4_);
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             _loc4_ = _loc4_.parent;
                                                                                                                                             §§goto(addr503);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    _loc4_ = param1;
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       addr516:
                                                                                                                                       §§push(Boolean(_loc4_));
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   addr532:
                                                                                                                                                   if(§0C§.indexOf(_loc4_) == -1)
                                                                                                                                                   {
                                                                                                                                                      _loc4_ = _loc4_.parent;
                                                                                                                                                      §§goto(addr516);
                                                                                                                                                   }
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      addr535:
                                                                                                                                                      if(_loc4_ == null)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc6_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr545);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   _loc3_ = _loc4_;
                                                                                                                                                   _loc4_ = this;
                                                                                                                                                   if(!(_loc6_ && this))
                                                                                                                                                   {
                                                                                                                                                      addr585:
                                                                                                                                                      if(_loc4_ != _loc3_)
                                                                                                                                                      {
                                                                                                                                                         _loc4_.§@P§(_loc4_.§&`§,§1=§);
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            param2.concat(§1=§);
                                                                                                                                                            if(!(_loc6_ && this))
                                                                                                                                                            {
                                                                                                                                                               addr581:
                                                                                                                                                               _loc4_ = _loc4_.parent;
                                                                                                                                                               §§goto(addr585);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr592);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr581);
                                                                                                                                                      }
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         §?x§.identity();
                                                                                                                                                      }
                                                                                                                                                      addr592:
                                                                                                                                                      _loc4_ = param1;
                                                                                                                                                      if(!(_loc6_ && param2))
                                                                                                                                                      {
                                                                                                                                                         addr635:
                                                                                                                                                         if(_loc4_ != _loc3_)
                                                                                                                                                         {
                                                                                                                                                            _loc4_.§@P§(_loc4_.§&`§,§1=§);
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               §?x§.concat(§1=§);
                                                                                                                                                               if(!(_loc6_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  _loc4_ = _loc4_.parent;
                                                                                                                                                                  §§goto(addr635);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr645);
                                                                                                                                                         }
                                                                                                                                                         if(_loc5_ || param1)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr645);
                                                                                                                                                      }
                                                                                                                                                      addr645:
                                                                                                                                                      §?x§.invert();
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         param2.concat(§?x§);
                                                                                                                                                      }
                                                                                                                                                      return param2;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr581);
                                                                                                                                                }
                                                                                                                                                §§goto(addr535);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr532);
                                                                                                                                    }
                                                                                                                                    addr545:
                                                                                                                                    throw new ArgumentError("Object not connected to target");
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr477);
                                                                                                                           }
                                                                                                                           addr458:
                                                                                                                           §0C§.length = 0;
                                                                                                                           if(_loc6_ && param1)
                                                                                                                           {
                                                                                                                              §§goto(addr458);
                                                                                                                           }
                                                                                                                           if(!(_loc6_ && this))
                                                                                                                           {
                                                                                                                              §§goto(addr475);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr483);
                                                                                                                           }
                                                                                                                           §§goto(addr483);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr411:
                                                                                                         }
                                                                                                         §§goto(addr287);
                                                                                                      }
                                                                                                      §§goto(addr388);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         addr410:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               §§goto(addr411);
                                                                                                            }
                                                                                                            §§goto(addr312);
                                                                                                         }
                                                                                                      }
                                                                                                      addr409:
                                                                                                   }
                                                                                                   §§goto(addr365);
                                                                                                }
                                                                                                §§goto(addr378);
                                                                                             }
                                                                                             §§goto(addr274);
                                                                                             §§goto(addr330);
                                                                                          }
                                                                                          addr256:
                                                                                       }
                                                                                       §§goto(addr283);
                                                                                    }
                                                                                    §§goto(addr410);
                                                                                 }
                                                                                 while(_loc5_)
                                                                                 {
                                                                                    §§goto(addr340);
                                                                                    §§push(!§§pop());
                                                                                 }
                                                                                 §§goto(addr379);
                                                                                 addr337:
                                                                              }
                                                                              §§goto(addr366);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr417);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr365);
                                                               }
                                                               §§goto(addr221);
                                                            }
                                                            while(!_loc6_)
                                                            {
                                                               §§push(0);
                                                               while(true)
                                                               {
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           param2.rotate(this.§3!f§);
                                                                           §§goto(addr250);
                                                                        }
                                                                        §§goto(addr412);
                                                                     }
                                                                     addr417:
                                                                     _loc4_ = this;
                                                                     addr434:
                                                                  }
                                                                  continue loop6;
                                                                  if(_loc4_)
                                                                  {
                                                                     _loc4_.§@P§(_loc4_.§&`§,§1=§);
                                                                     param2.concat(§1=§);
                                                                     _loc4_ = _loc4_.parent;
                                                                     §§goto(addr434);
                                                                  }
                                                                  return param2;
                                                               }
                                                            }
                                                            §§goto(addr256);
                                                            addr222:
                                                            addr233:
                                                         }
                                                         §§goto(addr309);
                                                      }
                                                      addr214:
                                                      §§goto(addr300);
                                                   }
                                                   §§goto(addr380);
                                                }
                                                §§goto(addr312);
                                             }
                                             §§goto(addr306);
                                          }
                                       }
                                       §§goto(addr214);
                                    }
                                    §§goto(addr377);
                                 }
                                 §§goto(addr337);
                                 §§push(§§pop() == §§pop());
                              }
                              §§goto(addr336);
                           }
                        }
                     }
                     else
                     {
                        §§push(param1 == this.§&`§);
                     }
                     §§goto(addr409);
                  }
                  §§goto(addr294);
               }
               §§goto(addr404);
            }
            else
            {
               param2 = new Matrix();
            }
            §§goto(addr46);
         }
         §§goto(addr412);
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §?;§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(param2);
            if(!(_loc4_ && param1))
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  §§push(§§pop());
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§pop();
                           loop6:
                           while(true)
                           {
                              §§push(this.§%!Z§);
                              if(_loc3_ || _loc3_)
                              {
                                 addr110:
                                 §§push(!§§pop());
                                 continue loop0;
                              }
                              addr130:
                              addr133:
                              while(_loc4_)
                              {
                                 continue loop7;
                              }
                              addr132:
                              §§pop();
                              while(true)
                              {
                                 if(_loc4_ && this)
                                 {
                                    continue loop6;
                                 }
                                 §§push(this.§@V§);
                                 if(!_loc4_)
                                 {
                                    if(!(_loc3_ || param2))
                                    {
                                       continue loop0;
                                    }
                                    §§push(!§§pop());
                                 }
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    §§goto(addr130);
                                 }
                                 §§goto(addr132);
                              }
                              addr130:
                           }
                        }
                        addr154:
                     }
                     addr93:
                     loop1:
                     while(!§§pop())
                     {
                        while(this.getBounds(this,§4!r§).containsPoint(param1))
                        {
                           if(!(_loc4_ && param2))
                           {
                              return this;
                           }
                           if(!_loc4_)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr62:
                                 break;
                              }
                              break loop1;
                           }
                           if(!_loc4_)
                           {
                              continue;
                           }
                           §§goto(addr133);
                        }
                        §§push(null);
                        if(!(_loc4_ && param2))
                        {
                           return §§pop();
                        }
                        §§goto(addr96);
                     }
                     addr96:
                     return §§pop();
                  }
               }
            }
            §§goto(addr154);
         }
         §§goto(addr62);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §?x§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§@P§(_loc2_.§&`§,§1=§);
            if(_loc3_ && this)
            {
               break;
            }
            §?x§.concat(§1=§);
            if(!(_loc4_ || _loc2_))
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         return §?x§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §?x§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr78);
            }
            _loc2_.§@P§(_loc2_.§&`§,§1=§);
            if(!_loc3_)
            {
               §?x§.concat(§1=§);
               if(_loc3_ && _loc3_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         §?x§.invert();
         addr78:
         return §?x§.transformPoint(param1);
      }
      
      public function render(param1:§<!I§, param2:Number) : void
      {
         throw new §?;§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TouchEvent = null;
         if(!(_loc3_ && _loc2_))
         {
            if(param1 is TouchEvent)
            {
               if(_loc4_ || _loc3_)
               {
                  _loc2_ = param1 as TouchEvent;
                  §§goto(addr48);
               }
            }
            §§goto(addr84);
         }
         addr48:
         if(_loc4_)
         {
            if(_loc2_.timestamp == this.§;7§)
            {
               if(!(_loc4_ || _loc2_))
               {
                  §§goto(addr84);
               }
            }
            else
            {
               this.§;7§ = _loc2_.timestamp;
               §§goto(addr84);
            }
            addr84:
            super.dispatchEvent(param1);
            return;
         }
      }
      
      function §,!$§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(_loc7_ || _loc2_)
            {
               §§push(!§§pop());
               if(_loc7_ || param1)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(_loc8_)
                  {
                     continue;
                  }
               }
               §§pop();
               if(_loc8_ && _loc3_)
               {
                  §§goto(addr85);
               }
               §§push(_loc2_ == null);
               if(_loc8_ && _loc2_)
               {
                  continue;
               }
            }
         }
         if(!_loc8_)
         {
            if(_loc2_ == this)
            {
               if(_loc7_ || _loc3_)
               {
                  addr85:
                  throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
               }
            }
         }
         _loc3_ = §=!$§();
         if(!_loc8_)
         {
            §§push(param1 == this.§&`§);
            if(_loc7_ || _loc2_)
            {
               §§push(!§§pop());
               if(_loc7_)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc8_ && _loc3_))
                  {
                     §§push(§§pop());
                     if(_loc7_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc7_)
                           {
                              addr131:
                              §§pop();
                              if(!_loc8_)
                              {
                                 §§push(this.§&`§);
                                 if(_loc7_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc7_)
                                    {
                                       addr142:
                                       §§push(§§pop());
                                       if(!(_loc8_ && param1))
                                       {
                                          addr160:
                                          if(§§pop())
                                          {
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                addr168:
                                                §§pop();
                                                if(!(_loc8_ && param1))
                                                {
                                                   addr176:
                                                   §§push(_loc3_.length > 0);
                                                   if(!_loc8_)
                                                   {
                                                      addr182:
                                                      if(§§pop())
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            addr185:
                                                            §§push(0);
                                                            if(!_loc8_)
                                                            {
                                                               var _loc5_:* = §§pop();
                                                               if(_loc7_ || param1)
                                                               {
                                                                  var _loc6_:* = _loc3_;
                                                                  if(_loc8_)
                                                                  {
                                                                  }
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc6_,_loc5_));
                                                                     if(!(_loc8_ && _loc3_))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                           if(!_loc8_)
                                                                           {
                                                                              this.removeEventListeningObject(this,_loc4_);
                                                                           }
                                                                           continue;
                                                                        }
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              if(_loc7_ || param1)
                                                                              {
                                                                                 addr241:
                                                                                 this.§&`§ = param1;
                                                                                 if(_loc7_ || _loc3_)
                                                                                 {
                                                                                    addr253:
                                                                                    §§push(Boolean(this.§&`§));
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr257:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§pop();
                                                                                             if(_loc7_ || param1)
                                                                                             {
                                                                                                addr272:
                                                                                                if(_loc3_.length > 0)
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr326);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr272);
                                                                                 }
                                                                                 addr276:
                                                                                 _loc5_ = 0;
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                 }
                                                                                 addr325:
                                                                              }
                                                                              §§goto(addr326);
                                                                           }
                                                                           _loc6_ = _loc3_;
                                                                           if(_loc8_ && param1)
                                                                           {
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc6_,_loc5_));
                                                                              break loop2;
                                                                           }
                                                                           addr322:
                                                                        }
                                                                        §§goto(addr325);
                                                                     }
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                        if(_loc7_ || param1)
                                                                        {
                                                                           this.addEventListeningObject(this,_loc4_);
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr324);
                                                                  }
                                                               }
                                                               §§goto(addr325);
                                                            }
                                                            §§goto(addr276);
                                                         }
                                                         §§goto(addr326);
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   §§goto(addr272);
                                                }
                                                §§goto(addr185);
                                             }
                                          }
                                          §§goto(addr182);
                                       }
                                       §§goto(addr257);
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr253);
                              }
                              §§goto(addr176);
                           }
                           §§goto(addr257);
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr131);
               }
               §§goto(addr257);
            }
            §§goto(addr131);
         }
         addr326:
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§&`§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr42:
                     this.§&`§.removeEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§&`§);
            if(!(_loc4_ && param2))
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     addr47:
                     this.§&`§.addEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §3u§() : Matrix
      {
         return this.§@P§(this.§&`§);
      }
      
      public function get §,l§() : Rectangle
      {
         return this.getBounds(this.§&`§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§&`§,§4!r§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§9P§ = 1;
         }
         §§push(this.width);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(!(_loc3_ && _loc3_))
               {
                  if(!(_loc4_ || _loc3_))
                  {
                     addr79:
                     §§push(this);
                     §§push(param1);
                     if(_loc4_ || this)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleX = §§pop();
                     addr91:
                  }
                  return;
               }
               §§goto(addr91);
            }
         }
         §§goto(addr79);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§&`§,§4!r§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§;!x§ = 1;
         }
         §§push(this.height);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && this))
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(!(_loc4_ || _loc2_))
               {
                  addr91:
               }
               return;
            }
            if(_loc4_)
            {
               addr84:
               §§push(this);
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleY = §§pop();
            }
            §§goto(addr91);
         }
         §§goto(addr84);
      }
      
      public function get root() : DisplayObject
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:DisplayObject = this;
         loop0:
         while(true)
         {
            §§push(_loc1_.parent);
            while(§§pop())
            {
               §§push(_loc1_.parent);
               if(!_loc3_)
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
         if(!_loc4_)
         {
            super.addEventListener(param1,param2);
         }
         do
         {
            this.addEventListeningObject(this,param1);
         }
         while(!(_loc3_ || param2));
         
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.removeEventListener(param1,param2);
            while(!hasEventListener(param1))
            {
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     this.removeEventListeningObject(this,param1);
                     addr47:
                     break;
                  }
                  continue;
               }
               §§goto(addr47);
            }
            return;
         }
         §§goto(addr47);
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:Array = §=!$§();
         if(!_loc7_)
         {
            super.removeEventListeners(param1);
            if(_loc6_ || _loc3_)
            {
               §§goto(addr45);
            }
            §§goto(addr48);
         }
         addr45:
         if(param1 == null)
         {
            addr48:
            for each(_loc3_ in _loc2_)
            {
               if(_loc6_)
               {
                  this.removeEventListeningObject(this,_loc3_);
               }
            }
            if(!_loc6_)
            {
            }
         }
         else
         {
            this.removeEventListeningObject(this,param1);
         }
      }
      
      public function §>l§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§3!f§);
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
                           addr526:
                           while(true)
                           {
                              §§pop();
                              addr527:
                              while(true)
                              {
                                 §§push(this.§9P§);
                                 addr513:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr514:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr526:
                        }
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              §§push(§§pop());
                              loop10:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(this.§;!@§);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(0);
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                loop14:
                                                while(_loc3_ || this)
                                                {
                                                   §§push(!§§pop());
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop17:
                                                            while(!_loc2_)
                                                            {
                                                               §§pop();
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(this.§3L§);
                                                                  loop19:
                                                                  while(!_loc2_)
                                                                  {
                                                                     §§push(0);
                                                                     loop20:
                                                                     for(; _loc3_ || _loc2_; if(_loc2_ && param1)
                                                                     {
                                                                        continue;
                                                                     },if(!(_loc3_ || _loc2_))
                                                                     {
                                                                        continue loop13;
                                                                     },§§push(§§pop() == §§pop()),if(_loc3_)
                                                                     {
                                                                        if(_loc2_ && _loc3_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        §§push(!§§pop());
                                                                     },§§goto(addr62))
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        loop21:
                                                                        while(_loc3_)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           loop22:
                                                                           for(; _loc3_ || param1; if(_loc2_ && this)
                                                                           {
                                                                              continue;
                                                                           },§§goto(addr181))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       param1.prependTranslation(this.§;!@§,this.§3L§,0);
                                                                                    }
                                                                                    loop24:
                                                                                    for(; !(_loc2_ && _loc2_); if(_loc2_ && param1)
                                                                                    {
                                                                                       continue;
                                                                                    },§§goto(addr209))
                                                                                    {
                                                                                       if(!(_loc2_ && _loc3_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§3!f§);
                                                                                             loop26:
                                                                                             while(!_loc2_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   loop27:
                                                                                                   for(; !(_loc2_ && _loc3_); while(true)
                                                                                                   {
                                                                                                      if(!(_loc2_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc3_ || param1)
                                                                                                         {
                                                                                                            §§goto(addr152);
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop27;
                                                                                                   },§§goto(addr502))
                                                                                                   {
                                                                                                      if(§§pop() != §§pop())
                                                                                                      {
                                                                                                         addr344:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1.prependRotation(this.§3!f§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                            addr355:
                                                                                                            while(!_loc2_)
                                                                                                            {
                                                                                                               if(!(_loc3_ || this))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     param1.prependTranslation(this.§;!@§ + this.§if §,this.§3L§ + this.§2w§,0);
                                                                                                                     break loop24;
                                                                                                                  }
                                                                                                                  addr456:
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         addr344:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§9P§);
                                                                                                         loop31:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               continue loop26;
                                                                                                            }
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(1);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               §§push(1);
                                                                                                               addr229:
                                                                                                               continue loop15;
                                                                                                               if(!(_loc3_ || param1))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     loop39:
                                                                                                                     while(_loc3_)
                                                                                                                     {
                                                                                                                        §§push(!§§pop());
                                                                                                                        loop40:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              loop41:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       param1.prependScale(this.§9P§,this.§;!x§,1);
                                                                                                                                       addr268:
                                                                                                                                       while(!_loc2_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc3_ || this))
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§;!x§);
                                                                                                                                                addr475:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(1);
                                                                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                         continue loop11;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr514);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr504:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                         break loop17;
                                                                                                                                                      }
                                                                                                                                                      addr504:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr519:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr355);
                                                                                                                                       addr107:
                                                                                                                                       if(!(_loc3_ || param1))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(_loc3_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          param1.prependTranslation(this.§if §,this.§2w§,0);
                                                                                                                                          addr128:
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             break loop41;
                                                                                                                                          }
                                                                                                                                          addr327:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§;!x§);
                                                                                                                                             continue loop31;
                                                                                                                                          }
                                                                                                                                          §§goto(addr526);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr498:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§;!@§);
                                                                                                                                             addr500:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§if §);
                                                                                                                                                addr502:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   break loop19;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr498:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§if §);
                                                                                                                                    while(!_loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       §§push(this.§2w§);
                                                                                                                                       continue loop27;
                                                                                                                                       if(!(_loc2_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop20;
                                                                                                                                          }
                                                                                                                                          continue loop27;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop31;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr20:
                                                                                                                              return;
                                                                                                                              addr259:
                                                                                                                           }
                                                                                                                           §§goto(addr526);
                                                                                                                           loop48:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc2_ && param1)
                                                                                                                              {
                                                                                                                                 continue loop40;
                                                                                                                              }
                                                                                                                              addr167:
                                                                                                                              if(!(_loc2_ && _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop22;
                                                                                                                              }
                                                                                                                              addr304:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                                 if(!(_loc2_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          if(_loc2_ && _loc2_)
                                                                                                                                          {
                                                                                                                                             continue loop10;
                                                                                                                                          }
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             continue loop3;
                                                                                                                                          }
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                §§goto(addr327);
                                                                                                                                                addr85:
                                                                                                                                                if(!(_loc3_ || _loc2_))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop21;
                                                                                                                                                }
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop2;
                                                                                                                                                }
                                                                                                                                                while(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc3_ || this))
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop24;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr344);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr268);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop39;
                                                                                                                                                         addr193:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr107);
                                                                                                                                                      §§goto(addr268);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr128);
                                                                                                                                                }
                                                                                                                                                §§goto(addr20);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr259);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§push(§§pop());
                                                                                                                                       addr181:
                                                                                                                                       break;
                                                                                                                                       if(!(_loc3_ || _loc3_))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             addr62:
                                                                                                                                             if(_loc3_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                continue loop48;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr344);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr96);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          break loop14;
                                                                                                                                       }
                                                                                                                                       addr454:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          break loop21;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr507:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                    }
                                                                                                                                    addr518:
                                                                                                                                 }
                                                                                                                                 §§goto(addr519);
                                                                                                                                 §§goto(addr167);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop22;
                                                                                                                        }
                                                                                                                        §§goto(addr527);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr507);
                                                                                                                     }
                                                                                                                     addr506:
                                                                                                                  }
                                                                                                                  §§goto(addr504);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  addr453:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr454);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr513);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                addr451:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr452);
                                                                                                }
                                                                                             }
                                                                                             continue loop19;
                                                                                          }
                                                                                          addr328:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr444);
                                                                                          }
                                                                                          addr509:
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          addr420:
                                                                                          §§goto(addr20);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr527);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr328);
                                                                              }
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        while(§§pop())
                                                                        {
                                                                           §§goto(addr456);
                                                                        }
                                                                        §§goto(addr420);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr451);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr504);
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr506);
                                                            }
                                                         }
                                                         §§goto(addr389);
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   §§goto(addr509);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr498);
                                    }
                                 }
                                 §§goto(addr518);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr498);
      }
      
      public function get x() : Number
      {
         return this.§;!@§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;!@§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§3L§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3L§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§if §;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§if § = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§2w§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§2w§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§9P§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§9P§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§;!x§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;!x§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§3!f§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         while(true)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§push(-Math.PI);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop() >= §§pop())
                  {
                     loop1:
                     while(!(_loc2_ && param1))
                     {
                        loop2:
                        while(true)
                        {
                           §§push(param1);
                           if(_loc3_ || _loc2_)
                           {
                              if(_loc3_ || param1)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    if(§§pop() <= Math.PI)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(!(_loc3_ || param1))
                                          {
                                             continue;
                                          }
                                          this.§3!f§ = param1;
                                       }
                                       if(!_loc2_)
                                       {
                                          return;
                                       }
                                       continue loop1;
                                    }
                                    §§push(param1);
                                    if(!_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(Math.PI * 2);
                                          while(_loc3_ || _loc2_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr130:
                                                while(true)
                                                {
                                                   param1 = §§pop();
                                                   continue loop2;
                                                }
                                             }
                                          }
                                          addr121:
                                       }
                                       else
                                       {
                                          addr135:
                                          §§push(Math.PI * 2);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(Number(§§pop()));
                                          break;
                                       }
                                       break;
                                    }
                                    §§goto(addr130);
                                 }
                                 break;
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr130);
                        }
                        param1 = §§pop();
                        break;
                     }
                     continue;
                  }
                  §§push(param1);
                  §§goto(addr135);
               }
               §§goto(addr121);
            }
            §§goto(addr129);
         }
      }
      
      public function get alpha() : Number
      {
         return this.§4!R§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            if(_loc2_)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(§§pop() < 0);
                  if(_loc2_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || param1)
                        {
                           addr51:
                           §§push(0);
                           if(_loc2_ || this)
                           {
                              §§push(Number(§§pop()));
                              if(_loc3_ && this)
                              {
                              }
                           }
                           else
                           {
                              addr93:
                           }
                        }
                        else
                        {
                           addr84:
                           §§push(Number(1));
                           if(!(_loc3_ && this))
                           {
                              §§goto(addr93);
                           }
                           else
                           {
                              addr97:
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr93);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc2_)
                        {
                           addr83:
                           if(§§pop() > 1)
                           {
                              §§goto(addr84);
                           }
                           else
                           {
                              §§push(param1);
                              if(_loc2_)
                              {
                                 §§goto(addr97);
                              }
                           }
                        }
                     }
                     §§pop().§4!R§ = §§pop();
                     §§goto(addr99);
                  }
                  §§goto(addr83);
               }
               §§goto(addr93);
            }
            §§goto(addr51);
         }
         addr99:
      }
      
      public function get visible() : Boolean
      {
         return this.§%!Z§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§%!Z§ = param1;
         }
      }
      
      public function get §<V§() : Boolean
      {
         return this.§@V§;
      }
      
      public function set §<V§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§@V§ = param1;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§&`§;
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
