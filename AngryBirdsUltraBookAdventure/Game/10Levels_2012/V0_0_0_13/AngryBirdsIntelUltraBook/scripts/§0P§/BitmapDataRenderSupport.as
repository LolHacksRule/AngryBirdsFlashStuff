package §0P§
{
   import §6!7§.§3x§;
   import §7i§.Texture;
   import §8g§.§2!E§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class BitmapDataRenderSupport extends RenderSupport
   {
       
      
      private var §=,§:BitmapData;
      
      private var §"#§:int = 0;
      
      private var §>!g§:int = 0;
      
      private var §"Y§:Number = 1.0;
      
      private var §,!F§:Number = 1.0;
      
      private var §6<§:BitmapData;
      
      private var §^U§:Vector.<Number>;
      
      private var §0Z§:Matrix;
      
      private var §^Q§:ColorTransform;
      
      public function BitmapDataRenderSupport()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§^U§ = new Vector.<Number>(16);
            loop0:
            while(true)
            {
               this.§0Z§ = new Matrix();
               loop1:
               do
               {
                  this.§^Q§ = new ColorTransform();
                  while(true)
                  {
                     super();
                     while(!(_loc2_ && this))
                     {
                        continue loop0;
                        this.§6<§ = new BitmapData(1,1,false);
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(_loc2_ && _loc2_);
               
            }
         }
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§=,§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.dispose();
            loop0:
            while(this.§6<§)
            {
               loop1:
               while(true)
               {
                  this.§6<§.dispose();
                  while(true)
                  {
                     if(_loc2_)
                     {
                        this.§6<§ = null;
                        if(!(_loc1_ && _loc2_))
                        {
                           continue loop1;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      override public function batchQuad(param1:§3x§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(_loc9_ || this)
         {
            if(this.§=,§)
            {
               while(true)
               {
                  §6!E§.copyRawDataTo(this.§^U§,0);
                  while(true)
                  {
                     this.§0Z§.setTo(this.§^U§[0],this.§^U§[1],this.§^U§[4],this.§^U§[5],this.§^U§[12],this.§^U§[13]);
                     while(true)
                     {
                        this.§0Z§.scale(this.§"Y§,this.§,!F§);
                        addr94:
                        loop3:
                        while(true)
                        {
                           addr58:
                           addr137:
                           addr146:
                           while(true)
                           {
                              §§push(param1.color);
                              if(!(_loc8_ && this))
                              {
                                 §§push(uint(§§pop()));
                              }
                              _loc5_ = §§pop();
                              continue loop3;
                           }
                           _loc6_ = null;
                           if(!(_loc8_ && param2))
                           {
                              §§push(Boolean(param3));
                              if(!(_loc8_ && this))
                              {
                                 §§push(§§pop());
                                 if(_loc9_ || param2)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc9_ || param2)
                                    {
                                       §§pop();
                                       if(!(_loc8_ && param3))
                                       {
                                          addr181:
                                          §§push(_loc5_ == 16777215);
                                          if(_loc9_)
                                          {
                                             addr186:
                                             §§push(!§§pop());
                                             if(_loc9_ || param3)
                                             {
                                             }
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr274);
                                    }
                                 }
                                 addr205:
                                 if(§§pop())
                                 {
                                    if(_loc9_ || param2)
                                    {
                                       _loc6_ = this.§^Q§;
                                       if(_loc9_)
                                       {
                                          _loc6_.redMultiplier = §2!E§.§6,§(_loc5_) / 255;
                                          while(true)
                                          {
                                             _loc6_.greenMultiplier = §2!E§.§3i§(_loc5_) / 255;
                                             addr226:
                                             if(!(_loc9_ || this))
                                             {
                                                continue;
                                             }
                                             if(false)
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   _loc6_.blueMultiplier = §2!E§.§7!@§(_loc5_) / 255;
                                                   addr244:
                                                   addr261:
                                                   while(!(_loc8_ && param3))
                                                   {
                                                      _loc6_.alphaMultiplier = 1;
                                                      if(!_loc9_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop13;
                                                      §§goto(addr244);
                                                   }
                                                }
                                             }
                                             §§goto(addr271);
                                          }
                                       }
                                       §§goto(addr261);
                                    }
                                    §§goto(addr274);
                                 }
                                 addr271:
                                 if(param2 != 1)
                                 {
                                    addr274:
                                    _loc6_ = this.§^Q§;
                                    if(_loc9_)
                                    {
                                       _loc6_.alphaMultiplier = param2;
                                    }
                                 }
                                 _loc7_ = param1.clippedBitmapData;
                                 if(!(_loc8_ && param3))
                                 {
                                    if(_loc7_ == null)
                                    {
                                       if(!_loc8_)
                                       {
                                          this.§6<§.setPixel(0,0,param1.color);
                                          if(_loc9_ || this)
                                          {
                                          }
                                          §§goto(addr413);
                                       }
                                       _loc7_ = this.§6<§;
                                       if(_loc9_ || param2)
                                       {
                                          this.§0Z§.a *= param1.§5l§;
                                          loop6:
                                          while(true)
                                          {
                                             this.§0Z§.b *= param1.§5l§;
                                             loop7:
                                             while(true)
                                             {
                                                addr352:
                                                while(true)
                                                {
                                                   this.§0Z§.c *= param1.§<z§;
                                                   continue loop7;
                                                }
                                                continue loop6;
                                             }
                                          }
                                       }
                                       while(false)
                                       {
                                          §§goto(addr352);
                                       }
                                    }
                                    this.§=,§.draw(_loc7_,this.§0Z§,_loc6_,null,null,param1.highQuality);
                                 }
                                 §§goto(addr413);
                              }
                              §§goto(addr186);
                           }
                           §§goto(addr181);
                        }
                     }
                  }
               }
            }
            addr413:
            return;
         }
         §§goto(addr94);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(Boolean(this.§=,§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§=,§.width == this.§"#§);
                     loop2:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!(_loc5_ && param3))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this.§=,§.height == this.§>!g§);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             if(_loc4_ || param3)
                                             {
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                                §§push(Boolean(§§pop()));
                                                while(true)
                                                {
                                                }
                                             }
                                             loop9:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      this.§=,§.dispose();
                                                      loop11:
                                                      while(true)
                                                      {
                                                         this.§=,§ = null;
                                                         while(!(_loc5_ && param3))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§=,§ == null);
                                                               addr218:
                                                               while(!_loc5_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  continue loop8;
                                                                  loop24:
                                                                  for(; _loc4_ || param2; if(_loc4_ || param2)
                                                                  {
                                                                     addr53:
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     continue loop8;
                                                                  })
                                                                  {
                                                                     §§pop();
                                                                     loop25:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ || param2)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr212:
                                                                           §§push(this.§>!g§);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 §§push(§§pop() > §§pop());
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_ || param2)
                                                                                    {
                                                                                       if(_loc5_ && param3)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(Boolean(§§pop()));
                                                                                       loop27:
                                                                                       while(!_loc5_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(this.§=,§));
                                                                                             if(!(_loc5_ && param2))
                                                                                             {
                                                                                                continue loop26;
                                                                                             }
                                                                                             continue loop27;
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr234:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§"#§);
                                                                                          addr171:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             addr172:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                if(!(_loc5_ && this))
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         loop30:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                            }
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               addr129:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc5_ && this))
                                                                                                                     {
                                                                                                                        this.§=,§ = new BitmapData(this.§"#§,this.§>!g§,true,4278190080 | param2);
                                                                                                                     }
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                                  §§goto(addr28);
                                                                                                               }
                                                                                                            }
                                                                                                            addr232:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  continue loop20;
                                                                                                               }
                                                                                                               continue loop30;
                                                                                                            }
                                                                                                         }
                                                                                                         while(!_loc5_)
                                                                                                         {
                                                                                                            §§goto(addr232);
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         continue loop5;
                                                                                                         addr229:
                                                                                                      }
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                }
                                                                                                continue loop24;
                                                                                             }
                                                                                             §§goto(addr212);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr129);
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              §§goto(addr172);
                                                                           }
                                                                           §§goto(addr171);
                                                                        }
                                                                        §§goto(addr234);
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                               }
                                                               continue loop2;
                                                            }
                                                            if(!(_loc4_ || param3))
                                                            {
                                                               continue;
                                                            }
                                                            this.§=,§.lock();
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               addr248:
                                                               while(_loc4_ || param2)
                                                               {
                                                                  §§goto(addr213);
                                                               }
                                                               continue loop7;
                                                            }
                                                            §§goto(addr160);
                                                            §§goto(addr218);
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   this.§=,§.fillRect(this.§=,§.rect,4278190080 | param2);
                                                   §§goto(addr248);
                                                }
                                                §§goto(addr213);
                                                if(!(_loc4_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(§§pop())
                                                {
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      §§goto(addr75);
                                                   }
                                                   §§goto(addr86);
                                                }
                                                §§goto(addr24);
                                             }
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                                 §§goto(addr286);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr213);
            }
         }
         §§goto(addr97);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§=,§)
            {
               if(!(_loc3_ && this))
               {
                  addr44:
                  this.§=,§.unlock();
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§"#§ = param1;
            while(true)
            {
               this.§>!g§ = param2;
               while(!_loc5_)
               {
                  this.§"Y§ = param3;
                  while(!(_loc5_ && param1))
                  {
                     this.§,!F§ = param4;
                     if(!_loc5_)
                     {
                        return;
                        addr55:
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
   }
}
