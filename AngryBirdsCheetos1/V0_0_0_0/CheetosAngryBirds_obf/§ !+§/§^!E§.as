package § !+§
{
   import §2!-§.Texture;
   import §<!M§.§3!Z§;
   import §`a§.§?!N§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §^!E§ extends §%L§
   {
       
      
      private var §;0§:BitmapData;
      
      private var §>!>§:int = 0;
      
      private var §[w§:int = 0;
      
      private var §;§:Number = 1.0;
      
      private var §3r§:Number = 1.0;
      
      private var §@@§:BitmapData;
      
      private var §0M§:Vector.<Number>;
      
      private var §[C§:Matrix;
      
      private var §0!-§:ColorTransform;
      
      public function §^!E§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§0M§ = new Vector.<Number>(16);
         }
         while(true)
         {
            this.§[C§ = new Matrix();
            while(!_loc2_)
            {
               this.§0!-§ = new ColorTransform();
               do
               {
                  super();
                  do
                  {
                     this.§@@§ = new BitmapData(1,1,false);
                  }
                  while(_loc2_);
                  
               }
               while(!_loc1_);
               
               if(_loc1_ || this)
               {
                  return;
               }
            }
         }
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§;0§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.dispose();
            loop0:
            while(this.§@@§)
            {
               loop1:
               while(true)
               {
                  this.§@@§.dispose();
                  while(true)
                  {
                     if(_loc1_)
                     {
                        this.§@@§ = null;
                        if(_loc1_)
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
         §§goto(addr61);
      }
      
      override public function batchQuad(param1:§?!N§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(!(_loc8_ && param1))
         {
            if(this.§;0§)
            {
               while(true)
               {
                  §'! §.copyRawDataTo(this.§0M§,0);
                  while(true)
                  {
                     this.§[C§.setTo(this.§0M§[0],this.§0M§[1],this.§0M§[4],this.§0M§[5],this.§0M§[12],this.§0M§[13]);
                     loop2:
                     while(true)
                     {
                        this.§[C§.scale(this.§;§,this.§3r§);
                        while(true)
                        {
                           addr56:
                           addr47:
                           while(true)
                           {
                              §§push(param1.color);
                              if(_loc9_)
                              {
                                 §§push(uint(§§pop()));
                              }
                              _loc5_ = §§pop();
                              continue loop2;
                           }
                           if(!(_loc9_ || param1))
                           {
                              continue;
                           }
                           while(false)
                           {
                              §§goto(addr56);
                           }
                           _loc6_ = null;
                           if(_loc9_)
                           {
                              §§push(Boolean(param3));
                              if(_loc9_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       addr145:
                                       §§pop();
                                       if(!_loc8_)
                                       {
                                          addr148:
                                          §§push(_loc5_ == 16777215);
                                          if(!_loc8_)
                                          {
                                             addr154:
                                             addr153:
                                             if(!§§pop())
                                             {
                                                if(_loc9_ || this)
                                                {
                                                   (_loc6_ = this.§0!-§).redMultiplier = §3!Z§.§0#§(_loc5_) / 255;
                                                   if(!_loc8_)
                                                   {
                                                      _loc6_.greenMultiplier = §3!Z§.§!!P§(_loc5_) / 255;
                                                   }
                                                   loop7:
                                                   while(true)
                                                   {
                                                      loop8:
                                                      while(true)
                                                      {
                                                         _loc6_.blueMultiplier = §3!Z§.§"!@§(_loc5_) / 255;
                                                         while(_loc9_)
                                                         {
                                                            _loc6_.alphaMultiplier = 1;
                                                            if(_loc9_)
                                                            {
                                                               if(true)
                                                               {
                                                                  break loop8;
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                }
                                                addr216:
                                                (_loc6_ = this.§0!-§).alphaMultiplier = param2;
                                                if((_loc7_ = param1.clippedBitmapData) == null)
                                                {
                                                   if(_loc9_ || this)
                                                   {
                                                      this.§@@§.setPixel(0,0,param1.color);
                                                      if(!_loc8_)
                                                      {
                                                         addr246:
                                                         _loc7_ = this.§@@§;
                                                         if(_loc9_ || param2)
                                                         {
                                                            this.§[C§.a *= param1.§5P§;
                                                            while(true)
                                                            {
                                                               this.§[C§.b *= param1.§5P§;
                                                               addr277:
                                                               if(_loc8_ && param2)
                                                               {
                                                                  continue;
                                                               }
                                                               if(false)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§[C§.c *= param1.§#c§;
                                                                     do
                                                                     {
                                                                        this.§[C§.d *= param1.§#c§;
                                                                     }
                                                                     while(_loc8_);
                                                                     
                                                                     if(!(_loc9_ || param3))
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr277);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr286);
                                                                  }
                                                                  addr286:
                                                                  addr307:
                                                               }
                                                               this.§;0§.draw(_loc7_,this.§[C§,_loc6_,null,null,param1.highQuality);
                                                               addr339:
                                                               return;
                                                               addr318:
                                                            }
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                      §§goto(addr339);
                                                   }
                                                   §§goto(addr246);
                                                }
                                                §§goto(addr318);
                                             }
                                             if(param2 != 1)
                                             {
                                             }
                                             §§goto(addr216);
                                          }
                                          §§goto(addr154);
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr153);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr148);
                        }
                     }
                  }
                  if(!(_loc9_ || param3))
                  {
                     continue;
                  }
                  §§goto(addr84);
               }
            }
            §§goto(addr339);
         }
         §§goto(addr54);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            if(this.§;0§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§;0§.width == this.§>!>§);
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                  }
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(this.§;0§.height == this.§[w§);
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    addr154:
                                    if(_loc5_ || this)
                                    {
                                       loop19:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc5_)
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                while(§§pop())
                                                {
                                                   if(_loc5_ || param3)
                                                   {
                                                      if(!(_loc4_ && param2))
                                                      {
                                                         this.§;0§ = new BitmapData(this.§>!>§,this.§[w§,true,4278190080 | param2);
                                                         loop23:
                                                         while(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            loop9:
                                                            while(_loc5_)
                                                            {
                                                               this.§;0§ = null;
                                                               loop10:
                                                               while(!(_loc4_ && param3))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§;0§ == null);
                                                                     loop12:
                                                                     while(_loc5_ || param3)
                                                                     {
                                                                        §§push(§§pop());
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              addr185:
                                                                              while(_loc5_)
                                                                              {
                                                                                 §§push(this.§>!>§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    addr146:
                                                                                    addr169:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() > §§pop());
                                                                                       addr147:
                                                                                       addr222:
                                                                                       while(!(_loc4_ && param3))
                                                                                       {
                                                                                          §§goto(addr154);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             break loop10;
                                                                                          }
                                                                                          this.§;0§.fillRect(this.§;0§.rect,4278190080 | param2);
                                                                                          break loop23;
                                                                                          §§goto(addr147);
                                                                                       }
                                                                                    }
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§[w§);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(0);
                                                                                       if(_loc5_ || param2)
                                                                                       {
                                                                                          §§push(§§pop() > §§pop());
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(_loc5_ || param1)
                                                                                                {
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   continue loop12;
                                                                                                }
                                                                                                continue loop14;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                continue loop21;
                                                                                             }
                                                                                             addr168:
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr146);
                                                                                       }
                                                                                       §§goto(addr147);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§;0§.dispose();
                                                                  continue loop9;
                                                               }
                                                            }
                                                            continue loop4;
                                                            if(!(_loc4_ && param2))
                                                            {
                                                               this.§;0§.lock();
                                                            }
                                                            if(!(_loc5_ || param3))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr25);
                                                            }
                                                            §§goto(addr185);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr170);
                                                         }
                                                         addr130:
                                                         addr200:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr169);
                                                      }
                                                      §§goto(addr145);
                                                   }
                                                   §§goto(addr130);
                                                }
                                                while(true)
                                                {
                                                   if(this.§;0§)
                                                   {
                                                      §§goto(addr33);
                                                   }
                                                   addr25:
                                                   return;
                                                }
                                                addr92:
                                                addr29:
                                             }
                                             §§goto(addr168);
                                          }
                                          §§goto(addr183);
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr222);
                        }
                     }
                  }
               }
            }
            §§goto(addr170);
         }
         §§goto(addr200);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§;0§)
            {
               if(_loc2_)
               {
                  this.§;0§.unlock();
               }
            }
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§>!>§ = param1;
            loop0:
            while(true)
            {
               this.§[w§ = param2;
               while(true)
               {
                  this.§;§ = param3;
                  while(_loc6_)
                  {
                     if(!_loc5_)
                     {
                        this.§3r§ = param4;
                        if(_loc6_)
                        {
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
   }
}
