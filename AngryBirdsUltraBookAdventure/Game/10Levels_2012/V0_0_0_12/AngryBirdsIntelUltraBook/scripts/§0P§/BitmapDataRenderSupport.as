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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§^U§ = new Vector.<Number>(16);
            while(true)
            {
               this.§0Z§ = new Matrix();
               loop1:
               while(!_loc1_)
               {
                  this.§^Q§ = new ColorTransform();
                  while(true)
                  {
                     super();
                     do
                     {
                        this.§6<§ = new BitmapData(1,1,false);
                     }
                     while(_loc1_ && _loc2_);
                     
                     if(_loc2_)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr83);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§=,§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.dispose();
         }
         loop0:
         while(this.§6<§)
         {
            if(!_loc1_)
            {
               this.§6<§.dispose();
            }
            while(!_loc1_)
            {
               this.§6<§ = null;
               if(_loc2_ || _loc1_)
               {
                  break loop0;
               }
            }
         }
      }
      
      override public function batchQuad(param1:§3x§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(_loc9_ || param3)
         {
            if(this.§=,§)
            {
               loop0:
               while(true)
               {
                  §6!E§.copyRawDataTo(this.§^U§,0);
                  addr136:
                  while(true)
                  {
                     this.§0Z§.setTo(this.§^U§[0],this.§^U§[1],this.§^U§[4],this.§^U§[5],this.§^U§[12],this.§^U§[13]);
                     while(_loc9_ || param3)
                     {
                        continue loop0;
                        loop3:
                        while(!(_loc8_ && param3))
                        {
                           do
                           {
                              §§push(param1.color);
                              if(!(_loc8_ && param1))
                              {
                                 §§push(uint(§§pop()));
                              }
                              _loc5_ = §§pop();
                              do
                              {
                                 if(!_loc8_)
                                 {
                                    §§push(param2);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() * param1.alpha);
                                       if(_loc8_)
                                       {
                                          continue;
                                       }
                                    }
                                    §§push(Number(§§pop()));
                                    continue;
                                 }
                                 continue loop3;
                              }
                              while(param2 = §§pop(), !_loc9_);
                              
                           }
                           while(false);
                           
                           _loc6_ = null;
                           if(!(_loc8_ && param2))
                           {
                              §§push(Boolean(param3));
                              if(_loc9_ || param2)
                              {
                                 §§push(§§pop());
                                 if(!(_loc8_ && param3))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc9_)
                                    {
                                       addr168:
                                       §§pop();
                                       if(_loc9_)
                                       {
                                          addr171:
                                          §§push(_loc5_ == 16777215);
                                          if(!_loc8_)
                                          {
                                             §§push(!§§pop());
                                             if(_loc9_)
                                             {
                                                addr180:
                                                if(§§pop())
                                                {
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      _loc6_ = this.§^Q§;
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         _loc6_.redMultiplier = §2!E§.§6,§(_loc5_) / 255;
                                                         while(true)
                                                         {
                                                            _loc6_.greenMultiplier = §2!E§.§3i§(_loc5_) / 255;
                                                            loop7:
                                                            while(true)
                                                            {
                                                               addr230:
                                                               while(true)
                                                               {
                                                                  _loc6_.blueMultiplier = §2!E§.§7!@§(_loc5_) / 255;
                                                                  addr239:
                                                                  while(!_loc8_)
                                                                  {
                                                                  }
                                                                  continue loop7;
                                                               }
                                                            }
                                                            addr221:
                                                            if(!(_loc9_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            if(false)
                                                            {
                                                               §§goto(addr230);
                                                            }
                                                            addr261:
                                                            if(param2 != 1)
                                                            {
                                                               addr264:
                                                               _loc6_ = this.§^Q§;
                                                               if(!(_loc8_ && param2))
                                                               {
                                                                  _loc6_.alphaMultiplier = param2;
                                                               }
                                                            }
                                                            _loc7_ = param1.clippedBitmapData;
                                                            if(!_loc8_)
                                                            {
                                                               if(_loc7_ == null)
                                                               {
                                                                  if(!(_loc8_ && param2))
                                                                  {
                                                                     addr294:
                                                                     this.§6<§.setPixel(0,0,param1.color);
                                                                     if(!_loc8_)
                                                                     {
                                                                        addr304:
                                                                        _loc7_ = this.§6<§;
                                                                        if(!_loc8_)
                                                                        {
                                                                           this.§0Z§.a *= param1.§5l§;
                                                                           while(true)
                                                                           {
                                                                              this.§0Z§.b *= param1.§5l§;
                                                                              loop12:
                                                                              for(; _loc9_ || this; while(true)
                                                                              {
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                    this.§0Z§.d *= param1.§<z§;
                                                                                    if(!(_loc8_ && param3))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 continue loop12;
                                                                              },while(false)
                                                                              {
                                                                                 §§goto(addr330);
                                                                              },this.§=,§.draw(_loc7_,this.§0Z§,_loc6_,null,null,param1.highQuality),return)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§0Z§.c *= param1.§<z§;
                                                                                    continue loop12;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr328);
                                                                     }
                                                                     §§goto(addr398);
                                                                  }
                                                                  §§goto(addr304);
                                                               }
                                                               §§goto(addr386);
                                                            }
                                                            §§goto(addr294);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         _loc6_.alphaMultiplier = 1;
                                                         if(_loc9_ || this)
                                                         {
                                                            §§goto(addr221);
                                                         }
                                                         §§goto(addr239);
                                                      }
                                                   }
                                                   §§goto(addr264);
                                                }
                                                §§goto(addr261);
                                             }
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr264);
                                    }
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr171);
                        }
                     }
                  }
               }
            }
            §§goto(addr386);
         }
         §§goto(addr136);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(Boolean(this.§=,§));
            if(_loc5_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§=,§.width == this.§"#§);
                     if(!(_loc4_ && param2))
                     {
                        §§push(!§§pop());
                        if(!(_loc4_ && param3))
                        {
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop28:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop29:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop30:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop1:
                                          while(true)
                                          {
                                             §§pop();
                                             loop2:
                                             while(true)
                                             {
                                                §§push(this.§=,§.height == this.§>!g§);
                                                while(true)
                                                {
                                                   §§push(!§§pop());
                                                   addr270:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   addr103:
                                                   if(!(_loc5_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   loop26:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc5_ || this)
                                                         {
                                                            addr119:
                                                            if(!(_loc4_ && param3))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§=,§ = new BitmapData(this.§"#§,this.§>!g§,true,4278190080 | param2);
                                                                     addr140:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr24);
                                                                     }
                                                                  }
                                                                  addr128:
                                                               }
                                                               §§goto(addr284);
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                         §§goto(addr140);
                                                      }
                                                      addr24:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(this.§=,§));
                                                         if(!(_loc4_ && param2))
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  addr39:
                                                                  if(_loc5_ || param2)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!(_loc5_ || this))
                                                                     {
                                                                        continue loop23;
                                                                     }
                                                                     if(!(_loc4_ && param2))
                                                                     {
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              this.§=,§.lock();
                                                                              continue loop23;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§push(this.§"#§);
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              addr145:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() > §§pop());
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       addr171:
                                                                                       if(_loc4_ && this)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(_loc5_ || param2)
                                                                                       {
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc4_ && this))
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   continue loop30;
                                                                                                }
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             addr197:
                                                                                             addr238:
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      continue loop26;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr213:
                                                                                                      while(!(_loc4_ && param2))
                                                                                                      {
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      loop8:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr221:
                                                                                                         loop10:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§=,§ == null);
                                                                                                            addr226:
                                                                                                            addr272:
                                                                                                            while(_loc5_)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  break loop25;
                                                                                                                  §§goto(addr39);
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  this.§=,§.fillRect(this.§=,§.rect,4278190080 | param2);
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               if(_loc5_ || param3)
                                                                                                               {
                                                                                                                  this.§=,§.dispose();
                                                                                                                  addr284:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§=,§ = null;
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                                  addr284:
                                                                                                               }
                                                                                                               §§goto(addr284);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   continue loop25;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   continue loop16;
                                                                                                }
                                                                                                §§goto(addr197);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc5_ || param1))
                                                                                             {
                                                                                                continue loop29;
                                                                                             }
                                                                                             §§goto(addr238);
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          continue loop29;
                                                                                       }
                                                                                       continue loop28;
                                                                                    }
                                                                                    §§goto(addr212);
                                                                                 }
                                                                                 §§goto(addr171);
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr213);
                                                                  }
                                                                  §§goto(addr229);
                                                               }
                                                               §§goto(addr239);
                                                            }
                                                            §§goto(addr91);
                                                         }
                                                         §§goto(addr94);
                                                         continue loop23;
                                                      }
                                                      addr20:
                                                      return;
                                                   }
                                                }
                                             }
                                          }
                                          addr326:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr272);
                                       }
                                    }
                                 }
                              }
                           }
                           addr322:
                        }
                     }
                     §§goto(addr326);
                  }
               }
               §§goto(addr221);
            }
            §§goto(addr322);
         }
         §§goto(addr128);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§=,§)
            {
               if(_loc2_)
               {
                  addr29:
                  this.§=,§.unlock();
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§"#§ = param1;
            loop0:
            while(true)
            {
               this.§>!g§ = param2;
               loop1:
               do
               {
                  this.§"Y§ = param3;
                  while(_loc6_)
                  {
                     this.§,!F§ = param4;
                     if(!(_loc5_ && param2))
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!_loc6_);
               
            }
         }
      }
   }
}
