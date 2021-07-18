package §7!8§
{
   import §&!Z§.§6!r§;
   import §&!Z§.transformCoords;
   import §5Q§.§%!t§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §&!D§ extends DisplayObject
   {
      
      private static var §["6§:Vector3D;
      
      private static var §`!7§:Point;
      
      private static var §02§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §["6§ = new Vector3D();
            while(true)
            {
               §`!7§ = new Point();
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            §02§ = new Matrix();
            if(!(_loc1_ && §&!D§))
            {
               if(_loc2_ || §&!D§)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected var §'!O§:§6!r§;
      
      private var §2p§:Number = 0.0;
      
      private var §[i§:Number = 0.0;
      
      private var §4"%§:uint = 16777215;
      
      public function §&!D§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            super();
            while(true)
            {
               this.§'!O§ = new §6!r§(4,param4);
               while(!(_loc5_ && this))
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  loop2:
                  while(!_loc5_)
                  {
                     while(true)
                     {
                        this.§4"%§ = param3;
                        if(_loc6_ || this)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr60);
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
            §§push(this.§'!O§);
            loop0:
            while(true)
            {
               §§pop().§1?§(param4);
               loop1:
               while(true)
               {
                  §§push(this.§'!O§);
                  loop2:
                  while(true)
                  {
                     §§push(0);
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
                              addr198:
                              while(true)
                              {
                                 §§push(this.§'!O§);
                                 while(true)
                                 {
                                    §§push(1);
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop10:
                                          while(!(_loc5_ && param1))
                                          {
                                             §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§'!O§);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(2);
                                                   addr141:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      addr142:
                                                      while(_loc6_ || param3)
                                                      {
                                                         if(!(_loc6_ || this))
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(param2);
                                                         while(true)
                                                         {
                                                            §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                            addr158:
                                                            while(_loc6_ || param1)
                                                            {
                                                            }
                                                            addr111:
                                                            §§push(param2);
                                                            continue loop1;
                                                            if(!(_loc6_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc5_ && param3)
                                                            {
                                                               continue loop10;
                                                            }
                                                            §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                            while(_loc6_ || param3)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(this.§'!O§);
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  continue loop12;
                                                                  addr136:
                                                               }
                                                               continue loop11;
                                                            }
                                                            §§goto(addr158);
                                                         }
                                                      }
                                                      continue loop9;
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
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr72);
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = 0;
         if(_loc9_ || this)
         {
            if(param2 == null)
            {
               addr29:
               param2 = new Rectangle();
            }
            var _loc3_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc9_ || _loc3_)
            {
               if(param1 == this)
               {
                  if(!_loc8_)
                  {
                     addr613:
                     _loc7_ = 0;
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc7_);
                     loop1:
                     while(true)
                     {
                        §§push(4);
                        loop2:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    param2.x = _loc3_;
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc9_)
                                       {
                                          if(_loc9_ || param1)
                                          {
                                             param2.y = _loc5_;
                                             loop6:
                                             while(_loc9_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            param2.width = _loc4_ - _loc3_;
                                                            loop7:
                                                            while(!_loc8_)
                                                            {
                                                               param2.height = _loc6_ - _loc5_;
                                                               if(_loc8_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc9_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               if(_loc8_ && param1)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               if(!_loc8_)
                                                               {
                                                                  break loop5;
                                                               }
                                                               loop30:
                                                               while(true)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     _loc7_++;
                                                                     break loop6;
                                                                  }
                                                                  loop15:
                                                                  while(_loc9_ || param2)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!(_loc8_ && param2))
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(_loc9_ || param2)
                                                                                 {
                                                                                    §§push(§§pop() > §`!7§.x);
                                                                                    loop16:
                                                                                    while(!(_loc8_ && param2))
                                                                                    {
                                                                                       if(_loc9_ || param1)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             §§push(Number(§`!7§.x));
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr393:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                addr393:
                                                                                             }
                                                                                             loop17:
                                                                                             while(_loc9_)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                loop18:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   loop19:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc8_ && this))
                                                                                                      {
                                                                                                         §§push(§§pop() < §`!7§.y);
                                                                                                         loop20:
                                                                                                         for(; !_loc8_; §§push(§§pop() > §`!7§.y),if(!(_loc9_ || this))
                                                                                                         {
                                                                                                            continue;
                                                                                                         },if(_loc8_)
                                                                                                         {
                                                                                                            continue loop16;
                                                                                                         },if(§§pop())
                                                                                                         {
                                                                                                            continue loop18;
                                                                                                         },§§push(Number(§`!7§.y)),if(!_loc8_)
                                                                                                         {
                                                                                                            §§goto(addr224);
                                                                                                         },§§goto(addr236))
                                                                                                         {
                                                                                                            if(_loc9_ || param1)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  break loop7;
                                                                                                               }
                                                                                                               addr586:
                                                                                                               addr587:
                                                                                                               §§push(Number(§`!7§.y));
                                                                                                               loop21:
                                                                                                               for(; !_loc8_; while(true)
                                                                                                               {
                                                                                                                  if(_loc9_ || this)
                                                                                                                  {
                                                                                                                     if(!(_loc9_ || _loc3_))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                                  continue loop21;
                                                                                                               },§§goto(addr516))
                                                                                                               {
                                                                                                                  loop22:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     loop23:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc8_ && this))
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              if(!(_loc8_ && this))
                                                                                                                              {
                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(_loc8_ && this)
                                                                                                                                          {
                                                                                                                                             loop35:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc8_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         continue loop21;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      addr277:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(_loc9_)
                                                                                                                                                {
                                                                                                                                                   continue loop22;
                                                                                                                                                }
                                                                                                                                                addr371:
                                                                                                                                                addr562:
                                                                                                                                                while(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc8_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               addr516:
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               break loop35;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr393);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         addr414:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr421:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr422:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                               continue loop15;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() < §`!7§.x);
                                                                                                                                                      break loop20;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                _loc4_ = Number(Number(§§pop()));
                                                                                                                                                break loop15;
                                                                                                                                             }
                                                                                                                                             addr224:
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             break loop17;
                                                                                                                                             addr224:
                                                                                                                                          }
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             continue loop23;
                                                                                                                                          }
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             continue loop20;
                                                                                                                                          }
                                                                                                                                          §§goto(addr422);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    addr359:
                                                                                                                                    while(!_loc8_)
                                                                                                                                    {
                                                                                                                                       if(_loc9_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr557:
                                                                                                                                          addr588:
                                                                                                                                          addr560:
                                                                                                                                          addr567:
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr371);
                                                                                                                                             §§push(_loc4_);
                                                                                                                                          }
                                                                                                                                          if(_loc4_ > §["6§.x)
                                                                                                                                          {
                                                                                                                                             addr561:
                                                                                                                                             §§goto(addr562);
                                                                                                                                             §§push(_loc4_);
                                                                                                                                          }
                                                                                                                                          §§push(Number(§["6§.x));
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr562);
                                                                                                                                          }
                                                                                                                                          addr579:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             break loop21;
                                                                                                                                          }
                                                                                                                                          break loop21;
                                                                                                                                       }
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(!(_loc8_ && param2))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() > §["6§.y);
                                                                                                                                             break loop16;
                                                                                                                                          }
                                                                                                                                          §§goto(addr516);
                                                                                                                                       }
                                                                                                                                       §§goto(addr579);
                                                                                                                                       §§push(_loc3_);
                                                                                                                                    }
                                                                                                                                    continue loop0;
                                                                                                                                    §§goto(addr516);
                                                                                                                                 }
                                                                                                                                 addr537:
                                                                                                                                 §§push(Number(Number(_loc5_)));
                                                                                                                                 break;
                                                                                                                                 addr314:
                                                                                                                              }
                                                                                                                              §§goto(addr557);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                     addr551:
                                                                                                                     _loc5_ = §§pop();
                                                                                                                     §§goto(addr552);
                                                                                                                  }
                                                                                                               }
                                                                                                               _loc3_ = Number(§§pop());
                                                                                                               §§goto(addr588);
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr537);
                                                                                                            }
                                                                                                            §§push(Number(§["6§.y));
                                                                                                            if(_loc9_ || _loc3_)
                                                                                                            {
                                                                                                               §§goto(addr537);
                                                                                                            }
                                                                                                            §§goto(addr551);
                                                                                                         }
                                                                                                         while(!(_loc8_ && param1))
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               §§push(Number(§`!7§.x));
                                                                                                               break loop19;
                                                                                                            }
                                                                                                            while(_loc9_)
                                                                                                            {
                                                                                                               §§goto(addr414);
                                                                                                               §§push(_loc3_);
                                                                                                            }
                                                                                                            §§goto(addr561);
                                                                                                         }
                                                                                                         §§goto(addr560);
                                                                                                      }
                                                                                                      break;
                                                                                                      addr209:
                                                                                                      if(!(_loc9_ || param1))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§goto(addr235);
                                                                                                      }
                                                                                                      §§goto(addr537);
                                                                                                   }
                                                                                                   while(_loc9_)
                                                                                                   {
                                                                                                      §§goto(addr421);
                                                                                                   }
                                                                                                   §§goto(addr587);
                                                                                                   addr182:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc9_ || this))
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      §§push(_loc6_);
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         if(!(_loc8_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc9_ || param1)
                                                                                                               {
                                                                                                                  §§goto(addr209);
                                                                                                               }
                                                                                                               §§goto(addr224);
                                                                                                            }
                                                                                                            §§goto(addr562);
                                                                                                         }
                                                                                                         §§goto(addr374);
                                                                                                      }
                                                                                                      §§goto(addr236);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             _loc6_ = §§pop();
                                                                                             _loc7_++;
                                                                                             continue loop0;
                                                                                             addr523:
                                                                                          }
                                                                                          §§goto(addr359);
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§goto(addr552);
                                                                                       }
                                                                                       §§goto(addr586);
                                                                                       §§push(Number(§["6§.x));
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr513:
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          addr574:
                                                                                          §§goto(addr577);
                                                                                          §§push(_loc3_ < §["6§.x);
                                                                                          addr607:
                                                                                       }
                                                                                       §§goto(addr516);
                                                                                       §§push(_loc6_);
                                                                                    }
                                                                                    §§goto(addr224);
                                                                                    §§push(Number(§["6§.y));
                                                                                 }
                                                                                 §§goto(addr574);
                                                                              }
                                                                              §§goto(addr562);
                                                                           }
                                                                           §§goto(addr567);
                                                                        }
                                                                        §§goto(addr537);
                                                                     }
                                                                     §§goto(addr393);
                                                                  }
                                                                  §§push(_loc5_);
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     §§goto(addr536);
                                                                     §§push(§§pop() < §["6§.y);
                                                                  }
                                                                  §§goto(addr537);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr277);
                                                            }
                                                         }
                                                         §§goto(addr513);
                                                      }
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(_loc9_ || param2)
                                                         {
                                                            transformCoords(§02§,§["6§.x,§["6§.y,§`!7§);
                                                            while(true)
                                                            {
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr400);
                                                                  §§push(_loc3_);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     loop42:
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              addr112:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!(_loc9_ || this))
                                                                                 {
                                                                                    continue loop42;
                                                                                 }
                                                                                 §§push(4);
                                                                                 if(_loc8_ && param2)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(!(_loc9_ || param1))
                                                                                       {
                                                                                          break loop8;
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§push(this.§'!O§);
                                                                                 if(!(_loc8_ && param2))
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    if(!(_loc8_ && this))
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr594:
                                                                                    §§push(_loc7_);
                                                                                 }
                                                                                 §§pop().getPosition(§§pop(),§["6§);
                                                                              }
                                                                              continue loop42;
                                                                           }
                                                                           addr485:
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                                  addr496:
                                                               }
                                                               §§goto(addr607);
                                                            }
                                                            continue loop3;
                                                            addr440:
                                                         }
                                                         §§goto(addr485);
                                                      }
                                                      §§goto(addr523);
                                                   }
                                                   §§goto(addr411);
                                                }
                                                §§goto(addr182);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr112);
                                             }
                                          }
                                          §§goto(addr440);
                                       }
                                       §§goto(addr314);
                                    }
                                    return param2;
                                 }
                              }
                           }
                           else
                           {
                              §§push(this.§'!O§);
                           }
                           §§goto(addr594);
                        }
                     }
                  }
               }
               else
               {
                  §]!U§(param1,§02§);
               }
               §§goto(addr496);
            }
            §§goto(addr613);
         }
         §§goto(addr29);
      }
      
      public function §`!+§(param1:int) : uint
      {
         return this.§'!O§.§[w§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§'!O§.§%k§(param1,param2);
         }
      }
      
      public function §3!i§(param1:int) : Number
      {
         return this.§'!O§.§&!5§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§'!O§.§24§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§4"%§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§4"%§ != param1)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.§4"%§ = param1;
               }
               do
               {
                  this.§'!O§.§7x§(param1,1);
               }
               while(!_loc3_);
               
               addr42:
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function copyVertexDataTo(param1:§6!r§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§'!O§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§%!t§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
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
      
      public function get §41§() : Number
      {
         return this.§2p§;
      }
      
      public function get §@"5§() : Number
      {
         return this.§[i§;
      }
   }
}
