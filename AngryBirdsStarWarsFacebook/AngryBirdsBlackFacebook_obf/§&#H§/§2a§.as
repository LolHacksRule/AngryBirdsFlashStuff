package §&#H§
{
   import §!!U§.§2"D§;
   import §&v§.Texture;
   import §=]§.§4"I§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §2a§ extends §%"H§
   {
       
      
      private var §["A§:BitmapData;
      
      private var §3#C§:int = 0;
      
      private var §+! §:int = 0;
      
      private var §<>§:Number = 1.0;
      
      private var §=0§:Number = 1.0;
      
      private var §;"o§:BitmapData;
      
      private var §+U§:Vector.<Number>;
      
      private var §4#Z§:Matrix;
      
      private var §^"K§:ColorTransform;
      
      public function §2a§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§+U§ = new Vector.<Number>(16);
            while(true)
            {
               this.§4#Z§ = new Matrix();
               while(!_loc1_)
               {
                  this.§^"K§ = new ColorTransform();
                  while(_loc2_)
                  {
                     super();
                     do
                     {
                        this.§;"o§ = new BitmapData(1,1,false);
                     }
                     while(!_loc2_);
                     
                     if(_loc2_ || this)
                     {
                        return;
                        addr56:
                     }
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§["A§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.dispose();
         }
         while(this.§;"o§)
         {
            if(!_loc1_)
            {
               this.§;"o§.dispose();
            }
            do
            {
               this.§;"o§ = null;
            }
            while(_loc1_ && _loc1_);
            
            if(_loc2_ || this)
            {
               break;
            }
         }
      }
      
      override public function batchQuad(param1:§2"D§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(!(_loc9_ && this))
         {
            if(this.§["A§)
            {
               if(!_loc9_)
               {
                  addr130:
                  §&e§.copyRawDataTo(this.§+U§,0);
               }
               while(true)
               {
                  this.§4#Z§.setTo(this.§+U§[0],this.§+U§[1],this.§+U§[4],this.§+U§[5],this.§+U§[12],this.§+U§[13]);
                  loop1:
                  for(; _loc8_ || param2; do
                  {
                     if(!(_loc9_ && param2))
                     {
                        §§push(param2);
                        if(_loc8_)
                        {
                           §§push(§§pop() * param1.alpha);
                           if(_loc9_ && this)
                           {
                              continue;
                           }
                        }
                        §§push(Number(§§pop()));
                        continue;
                     }
                     continue loop1;
                  }
                  while(param2 = §§pop(), !_loc8_);
                  ,§§goto(addr51))
                  {
                     this.§4#Z§.scale(this.§<>§,this.§=0§);
                     while(true)
                     {
                        addr60:
                        addr51:
                        while(true)
                        {
                           §§push(param1.color);
                           if(!(_loc9_ && param1))
                           {
                              §§push(uint(§§pop()));
                           }
                           _loc5_ = §§pop();
                           continue loop1;
                        }
                        if(!(_loc8_ || param3))
                        {
                           continue;
                        }
                        if(false)
                        {
                           §§goto(addr60);
                        }
                        else
                        {
                           _loc6_ = null;
                           if(_loc8_)
                           {
                              §§push(Boolean(param3));
                              if(_loc8_ || param1)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc9_)
                                    {
                                       §§pop();
                                       if(!_loc9_)
                                       {
                                          addr157:
                                          §§push(_loc5_ == 16777215);
                                          if(_loc8_)
                                          {
                                             addr163:
                                             if(!§§pop())
                                             {
                                                if(_loc8_ || param2)
                                                {
                                                   (_loc6_ = this.§^"K§).redMultiplier = §4"I§.§7!0§(_loc5_) / 255;
                                                   if(_loc8_ || param3)
                                                   {
                                                      _loc6_.greenMultiplier = §4"I§.§=#Z§(_loc5_) / 255;
                                                      addr215:
                                                      _loc6_.blueMultiplier = §4"I§.§@H§(_loc5_) / 255;
                                                      addr231:
                                                   }
                                                   _loc6_.alphaMultiplier = 1;
                                                   if(!_loc9_)
                                                   {
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr215);
                                                         }
                                                         addr232:
                                                         if(param2 != 1)
                                                         {
                                                            addr235:
                                                            (_loc6_ = this.§^"K§).alphaMultiplier = param2;
                                                         }
                                                         if((_loc7_ = param1.clippedBitmapData) == null)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               this.§;"o§.setPixel(0,0,param1.color);
                                                               if(!(_loc9_ && param2))
                                                               {
                                                                  addr265:
                                                                  _loc7_ = this.§;"o§;
                                                                  if(_loc8_ || param3)
                                                                  {
                                                                     this.§4#Z§.a *= param1.§9"#§;
                                                                     this.§4#Z§.b *= param1.§9"#§;
                                                                     addr296:
                                                                     this.§4#Z§.c *= param1.§2"U§;
                                                                     addr331:
                                                                     if(_loc8_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           this.§4#Z§.d *= param1.§2"U§;
                                                                           if(_loc8_ || param3)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr296);
                                                                              }
                                                                              this.§["A§.draw(_loc7_,this.§4#Z§,_loc6_,null,null,param1.highQuality);
                                                                              addr353:
                                                                              return;
                                                                              addr332:
                                                                           }
                                                                           §§goto(addr296);
                                                                           addr310:
                                                                        }
                                                                        §§goto(addr331);
                                                                     }
                                                                     addr321:
                                                                     §§goto(addr321);
                                                                  }
                                                                  §§goto(addr310);
                                                               }
                                                               §§goto(addr353);
                                                            }
                                                            §§goto(addr265);
                                                         }
                                                         §§goto(addr332);
                                                      }
                                                      §§goto(addr231);
                                                   }
                                                   addr223:
                                                   §§goto(addr223);
                                                }
                                                §§goto(addr235);
                                             }
                                             §§goto(addr232);
                                          }
                                          §§goto(addr163);
                                       }
                                       §§goto(addr235);
                                    }
                                 }
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr157);
                        }
                     }
                  }
               }
            }
            §§goto(addr353);
         }
         §§goto(addr130);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(this.§["A§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§["A§.width == this.§3#C§);
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
                                    §§push(this.§["A§.height == this.§+! §);
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       loop25:
                                       while(_loc5_ || this)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§pop();
                                             loop24:
                                             while(_loc5_ || param3)
                                             {
                                                §§push(this.§3#C§);
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      loop20:
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && param2))
                                                         {
                                                            addr108:
                                                            if(_loc4_)
                                                            {
                                                               break loop18;
                                                            }
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc4_ && param2))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop16:
                                                                     while(_loc5_)
                                                                     {
                                                                        §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§+! §);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(0);
                                                                              if(!(_loc4_ && param3))
                                                                              {
                                                                                 §§push(§§pop() > §§pop());
                                                                                 if(!(_loc5_ || this))
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                           }
                                                                           continue loop19;
                                                                           addr32:
                                                                           if(_loc4_ && param3)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           if(!_loc4_)
                                                                           {
                                                                              this.§["A§.lock();
                                                                              addr46:
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§goto(addr20);
                                                                              }
                                                                              while(!_loc4_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§["A§ == null);
                                                                                    if(!(_loc4_ && param1))
                                                                                    {
                                                                                       if(!(_loc4_ && param2))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          break loop15;
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    continue loop25;
                                                                                 }
                                                                              }
                                                                              addr199:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_ && param2)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§["A§.dispose();
                                                                                       addr215:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§["A§ = null;
                                                                                          §§goto(addr199);
                                                                                       }
                                                                                    }
                                                                                    addr212:
                                                                                 }
                                                                                 §§goto(addr134);
                                                                              }
                                                                              addr187:
                                                                           }
                                                                           §§goto(addr215);
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc4_ && param2))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§["A§ = new BitmapData(this.§3#C§,this.§+! §,true,4278190080 | param2);
                                                                           }
                                                                           addr81:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        continue loop1;
                                                                        addr93:
                                                                     }
                                                                     while(this.§["A§)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§goto(addr32);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr93);
                                                                           }
                                                                        }
                                                                        §§goto(addr46);
                                                                     }
                                                                     addr20:
                                                                     return;
                                                                  }
                                                               }
                                                               break;
                                                               §§goto(addr108);
                                                            }
                                                            while(_loc5_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  continue loop25;
                                                               }
                                                               §§goto(addr120);
                                                            }
                                                            addr120:
                                                            continue loop3;
                                                         }
                                                         continue loop25;
                                                      }
                                                   }
                                                   §§goto(addr174);
                                                }
                                                addr174:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      this.§["A§.fillRect(this.§["A§.rect,4278190080 | param2);
                                                      §§goto(addr187);
                                                   }
                                                   §§goto(addr212);
                                                   §§goto(addr108);
                                                }
                                             }
                                             continue loop5;
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr211);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr134);
         }
         §§goto(addr81);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§["A§)
            {
               if(!(_loc2_ && this))
               {
                  addr54:
                  this.§["A§.unlock();
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.§3#C§ = param1;
            loop0:
            while(true)
            {
               this.§+! § = param2;
               while(true)
               {
                  this.§<>§ = param3;
                  loop2:
                  while(!(_loc6_ && param3))
                  {
                     while(true)
                     {
                        this.§=0§ = param4;
                        if(!_loc6_)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr68);
      }
   }
}
