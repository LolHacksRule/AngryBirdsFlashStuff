package §_-uY§
{
   import §_-0Ea§.§_-zM§;
   import §_-JM§.§_-03y§;
   import §_-JM§.§true§;
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
      
      private static var §_-0A3§:Vector.<DisplayObject>;
      
      private static var §_-Da§:Rectangle;
      
      private static var §_-6w§:Matrix;
      
      private static var §_-lu§:Matrix;
      
      protected static var §_-iJ§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §_-0A3§ = new Vector.<DisplayObject>(0);
            while(true)
            {
               §_-Da§ = new Rectangle();
               loop1:
               while(true)
               {
                  §_-6w§ = new Matrix();
                  while(true)
                  {
                     §_-lu§ = new Matrix();
                     while(_loc2_)
                     {
                        continue loop1;
                        §_-iJ§ = 0;
                        if(!(_loc1_ && _loc2_))
                        {
                           return;
                           addr50:
                        }
                     }
                  }
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr77);
            }
         }
         §§goto(addr50);
      }
      
      private var §_-c§:Number;
      
      private var §_-l1§:Number;
      
      private var §_-7r§:Number;
      
      private var §_-yG§:Number;
      
      private var §_-1e§:Number;
      
      private var §_-1-§:Number;
      
      private var §_-0Cn§:Number;
      
      private var §_-uO§:Number;
      
      private var §_-0E4§:Boolean;
      
      private var §_-065§:Boolean;
      
      private var mName:String;
      
      private var §_-9i§:Number;
      
      private var §_-00U§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(!(_loc3_ && this))
            {
               if(getQualifiedClassName(this) == "starling.display::DisplayObject")
               {
                  if(_loc2_ || _loc1_)
                  {
                     throw new §_-03y§();
                  }
                  addr94:
                  §§push(this);
                  §§push(this);
                  §§push(this.§_-uO§ = 1);
                  if(_loc2_)
                  {
                     var _loc1_:*;
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§_-1-§ = §§pop();
                  §§pop().§_-1e§ = _loc1_;
                  if(!(_loc3_ && _loc1_))
                  {
                     this.§_-0E4§ = this.§_-065§ = true;
                     if(_loc2_ || _loc2_)
                     {
                        this.§_-9i§ = -1;
                     }
                  }
               }
               else
               {
                  addr44:
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this);
                  §§push(this.§_-0Cn§ = 0);
                  if(_loc2_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§_-yG§ = §§pop();
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§_-7r§ = §§pop();
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§_-l1§ = §§pop();
                  §§pop().§_-c§ = _loc1_;
                  if(!_loc3_)
                  {
                     §§goto(addr94);
                  }
               }
               return;
            }
            §§goto(addr44);
         }
         §§goto(addr94);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.removeEventListeners();
         }
      }
      
      public function §_-oV§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§_-00U§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr83:
                     this.§_-00U§.removeChild(this);
                     addr85:
                     while(true)
                     {
                     }
                     addr85:
                  }
                  §§goto(addr85);
               }
               while(param1)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     this.dispose();
                  }
                  if(_loc3_ || _loc3_)
                  {
                     break;
                  }
                  §§goto(addr85);
               }
               return;
            }
         }
         §§goto(addr83);
      }
      
      public function §_-mP§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(param2)
            {
               if(!(_loc5_ && param2))
               {
                  param2.identity();
                  if(_loc6_)
                  {
                     addr37:
                     if(param1 == this)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§goto(addr47);
                        }
                        else
                        {
                           loop6:
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(this.§_-0Cn§);
                                 loop8:
                                 for(; !_loc5_; loop13:
                                 while(true)
                                 {
                                    if(_loc6_ || this)
                                    {
                                       if(_loc6_ || param2)
                                       {
                                          §§push(0);
                                          while(_loc6_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc6_)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§push(!§§pop());
                                                   while(true)
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc6_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              §§goto(addr378);
                                                                           }
                                                                           §§goto(addr355);
                                                                        }
                                                                        break;
                                                                        addr99:
                                                                        if(!(_loc6_ || param2))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr106);
                                                                     }
                                                                     §§goto(addr378);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr122);
                                                                  }
                                                                  addr409:
                                                                  if(_loc4_)
                                                                  {
                                                                     _loc4_.§_-mP§(_loc4_.§_-00U§,§_-6w§);
                                                                     if(_loc6_)
                                                                     {
                                                                        param2.concat(§_-6w§);
                                                                        if(_loc5_ && this)
                                                                        {
                                                                        }
                                                                        §§goto(addr411);
                                                                     }
                                                                     _loc4_ = _loc4_.parent;
                                                                     §§goto(addr409);
                                                                  }
                                                                  addr411:
                                                                  return param2;
                                                               }
                                                               §§goto(addr361);
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                         §§goto(addr354);
                                                      }
                                                      break;
                                                      addr89:
                                                      if(_loc5_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr99);
                                                         §§push(!§§pop());
                                                      }
                                                      §§goto(addr259);
                                                   }
                                                   §§goto(addr281);
                                                   addr196:
                                                }
                                                §§goto(addr343);
                                             }
                                             §§goto(addr196);
                                          }
                                          §§goto(addr227);
                                          addr188:
                                       }
                                       break;
                                    }
                                    continue loop8;
                                 },§§goto(addr345))
                                 {
                                    §§push(0);
                                    loop9:
                                    while(!_loc5_)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          loop10:
                                          for(; _loc6_; if(!(_loc6_ || _loc3_))
                                          {
                                             continue;
                                          },if(!(_loc5_ && this))
                                          {
                                             param2.translate(this.§_-c§,this.§_-l1§);
                                             if(!_loc5_)
                                             {
                                                §§goto(addr153);
                                             }
                                             §§goto(addr383);
                                          },§§goto(addr335))
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                param2.rotate(this.§_-0Cn§);
                                                while(true)
                                                {
                                                   addr170:
                                                   while(true)
                                                   {
                                                      §§push(this.§_-c§);
                                                      continue loop8;
                                                   }
                                                   addr57:
                                                   addr153:
                                                   return param2;
                                                   if(!(_loc6_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         addr169:
                                                         §§goto(addr57);
                                                      }
                                                      else
                                                      {
                                                         §§push(this.§_-00U§ == null);
                                                         loop22:
                                                         while(true)
                                                         {
                                                            loop23:
                                                            while(§§pop())
                                                            {
                                                               §§push(this.§_-7r§);
                                                               §§push(0);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     addr350:
                                                                     §§push(!§§pop());
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        while(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              addr355:
                                                                              break loop8;
                                                                           }
                                                                        }
                                                                        addr326:
                                                                        if(§§pop())
                                                                        {
                                                                           addr327:
                                                                           param2.translate(-this.§_-7r§,-this.§_-yG§);
                                                                           addr335:
                                                                        }
                                                                        §§push(this.§_-1e§);
                                                                        loop29:
                                                                        while(true)
                                                                        {
                                                                           §§push(1);
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              addr280:
                                                                              addr301:
                                                                              while(true)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 addr281:
                                                                                 loop18:
                                                                                 while(!_loc5_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    while(!_loc5_)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          addr287:
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!(_loc6_ || _loc3_))
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§pop();
                                                                                                break loop10;
                                                                                             }
                                                                                             addr375:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      break loop18;
                                                                                                   }
                                                                                                   continue loop22;
                                                                                                   addr361:
                                                                                                   if(_loc5_ && this)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      §§goto(addr370);
                                                                                                   }
                                                                                                }
                                                                                                continue loop22;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr326);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             param2.scale(this.§_-1e§,this.§_-1-§);
                                                                                             continue loop6;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr353);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr378:
                                                                                    §§goto(addr361);
                                                                                 }
                                                                                 continue loop28;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§_-1-§);
                                                                                 addr247:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       continue loop29;
                                                                                    }
                                                                                    §§push(1);
                                                                                    if(!(_loc6_ || this))
                                                                                    {
                                                                                       continue loop28;
                                                                                    }
                                                                                    §§push(§§pop() == §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       addr259:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_ && this)
                                                                                          {
                                                                                             §§goto(addr280);
                                                                                          }
                                                                                          §§goto(addr266);
                                                                                       }
                                                                                       addr106:
                                                                                       if(_loc5_ && _loc3_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             addr122:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc6_ || param1)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                §§goto(addr383);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr57);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr350);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr287);
                                                                                       }
                                                                                       §§goto(addr326);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr353:
                                                                        addr325:
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                                  §§goto(addr354);
                                                                  break loop9;
                                                               }
                                                               §§goto(addr325);
                                                               §§push(§§pop() != §§pop());
                                                            }
                                                            if(param1 == null)
                                                            {
                                                               §§goto(addr383);
                                                            }
                                                            else
                                                            {
                                                               if(param1.§_-00U§ == this)
                                                               {
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     param1.§_-mP§(this,param2);
                                                                     if(!_loc6_)
                                                                     {
                                                                     }
                                                                     addr445:
                                                                     return param2;
                                                                     addr458:
                                                                  }
                                                                  param2.invert();
                                                               }
                                                               else
                                                               {
                                                                  addr433:
                                                                  §_-0A3§.length = 0;
                                                                  if(_loc5_ && param1)
                                                                  {
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        §§goto(addr433);
                                                                     }
                                                                     §§goto(addr458);
                                                                  }
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr445);
                                                                  }
                                                                  else
                                                                  {
                                                                     var _loc3_:DisplayObject = null;
                                                                     var _loc4_:DisplayObject = this;
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        addr488:
                                                                        if(_loc4_)
                                                                        {
                                                                           §_-0A3§.push(_loc4_);
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              _loc4_ = _loc4_.parent;
                                                                              §§goto(addr488);
                                                                           }
                                                                        }
                                                                     }
                                                                     _loc4_ = param1;
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr501:
                                                                        §§push(Boolean(_loc4_));
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr522:
                                                                                    addr517:
                                                                                    if(§_-0A3§.indexOf(_loc4_) == -1)
                                                                                    {
                                                                                       _loc4_ = _loc4_.parent;
                                                                                       §§goto(addr501);
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(_loc4_ == null)
                                                                                       {
                                                                                          if(!(_loc5_ && _loc3_))
                                                                                          {
                                                                                             §§goto(addr535);
                                                                                          }
                                                                                       }
                                                                                       _loc3_ = _loc4_;
                                                                                       _loc4_ = this;
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr575:
                                                                                          if(_loc4_ != _loc3_)
                                                                                          {
                                                                                             _loc4_.§_-mP§(_loc4_.§_-00U§,§_-6w§);
                                                                                             if(!(_loc5_ && param2))
                                                                                             {
                                                                                                param2.concat(§_-6w§);
                                                                                                if(!(_loc5_ && this))
                                                                                                {
                                                                                                   addr571:
                                                                                                   _loc4_ = _loc4_.parent;
                                                                                                   §§goto(addr575);
                                                                                                }
                                                                                                addr580:
                                                                                                §_-lu§.identity();
                                                                                             }
                                                                                             addr582:
                                                                                             _loc4_ = param1;
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                addr625:
                                                                                                if(_loc4_ != _loc3_)
                                                                                                {
                                                                                                   _loc4_.§_-mP§(_loc4_.§_-00U§,§_-6w§);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §_-lu§.concat(§_-6w§);
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         _loc4_ = _loc4_.parent;
                                                                                                         §§goto(addr625);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr630);
                                                                                                }
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr630:
                                                                                                   §_-lu§.invert();
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr634:
                                                                                                      param2.concat(§_-lu§);
                                                                                                   }
                                                                                                   return param2;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr634);
                                                                                          }
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§goto(addr580);
                                                                                          }
                                                                                          §§goto(addr582);
                                                                                       }
                                                                                       §§goto(addr571);
                                                                                    }
                                                                                 }
                                                                                 addr535:
                                                                                 throw new ArgumentError("Object not connected to target");
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr522);
                                                                     }
                                                                     §§goto(addr517);
                                                                  }
                                                               }
                                                               §§goto(addr445);
                                                            }
                                                         }
                                                         addr370:
                                                      }
                                                   }
                                                   §§goto(addr268);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr343);
                                             }
                                          }
                                          if(_loc6_)
                                          {
                                             §§goto(addr301);
                                          }
                                          §§goto(addr327);
                                       }
                                       §§goto(addr170);
                                    }
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§goto(addr343);
                                    }
                                    §§goto(addr346);
                                 }
                                 §§goto(addr316);
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(param1 == this.§_-00U§);
                     }
                     §§goto(addr375);
                  }
                  addr47:
                  return param2;
               }
               §§goto(addr301);
            }
            else
            {
               param2 = new Matrix();
            }
            §§goto(addr37);
         }
         §§goto(addr169);
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §true§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
                           loop4:
                           while(true)
                           {
                              §§push(this.§_-0E4§);
                              if(_loc3_ || param2)
                              {
                                 §§push(!§§pop());
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(§§pop());
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                    }
                                    loop8:
                                    while(!§§pop())
                                    {
                                       while(true)
                                       {
                                          if(this.getBounds(this,§_-Da§).containsPoint(param1))
                                          {
                                             if(!_loc4_)
                                             {
                                                if(_loc3_ || param1)
                                                {
                                                   §§goto(addr48);
                                                }
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   continue;
                                                }
                                                continue loop4;
                                             }
                                             if(_loc4_)
                                             {
                                                break loop8;
                                             }
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(null);
                                          if(!(_loc4_ && param2))
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr92);
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this.§_-065§);
                                          if(_loc3_)
                                          {
                                             continue loop5;
                                          }
                                          addr85:
                                          if(_loc3_)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop8;
                                             }
                                             continue loop0;
                                          }
                                          addr133:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop7;
                                          }
                                       }
                                       continue loop1;
                                    }
                                    addr92:
                                    return §§pop();
                                    §§push(null);
                                 }
                                 continue loop2;
                              }
                              §§goto(addr133);
                           }
                        }
                     }
                     §§goto(addr89);
                  }
               }
            }
         }
         addr48:
         return this;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §_-lu§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§_-mP§(_loc2_.§_-00U§,§_-6w§);
            if(_loc4_ || _loc2_)
            {
               §_-lu§.concat(§_-6w§);
               if(!_loc4_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §_-lu§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §_-lu§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  break;
               }
               §§goto(addr78);
            }
            _loc2_.§_-mP§(_loc2_.§_-00U§,§_-6w§);
            if(!(_loc4_ || param1))
            {
               break;
            }
            §_-lu§.concat(§_-6w§);
            if(!_loc4_)
            {
               break;
            }
            _loc2_ = _loc2_.parent;
         }
         §_-lu§.invert();
         addr78:
         return §_-lu§.transformPoint(param1);
      }
      
      public function render(param1:§_-zM§, param2:Number) : void
      {
         throw new §true§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TouchEvent = null;
         if(_loc3_ || this)
         {
            if(param1 is TouchEvent)
            {
               if(!(_loc4_ && this))
               {
                  _loc2_ = param1 as TouchEvent;
                  if(!(_loc4_ && _loc2_))
                  {
                     if(_loc2_.timestamp == this.§_-9i§)
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr76);
                        }
                     }
                     this.§_-9i§ = _loc2_.timestamp;
                     addr83:
                     super.dispatchEvent(param1);
                     §§goto(addr86);
                  }
                  addr76:
                  return;
               }
               addr86:
               return;
            }
         }
         §§goto(addr83);
      }
      
      function §_-yt§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(!(_loc8_ && param1))
            {
               §§push(!§§pop());
               if(_loc7_)
               {
                  if(§§pop())
                  {
                     if(_loc7_ || _loc2_)
                     {
                        addr53:
                        §§pop();
                        if(_loc7_)
                        {
                           §§push(_loc2_ == null);
                           if(_loc7_ || _loc3_)
                           {
                              addr67:
                              if(§§pop())
                              {
                                 if(_loc7_ || _loc3_)
                                 {
                                    if(_loc2_ == this)
                                    {
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                    _loc3_ = §_-J0§();
                                    if(!_loc8_)
                                    {
                                       §§push(param1 == this.§_-00U§);
                                       if(_loc7_ || _loc2_)
                                       {
                                          §§push(!§§pop());
                                          if(!_loc8_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc7_)
                                             {
                                                §§push(§§pop());
                                                if(_loc7_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         §§pop();
                                                         if(_loc7_ || _loc2_)
                                                         {
                                                            §§push(this.§_-00U§);
                                                            if(!_loc8_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc7_)
                                                               {
                                                                  addr132:
                                                                  §§push(§§pop());
                                                                  if(_loc7_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           addr138:
                                                                           §§pop();
                                                                           if(!(_loc8_ && _loc3_))
                                                                           {
                                                                              §§push(_loc3_.length > 0);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§goto(addr162);
                                                                              }
                                                                              §§goto(addr252);
                                                                           }
                                                                           §§goto(addr226);
                                                                        }
                                                                        §§goto(addr252);
                                                                     }
                                                                     addr162:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           addr165:
                                                                           §§push(0);
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              var _loc5_:* = §§pop();
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 var _loc6_:* = _loc3_;
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc6_,_loc5_));
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   addr213:
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      §§goto(addr216);
                                                                                                   }
                                                                                                   §§goto(addr252);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr279);
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
                                                                                                continue loop2;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                                          if(!(_loc8_ && param1))
                                                                                          {
                                                                                             this.addEventListeningObject(this,_loc4_);
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr279);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr200);
                                                                              }
                                                                              §§goto(addr213);
                                                                           }
                                                                           §§goto(addr261);
                                                                        }
                                                                        §§goto(addr260);
                                                                     }
                                                                     addr216:
                                                                     this.§_-00U§ = param1;
                                                                     if(!(_loc8_ && _loc2_))
                                                                     {
                                                                        addr226:
                                                                        §§push(Boolean(this.§_-00U§));
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr232:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc7_ || _loc3_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc7_ || _loc3_)
                                                                                 {
                                                                                    addr252:
                                                                                    if(_loc3_.length > 0)
                                                                                    {
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          addr261:
                                                                                          _loc5_ = 0;
                                                                                          addr260:
                                                                                          if(_loc7_ || this)
                                                                                          {
                                                                                             addr279:
                                                                                             _loc6_ = _loc3_;
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                break loop2;
                                                                                             }
                                                                                             addr302:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr252);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr232);
                                                               }
                                                               §§goto(addr252);
                                                            }
                                                            §§goto(addr226);
                                                         }
                                                         §§goto(addr261);
                                                      }
                                                      §§goto(addr138);
                                                   }
                                                   §§goto(addr132);
                                                }
                                                §§goto(addr232);
                                             }
                                          }
                                          §§goto(addr232);
                                       }
                                       §§goto(addr138);
                                    }
                                    §§goto(addr165);
                                 }
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr67);
                        }
                        break;
                     }
                     §§goto(addr67);
                  }
               }
               §§goto(addr67);
            }
            §§goto(addr53);
         }
         throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§_-00U§);
            if(!(_loc3_ && param1))
            {
               if(!§§pop())
               {
               }
               §§goto(addr46);
            }
            §§pop().removeEventListeningObject(param1,param2);
         }
         addr46:
         if(_loc4_)
         {
            §§push(this.§_-00U§);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(this.§_-00U§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr43:
                     this.§_-00U§.addEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.dispatchEvent(param1);
         }
      }
      
      public function get §_-gv§() : Matrix
      {
         return this.§_-mP§(this.§_-00U§);
      }
      
      public function get §_-XV§() : Rectangle
      {
         return this.getBounds(this.§_-00U§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§_-00U§,§_-Da§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§_-1e§ = 1;
         }
         §§push(this.width);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(_loc3_ || param1)
               {
                  if(!_loc3_)
                  {
                     addr78:
                     §§push(this);
                     §§push(param1);
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleX = §§pop();
                     addr90:
                  }
                  else
                  {
                     addr74:
                  }
                  return;
               }
               §§goto(addr90);
            }
            §§goto(addr78);
         }
         §§goto(addr74);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§_-00U§,§_-Da§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§_-1-§ = 1;
         }
         §§push(this.height);
         if(!(_loc4_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(_loc3_)
               {
                  if(_loc4_)
                  {
                     addr78:
                     §§push(this);
                     §§push(param1);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleY = §§pop();
                     addr90:
                  }
                  return;
               }
               §§goto(addr90);
            }
         }
         §§goto(addr78);
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
               if(_loc3_ || this)
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
         if(_loc3_ || _loc3_)
         {
            super.addEventListener(param1,param2);
         }
         do
         {
            this.addEventListeningObject(this,param1);
         }
         while(_loc4_ && _loc3_);
         
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super.removeEventListener(param1,param2);
            while(!hasEventListener(param1))
            {
               if(_loc3_)
               {
                  break;
               }
               addr67:
               if(_loc3_ && param2)
               {
                  continue;
               }
               this.removeEventListeningObject(this,param1);
               §§goto(addr67);
            }
            return;
         }
         §§goto(addr67);
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:Array = §_-J0§();
         if(_loc6_)
         {
            super.removeEventListeners(param1);
            if(_loc6_)
            {
               §§goto(addr30);
            }
            §§goto(addr43);
         }
         addr30:
         if(param1 == null)
         {
            addr43:
            for each(_loc3_ in _loc2_)
            {
               if(_loc6_ || _loc3_)
               {
                  this.removeEventListeningObject(this,_loc3_);
               }
            }
            if(_loc7_ && param1)
            {
            }
         }
         else
         {
            this.removeEventListeningObject(this,param1);
         }
      }
      
      public function §_-cb§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§_-0Cn§);
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
                           while(true)
                           {
                              §§pop();
                              addr511:
                              while(true)
                              {
                                 §§push(this.§_-1e§);
                                 addr497:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr498:
                                    addr451:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    if(!(_loc2_ || this))
                                    {
                                       continue;
                                    }
                                    §§push(this.§_-7r§);
                                    if(_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    addr463:
                                    §§push(§§pop() + §§pop());
                                    §§push(0);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§goto(addr482);
                                    }
                                    §§goto(addr498);
                                 }
                              }
                           }
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
                                    loop14:
                                    while(true)
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(this.§_-c§);
                                             loop16:
                                             while(!(_loc3_ && param1))
                                             {
                                                §§push(0);
                                                loop17:
                                                for(; _loc2_; while(_loc2_ || _loc3_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc2_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         §§goto(addr142);
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                   §§goto(addr154);
                                                })
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      loop19:
                                                      while(_loc2_)
                                                      {
                                                         §§push(§§pop());
                                                         loop20:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§_-l1§);
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        loop24:
                                                                        while(!(_loc3_ && this))
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              addr355:
                                                                              while(true)
                                                                              {
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          param1.prependTranslation(this.§_-c§,this.§_-l1§,0);
                                                                                       }
                                                                                       loop28:
                                                                                       while(_loc2_ || _loc2_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§_-0Cn§);
                                                                                             loop30:
                                                                                             while(!_loc3_)
                                                                                             {
                                                                                                §§push(0);
                                                                                                while(_loc2_)
                                                                                                {
                                                                                                   if(§§pop() != §§pop())
                                                                                                   {
                                                                                                      loop32:
                                                                                                      for(; _loc2_ || param1; while(true)
                                                                                                      {
                                                                                                         if(!(_loc2_ || param1))
                                                                                                         {
                                                                                                            continue loop32;
                                                                                                         }
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr126);
                                                                                                      },continue loop28)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(!(_loc3_ && _loc2_))
                                                                                                            {
                                                                                                               param1.prependRotation(this.§_-0Cn§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                                               loop33:
                                                                                                               for(; _loc2_ || _loc3_; while(_loc2_ || _loc2_)
                                                                                                               {
                                                                                                                  addr182:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§_-yG§);
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr33:
                                                                                                                        if(_loc2_ || this)
                                                                                                                        {
                                                                                                                           continue loop35;
                                                                                                                        }
                                                                                                                        continue loop36;
                                                                                                                     }
                                                                                                                     continue loop49;
                                                                                                                  }
                                                                                                                  addr409:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr410:
                                                                                                                     param1.prependTranslation(this.§_-c§ + this.§_-7r§,this.§_-l1§ + this.§_-yG§,0);
                                                                                                                  }
                                                                                                                  return;
                                                                                                                  §§goto(addr109);
                                                                                                               })
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§_-1e§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           if(_loc2_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(1);
                                                                                                                                 loop36:
                                                                                                                                 for(; !_loc3_; while(true)
                                                                                                                                 {
                                                                                                                                    §§push(1);
                                                                                                                                    if(_loc2_ || this)
                                                                                                                                    {
                                                                                                                                       if(_loc2_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr204);
                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop14;
                                                                                                                                             }
                                                                                                                                             addr442:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop36;
                                                                                                                                    §§goto(addr33);
                                                                                                                                 },§§goto(addr407))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    loop37:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(!§§pop());
                                                                                                                                       addr280:
                                                                                                                                       addr204:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             loop39:
                                                                                                                                             for(; _loc2_; §§push(§§pop()),if(_loc3_ && _loc3_)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             },if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                continue loop10;
                                                                                                                                             },if(!§§pop())
                                                                                                                                             {
                                                                                                                                                §§goto(addr165);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc2_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         param1.prependTranslation(this.§_-7r§,this.§_-yG§,0);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr229);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc2_ || this))
                                                                                                                                                   {
                                                                                                                                                      continue loop33;
                                                                                                                                                   }
                                                                                                                                                   if(_loc3_ && this)
                                                                                                                                                   {
                                                                                                                                                      continue loop32;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr297);
                                                                                                                                                }
                                                                                                                                                addr91:
                                                                                                                                             },§§goto(addr482))
                                                                                                                                             {
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop3;
                                                                                                                                                   }
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      while(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            continue loop21;
                                                                                                                                                         }
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§_-1-§);
                                                                                                                                                               continue loop36;
                                                                                                                                                            }
                                                                                                                                                            addr297:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr485);
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc2_ || _loc2_))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            continue loop9;
                                                                                                                                                         }
                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            continue loop39;
                                                                                                                                                         }
                                                                                                                                                         addr165:
                                                                                                                                                         addr165:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc3_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§pop();
                                                                                                                                                               continue loop33;
                                                                                                                                                            }
                                                                                                                                                            continue loop19;
                                                                                                                                                         }
                                                                                                                                                         addr482:
                                                                                                                                                         addr484:
                                                                                                                                                         addr483:
                                                                                                                                                         §§push(§§pop() != §§pop());
                                                                                                                                                         if(!(§§pop() != §§pop()))
                                                                                                                                                         {
                                                                                                                                                            addr485:
                                                                                                                                                            if(_loc3_ && this)
                                                                                                                                                            {
                                                                                                                                                               continue loop4;
                                                                                                                                                            }
                                                                                                                                                            §§pop();
                                                                                                                                                            §§push(this.§_-l1§);
                                                                                                                                                            if(!_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr463);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() + this.§_-yG§ != 0);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr409);
                                                                                                                                                      }
                                                                                                                                                      continue loop25;
                                                                                                                                                   }
                                                                                                                                                   addr227:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            param1.prependScale(this.§_-1e§,this.§_-1-§,1);
                                                                                                                                                            continue loop32;
                                                                                                                                                         }
                                                                                                                                                         addr229:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§_-7r§);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               continue loop17;
                                                                                                                                                               §§goto(addr182);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr126:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr484);
                                                                                                                                             }
                                                                                                                                             continue loop20;
                                                                                                                                          }
                                                                                                                                          addr502:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             addr503:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§_-1-§);
                                                                                                                                                if(!(_loc2_ || this))
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                continue loop0;
                                                                                                                                             }
                                                                                                                                             §§goto(addr463);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc3_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(!§§pop());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc2_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc2_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr227);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr483);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr280);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr482);
                                                                                                                                                   addr70:
                                                                                                                                                   if(_loc2_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop18;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                             continue loop2;
                                                                                                                                          }
                                                                                                                                          continue loop37;
                                                                                                                                       }
                                                                                                                                       §§goto(addr407);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr463);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr451);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop30;
                                                                                                                     }
                                                                                                                     §§goto(addr407);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr493);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr445:
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     §§goto(addr451);
                                                                                                                     §§push(this.§_-c§);
                                                                                                                  }
                                                                                                                  §§goto(addr511);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr503);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr503);
                                                                                                         }
                                                                                                         §§goto(addr410);
                                                                                                      }
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   §§goto(addr256);
                                                                                                   if(!(_loc2_ || param1))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§goto(addr165);
                                                                                                      }
                                                                                                      §§push(!§§pop());
                                                                                                   }
                                                                                                   §§goto(addr70);
                                                                                                }
                                                                                                continue loop24;
                                                                                             }
                                                                                             continue loop16;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr410);
                                                                                    }
                                                                                    §§goto(addr298);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr460);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr355);
                                                         }
                                                      }
                                                      continue loop15;
                                                   }
                                                }
                                                §§goto(addr407);
                                             }
                                             §§goto(addr400);
                                          }
                                          §§goto(addr445);
                                       }
                                    }
                                 }
                                 §§goto(addr502);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr182);
      }
      
      public function get x() : Number
      {
         return this.§_-c§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-c§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§_-l1§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§_-l1§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§_-7r§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-7r§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§_-yG§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-yG§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§_-1e§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-1e§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§_-1-§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-1-§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§_-0Cn§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(param1);
            loop1:
            while(true)
            {
               §§push(-Math.PI);
               if(_loc3_)
               {
                  if(!_loc2_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        loop2:
                        for(; _loc3_ || _loc2_; if(!(_loc3_ || _loc3_))
                        {
                           continue;
                        },this.§_-0Cn§ = param1,§§goto(addr72))
                        {
                           loop3:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc3_ || _loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(§§pop() <= Math.PI)
                                       {
                                          if(!(_loc3_ || this))
                                          {
                                             return;
                                          }
                                          addr72:
                                          if(!_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          continue;
                                       }
                                       §§push(param1);
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(Math.PI * 2);
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!_loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         addr127:
                                                         §§push(Math.PI * 2);
                                                         break loop1;
                                                      }
                                                      §§push(Number(§§pop()));
                                                      while(true)
                                                      {
                                                         param1 = §§pop();
                                                         continue loop3;
                                                      }
                                                   }
                                                   addr119:
                                                }
                                                §§goto(addr122);
                                             }
                                             addr116:
                                          }
                                          addr133:
                                          param1 = §§pop();
                                          break loop2;
                                       }
                                       §§goto(addr119);
                                    }
                                    break;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr133);
                           §§push(Number(§§pop()));
                        }
                        continue loop0;
                     }
                     §§push(param1);
                     §§goto(addr127);
                  }
                  break;
               }
               §§goto(addr116);
            }
            §§goto(addr132);
         }
      }
      
      public function get alpha() : Number
      {
         return this.§_-uO§;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            if(_loc2_ || _loc2_)
            {
               §§push(param1);
               if(_loc2_)
               {
                  §§push(§§pop() < 0);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           §§push(0);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc2_ || param1))
                              {
                                 addr81:
                                 if(§§pop() > 1)
                                 {
                                    addr84:
                                    §§push(Number(1));
                                    if(_loc3_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    if(!_loc3_)
                                    {
                                       addr92:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                              }
                           }
                           §§pop().§_-uO§ = §§pop();
                           §§goto(addr94);
                        }
                        §§goto(addr84);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr81);
                        }
                        §§goto(addr92);
                     }
                  }
                  §§goto(addr81);
               }
               §§goto(addr92);
            }
            §§goto(addr84);
         }
         addr94:
      }
      
      public function get visible() : Boolean
      {
         return this.§_-0E4§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-0E4§ = param1;
         }
      }
      
      public function get §_-xd§() : Boolean
      {
         return this.§_-065§;
      }
      
      public function set §_-xd§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§_-065§ = param1;
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
         return this.§_-00U§;
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
