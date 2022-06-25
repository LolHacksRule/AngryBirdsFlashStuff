package §<&§
{
   import §'!9§.§%!g§;
   import §^!+§.Texture;
   import §`s§.§ z§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §[;§ extends §`K§
   {
       
      
      private var §8!0§:BitmapData;
      
      private var §3#§:int = 0;
      
      private var §?8§:int = 0;
      
      private var §5!U§:Number = 1.0;
      
      private var §-![§:Number = 1.0;
      
      private var §!!@§:BitmapData;
      
      private var §4!0§:Vector.<Number>;
      
      private var §-!C§:Matrix;
      
      private var §]u§:ColorTransform;
      
      public function §[;§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§4!0§ = new Vector.<Number>(16);
            loop0:
            while(true)
            {
               this.§-!C§ = new Matrix();
               while(true)
               {
                  this.§]u§ = new ColorTransform();
                  while(_loc1_)
                  {
                     super();
                     loop3:
                     while(_loc1_)
                     {
                        while(true)
                        {
                           this.§!!@§ = new BitmapData(1,1,false);
                           if(_loc1_)
                           {
                              if(_loc1_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§8!0§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.dispose();
            loop0:
            for(; this.§!!@§; while(!(_loc2_ && _loc1_))
            {
               this.§!!@§ = null;
               if(!(_loc1_ || this))
               {
                  continue;
               }
               §§goto(addr54);
            })
            {
               do
               {
                  this.§!!@§.dispose();
                  continue loop0;
               }
               while(_loc2_);
               
            }
            §§goto(addr19);
         }
         addr19:
      }
      
      override public function batchQuad(param1:§%!g§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(_loc9_ || this)
         {
            if(this.§8!0§)
            {
               loop0:
               while(true)
               {
                  §[V§.copyRawDataTo(this.§4!0§,0);
                  loop1:
                  while(true)
                  {
                     this.§-!C§.setTo(this.§4!0§[0],this.§4!0§[1],this.§4!0§[4],this.§4!0§[5],this.§4!0§[12],this.§4!0§[13]);
                     loop2:
                     while(true)
                     {
                        this.§-!C§.scale(this.§5!U§,this.§-![§);
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(param1.color);
                              if(!(_loc8_ && param1))
                              {
                                 §§push(uint(§§pop()));
                              }
                              _loc5_ = §§pop();
                              while(_loc9_)
                              {
                                 if(!(_loc8_ && param3))
                                 {
                                    §§push(param2);
                                    if(_loc9_ || param2)
                                    {
                                       §§push(§§pop() * param1.alpha);
                                       if(!_loc8_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    param2 = §§pop();
                                    if(_loc8_)
                                    {
                                       continue;
                                    }
                                    if(_loc8_)
                                    {
                                       break loop4;
                                    }
                                    if(!_loc9_)
                                    {
                                       continue loop0;
                                    }
                                    while(false)
                                    {
                                       continue loop4;
                                    }
                                    _loc6_ = null;
                                    if(_loc9_ || this)
                                    {
                                       §§push(Boolean(param3));
                                       if(!_loc8_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc8_)
                                             {
                                                §§pop();
                                                §§goto(addr226);
                                             }
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             (_loc6_ = this.§]u§).redMultiplier = § z§.§6!q§(_loc5_) / 255;
                                             if(_loc9_)
                                             {
                                                _loc6_.greenMultiplier = § z§.§"5§(_loc5_) / 255;
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   _loc6_.blueMultiplier = § z§.§9!,§(_loc5_) / 255;
                                                   do
                                                   {
                                                      _loc6_.alphaMultiplier = 1;
                                                   }
                                                   while(_loc8_);
                                                   
                                                   if(_loc9_ || param1)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop7;
                                                }
                                                addr223:
                                                if(param2 != 1)
                                                {
                                                }
                                                §§goto(addr226);
                                             }
                                          }
                                          §§goto(addr226);
                                       }
                                       §§goto(addr223);
                                    }
                                    addr226:
                                    if(_loc9_ || param1)
                                    {
                                       §§push(_loc5_ == 16777215);
                                       if(_loc9_ || this)
                                       {
                                          §§push(!§§pop());
                                       }
                                    }
                                    (_loc6_ = this.§]u§).alphaMultiplier = param2;
                                    if((_loc7_ = param1.clippedBitmapData) == null)
                                    {
                                       if(!(_loc8_ && param1))
                                       {
                                          this.§!!@§.setPixel(0,0,param1.color);
                                          if(!_loc9_)
                                          {
                                          }
                                          §§goto(addr344);
                                       }
                                       _loc7_ = this.§!!@§;
                                       if(_loc9_)
                                       {
                                          this.§-!C§.a *= param1.§>V§;
                                          while(true)
                                          {
                                             this.§-!C§.b *= param1.§>V§;
                                             addr322:
                                             loop11:
                                             while(true)
                                             {
                                                addr291:
                                                while(true)
                                                {
                                                   this.§-!C§.c *= param1.§=!`§;
                                                   continue loop11;
                                                }
                                             }
                                             §§goto(addr282);
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§-!C§.d *= param1.§=!`§;
                                          if(!_loc9_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc8_ && param2))
                                          {
                                             addr282:
                                             if(_loc8_ && param3)
                                             {
                                                continue loop10;
                                             }
                                             if(false)
                                             {
                                                §§goto(addr291);
                                             }
                                             §§goto(addr333);
                                          }
                                          §§goto(addr322);
                                       }
                                    }
                                    addr333:
                                    this.§8!0§.draw(_loc7_,this.§-!C§,_loc6_,null,null,param1.highQuality);
                                    addr344:
                                    return;
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr344);
         }
         §§goto(addr56);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(this.§8!0§)
            {
               if(_loc4_)
               {
                  addr223:
                  §§push(this.§8!0§.width == this.§3#§);
                  while(true)
                  {
                     §§push(!§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(§§pop())
                        {
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§8!0§.fillRect(this.§8!0§.rect,4278190080 | param2);
                                    loop5:
                                    while(true)
                                    {
                                       addr150:
                                       while(true)
                                       {
                                          §§push(this.§8!0§ == null);
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             while(!_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   loop12:
                                                   for(; _loc4_; if(!(_loc4_ || param1))
                                                   {
                                                      continue;
                                                   })
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§pop();
                                                      while(true)
                                                      {
                                                         §§push(this.§3#§);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            addr116:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() > §§pop());
                                                               if(_loc4_ || param2)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               addr141:
                                                               addr141:
                                                               while(true)
                                                               {
                                                                  if(!(_loc4_ || param1))
                                                                  {
                                                                     break loop3;
                                                                  }
                                                                  §§pop();
                                                                  continue loop14;
                                                               }
                                                            }
                                                            continue loop12;
                                                         }
                                                         if(!(_loc4_ || param3))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            this.§8!0§.lock();
                                                            §§goto(addr48);
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc5_ && this)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr141);
                                                   }
                                                   §§goto(addr71);
                                                }
                                             }
                                             continue loop3;
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                                 §§goto(addr212);
                              }
                           }
                        }
                        §§pop();
                     }
                  }
               }
               §§goto(addr233);
            }
            §§goto(addr150);
         }
         §§goto(addr223);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§8!0§)
            {
               if(!_loc2_)
               {
                  this.§8!0§.unlock();
               }
            }
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.§3#§ = param1;
         }
         loop0:
         while(true)
         {
            this.§?8§ = param2;
            while(true)
            {
               this.§5!U§ = param3;
               while(_loc5_)
               {
                  continue loop0;
                  this.§-![§ = param4;
                  if(!_loc6_)
                  {
                     return;
                  }
               }
            }
         }
      }
   }
}
