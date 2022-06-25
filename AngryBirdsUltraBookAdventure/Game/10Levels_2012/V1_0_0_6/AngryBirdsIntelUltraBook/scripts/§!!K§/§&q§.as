package §!!K§
{
   import §4>§.Texture;
   import §7!B§.§;R§;
   import §9!k§.§46§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §&q§ extends §?%§
   {
       
      
      private var § !j§:BitmapData;
      
      private var §&!@§:int = 0;
      
      private var §3]§:int = 0;
      
      private var §1!x§:Number = 1.0;
      
      private var §@!Y§:Number = 1.0;
      
      private var §<e§:BitmapData;
      
      private var §#!F§:Vector.<Number>;
      
      private var §;!r§:Matrix;
      
      private var §+F§:ColorTransform;
      
      public function §&q§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§#!F§ = new Vector.<Number>(16);
            while(true)
            {
               this.§;!r§ = new Matrix();
               addr66:
               if(_loc1_ || this)
               {
                  this.§<e§ = new BitmapData(1,1,false);
                  addr73:
                  if(_loc2_)
                  {
                     loop3:
                     while(true)
                     {
                        if(_loc1_ || _loc1_)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           §§goto(addr66);
                        }
                        addr79:
                        while(true)
                        {
                           super();
                           continue loop3;
                        }
                     }
                     while(true)
                     {
                        this.§+F§ = new ColorTransform();
                        §§goto(addr79);
                     }
                     addr85:
                  }
                  return;
               }
            }
         }
         §§goto(addr85);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§ !j§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.dispose();
            loop0:
            while(this.§<e§)
            {
               loop1:
               while(true)
               {
                  this.§<e§.dispose();
                  addr52:
                  while(true)
                  {
                     this.§<e§ = null;
                     if(!_loc1_)
                     {
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      override public function batchQuad(param1:§;R§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(_loc9_ || param3)
         {
            if(this.§ !j§)
            {
               loop0:
               while(true)
               {
                  §%u§.copyRawDataTo(this.§#!F§,0);
                  addr136:
                  loop1:
                  while(true)
                  {
                     this.§;!r§.setTo(this.§#!F§[0],this.§#!F§[1],this.§#!F§[4],this.§#!F§[5],this.§#!F§[12],this.§#!F§[13]);
                     loop2:
                     while(true)
                     {
                        this.§;!r§.scale(this.§1!x§,this.§@!Y§);
                        loop3:
                        for(; !(_loc8_ && param2); if(!(_loc9_ || param3))
                        {
                           continue;
                        },if(!_loc9_)
                        {
                           continue loop2;
                        },if(_loc8_)
                        {
                           continue loop0;
                        },if(false)
                        {
                           §§goto(addr70);
                        },_loc6_ = null,if(!(_loc8_ && param1))
                        {
                           §§push(Boolean(param3));
                           if(_loc9_)
                           {
                              if(§§pop())
                              {
                                 if(_loc9_)
                                 {
                                    §§pop();
                                    if(!_loc8_)
                                    {
                                       addr168:
                                       §§push(_loc5_ == 16777215);
                                       if(!_loc9_)
                                       {
                                       }
                                       §§goto(addr174);
                                    }
                                    §§goto(addr236);
                                 }
                                 §§goto(addr174);
                              }
                           }
                           addr174:
                           if(!§§pop())
                           {
                              if(!(_loc8_ && param3))
                              {
                                 (_loc6_ = this.§+F§).redMultiplier = §46§.§'!'§(_loc5_) / 255;
                                 if(_loc9_ || param3)
                                 {
                                    _loc6_.greenMultiplier = §46§.§1!U§(_loc5_) / 255;
                                    addr216:
                                    _loc6_.blueMultiplier = §46§.§[]§(_loc5_) / 255;
                                    addr232:
                                 }
                                 _loc6_.alphaMultiplier = 1;
                                 if(!(_loc8_ && param1))
                                 {
                                    if(!_loc8_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr216);
                                       }
                                       §§goto(addr233);
                                    }
                                    §§goto(addr232);
                                 }
                                 addr224:
                                 §§goto(addr224);
                              }
                              §§goto(addr236);
                           }
                           addr233:
                           if(param2 != 1)
                           {
                              addr236:
                              (_loc6_ = this.§+F§).alphaMultiplier = param2;
                           }
                           if((_loc7_ = param1.clippedBitmapData) == null)
                           {
                              if(!_loc8_)
                              {
                                 this.§<e§.setPixel(0,0,param1.color);
                                 if(_loc9_)
                                 {
                                    _loc7_ = this.§<e§;
                                    if(!_loc8_)
                                    {
                                       this.§;!r§.a *= param1.§9!m§;
                                       this.§;!r§.b *= param1.§9!m§;
                                       addr284:
                                       this.§;!r§.c *= param1.§;+§;
                                       addr327:
                                       if(!_loc8_)
                                       {
                                          this.§;!r§.d *= param1.§;+§;
                                          if(_loc9_)
                                          {
                                             if(!_loc8_)
                                             {
                                                §§goto(addr282);
                                             }
                                             §§goto(addr327);
                                          }
                                          §§goto(addr284);
                                       }
                                       addr317:
                                       §§goto(addr317);
                                    }
                                 }
                                 §§goto(addr282);
                              }
                              addr282:
                              if(false)
                              {
                                 §§goto(addr284);
                              }
                              §§goto(addr328);
                           }
                           addr328:
                           this.§ !j§.draw(_loc7_,this.§;!r§,_loc6_,null,null,param1.highQuality);
                           return;
                        },§§goto(addr168))
                        {
                           while(true)
                           {
                              §§push(param1.color);
                              if(!(_loc8_ && param3))
                              {
                                 §§push(uint(§§pop()));
                              }
                              _loc5_ = §§pop();
                              do
                              {
                                 §§push(param2);
                                 if(!(_loc8_ && this))
                                 {
                                    §§push(§§pop() * param1.alpha);
                                    if(_loc8_)
                                    {
                                       continue;
                                    }
                                 }
                              }
                              while(param2 = §§pop(), !(_loc9_ || param2));
                              
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr282);
         }
         §§goto(addr136);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            if(this.§ !j§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§ !j§.width == this.§&!@§);
                  loop1:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§ !j§.height == this.§3]§);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       addr132:
                                       if(!(_loc4_ && this))
                                       {
                                          if(_loc5_ || param3)
                                          {
                                             loop21:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc5_)
                                                {
                                                   if(_loc4_ && param2)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop22:
                                                      while(!(_loc4_ && param2))
                                                      {
                                                         if(_loc4_ && param2)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§pop();
                                                         loop23:
                                                         while(true)
                                                         {
                                                            §§push(this.§3]§);
                                                            if(_loc5_ || this)
                                                            {
                                                               §§push(0);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop22;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc4_ && param1)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§ !j§ = new BitmapData(this.§&!@§,this.§3]§,true,4278190080 | param2);
                                                                                 addr107:
                                                                                 while(_loc5_)
                                                                                 {
                                                                                 }
                                                                                 addr224:
                                                                                 loop12:
                                                                                 while(_loc5_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§ !j§ == null);
                                                                                       addr179:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          addr180:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr182:
                                                                                                addr237:
                                                                                                while(_loc5_ || this)
                                                                                                {
                                                                                                   §§push(this.§&!@§);
                                                                                                   break loop23;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§ !j§.dispose();
                                                                                                   break loop12;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    this.§ !j§ = null;
                                                                                    §§goto(addr224);
                                                                                 }
                                                                                 addr47:
                                                                                 if(!(_loc5_ || this))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop23;
                                                                                 }
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr58:
                                                                                    if(!(_loc4_ && param1))
                                                                                    {
                                                                                       §§goto(addr25);
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§goto(addr182);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(this.§ !j§)
                                                                              {
                                                                                 if(!(_loc4_ && param2))
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§ !j§.lock();
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§goto(addr47);
                                                                                    }
                                                                                    §§goto(addr107);
                                                                                 }
                                                                              }
                                                                              addr25:
                                                                              return;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                     §§goto(addr179);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        §§goto(addr132);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr181);
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                                  addr125:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr125);
                                                               }
                                                               addr124:
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr124);
                                                            §§goto(addr173);
                                                         }
                                                         addr173:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            this.§ !j§.fillRect(this.§ !j§.rect,4278190080 | param2);
                                                            continue loop0;
                                                         }
                                                         §§goto(addr237);
                                                         §§goto(addr158);
                                                      }
                                                      addr158:
                                                      addr236:
                                                   }
                                                   §§goto(addr93);
                                                }
                                                §§goto(addr180);
                                             }
                                             continue loop3;
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr236);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr174);
         }
         §§goto(addr42);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§ !j§)
            {
               if(_loc2_ || _loc3_)
               {
                  this.§ !j§.unlock();
               }
            }
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.§&!@§ = param1;
            while(true)
            {
               this.§3]§ = param2;
               while(_loc5_ || param3)
               {
                  this.§1!x§ = param3;
                  while(_loc5_ || this)
                  {
                     this.§@!Y§ = param4;
                     if(!_loc5_)
                     {
                        continue;
                     }
                     return;
                     addr54:
                  }
               }
            }
         }
         §§goto(addr54);
      }
   }
}
