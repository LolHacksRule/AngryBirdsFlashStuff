package §6!7§
{
   import §"v§.§2!;§;
   import §"v§.§^n§;
   import §0P§.RenderSupport;
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
      
      private static var § -§:Vector.<DisplayObject>;
      
      private static var §%Z§:Rectangle;
      
      private static var §18§:Matrix;
      
      private static var §#!#§:Matrix;
      
      protected static var §+S§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § -§ = new Vector.<DisplayObject>(0);
            while(true)
            {
               §%Z§ = new Rectangle();
               while(!_loc1_)
               {
                  §18§ = new Matrix();
                  while(!_loc1_)
                  {
                     §#!#§ = new Matrix();
                     do
                     {
                        §+S§ = 0;
                     }
                     while(!_loc2_);
                     
                     if(!(_loc1_ && _loc1_))
                     {
                        return;
                        addr57:
                     }
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      private var §`!%§:Number;
      
      private var §else§:Number;
      
      private var §0!>§:Number;
      
      private var §+<§:Number;
      
      private var §?@§:Number;
      
      private var §-Z§:Number;
      
      private var §1!8§:Number;
      
      private var §7!T§:Number;
      
      private var §8!J§:Boolean;
      
      private var §[!W§:Boolean;
      
      private var mName:String;
      
      private var §`b§:Number;
      
      private var §+w§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(_loc3_)
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(_loc3_ || _loc1_)
                  {
                     throw new §2!;§();
                  }
               }
               else
               {
                  addr45:
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this.§1!8§ = 0);
                  if(!_loc2_)
                  {
                     var _loc1_:*;
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§+<§ = §§pop();
                  §§push(_loc1_);
                  if(!_loc2_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§0!>§ = §§pop();
                  §§push(_loc1_);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§else§ = §§pop();
                  §§pop().§`!%§ = _loc1_;
                  if(!(_loc2_ && _loc1_))
                  {
                     addr100:
                     §§push(this);
                     §§push(this);
                     §§push(this.§7!T§ = 1);
                     if(_loc3_ || this)
                     {
                        §§push(_loc1_ = §§pop());
                     }
                     §§pop().§-Z§ = §§pop();
                     §§pop().§?@§ = _loc1_;
                     if(_loc2_)
                     {
                     }
                     §§goto(addr148);
                  }
                  this.§8!J§ = this.§[!W§ = true;
                  if(!_loc2_)
                  {
                     this.§`b§ = -1;
                  }
               }
               addr148:
               return;
            }
            §§goto(addr45);
         }
         §§goto(addr100);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.removeEventListeners();
         }
      }
      
      public function §#g§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§+w§);
            if(_loc3_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(this.§+w§);
                        while(true)
                        {
                           §§pop().removeChild(this);
                        }
                        addr82:
                     }
                     loop1:
                     while(true)
                     {
                        addr59:
                        while(true)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr20);
                           }
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              while(true)
                              {
                                 this.dispose();
                              }
                              addr46:
                           }
                           §§goto(addr59);
                        }
                        break;
                     }
                     continue loop0;
                  }
                  addr20:
                  return;
               }
            }
            §§goto(addr82);
         }
         §§goto(addr46);
      }
      
      public function §[!4§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(Boolean(param2));
            if(!(_loc5_ && param1))
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     param2.identity();
                     if(!(_loc5_ && param2))
                     {
                        addr46:
                        if(param1 == this)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              return param2;
                           }
                           addr219:
                        }
                        else
                        {
                           §§push(param1 == this.§+w§);
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop36:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop34:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             §§push(param1 == null);
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop17:
                                                   while(true)
                                                   {
                                                      addr516:
                                                      if(§§pop())
                                                      {
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               §§push(this.§+w§ == null);
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!(_loc5_ && param2))
                                                                  {
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(this.§0!>§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() == §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       addr496:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          loop40:
                                                                                          while(true)
                                                                                          {
                                                                                             addr498:
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(_loc5_ && param2)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop41:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         param2.translate(-this.§0!>§,-this.§+<§);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                         }
                                                                                                         break loop20;
                                                                                                      }
                                                                                                      addr462:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§?@§);
                                                                                                      loop22:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(1);
                                                                                                         loop4:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            loop5:
                                                                                                            while(_loc6_)
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc6_ || param2))
                                                                                                                  {
                                                                                                                     continue loop40;
                                                                                                                  }
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(_loc6_ || param1)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc5_ && this))
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              while(!(_loc5_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    continue loop34;
                                                                                                                                 }
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    addr426:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr427:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§-Z§);
                                                                                                                                          addr335:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ || param2))
                                                                                                                                             {
                                                                                                                                                continue loop22;
                                                                                                                                             }
                                                                                                                                             §§push(1);
                                                                                                                                             if(_loc5_ && param2)
                                                                                                                                             {
                                                                                                                                                continue loop4;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc6_ || _loc3_))
                                                                                                                                                {
                                                                                                                                                   continue loop18;
                                                                                                                                                }
                                                                                                                                                §§push(!§§pop());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      continue loop5;
                                                                                                                                                   }
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr426:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             param2.scale(this.§?@§,this.§-Z§);
                                                                                                                                          }
                                                                                                                                          addr364:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§1!8§);
                                                                                                                                          loop12:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             addr316:
                                                                                                                                             while(!_loc5_)
                                                                                                                                             {
                                                                                                                                                if(§§pop() != §§pop())
                                                                                                                                                {
                                                                                                                                                   addr319:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      param2.rotate(this.§1!8§);
                                                                                                                                                      if(!(_loc6_ || this))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr427);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr331:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr319:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§`!%§);
                                                                                                                                                   continue loop12;
                                                                                                                                                   §§goto(addr331);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr432:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc6_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                   continue loop18;
                                                                                                                                                }
                                                                                                                                                continue loop21;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr361);
                                                                                                                                 }
                                                                                                                                 if(_loc5_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(_loc5_ && param1)
                                                                                                                                 {
                                                                                                                                    continue loop36;
                                                                                                                                 }
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr306);
                                                                                                                                 }
                                                                                                                                 §§goto(addr176);
                                                                                                                              }
                                                                                                                              §§goto(addr516);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr498);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                        if(!(_loc6_ || this))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr291);
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                     }
                                                                                                                     §§goto(addr498);
                                                                                                                  }
                                                                                                                  §§goto(addr426);
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  continue loop41;
                                                                                                               }
                                                                                                               continue loop16;
                                                                                                               §§goto(addr457);
                                                                                                            }
                                                                                                            continue loop41;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr507);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr530:
                                                                        if(param1 == null)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(param1.§+w§ == this)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              param1.§[!4§(this,param2);
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 param2.invert();
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr589);
                                                                                 }
                                                                              }
                                                                              §§goto(addr606);
                                                                           }
                                                                           §§goto(addr597);
                                                                        }
                                                                        addr589:
                                                                        while(true)
                                                                        {
                                                                           § -§.length = 0;
                                                                           if(_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop48;
                                                                        }
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr597:
                                                                           if(true)
                                                                           {
                                                                              var _loc3_:DisplayObject = null;
                                                                              var _loc4_:DisplayObject = this;
                                                                              if(!_loc5_)
                                                                              {
                                                                                 loop49:
                                                                                 while(_loc4_)
                                                                                 {
                                                                                    § -§.push(_loc4_);
                                                                                    if(!(_loc6_ || param2))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_ = _loc4_.parent;
                                                                                       continue loop49;
                                                                                    }
                                                                                 }
                                                                                 _loc4_ = param1;
                                                                                 if(_loc6_ || param2)
                                                                                 {
                                                                                    loop50:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(_loc4_));
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc6_ || _loc3_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!(_loc6_ || this))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§pop();
                                                                                          if(!(_loc5_ && _loc3_))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§ -§.indexOf(_loc4_) == -1);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop50;
                                                                                                }
                                                                                             }
                                                                                             addr681:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr712:
                                                                                             _loc3_ = _loc4_;
                                                                                             _loc4_ = this;
                                                                                             if(_loc6_ || param2)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_ == _loc3_)
                                                                                                   {
                                                                                                      if(!(_loc5_ && param2))
                                                                                                      {
                                                                                                         addr767:
                                                                                                         §#!#§.identity();
                                                                                                         break;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   _loc4_.§[!4§(_loc4_.§+w§,§18§);
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      param2.concat(§18§);
                                                                                                      if(_loc5_ && param1)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                   _loc4_ = _loc4_.parent;
                                                                                                }
                                                                                                _loc4_ = param1;
                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_ == _loc3_)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      _loc4_.§[!4§(_loc4_.§+w§,§18§);
                                                                                                      if(_loc6_ || param2)
                                                                                                      {
                                                                                                         §#!#§.concat(§18§);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                      }
                                                                                                      break;
                                                                                                      §#!#§.invert();
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         param2.concat(§#!#§);
                                                                                                         break;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                }
                                                                                                return param2;
                                                                                             }
                                                                                             §§goto(addr767);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          continue loop50;
                                                                                       }
                                                                                    }
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       if(_loc4_ == null)
                                                                                       {
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             §§goto(addr708);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr712);
                                                                                    }
                                                                                    addr708:
                                                                                    throw new ArgumentError("Object not connected to target");
                                                                                 }
                                                                                 §§goto(addr681);
                                                                              }
                                                                              §§goto(addr629);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr606:
                                                                        }
                                                                        return param2;
                                                                     }
                                                                     _loc4_ = this;
                                                                     while(_loc4_)
                                                                     {
                                                                        _loc4_.§[!4§(_loc4_.§+w§,§18§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        param2.concat(§18§);
                                                                        if(_loc5_ && param2)
                                                                        {
                                                                           break;
                                                                        }
                                                                        _loc4_ = _loc4_.parent;
                                                                     }
                                                                     return param2;
                                                                     addr487:
                                                                  }
                                                                  §§goto(addr507);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr487);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr61);
                     }
                     else if(false)
                     {
                        §§goto(addr96);
                     }
                     §§goto(addr530);
                  }
                  §§goto(addr194);
               }
               else
               {
                  param2 = new Matrix();
               }
               §§goto(addr46);
            }
            §§goto(addr496);
         }
         §§goto(addr319);
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §^n§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
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
                  addr175:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     addr176:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr178:
                              loop10:
                              while(true)
                              {
                                 §§push(this.§8!J§);
                                 loop9:
                                 while(true)
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(!§§pop());
                                       if(!_loc4_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc3_)
                                          {
                                             addr170:
                                             §§pop();
                                             loop8:
                                             while(true)
                                             {
                                                §§push(this.§[!W§);
                                                if(!(_loc4_ && param2))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(!§§pop());
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      addr101:
                                                      if(!(_loc4_ && this))
                                                      {
                                                         break;
                                                      }
                                                      continue loop9;
                                                   }
                                                   loop6:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(this.getBounds(this,§%Z§).containsPoint(param1))
                                                         {
                                                            if(_loc3_ || param1)
                                                            {
                                                               if(_loc3_ || param2)
                                                               {
                                                                  return this;
                                                               }
                                                               continue;
                                                            }
                                                            if(_loc3_ || param1)
                                                            {
                                                               if(!(_loc4_ && param2))
                                                               {
                                                                  break;
                                                               }
                                                               continue loop10;
                                                            }
                                                            addr111:
                                                            if(_loc3_)
                                                            {
                                                               break loop6;
                                                            }
                                                            continue loop8;
                                                         }
                                                         §§push(null);
                                                         if(_loc3_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         §§goto(addr114);
                                                      }
                                                      §§goto(addr111);
                                                   }
                                                   addr114:
                                                   return §§pop();
                                                   §§push(null);
                                                }
                                                §§goto(addr101);
                                             }
                                             addr109:
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                §§goto(addr110);
                                             }
                                             addr109:
                                          }
                                       }
                                       if(_loc3_ || param1)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        §§goto(addr109);
                     }
                  }
               }
            }
         }
         §§goto(addr178);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §#!#§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§[!4§(_loc2_.§+w§,§18§);
            if(!(_loc3_ && param1))
            {
               §#!#§.concat(§18§);
               if(!_loc4_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §#!#§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §#!#§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(!_loc4_)
               {
                  addr78:
                  §#!#§.invert();
                  break;
               }
               break;
            }
            _loc2_.§[!4§(_loc2_.§+w§,§18§);
            if(!(_loc4_ && this))
            {
               §#!#§.concat(§18§);
               if(_loc3_)
               {
                  continue;
               }
               §§goto(addr78);
            }
            break;
            §§goto(addr78);
         }
         return §#!#§.transformPoint(param1);
      }
      
      public function render(param1:RenderSupport, param2:Number) : void
      {
         throw new §^n§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TouchEvent = null;
         if(_loc3_)
         {
            if(param1 is TouchEvent)
            {
               if(_loc3_ || this)
               {
                  _loc2_ = param1 as TouchEvent;
                  if(!_loc4_)
                  {
                     if(_loc2_.timestamp == this.§`b§)
                     {
                        if(_loc4_ && _loc3_)
                        {
                           §§goto(addr80);
                        }
                     }
                     else
                     {
                        this.§`b§ = _loc2_.timestamp;
                        §§goto(addr80);
                     }
                     §§goto(addr80);
                  }
                  return;
               }
            }
            §§goto(addr80);
         }
         addr80:
         super.dispatchEvent(param1);
      }
      
      function §6w§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(!(_loc7_ && _loc3_))
            {
               §§push(!§§pop());
               if(_loc7_ && _loc2_)
               {
                  continue;
               }
            }
            §§push(Boolean(§§pop()));
            if(!_loc7_)
            {
               §§push(§§pop());
               if(_loc8_ || _loc2_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  continue;
               }
               if(!_loc7_)
               {
                  §§pop();
                  if(!_loc7_)
                  {
                     §§push(_loc2_ == null);
                     if(_loc8_ || param1)
                     {
                     }
                     addr81:
                     §§push(Boolean(§§pop()));
                     continue;
                  }
                  addr90:
                  if(_loc2_ == this)
                  {
                     if(!_loc7_)
                     {
                        §§goto(addr95);
                     }
                  }
                  _loc3_ = §8!$§();
                  if(!(_loc7_ && this))
                  {
                     §§push(param1 == this.§+w§);
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(!§§pop());
                        if(_loc8_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc7_)
                           {
                              §§push(§§pop());
                              if(_loc8_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc8_)
                                       {
                                          §§pop();
                                          if(_loc8_)
                                          {
                                             §§push(this.§+w§);
                                             if(_loc8_ || _loc3_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(!_loc7_)
                                                {
                                                   addr165:
                                                   §§push(§§pop());
                                                   if(!_loc7_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               §§pop();
                                                               if(!(_loc7_ && _loc2_))
                                                               {
                                                                  addr187:
                                                                  §§push(_loc3_.length > 0);
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr196:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr199:
                                                                              §§push(0);
                                                                              if(_loc8_)
                                                                              {
                                                                                 var _loc5_:* = §§pop();
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    var _loc6_:* = _loc3_;
                                                                                    if(_loc7_ && this)
                                                                                    {
                                                                                    }
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc6_,_loc5_));
                                                                                       if(_loc8_ || _loc2_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                this.removeEventListeningObject(this,_loc4_);
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   addr246:
                                                                                                   this.§+w§ = param1;
                                                                                                   if(_loc7_ && _loc2_)
                                                                                                   {
                                                                                                   }
                                                                                                   addr312:
                                                                                                   _loc5_ = 0;
                                                                                                   addr311:
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      addr315:
                                                                                                      _loc6_ = _loc3_;
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      addr338:
                                                                                                      return;
                                                                                                      addr337:
                                                                                                      addr336:
                                                                                                      addr334:
                                                                                                   }
                                                                                                   §§goto(addr337);
                                                                                                }
                                                                                                addr258:
                                                                                                §§push(Boolean(this.§+w§));
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   addr261:
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      addr270:
                                                                                                      addr269:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc8_ || _loc2_)
                                                                                                         {
                                                                                                            addr278:
                                                                                                            §§pop();
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§push(_loc3_.length > 0);
                                                                                                               if(_loc8_ || _loc2_)
                                                                                                               {
                                                                                                                  addr292:
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr311);
                                                                                                         }
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc8_ || _loc3_)
                                                                                                         {
                                                                                                            §§goto(addr311);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr338);
                                                                                                   }
                                                                                                   §§goto(addr270);
                                                                                                }
                                                                                                §§goto(addr292);
                                                                                             }
                                                                                             §§goto(addr338);
                                                                                          }
                                                                                          §§goto(addr336);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             this.addEventListeningObject(this,_loc4_);
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr338);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr315);
                                                                              }
                                                                           }
                                                                           §§goto(addr312);
                                                                        }
                                                                        §§goto(addr246);
                                                                     }
                                                                     §§goto(addr261);
                                                                  }
                                                                  §§goto(addr278);
                                                               }
                                                               §§goto(addr199);
                                                            }
                                                            §§goto(addr292);
                                                         }
                                                         §§goto(addr196);
                                                      }
                                                      §§goto(addr269);
                                                   }
                                                   §§goto(addr270);
                                                }
                                                §§goto(addr292);
                                             }
                                             §§goto(addr258);
                                          }
                                          §§goto(addr187);
                                       }
                                    }
                                    §§goto(addr165);
                                 }
                              }
                              §§goto(addr270);
                           }
                           §§goto(addr196);
                        }
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr246);
               }
               §§push(!§§pop());
               if(_loc7_)
               {
                  continue;
               }
            }
            §§goto(addr81);
         }
         if(_loc8_ || _loc2_)
         {
            §§goto(addr90);
         }
         addr95:
         throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§+w§);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr48:
                     this.§+w§.removeEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.§+w§);
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
               }
               §§goto(addr58);
            }
            §§pop().addEventListeningObject(param1,param2);
         }
         addr58:
         if(_loc4_ || _loc3_)
         {
            §§push(this.§+w§);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §&!f§() : Matrix
      {
         return this.§[!4§(this.§+w§);
      }
      
      public function get bounds() : Rectangle
      {
         return this.getBounds(this.§+w§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§+w§,§%Z§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§?@§ = 1;
         }
         §§push(this.width);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
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
            if(_loc3_ || _loc2_)
            {
               §§push(this);
               §§push(param1);
               if(_loc3_ || _loc2_)
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
         return this.getBounds(this.§+w§,§%Z§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§-Z§ = 1;
         }
         §§push(this.height);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(!(_loc3_ || _loc3_))
               {
                  addr95:
               }
               return;
            }
            if(!(_loc4_ && _loc3_))
            {
               addr83:
               §§push(this);
               §§push(param1);
               if(_loc3_ || this)
               {
                  §§push(§§pop() / _loc2_);
               }
               §§pop().scaleY = §§pop();
            }
            §§goto(addr95);
         }
         §§goto(addr83);
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
               if(_loc2_)
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
         if(!(_loc4_ && param1))
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super.removeEventListener(param1,param2);
         }
         while(!hasEventListener(param1))
         {
            if(_loc4_ || this)
            {
               this.removeEventListeningObject(this,param1);
            }
            if(_loc4_ || param2)
            {
               break;
            }
         }
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:Array = §8!$§();
         if(_loc7_ || param1)
         {
            super.removeEventListeners(param1);
            if(_loc7_ || param1)
            {
               §§goto(addr52);
            }
            §§goto(addr55);
         }
         addr52:
         if(param1 == null)
         {
            addr55:
            for each(_loc3_ in _loc2_)
            {
               if(!_loc6_)
               {
                  this.removeEventListeningObject(this,_loc3_);
               }
            }
            if(_loc6_)
            {
            }
         }
         else
         {
            this.removeEventListeningObject(this,param1);
         }
      }
      
      public function §'d§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§1!8§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§?@§);
                                       while(true)
                                       {
                                          §§push(1);
                                          addr603:
                                          addr554:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             addr604:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                          addr554:
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          addr563:
                                          §§push(Boolean(§§pop() + this.§0!>§ != 0));
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             addr576:
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc2_ && this))
                                             {
                                                if(_loc2_)
                                                {
                                                   continue loop5;
                                                }
                                                if(!§§pop())
                                                {
                                                   addr597:
                                                   §§pop();
                                                   §§push(this.§else§);
                                                   if(_loc3_)
                                                   {
                                                      addr511:
                                                      §§push(this.§+<§);
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr514);
                                                      }
                                                      §§goto(addr563);
                                                   }
                                                   addr514:
                                                   addr516:
                                                   addr517:
                                                   addr515:
                                                   addr518:
                                                   §§push(Boolean(§§pop() + §§pop() != 0));
                                                   if(_loc2_)
                                                   {
                                                      §§goto(addr604);
                                                   }
                                                   addr520:
                                                   if(§§pop())
                                                   {
                                                      addr522:
                                                      param1.prependTranslation(this.§`!%§ + this.§0!>§,this.§else§ + this.§+<§,0);
                                                      addr536:
                                                   }
                                                   return;
                                                   addr598:
                                                }
                                                §§goto(addr520);
                                             }
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop14:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(this.§-Z§);
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(1);
                                                               if(!(_loc2_ && param1))
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     addr550:
                                                                     while(true)
                                                                     {
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              §§push(this.§`!%§);
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 while(!_loc2_)
                                                                                 {
                                                                                    §§push(§§pop() == §§pop());
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       loop24:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             loop26:
                                                                                             while(!(_loc2_ && param1))
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop27:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_ || this)
                                                                                                   {
                                                                                                      if(!(_loc3_ || param1))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         while(!_loc2_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§else§);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                         addr500:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop35:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop36:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  param1.prependTranslation(this.§`!%§,this.§else§,0);
                                                                                                                  loop37:
                                                                                                                  while(!_loc2_)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§1!8§);
                                                                                                                        loop39:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_ || _loc3_)
                                                                                                                           {
                                                                                                                              continue loop21;
                                                                                                                           }
                                                                                                                           addr428:
                                                                                                                           while(!_loc2_)
                                                                                                                           {
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                           §§goto(addr563);
                                                                                                                           addr159:
                                                                                                                           if(_loc2_ && _loc2_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§push(0);
                                                                                                                           loop59:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              addr168:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(!§§pop());
                                                                                                                                 addr169:
                                                                                                                                 addr277:
                                                                                                                                 loop61:
                                                                                                                                 while(!(_loc2_ && param1))
                                                                                                                                 {
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          while(_loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(!(_loc2_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                             addr199:
                                                                                                                                             addr199:
                                                                                                                                             if(_loc3_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop23;
                                                                                                                                                   }
                                                                                                                                                   loop65:
                                                                                                                                                   while(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            break loop59;
                                                                                                                                                         }
                                                                                                                                                         addr219:
                                                                                                                                                         loop64:
                                                                                                                                                         while(!(_loc2_ && param1))
                                                                                                                                                         {
                                                                                                                                                            addr226:
                                                                                                                                                            if(!(_loc2_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop36;
                                                                                                                                                               }
                                                                                                                                                               addr235:
                                                                                                                                                               §§push(this.§+<§);
                                                                                                                                                               if(!(_loc3_ || _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  loop58:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc3_ || this))
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(1);
                                                                                                                                                                           if(!_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                                                                              if(_loc3_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop61;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc3_ || param1))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop25;
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc2_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop20;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr563);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr516);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(_loc3_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr606:
                                                                                                                                                                                    if(!(_loc2_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                                                                       loop46:
                                                                                                                                                                                       while(!(_loc2_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(!§§pop());
                                                                                                                                                                                          while(!_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc2_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      if(_loc3_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc3_ || this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  break loop64;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr369:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           param1.prependScale(this.§?@§,this.§-Z§,1);
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr139:
                                                                                                                                                                                                                              if(!(_loc2_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop65;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr303:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr503);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr283:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop58;
                                                                                                                                                                                                                     §§goto(addr303);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr281:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr199);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr368:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr368);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                                                                         continue loop18;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr439:
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop26;
                                                                                                                                                                                                addr350:
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop18;
                                                                                                                                                                                             if(_loc2_ && this)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc3_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(!§§pop());
                                                                                                                                                                                                if(_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr95:
                                                                                                                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc2_ && param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop46;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr110);
                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                      continue loop46;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop23;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr110:
                                                                                                                                                                                                addr110:
                                                                                                                                                                                                if(!_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc3_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop65;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop15;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr369);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr517);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop35;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop24;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr563);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr603);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr606:
                                                                                                                                                                                 }
                                                                                                                                                                                 break loop17;
                                                                                                                                                                              }
                                                                                                                                                                              addr315:
                                                                                                                                                                           }
                                                                                                                                                                           continue loop58;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop20;
                                                                                                                                                                        addr239:
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop0;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr159);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop39;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop59;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr554);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr514);
                                                                                                                                                               §§goto(addr515);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr394:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc2_ && _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     addr552:
                                                                                                                                                                     §§push(this.§`!%§);
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop7;
                                                                                                                                                                  }
                                                                                                                                                                  param1.prependRotation(this.§1!8§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                                                                                  while(_loc3_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§?@§);
                                                                                                                                                                        continue loop0;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr536);
                                                                                                                                                                  §§goto(addr226);
                                                                                                                                                               }
                                                                                                                                                               addr394:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr554);
                                                                                                                                                         }
                                                                                                                                                         while(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr239);
                                                                                                                                                            §§push(this.§-Z§);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr598);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr139);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr514);
                                                                                                                                                }
                                                                                                                                                §§goto(addr576);
                                                                                                                                             }
                                                                                                                                             §§goto(addr368);
                                                                                                                                          }
                                                                                                                                          §§goto(addr518);
                                                                                                                                          addr181:
                                                                                                                                       }
                                                                                                                                       §§goto(addr563);
                                                                                                                                    }
                                                                                                                                    §§goto(addr597);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop6;
                                                                                                                                       }
                                                                                                                                       §§goto(addr281);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr500);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr503);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop37;
                                                                                                                                 }
                                                                                                                                 param1.prependTranslation(this.§0!>§,this.§+<§,0);
                                                                                                                                 §§goto(addr139);
                                                                                                                              }
                                                                                                                              §§goto(addr417);
                                                                                                                           }
                                                                                                                           §§goto(addr283);
                                                                                                                        }
                                                                                                                        continue loop21;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr522);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr373);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr428);
                                                                                                   }
                                                                                                   §§goto(addr576);
                                                                                                }
                                                                                                continue loop14;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                           §§goto(addr552);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr563);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr550);
                                                }
                                             }
                                          }
                                          §§goto(addr606);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr606);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr522);
      }
      
      public function get x() : Number
      {
         return this.§`!%§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`!%§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§else§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§else§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§0!>§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§0!>§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§+<§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+<§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§?@§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?@§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§-Z§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§-Z§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§1!8§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(param1);
            if(!(_loc2_ && this))
            {
               §§push(-Math.PI);
               if(!_loc2_)
               {
                  if(!_loc2_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           loop1:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    if(§§pop() <= Math.PI)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue loop0;
                                          }
                                          this.§1!8§ = param1;
                                       }
                                       if(!(_loc2_ && this))
                                       {
                                          return;
                                       }
                                       continue;
                                    }
                                    §§push(param1);
                                    if(_loc3_)
                                    {
                                       §§push(Math.PI * 2);
                                       while(true)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc3_ || this)
                                          {
                                             addr121:
                                             §§push(Number(§§pop()));
                                             while(true)
                                             {
                                                if(_loc2_ && this)
                                                {
                                                   §§push(Number(§§pop()));
                                                   break loop1;
                                                }
                                                addr146:
                                                param1 = §§pop();
                                                continue loop1;
                                             }
                                             addr121:
                                          }
                                          §§goto(addr121);
                                       }
                                       addr102:
                                    }
                                    §§goto(addr121);
                                 }
                                 break;
                              }
                              §§goto(addr121);
                           }
                           param1 = §§pop();
                           continue;
                           addr22:
                        }
                        while(true)
                        {
                           §§goto(addr22);
                        }
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc3_ || _loc3_)
                        {
                           addr145:
                           §§push(§§pop() + Math.PI * 2);
                        }
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr145);
               }
               §§goto(addr102);
            }
            §§goto(addr121);
         }
      }
      
      public function get alpha() : Number
      {
         return this.§7!T§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this);
            if(_loc3_)
            {
               §§push(param1);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() < 0);
                  if(!(_loc2_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§push(0);
                           if(_loc3_ || this)
                           {
                              §§push(Number(§§pop()));
                              if(_loc3_ || _loc3_)
                              {
                              }
                           }
                           else
                           {
                              addr87:
                              if(§§pop() > 1)
                              {
                                 addr90:
                                 §§push(Number(1));
                                 if(!_loc3_)
                                 {
                                    addr98:
                                    §§push(Number(§§pop()));
                                 }
                              }
                              else
                              {
                                 §§push(param1);
                                 if(!_loc2_)
                                 {
                                    §§goto(addr98);
                                 }
                              }
                           }
                        }
                        §§goto(addr90);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc3_)
                        {
                           §§goto(addr87);
                        }
                     }
                     §§pop().§7!T§ = §§pop();
                     §§goto(addr100);
                  }
                  §§goto(addr87);
               }
               §§goto(addr98);
            }
            §§goto(addr90);
         }
         addr100:
      }
      
      public function get visible() : Boolean
      {
         return this.§8!J§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8!J§ = param1;
         }
      }
      
      public function get §<!4§() : Boolean
      {
         return this.§[!W§;
      }
      
      public function set §<!4§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[!W§ = param1;
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
         if(_loc2_)
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§+w§;
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
