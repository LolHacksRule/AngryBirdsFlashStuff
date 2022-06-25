package §7!B§
{
   import §!!K§.§?%§;
   import §4!S§.§#!s§;
   import §4!S§.§%!Y§;
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
      
      private static var §]%§:Vector.<DisplayObject>;
      
      private static var §@!%§:Rectangle;
      
      private static var §'V§:Matrix;
      
      private static var §[!u§:Matrix;
      
      protected static var §@"§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §]%§ = new Vector.<DisplayObject>(0);
            while(true)
            {
               §@!%§ = new Rectangle();
               addr82:
               while(_loc2_)
               {
                  §'V§ = new Matrix();
               }
            }
         }
         loop2:
         do
         {
            §[!u§ = new Matrix();
            while(!_loc1_)
            {
               §@"§ = 0;
               if(!(_loc1_ && _loc2_))
               {
                  continue loop2;
               }
            }
            §§goto(addr82);
         }
         while(_loc1_);
         
      }
      
      private var §#!u§:Number;
      
      private var §<h§:Number;
      
      private var §`Q§:Number;
      
      private var §-Z§:Number;
      
      private var §5!A§:Number;
      
      private var §,!C§:Number;
      
      private var §`!j§:Number;
      
      private var §2!y§:Number;
      
      private var §1!M§:Boolean;
      
      private var §<!!§:Boolean;
      
      private var mName:String;
      
      private var §"!'§:Number;
      
      private var §8!Q§:DisplayObjectContainer;
      
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
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr35);
                  }
               }
               §§push(this);
               §§push(this);
               §§push(this);
               §§push(this);
               §§push(this.§`!j§ = 0);
               if(_loc3_ || _loc2_)
               {
                  var _loc1_:*;
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§-Z§ = §§pop();
               §§push(_loc1_);
               if(_loc3_)
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§`Q§ = §§pop();
               §§push(_loc1_);
               if(_loc3_ || this)
               {
                  §§push(_loc1_ = §§pop());
               }
               §§pop().§<h§ = §§pop();
               §§pop().§#!u§ = _loc1_;
               if(_loc3_ || this)
               {
                  addr105:
                  §§push(this);
                  §§push(this);
                  §§push(this.§2!y§ = 1);
                  if(_loc3_ || _loc1_)
                  {
                     §§push(_loc1_ = §§pop());
                  }
                  §§pop().§,!C§ = §§pop();
                  §§pop().§5!A§ = _loc1_;
                  if(_loc3_)
                  {
                     this.§1!M§ = this.§<!!§ = true;
                     if(_loc3_ || _loc3_)
                     {
                        this.§"!'§ = -1;
                     }
                  }
               }
               return;
            }
            addr35:
            throw new §#!s§();
         }
         §§goto(addr105);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.removeEventListeners();
         }
      }
      
      public function §;!S§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§8!Q§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§8!Q§);
                     addr78:
                     while(true)
                     {
                        §§pop().removeChild(this);
                        addr80:
                        while(true)
                        {
                        }
                     }
                  }
                  addr76:
               }
               for(; param1; §§goto(addr80))
               {
                  if(_loc3_ || param1)
                  {
                     this.dispose();
                  }
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr76);
               }
               return;
            }
            §§goto(addr78);
         }
         §§goto(addr80);
      }
      
      public function §6!8§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(param2)
            {
               if(_loc6_)
               {
                  param2.identity();
                  if(!_loc5_)
                  {
                     addr32:
                     if(param1 == this)
                     {
                        if(_loc6_ || param2)
                        {
                           return param2;
                        }
                        loop26:
                        while(true)
                        {
                           §§push(this.§8!Q§ == null);
                           loop23:
                           while(true)
                           {
                              loop19:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(this.§`Q§);
                                       loop24:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop25:
                                          while(true)
                                          {
                                             addr394:
                                             §§push(§§pop() != §§pop());
                                             loop12:
                                             while(true)
                                             {
                                                addr396:
                                                §§push(§§pop());
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      addr404:
                                                      §§pop();
                                                      addr405:
                                                      §§push(this.§-Z§);
                                                      §§push(0);
                                                      if(_loc5_)
                                                      {
                                                         continue loop25;
                                                      }
                                                      §§push(§§pop() == §§pop());
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(!(_loc6_ || param2))
                                                         {
                                                            continue loop19;
                                                         }
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §§push(!§§pop());
                                                            while(true)
                                                            {
                                                               addr371:
                                                               if(§§pop())
                                                               {
                                                                  addr372:
                                                                  param2.translate(-this.§`Q§,-this.§-Z§);
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr380:
                                                               }
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  addr315:
                                                                  §§push(this.§5!A§);
                                                                  §§push(1);
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     addr317:
                                                                     §§push(§§pop() != §§pop());
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        addr326:
                                                                        §§push(§§pop());
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr345:
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                              addr344:
                                                                              §§push(this.§,!C§);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_ && param1)
                                                                                 {
                                                                                    continue loop24;
                                                                                 }
                                                                                 §§push(1);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(_loc6_ || param2)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    §§push(!§§pop());
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr344);
                                                                                 §§goto(addr347);
                                                                              }
                                                                              addr344:
                                                                              addr347:
                                                                              addr280:
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 param2.scale(this.§5!A§,this.§,!C§);
                                                                                 addr311:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              addr305:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§`!j§);
                                                                              loop4:
                                                                              while(_loc6_ || this)
                                                                              {
                                                                                 if(!(_loc5_ && param2))
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(0);
                                                                                       loop5:
                                                                                       while(_loc6_ || this)
                                                                                       {
                                                                                          if(§§pop() != §§pop())
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   param2.rotate(this.§`!j§);
                                                                                                   addr274:
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr170:
                                                                                                      §§push(this.§#!u§);
                                                                                                      loop6:
                                                                                                      for(; !(_loc5_ && param1); §§push(this.§<h§),if(!(_loc6_ || this))
                                                                                                      {
                                                                                                         continue;
                                                                                                      },§§goto(addr85))
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            addr182:
                                                                                                            while(!(_loc5_ && this))
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  continue loop12;
                                                                                                               }
                                                                                                               if(!(_loc5_ && param2))
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr131);
                                                                                                                           }
                                                                                                                           while(_loc6_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 if(_loc5_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    var _loc4_:DisplayObject = this;
                                                                                                                                    while(_loc4_)
                                                                                                                                    {
                                                                                                                                       _loc4_.§6!8§(_loc4_.§8!Q§,§'V§);
                                                                                                                                       if(_loc6_ || param1)
                                                                                                                                       {
                                                                                                                                          param2.concat(§'V§);
                                                                                                                                       }
                                                                                                                                       _loc4_ = _loc4_.parent;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr428:
                                                                                                                                 }
                                                                                                                                 continue loop6;
                                                                                                                                 return param2;
                                                                                                                              }
                                                                                                                              §§goto(addr317);
                                                                                                                           }
                                                                                                                           §§goto(addr301);
                                                                                                                           §§goto(addr311);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr396);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break;
                                                                                                                     addr108:
                                                                                                                     if(_loc5_ && _loc3_)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(!(_loc5_ && param1))
                                                                                                                     {
                                                                                                                        if(!(_loc5_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              addr131:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc6_ || param2)
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       param2.translate(this.§#!u§,this.§<h§);
                                                                                                                                       if(!(_loc6_ || param1))
                                                                                                                                       {
                                                                                                                                          §§goto(addr428);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr345);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 if(_loc6_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr405);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr311);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr412:
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 addr421:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop23;
                                                                                                                                    }
                                                                                                                                    §§pop();
                                                                                                                                    §§push(param1 == null);
                                                                                                                                    loop18:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       addr411:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             continue loop23;
                                                                                                                                          }
                                                                                                                                          §§goto(addr412);
                                                                                                                                          continue loop18;
                                                                                                                                       }
                                                                                                                                       continue loop23;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr420:
                                                                                                                           }
                                                                                                                           §§pop();
                                                                                                                           continue loop26;
                                                                                                                           return param2;
                                                                                                                        }
                                                                                                                        §§goto(addr404);
                                                                                                                        §§goto(addr404);
                                                                                                                     }
                                                                                                                     §§goto(addr291);
                                                                                                                  }
                                                                                                                  §§goto(addr326);
                                                                                                               }
                                                                                                               §§goto(addr422);
                                                                                                            }
                                                                                                            addr85:
                                                                                                            §§goto(addr371);
                                                                                                            §§push(0);
                                                                                                            if(!(_loc6_ || param2))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            if(_loc6_ || _loc3_)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  addr106:
                                                                                                                  §§push(!§§pop());
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     §§goto(addr108);
                                                                                                                  }
                                                                                                                  §§goto(addr215);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr182);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr106);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   continue loop26;
                                                                                                }
                                                                                                §§goto(addr372);
                                                                                             }
                                                                                             §§goto(addr274);
                                                                                          }
                                                                                          §§goto(addr170);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr404);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr315);
                                                                                 }
                                                                              }
                                                                              §§goto(addr280);
                                                                           }
                                                                        }
                                                                        §§goto(addr421);
                                                                     }
                                                                     §§goto(addr344);
                                                                  }
                                                               }
                                                            }
                                                            addr370:
                                                         }
                                                         §§goto(addr410);
                                                      }
                                                   }
                                                   §§goto(addr370);
                                                }
                                                §§goto(addr411);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr428);
                                 }
                                 else if(param1 == null)
                                 {
                                    §§goto(addr428);
                                 }
                                 else
                                 {
                                    if(param1.§8!Q§ == this)
                                    {
                                       if(_loc6_)
                                       {
                                          param1.§6!8§(this,param2);
                                          if(_loc6_ || this)
                                          {
                                             param2.invert();
                                          }
                                          addr496:
                                       }
                                       else
                                       {
                                          addr486:
                                          if(true)
                                          {
                                             var _loc3_:DisplayObject = null;
                                             _loc4_ = this;
                                             if(_loc6_)
                                             {
                                                addr521:
                                                if(_loc4_)
                                                {
                                                   §]%§.push(_loc4_);
                                                   if(_loc6_ || param1)
                                                   {
                                                      addr517:
                                                      _loc4_ = _loc4_.parent;
                                                      §§goto(addr521);
                                                   }
                                                }
                                                _loc4_ = param1;
                                                if(!(_loc5_ && param1))
                                                {
                                                   addr539:
                                                   §§push(Boolean(_loc4_));
                                                   if(_loc6_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§pop();
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               addr560:
                                                               if(§]%§.indexOf(_loc4_) == -1)
                                                               {
                                                                  _loc4_ = _loc4_.parent;
                                                                  §§goto(addr539);
                                                               }
                                                               if(_loc6_ || this)
                                                               {
                                                               }
                                                               addr582:
                                                               _loc3_ = _loc4_;
                                                               _loc4_ = this;
                                                               if(_loc6_)
                                                               {
                                                                  addr613:
                                                                  if(_loc4_ != _loc3_)
                                                                  {
                                                                     _loc4_.§6!8§(_loc4_.§8!Q§,§'V§);
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        addr604:
                                                                        param2.concat(§'V§);
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr609:
                                                                           _loc4_ = _loc4_.parent;
                                                                           §§goto(addr613);
                                                                        }
                                                                        §§goto(addr625);
                                                                     }
                                                                     §§goto(addr609);
                                                                  }
                                                                  if(!(_loc5_ && param2))
                                                                  {
                                                                     §[!u§.identity();
                                                                  }
                                                                  addr625:
                                                                  _loc4_ = param1;
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     addr668:
                                                                     if(_loc4_ != _loc3_)
                                                                     {
                                                                        _loc4_.§6!8§(_loc4_.§8!Q§,§'V§);
                                                                        if(_loc6_)
                                                                        {
                                                                           §[!u§.concat(§'V§);
                                                                           if(_loc6_ || param2)
                                                                           {
                                                                              _loc4_ = _loc4_.parent;
                                                                              §§goto(addr668);
                                                                           }
                                                                        }
                                                                        §§goto(addr678);
                                                                     }
                                                                     if(_loc6_ || param2)
                                                                     {
                                                                        §§goto(addr678);
                                                                     }
                                                                     §§goto(addr682);
                                                                  }
                                                                  addr678:
                                                                  §[!u§.invert();
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr682:
                                                                     param2.concat(§[!u§);
                                                                  }
                                                                  return param2;
                                                               }
                                                               §§goto(addr604);
                                                            }
                                                            if(_loc4_ == null)
                                                            {
                                                               if(_loc6_ || param1)
                                                               {
                                                                  throw new ArgumentError("Object not connected to target");
                                                               }
                                                            }
                                                            §§goto(addr582);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr560);
                                             }
                                             §§goto(addr517);
                                          }
                                       }
                                       return param2;
                                    }
                                    addr476:
                                    §]%§.length = 0;
                                    if(!(_loc6_ || this))
                                    {
                                       if(!_loc5_)
                                       {
                                          §§goto(addr476);
                                       }
                                       §§goto(addr496);
                                    }
                                    §§goto(addr486);
                                 }
                                 §§goto(addr428);
                              }
                           }
                        }
                     }
                     else
                     {
                        addr416:
                        §§push(param1 == this.§8!Q§);
                     }
                     §§goto(addr420);
                  }
                  §§goto(addr428);
               }
               §§goto(addr305);
            }
            else
            {
               param2 = new Matrix();
            }
            §§goto(addr32);
         }
         §§goto(addr416);
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §%!Y§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_ || this)
                                 {
                                    return null;
                                 }
                                 else
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       if(_loc4_ && param2)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §§push(this.§1!M§);
                                             if(_loc4_ && param2)
                                             {
                                                break;
                                             }
                                             if(_loc3_ || param1)
                                             {
                                                §§push(!§§pop());
                                                if(_loc3_ || _loc3_)
                                                {
                                                   break;
                                                }
                                                break loop4;
                                             }
                                             addr149:
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop5;
                                             }
                                          }
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          if(this.getBounds(this,§@!%§).containsPoint(param1))
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   return this;
                                                }
                                                continue loop4;
                                             }
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                          }
                                          §§push(null);
                                          if(_loc3_ || _loc3_)
                                          {
                                             return §§pop();
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(this.§<!!§);
                                          if(!(_loc4_ && this))
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(_loc4_)
                                          {
                                             break loop4;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr142);
                                    }
                                    addr141:
                                 }
                                 return §§pop();
                              }
                              §§goto(addr31);
                           }
                           continue loop0;
                        }
                        addr71:
                     }
                     addr132:
                     §§push(§§pop());
                     if(!(_loc3_ || param1))
                     {
                        continue;
                     }
                     if(§§pop())
                     {
                        §§goto(addr71);
                     }
                     §§goto(addr141);
                  }
               }
               §§goto(addr149);
            }
         }
         §§goto(addr142);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §[!u§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§6!8§(_loc2_.§8!Q§,§'V§);
            if(!_loc3_)
            {
               §[!u§.concat(§'V§);
               if(!_loc4_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.parent;
         }
         return §[!u§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §[!u§.identity();
         }
         var _loc2_:DisplayObject = this;
         while(true)
         {
            if(!_loc2_)
            {
               if(_loc3_)
               {
                  break;
               }
            }
            else
            {
               _loc2_.§6!8§(_loc2_.§8!Q§,§'V§);
               if(!_loc3_)
               {
                  break;
               }
               §[!u§.concat(§'V§);
               if(!(_loc4_ && _loc3_))
               {
                  continue;
               }
            }
            §§goto(addr77);
         }
         §[!u§.invert();
         addr77:
         return §[!u§.transformPoint(param1);
      }
      
      public function render(param1:§?%§, param2:Number) : void
      {
         throw new §%!Y§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:TouchEvent = null;
         if(_loc4_ || _loc2_)
         {
            if(param1 is TouchEvent)
            {
               if(!(_loc3_ && param1))
               {
                  _loc2_ = param1 as TouchEvent;
                  if(!(_loc3_ && param1))
                  {
                     if(_loc2_.timestamp == this.§"!'§)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr84);
                        }
                     }
                     else
                     {
                        this.§"!'§ = _loc2_.timestamp;
                        §§goto(addr84);
                     }
                     §§goto(addr84);
                  }
                  return;
               }
            }
            §§goto(addr84);
         }
         addr84:
         super.dispatchEvent(param1);
      }
      
      function §^i§(param1:DisplayObjectContainer) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(true)
         {
            §§push(_loc2_ == this);
            if(!(_loc7_ && param1))
            {
               §§push(!§§pop());
               if(_loc8_ || _loc3_)
               {
                  addr50:
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(_loc7_)
                  {
                     continue;
                  }
               }
               §§pop();
               if(!_loc8_)
               {
                  throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
               }
               addr76:
               §§push(_loc2_ == null);
               if(!(_loc7_ && param1))
               {
                  §§push(!§§pop());
               }
               continue;
            }
            §§goto(addr50);
         }
         if(!_loc7_)
         {
            if(_loc2_ == this)
            {
               if(_loc8_)
               {
                  §§goto(addr76);
               }
            }
         }
         _loc3_ = §=! §();
         if(!_loc7_)
         {
            §§push(param1 == this.§8!Q§);
            if(_loc8_ || param1)
            {
               §§push(!§§pop());
               if(!(_loc7_ && this))
               {
                  §§push(Boolean(§§pop()));
                  if(_loc8_ || _loc2_)
                  {
                     §§push(§§pop());
                     if(!(_loc7_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           if(!(_loc7_ && param1))
                           {
                              §§pop();
                              if(_loc8_)
                              {
                                 §§push(this.§8!Q§);
                                 if(!_loc7_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc7_ && param1))
                                    {
                                       addr148:
                                       §§push(§§pop());
                                       if(!(_loc7_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                addr169:
                                                §§pop();
                                                if(_loc8_ || param1)
                                                {
                                                   §§push(_loc3_.length > 0);
                                                   if(_loc8_ || param1)
                                                   {
                                                      addr188:
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc7_ && this))
                                                         {
                                                            §§push(0);
                                                            if(_loc8_)
                                                            {
                                                               var _loc5_:* = §§pop();
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  var _loc6_:* = _loc3_;
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     loop1:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc6_,_loc5_));
                                                                        if(_loc8_)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr247:
                                                                                       this.§8!Q§ = param1;
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr254:
                                                                                          §§push(Boolean(this.§8!Q§));
                                                                                          if(!(_loc7_ && this))
                                                                                          {
                                                                                             addr263:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc7_ && param1)
                                                                                                {
                                                                                                }
                                                                                                addr283:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      addr287:
                                                                                                      _loc5_ = 0;
                                                                                                      if(_loc8_ || this)
                                                                                                      {
                                                                                                         addr305:
                                                                                                         _loc6_ = _loc3_;
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            addr328:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§hasnext(_loc6_,_loc5_));
                                                                                                               break loop1;
                                                                                                            }
                                                                                                            addr328:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.addEventListeningObject(this,_loc4_);
                                                                                                            §§goto(addr328);
                                                                                                         }
                                                                                                         addr324:
                                                                                                      }
                                                                                                      addr332:
                                                                                                      return;
                                                                                                      addr331:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr332);
                                                                                             }
                                                                                             §§goto(addr283);
                                                                                          }
                                                                                          §§pop();
                                                                                          if(_loc8_ || _loc3_)
                                                                                          {
                                                                                             addr279:
                                                                                             §§goto(addr283);
                                                                                             §§push(_loc3_.length > 0);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr332);
                                                                                 }
                                                                                 §§goto(addr305);
                                                                              }
                                                                              addr330:
                                                                              §§goto(addr331);
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                              if(!_loc8_)
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
                                                                     for(; §§pop(); §§goto(addr328))
                                                                     {
                                                                        _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                                        if(!(_loc8_ || _loc2_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr324);
                                                                     }
                                                                     §§goto(addr330);
                                                                  }
                                                                  §§goto(addr226);
                                                               }
                                                               §§goto(addr305);
                                                            }
                                                            §§goto(addr287);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr283);
                                                }
                                                §§goto(addr247);
                                             }
                                          }
                                          §§goto(addr188);
                                       }
                                    }
                                    §§goto(addr263);
                                 }
                                 §§goto(addr254);
                              }
                              §§goto(addr279);
                           }
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr263);
                  }
                  §§goto(addr148);
               }
               §§goto(addr283);
            }
            §§goto(addr169);
         }
         §§goto(addr287);
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§8!Q§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr27:
                     this.§8!Q§.removeEventListeningObject(param1,param2);
                  }
               }
               return;
            }
         }
         §§goto(addr27);
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(this.§8!Q§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr46);
            }
            §§pop().addEventListeningObject(param1,param2);
         }
         addr46:
         if(!_loc3_)
         {
            §§push(this.§8!Q§);
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
      
      public function get §`%§() : Matrix
      {
         return this.§6!8§(this.§8!Q§);
      }
      
      public function get §6<§() : Rectangle
      {
         return this.getBounds(this.§8!Q§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§8!Q§,§@!%§).width;
      }
      
      public function set width(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§5!A§ = 1;
         }
         §§push(this.width);
         if(_loc3_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc2_ == 0)
            {
               this.scaleX = 1;
               if(_loc3_)
               {
                  if(_loc4_)
                  {
                     addr78:
                     §§push(this);
                     §§push(param1);
                     if(!_loc4_)
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleX = §§pop();
                     addr85:
                  }
                  return;
               }
               §§goto(addr85);
            }
         }
         §§goto(addr78);
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§8!Q§,§@!%§).height;
      }
      
      public function set height(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§,!C§ = 1;
         }
         §§push(this.height);
         if(_loc3_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            if(_loc2_ == 0)
            {
               this.scaleY = 1;
               if(!(_loc4_ && _loc2_))
               {
                  if(!(_loc3_ || _loc3_))
                  {
                     addr88:
                     §§push(this);
                     §§push(param1);
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop() / _loc2_);
                     }
                     §§pop().scaleY = §§pop();
                     addr100:
                  }
                  return;
               }
               §§goto(addr100);
            }
         }
         §§goto(addr88);
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
               if(!(_loc2_ && _loc3_))
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
         if(_loc3_)
         {
            super.addEventListener(param1,param2);
         }
         do
         {
            this.addEventListeningObject(this,param1);
         }
         while(!_loc3_);
         
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
               if(_loc4_ || param1)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  this.removeEventListeningObject(this,param1);
               }
               break;
            }
            return;
         }
         §§goto(addr48);
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc2_:Array = §=! §();
         if(!(_loc7_ && this))
         {
            super.removeEventListeners(param1);
            if(!(_loc7_ && _loc3_))
            {
               §§goto(addr50);
            }
            §§goto(addr53);
         }
         addr50:
         if(param1 == null)
         {
            addr53:
            for each(_loc3_ in _loc2_)
            {
               if(!_loc7_)
               {
                  this.removeEventListeningObject(this,_loc3_);
               }
            }
            if(_loc7_)
            {
            }
         }
         else
         {
            this.removeEventListeningObject(this,param1);
         }
      }
      
      public function §5U§(param1:Matrix3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§`!j§);
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
                              while(true)
                              {
                                 §§push(this.§5!A§);
                                 while(true)
                                 {
                                    §§push(1);
                                    addr499:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    addr469:
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    addr487:
                                    §§push(0);
                                    if(_loc3_)
                                    {
                                       addr491:
                                       §§push(§§pop() != §§pop());
                                       if(!(§§pop() != §§pop()))
                                       {
                                          addr493:
                                          §§pop();
                                          addr494:
                                          §§push(this.§<h§);
                                          if(_loc3_)
                                          {
                                             addr428:
                                             §§push(this.§-Z§);
                                             if(_loc3_)
                                             {
                                                addr432:
                                                §§push(§§pop() + §§pop() == 0);
                                                if(!(_loc3_ || _loc2_))
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(this.§,!C§);
                                                                  while(true)
                                                                  {
                                                                     §§push(1);
                                                                     addr461:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                     }
                                                                     addr318:
                                                                     if(_loc2_ && param1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(0);
                                                                     loop32:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           loop33:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    param1.prependRotation(this.§`!j§ / Math.PI * 180,Vector3D.Z_AXIS);
                                                                                    loop34:
                                                                                    while(true)
                                                                                    {
                                                                                       addr219:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§5!A§);
                                                                                          addr222:
                                                                                          loop36:
                                                                                          while(!(_loc2_ && _loc3_))
                                                                                          {
                                                                                             if(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                §§push(1);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            loop38:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               loop39:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc3_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr272:
                                                                                                                     if(_loc2_ && param1)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(§§pop());
                                                                                                                     loop40:
                                                                                                                     for(; !(_loc2_ && _loc3_); §§push(§§pop()),if(!(_loc3_ || param1))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     },if(_loc3_)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr153);
                                                                                                                        }
                                                                                                                        §§goto(addr73);
                                                                                                                     },§§goto(addr407))
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           loop41:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc2_ && this))
                                                                                                                              {
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(_loc2_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                                 §§pop();
                                                                                                                                 loop42:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc2_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       addr180:
                                                                                                                                       break;
                                                                                                                                       addr180:
                                                                                                                                    }
                                                                                                                                    §§push(this.§,!C§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                       continue loop36;
                                                                                                                                    }
                                                                                                                                    continue loop0;
                                                                                                                                    loop53:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc3_ || _loc3_))
                                                                                                                                       {
                                                                                                                                          continue loop42;
                                                                                                                                       }
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop33;
                                                                                                                                       }
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          addr176:
                                                                                                                                          §§push(this.§-Z§);
                                                                                                                                          if(_loc3_ || this)
                                                                                                                                          {
                                                                                                                                             addr34:
                                                                                                                                             §§push(0);
                                                                                                                                             if(!(_loc2_ && this))
                                                                                                                                             {
                                                                                                                                                if(!_loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop32;
                                                                                                                                                }
                                                                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc3_ || _loc2_))
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr153:
                                                                                                                                                         while(_loc3_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  continue loop53;
                                                                                                                                                               }
                                                                                                                                                               addr392:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc3_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc2_ && _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                        addr407:
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc2_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr417);
                                                                                                                                                                           }
                                                                                                                                                                           loop26:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr352:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       param1.prependTranslation(this.§#!u§,this.§<h§,0);
                                                                                                                                                                                       §§goto(addr360);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr353:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr313);
                                                                                                                                                                                 continue loop41;
                                                                                                                                                                              }
                                                                                                                                                                              addr350:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop26;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr491);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop3;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr491);
                                                                                                                                                               }
                                                                                                                                                               continue loop2;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr350);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               continue loop41;
                                                                                                                                                            }
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        param1.prependScale(this.§5!A§,this.§,!C§,1);
                                                                                                                                                                        loop46:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           addr112:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§`Q§);
                                                                                                                                                                              addr115:
                                                                                                                                                                              addr368:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc3_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr130);
                                                                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                          §§goto(addr34);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr350);
                                                                                                                                                                                          §§goto(addr122);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr122:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr316);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr180);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                 addr369:
                                                                                                                                                                                 while(_loc3_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                                                                    if(!(_loc2_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr442:
                                                                                                                                                                                       if(!(_loc2_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr392);
                                                                                                                                                                                          §§push(!§§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr443:
                                                                                                                                                                                          param1.prependTranslation(this.§#!u§ + this.§`Q§,this.§<h§ + this.§-Z§,0);
                                                                                                                                                                                          §§goto(addr456);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr360);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr392);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr428);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop46;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr218:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr353);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr218);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr112);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr153);
                                                                                                                                                         }
                                                                                                                                                         addr153:
                                                                                                                                                         continue loop38;
                                                                                                                                                         addr201:
                                                                                                                                                      }
                                                                                                                                                      addr63:
                                                                                                                                                      if(_loc3_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr74:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc3_ || param1))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop53;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop34;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        param1.prependTranslation(this.§`Q§,this.§-Z§,0);
                                                                                                                                                                        continue loop53;
                                                                                                                                                                     }
                                                                                                                                                                     addr360:
                                                                                                                                                                     addr456:
                                                                                                                                                                     while(!_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§`!j§);
                                                                                                                                                                           addr316:
                                                                                                                                                                           while(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr318);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr469);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr20:
                                                                                                                                                                  return;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr73:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(!_loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop11;
                                                                                                                                                                     }
                                                                                                                                                                     §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§<h§);
                                                                                                                                                                        break loop36;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop12;
                                                                                                                                                                  addr417:
                                                                                                                                                               }
                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                               while(!(_loc2_ && this))
                                                                                                                                                               {
                                                                                                                                                                  continue loop40;
                                                                                                                                                                  §§goto(addr63);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop39;
                                                                                                                                                            addr130:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr491);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr135);
                                                                                                                                                      §§goto(addr316);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr74);
                                                                                                                                                }
                                                                                                                                                §§goto(addr369);
                                                                                                                                             }
                                                                                                                                             §§goto(addr122);
                                                                                                                                          }
                                                                                                                                          §§goto(addr115);
                                                                                                                                       }
                                                                                                                                       §§goto(addr443);
                                                                                                                                    }
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 §§goto(addr494);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr352);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                        §§goto(addr205);
                                                                                                                        §§goto(addr180);
                                                                                                                     }
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                                  §§goto(addr493);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr461);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr464:
                                                                                                               §§push(this.§#!u§);
                                                                                                               break loop33;
                                                                                                            }
                                                                                                            §§goto(addr368);
                                                                                                            §§push(this.§#!u§);
                                                                                                            §§goto(addr272);
                                                                                                         }
                                                                                                         addr463:
                                                                                                      }
                                                                                                      §§goto(addr487);
                                                                                                   }
                                                                                                   §§push(1);
                                                                                                   addr189:
                                                                                                   break;
                                                                                                   if(_loc2_ && _loc3_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§push(!§§pop());
                                                                                                   }
                                                                                                   §§goto(addr201);
                                                                                                }
                                                                                                §§goto(addr432);
                                                                                             }
                                                                                             break loop33;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                §§goto(addr349);
                                                                                                §§push(0);
                                                                                             }
                                                                                             break;
                                                                                             §§goto(addr222);
                                                                                          }
                                                                                          §§goto(addr432);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr464);
                                                                              }
                                                                              §§goto(addr420);
                                                                           }
                                                                           addr468:
                                                                           §§goto(addr469);
                                                                           §§push(§§pop() + this.§`Q§);
                                                                        }
                                                                        §§goto(addr219);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr463);
                                                         }
                                                      }
                                                   }
                                                   addr501:
                                                }
                                                addr441:
                                                §§goto(addr442);
                                                §§push(!§§pop());
                                             }
                                             §§goto(addr468);
                                          }
                                          §§goto(addr432);
                                       }
                                       §§goto(addr441);
                                    }
                                    §§goto(addr499);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr501);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr443);
      }
      
      public function get x() : Number
      {
         return this.§#!u§;
      }
      
      public function set x(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§#!u§ = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.§<h§;
      }
      
      public function set y(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<h§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§`Q§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`Q§ = param1;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§-Z§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-Z§ = param1;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§5!A§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§5!A§ = param1;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§,!C§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§,!C§ = param1;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§`!j§;
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
               if(!_loc2_)
               {
                  if(_loc3_ || param1)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           if(!(_loc2_ && this))
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc3_ || this)
                                 {
                                    if(§§pop() <= Math.PI)
                                    {
                                       if(!_loc2_)
                                       {
                                          this.§`!j§ = param1;
                                       }
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          return;
                                       }
                                       continue;
                                    }
                                    §§push(param1);
                                    if(_loc3_ || this)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(Math.PI * 2);
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc2_)
                                             {
                                                while(_loc3_ || this)
                                                {
                                                   §§push(Number(§§pop()));
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop() + Math.PI * 2);
                                                         break;
                                                      }
                                                      addr132:
                                                      param1 = §§pop();
                                                      continue loop1;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   break loop1;
                                                }
                                                break loop1;
                                                addr117:
                                             }
                                             §§goto(addr125);
                                          }
                                          addr114:
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr117);
                                 }
                                 §§goto(addr137);
                              }
                              param1 = §§pop();
                              addr22:
                           }
                           continue;
                        }
                        while(true)
                        {
                           §§goto(addr22);
                        }
                     }
                     else
                     {
                        §§push(param1);
                     }
                  }
                  §§goto(addr132);
               }
               §§goto(addr114);
            }
            §§goto(addr137);
         }
      }
      
      public function get alpha() : Number
      {
         return this.§2!y§;
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
               if(_loc2_ || param1)
               {
                  §§push(§§pop() < 0);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc2_ || _loc2_)
                              {
                                 addr72:
                              }
                              else
                              {
                                 addr83:
                              }
                           }
                           else
                           {
                              addr76:
                              if(§§pop() > 1)
                              {
                                 addr79:
                                 §§push(Number(1));
                                 if(_loc2_)
                                 {
                                    §§goto(addr83);
                                 }
                              }
                              else
                              {
                                 §§push(param1);
                                 if(!(_loc3_ && param1))
                                 {
                                    addr92:
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                           §§pop().§2!y§ = §§pop();
                           §§goto(addr94);
                        }
                        §§goto(addr79);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc2_)
                        {
                           §§goto(addr76);
                        }
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr76);
               }
               §§goto(addr72);
            }
            §§goto(addr79);
         }
         addr94:
      }
      
      public function get visible() : Boolean
      {
         return this.§1!M§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§1!M§ = param1;
         }
      }
      
      public function get §]!F§() : Boolean
      {
         return this.§<!!§;
      }
      
      public function set §]!F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<!!§ = param1;
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
         if(!_loc2_)
         {
            this.mName = param1;
         }
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§8!Q§;
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
