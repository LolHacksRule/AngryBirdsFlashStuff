package §`!a§
{
   import §%q§.Texture;
   import §+o§.§,!L§;
   import §6![§.§ !f§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §=!W§ extends §0L§
   {
       
      
      private var §!!U§:BitmapData;
      
      private var §;N§:int = 0;
      
      private var §+0§:int = 0;
      
      private var §>^§:Number = 1.0;
      
      private var §&!-§:Number = 1.0;
      
      private var §>!u§:BitmapData;
      
      private var §?!R§:Vector.<Number>;
      
      private var §"T§:Matrix;
      
      private var §>"§:ColorTransform;
      
      public function §=!W§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§?!R§ = new Vector.<Number>(16);
            loop0:
            while(true)
            {
               this.§"T§ = new Matrix();
               while(true)
               {
                  this.§>"§ = new ColorTransform();
                  addr64:
                  if(!(_loc2_ && _loc2_))
                  {
                     if(_loc1_)
                     {
                        this.§>!u§ = new BitmapData(1,1,false);
                        addr73:
                        if(_loc1_ || _loc1_)
                        {
                           return;
                        }
                        loop3:
                        while(true)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr64);
                           }
                           else
                           {
                              while(true)
                              {
                                 super();
                                 continue loop3;
                              }
                              addr79:
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§!!U§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.dispose();
            loop0:
            for(; this.§>!u§; while(_loc2_ || _loc1_)
            {
               this.§>!u§ = null;
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr45);
            })
            {
               do
               {
                  this.§>!u§.dispose();
                  continue loop0;
               }
               while(_loc1_ && _loc2_);
               
            }
            §§goto(addr20);
         }
         addr20:
      }
      
      override public function batchQuad(param1:§ !f§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(!_loc8_)
         {
            if(this.§!!U§)
            {
               while(true)
               {
                  § !K§.copyRawDataTo(this.§?!R§,0);
                  while(true)
                  {
                     this.§"T§.setTo(this.§?!R§[0],this.§?!R§[1],this.§?!R§[4],this.§?!R§[5],this.§?!R§[12],this.§?!R§[13]);
                     while(true)
                     {
                        this.§"T§.scale(this.§>^§,this.§&!-§);
                        addr88:
                        loop3:
                        while(true)
                        {
                           addr56:
                           addr127:
                           while(true)
                           {
                              §§push(param1.color);
                              if(_loc9_ || param3)
                              {
                                 §§push(uint(§§pop()));
                              }
                              _loc5_ = §§pop();
                              continue loop3;
                           }
                           _loc6_ = null;
                           if(!_loc8_)
                           {
                              §§push(Boolean(param3));
                              if(!_loc8_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       addr140:
                                       §§pop();
                                       if(!(_loc8_ && param1))
                                       {
                                          §§push(_loc5_ == 16777215);
                                          if(_loc8_ && param1)
                                          {
                                          }
                                          addr159:
                                          if(§§pop())
                                          {
                                             if(!_loc8_)
                                             {
                                                (_loc6_ = this.§>"§).redMultiplier = §,!L§.§3!2§(_loc5_) / 255;
                                                if(!(_loc8_ && this))
                                                {
                                                   _loc6_.greenMultiplier = §,!L§.§3!B§(_loc5_) / 255;
                                                   loop6:
                                                   while(true)
                                                   {
                                                      addr199:
                                                      while(true)
                                                      {
                                                         _loc6_.blueMultiplier = §,!L§.§>]§(_loc5_) / 255;
                                                         continue loop6;
                                                      }
                                                   }
                                                }
                                                while(false)
                                                {
                                                   §§goto(addr199);
                                                }
                                             }
                                             addr226:
                                             (_loc6_ = this.§>"§).alphaMultiplier = param2;
                                             if((_loc7_ = param1.clippedBitmapData) == null)
                                             {
                                                if(!_loc8_)
                                                {
                                                   this.§>!u§.setPixel(0,0,param1.color);
                                                   if(_loc9_ || param3)
                                                   {
                                                      _loc7_ = this.§>!u§;
                                                      if(_loc9_)
                                                      {
                                                         this.§"T§.a *= param1.§ !v§;
                                                         loop10:
                                                         while(true)
                                                         {
                                                            this.§"T§.b *= param1.§ !v§;
                                                            loop11:
                                                            while(true)
                                                            {
                                                               addr282:
                                                               while(true)
                                                               {
                                                                  this.§"T§.c *= param1.§4w§;
                                                                  addr292:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr280);
                                                   }
                                                }
                                                §§goto(addr344);
                                             }
                                             §§goto(addr323);
                                          }
                                          if(param2 != 1)
                                          {
                                          }
                                       }
                                       §§goto(addr226);
                                    }
                                    §§push(!§§pop());
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr226);
                        }
                     }
                  }
               }
            }
            §§goto(addr344);
         }
         §§goto(addr88);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(this.§!!U§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§!!U§.width == this.§;N§);
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
                              while(true)
                              {
                                 §§pop();
                                 addr248:
                                 while(true)
                                 {
                                    §§push(this.§!!U§.height == this.§+0§);
                                    addr218:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                    }
                                 }
                              }
                              addr247:
                           }
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§!!U§.fillRect(this.§!!U§.rect,4278190080 | param2);
                                    loop9:
                                    while(true)
                                    {
                                       addr159:
                                       loop13:
                                       while(true)
                                       {
                                          §§push(this.§!!U§ == null);
                                          loop14:
                                          for(; _loc4_; if(_loc4_ || this)
                                          {
                                             continue loop8;
                                          })
                                          {
                                             §§push(§§pop());
                                             while(!(_loc5_ && this))
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         loop20:
                                                         while(_loc4_)
                                                         {
                                                            §§pop();
                                                            loop21:
                                                            while(true)
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  addr149:
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§+0§);
                                                                           if(_loc4_ || param2)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 §§push(§§pop() > §§pop());
                                                                                 if(!(_loc4_ || param2))
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          addr93:
                                                                                          addr224:
                                                                                          while(_loc4_)
                                                                                          {
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             this.§!!U§ = null;
                                                                                             break loop21;
                                                                                          }
                                                                                          addr93:
                                                                                       }
                                                                                       while(this.§!!U§)
                                                                                       {
                                                                                          if(!(_loc5_ && param2))
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                             this.§!!U§.lock();
                                                                                          }
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr93);
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                    addr70:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(!_loc5_)
                                                                                    {
                                                                                       §§pop();
                                                                                       continue loop9;
                                                                                    }
                                                                                    §§goto(addr218);
                                                                                    addr175:
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 continue loop26;
                                                                              }
                                                                              addr99:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() > §§pop());
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              continue loop20;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        addr158:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr248);
                                                                     }
                                                                     §§goto(addr218);
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop9;
                                                            }
                                                            while(_loc4_ || param1)
                                                            {
                                                               continue loop13;
                                                               §§goto(addr149);
                                                            }
                                                            while(true)
                                                            {
                                                               this.§!!U§.dispose();
                                                               §§goto(addr224);
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr70);
                                                   }
                                                   continue;
                                                   addr134:
                                                }
                                                §§goto(addr175);
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr247);
                                       }
                                    }
                                 }
                                 §§goto(addr221);
                                 if(_loc4_ || this)
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr159);
         }
         §§goto(addr158);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§!!U§)
            {
               if(_loc3_ || _loc3_)
               {
                  addr54:
                  this.§!!U§.unlock();
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
         if(!_loc6_)
         {
            this.§;N§ = param1;
            loop0:
            while(true)
            {
               this.§+0§ = param2;
               while(true)
               {
                  this.§>^§ = param3;
                  loop2:
                  while(_loc5_ || this)
                  {
                     if(!_loc6_)
                     {
                        while(true)
                        {
                           this.§&!-§ = param4;
                           if(_loc5_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr63);
      }
   }
}
