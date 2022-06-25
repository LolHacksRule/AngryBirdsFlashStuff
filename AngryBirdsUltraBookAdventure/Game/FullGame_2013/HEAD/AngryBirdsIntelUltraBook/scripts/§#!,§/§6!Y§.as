package §#!,§
{
   import §'7§.VertexData;
   import §'7§.transformCoords;
   import §7!>§.RenderSupport;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §6!Y§ extends DisplayObject
   {
      
      private static var §9!G§:Vector3D;
      
      private static var §>!C§:Point;
      
      private static var §]!C§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §6!Y§))
         {
            §9!G§ = new Vector3D();
         }
         while(true)
         {
            §>!C§ = new Point();
            while(!_loc1_)
            {
               §]!C§ = new Matrix();
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      protected var §7!$§:VertexData;
      
      private var §9U§:Number = 0.0;
      
      private var §2!h§:Number = 0.0;
      
      private var §>!M§:uint = 16777215;
      
      public function §6!Y§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.§7!$§ = new VertexData(4,param4);
               loop1:
               do
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  while(_loc5_)
                  {
                     this.§>!M§ = param3;
                     if(!_loc6_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc6_ && param1);
               
            }
         }
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(this.§7!$§);
            while(true)
            {
               §§pop().setPremultipliedAlpha(param4);
               loop1:
               while(true)
               {
                  §§push(this.§7!$§);
                  while(true)
                  {
                     §§push(0);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        loop4:
                        while(true)
                        {
                           §§push(0);
                           loop5:
                           while(true)
                           {
                              §§pop().setPosition(§§pop(),§§pop(),§§pop());
                              while(true)
                              {
                                 §§push(this.§7!$§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(1);
                                    loop8:
                                    while(!_loc5_)
                                    {
                                       §§push(param1);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop10:
                                          while(true)
                                          {
                                             §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§7!$§);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(2);
                                                   addr138:
                                                   while(_loc6_ || param2)
                                                   {
                                                      §§push(0);
                                                      while(!(_loc5_ && param1))
                                                      {
                                                         §§push(param2);
                                                         while(true)
                                                         {
                                                            §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                            addr166:
                                                            while(!_loc5_)
                                                            {
                                                               §§push(this.§7!$§);
                                                               continue loop12;
                                                            }
                                                            continue loop11;
                                                         }
                                                         §§push(param1);
                                                         if(!(_loc6_ || param2))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         §§push(param2);
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(!(_loc5_ && param2))
                                                               {
                                                                  §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                           addr133:
                                                                        }
                                                                        §§push(this.§7!$§);
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                  }
                                                                  continue loop1;
                                                                  addr129:
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop10;
                                                         }
                                                         §§goto(addr164);
                                                         §§goto(addr166);
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                     if(_loc5_ && this)
                     {
                        continue;
                     }
                     §§push(3);
                     if(_loc6_ || param1)
                     {
                        §§goto(addr105);
                     }
                     §§goto(addr138);
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(!(_loc9_ && this))
         {
            if(param2 == null)
            {
               addr28:
               param2 = new Rectangle();
            }
            var _loc3_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(!(_loc9_ && param2))
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc8_ || param1)
            {
               if(param1 == this)
               {
                  if(!_loc9_)
                  {
                     addr734:
                     §§push(0);
                     if(_loc8_ || param2)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc7_ = §§pop();
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc7_);
                     loop1:
                     while(true)
                     {
                        §§push(4);
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              loop3:
                              while(_loc8_)
                              {
                                 if(_loc8_ || param1)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       param2.x = _loc3_;
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc8_ || _loc3_)
                                          {
                                             if(_loc8_ || param2)
                                             {
                                                param2.y = _loc5_;
                                                loop6:
                                                while(true)
                                                {
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         param2.width = _loc4_ - _loc3_;
                                                         loop7:
                                                         while(_loc8_)
                                                         {
                                                            param2.height = _loc6_ - _loc5_;
                                                            if(!(_loc8_ || _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc8_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(_loc8_)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     break loop5;
                                                                  }
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc9_ && this))
                                                                     {
                                                                        if(!(_loc9_ && param2))
                                                                        {
                                                                           §§push(_loc4_);
                                                                           loop9:
                                                                           while(!_loc9_)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc9_ && param2))
                                                                                    {
                                                                                       if(!(_loc9_ && param1))
                                                                                       {
                                                                                          loop11:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop12:
                                                                                             while(_loc8_ || param1)
                                                                                             {
                                                                                                if(_loc8_ || param1)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         if(_loc8_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() < §>!C§.y);
                                                                                                            loop22:
                                                                                                            for(; !(_loc9_ && _loc3_); §§push(§§pop() > §>!C§.y),if(_loc9_ && param2)
                                                                                                            {
                                                                                                               continue;
                                                                                                            },if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc8_ || param2)
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 if(_loc8_ || param1)
                                                                                                                                 {
                                                                                                                                    if(_loc8_ || param2)
                                                                                                                                    {
                                                                                                                                       continue loop10;
                                                                                                                                    }
                                                                                                                                    addr333:
                                                                                                                                    addr333:
                                                                                                                                    while(_loc8_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       while(_loc8_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr343);
                                                                                                                                       }
                                                                                                                                       §§goto(addr499);
                                                                                                                                    }
                                                                                                                                    §§goto(addr689);
                                                                                                                                 }
                                                                                                                                 §§goto(addr341);
                                                                                                                              }
                                                                                                                              §§goto(addr382);
                                                                                                                           }
                                                                                                                           §§goto(addr274);
                                                                                                                        }
                                                                                                                        §§goto(addr390);
                                                                                                                     }
                                                                                                                     §§goto(addr289);
                                                                                                                  }
                                                                                                                  §§goto(addr501);
                                                                                                               }
                                                                                                               addr229:
                                                                                                            },§§push(Number(§>!C§.y)),if(!_loc9_)
                                                                                                            {
                                                                                                               §§goto(addr274);
                                                                                                            },§§goto(addr289))
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  if(!(_loc9_ && param1))
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        break loop6;
                                                                                                                     }
                                                                                                                     §§push(Number(§>!C§.y));
                                                                                                                     loop23:
                                                                                                                     for(; _loc8_ || param1; while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc8_ || this))
                                                                                                                        {
                                                                                                                           continue loop23;
                                                                                                                        }
                                                                                                                        if(_loc8_ || param1)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr289:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc6_ = §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       continue loop3;
                                                                                                                                    }
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          addr178:
                                                                                                                                          if(!(_loc9_ && this))
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                loop30:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc9_ && param2))
                                                                                                                                                   {
                                                                                                                                                      _loc7_ = §§pop();
                                                                                                                                                      loop31:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            while(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               while(_loc8_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               _loc7_ = int(§§pop());
                                                                                                                                                               break loop31;
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                            addr567:
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc9_ && param1))
                                                                                                                                                         {
                                                                                                                                                            continue loop30;
                                                                                                                                                         }
                                                                                                                                                         addr728:
                                                                                                                                                         §§goto(addr693);
                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                      }
                                                                                                                                                      continue loop0;
                                                                                                                                                      addr198:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc7_ = §§pop();
                                                                                                                                                      addr545:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop30;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr190:
                                                                                                                                             }
                                                                                                                                             §§goto(addr576);
                                                                                                                                          }
                                                                                                                                          §§goto(addr536);
                                                                                                                                       }
                                                                                                                                       §§goto(addr190);
                                                                                                                                    }
                                                                                                                                    §§goto(addr178);
                                                                                                                                    if(_loc9_ && this)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       continue loop4;
                                                                                                                                    }
                                                                                                                                    §§goto(addr478);
                                                                                                                                 }
                                                                                                                                 continue loop1;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr288:
                                                                                                                        }
                                                                                                                        §§goto(addr462);
                                                                                                                     })
                                                                                                                     {
                                                                                                                        if(!(_loc9_ && this))
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              if(_loc8_ || _loc3_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr382:
                                                                                                                                    while(!_loc9_)
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          continue loop9;
                                                                                                                                       }
                                                                                                                                       _loc5_ = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(_loc8_ || param2)
                                                                                                                                          {
                                                                                                                                             continue loop22;
                                                                                                                                          }
                                                                                                                                          continue loop23;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop12;
                                                                                                                                    addr343:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr697:
                                                                                                                                 addr693:
                                                                                                                                 if(§§pop() < §9!G§.x)
                                                                                                                                 {
                                                                                                                                    break loop8;
                                                                                                                                 }
                                                                                                                                 addr716:
                                                                                                                                 _loc3_ = Number(Number(§9!G§.x));
                                                                                                                                 addr715:
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 if(_loc8_ || param1)
                                                                                                                                 {
                                                                                                                                    addr659:
                                                                                                                                    §§push(§§pop() > §9!G§.x);
                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          addr689:
                                                                                                                                          _loc4_ = Number(Number(_loc4_));
                                                                                                                                          addr634:
                                                                                                                                          if(_loc5_ < §9!G§.y)
                                                                                                                                          {
                                                                                                                                             addr628:
                                                                                                                                             §§push(Number(_loc5_));
                                                                                                                                             break loop9;
                                                                                                                                          }
                                                                                                                                          _loc5_ = Number(Number(§9!G§.y));
                                                                                                                                          break loop7;
                                                                                                                                          addr688:
                                                                                                                                          addr669:
                                                                                                                                          addr668:
                                                                                                                                          addr667:
                                                                                                                                          addr690:
                                                                                                                                       }
                                                                                                                                       addr674:
                                                                                                                                       §§push(Number(§9!G§.x));
                                                                                                                                       if(!(_loc9_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ && param2))
                                                                                                                                          {
                                                                                                                                             §§goto(addr688);
                                                                                                                                          }
                                                                                                                                          addr700:
                                                                                                                                       }
                                                                                                                                       §§goto(addr715);
                                                                                                                                    }
                                                                                                                                    §§goto(addr697);
                                                                                                                                 }
                                                                                                                                 §§goto(addr700);
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr717:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr604:
                                                                                                                           if(_loc8_ || this)
                                                                                                                           {
                                                                                                                              _loc6_ = §§pop();
                                                                                                                              break loop3;
                                                                                                                           }
                                                                                                                           §§goto(addr634);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr487:
                                                                                                                              while(!(_loc9_ && _loc3_))
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    break loop23;
                                                                                                                                    addr495:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr486:
                                                                                                                        }
                                                                                                                        §§goto(addr674);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc3_ = §§pop();
                                                                                                                        addr501:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc4_);
                                                                                                                           addr390:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() > §>!C§.x);
                                                                                                                              break loop22;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr499);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr689);
                                                                                                               }
                                                                                                               §§goto(addr588);
                                                                                                            }
                                                                                                            while(!_loc9_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               §§push(Number(§>!C§.x));
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            §§goto(addr475);
                                                                                                         }
                                                                                                         §§goto(addr591);
                                                                                                      }
                                                                                                      §§goto(addr333);
                                                                                                   }
                                                                                                   addr459:
                                                                                                }
                                                                                                §§goto(addr591);
                                                                                             }
                                                                                             if(!(_loc9_ && param2))
                                                                                             {
                                                                                                §§goto(addr591);
                                                                                             }
                                                                                             §§goto(addr628);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr697);
                                                                                    }
                                                                                    §§goto(addr487);
                                                                                    if(!(_loc8_ || _loc3_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr288);
                                                                                 }
                                                                              }
                                                                              §§goto(addr689);
                                                                           }
                                                                           §§goto(addr689);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr533);
                                                                  }
                                                                  §§goto(addr693);
                                                                  §§push(_loc3_);
                                                               }
                                                               §§goto(addr459);
                                                            }
                                                            §§goto(addr387);
                                                         }
                                                         if(_loc8_ || this)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr580);
                                                               §§push(_loc6_);
                                                            }
                                                            §§goto(addr717);
                                                         }
                                                         §§goto(addr690);
                                                      }
                                                      break;
                                                   }
                                                   continue loop5;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr333);
                                                }
                                             }
                                             §§goto(addr516);
                                          }
                                          §§goto(addr229);
                                       }
                                       return param2;
                                    }
                                 }
                                 §§goto(addr591);
                              }
                              if(!(_loc8_ || param2))
                              {
                                 §§goto(addr628);
                              }
                              §§push(_loc7_);
                              if(!_loc9_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              §§goto(addr576);
                           }
                           else
                           {
                              §§push(this.§7!$§);
                           }
                           §§goto(addr723);
                        }
                     }
                     while(true)
                     {
                        continue loop0;
                     }
                  }
               }
               else
               {
                  §@!7§(param1,§]!C§);
               }
               §§goto(addr567);
            }
            §§goto(addr734);
         }
         §§goto(addr28);
      }
      
      public function §7!i§(param1:int) : uint
      {
         return this.§7!$§.§<X§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§7!$§.§]!G§(param1,param2);
         }
      }
      
      public function §'!T§(param1:int) : Number
      {
         return this.§7!$§.§;X§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§7!$§.§-d§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§>!M§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§>!M§ != param1)
            {
               do
               {
                  this.§>!M§ = param1;
                  do
                  {
                     this.§7!$§.§-![§(param1,1);
                  }
                  while(!_loc2_);
                  
               }
               while(_loc3_);
               
               addr49:
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function copyVertexDataTo(param1:VertexData, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§7!$§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            param1.batchQuad(this,param2);
         }
      }
      
      public function get useColor() : Boolean
      {
         return true;
      }
      
      public function get clippedBitmapData() : BitmapData
      {
         return null;
      }
      
      public function get §6!=§() : Number
      {
         return this.§9U§;
      }
      
      public function get §?s§() : Number
      {
         return this.§2!h§;
      }
   }
}
