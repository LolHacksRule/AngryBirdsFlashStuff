package §-Z§
{
   import §3!$§.§5!6§;
   import §[P§.Texture;
   import §^V§.§09§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §#M§ extends § G§
   {
       
      
      private var §5A§:BitmapData;
      
      private var §%!F§:int = 0;
      
      private var §2U§:int = 0;
      
      private var §?i§:Number = 1.0;
      
      private var §#f§:Number = 1.0;
      
      private var § 7§:BitmapData;
      
      private var §%y§:Vector.<Number>;
      
      private var §[1§:Matrix;
      
      private var §<q§:ColorTransform;
      
      public function §#M§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§%y§ = new Vector.<Number>(16);
            while(true)
            {
               this.§[1§ = new Matrix();
               while(_loc2_)
               {
                  this.§<q§ = new ColorTransform();
                  addr70:
                  if(!(_loc1_ && _loc1_))
                  {
                     this.§ 7§ = new BitmapData(1,1,false);
                     addr77:
                     if(!(_loc2_ || _loc1_))
                     {
                        while(!_loc1_)
                        {
                           §§goto(addr70);
                           §§goto(addr77);
                        }
                        while(true)
                        {
                           super();
                           §§goto(addr58);
                        }
                        addr58:
                        addr83:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§5A§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.dispose();
            loop0:
            for(; this.§ 7§; if(_loc1_ || _loc2_)
            {
               break;
            })
            {
               loop1:
               while(true)
               {
                  this.§ 7§.dispose();
                  addr76:
                  while(true)
                  {
                     this.§ 7§ = null;
                     if(!(_loc2_ && this))
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr76);
      }
      
      override public function batchQuad(param1:§09§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(!_loc8_)
         {
            if(this.§5A§)
            {
               loop0:
               while(true)
               {
                  §1w§.copyRawDataTo(this.§%y§,0);
                  addr124:
                  loop1:
                  while(true)
                  {
                     this.§[1§.setTo(this.§%y§[0],this.§%y§[1],this.§%y§[4],this.§%y§[5],this.§%y§[12],this.§%y§[13]);
                     this.§[1§.scale(this.§?i§,this.§#f§);
                     loop2:
                     for(; !_loc8_; do
                     {
                        if(_loc9_ || param3)
                        {
                           if(_loc9_)
                           {
                              §§push(param2);
                              if(!(_loc8_ && this))
                              {
                                 §§push(§§pop() * param1.alpha);
                                 if(!(_loc9_ || param2))
                                 {
                                    continue;
                                 }
                              }
                              §§push(Number(§§pop()));
                              continue;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     while(param2 = §§pop(), _loc8_ && param2);
                     ,§§goto(addr57))
                     {
                        do
                        {
                           §§push(param1.color);
                           if(!_loc8_)
                           {
                              §§push(uint(§§pop()));
                           }
                           _loc5_ = §§pop();
                           continue loop2;
                        }
                        while(false);
                        
                        _loc6_ = null;
                        if(!(_loc8_ && this))
                        {
                           §§push(Boolean(param3));
                           if(!_loc8_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc8_ && this))
                                 {
                                    §§pop();
                                    if(_loc9_ || param2)
                                    {
                                       §§push(_loc5_ == 16777215);
                                       if(_loc9_ || this)
                                       {
                                       }
                                       §§goto(addr177);
                                    }
                                    §§goto(addr234);
                                 }
                              }
                           }
                           addr177:
                           if(!§§pop())
                           {
                              if(!_loc8_)
                              {
                                 addr180:
                                 (_loc6_ = this.§<q§).redMultiplier = §5!6§.§get §(_loc5_) / 255;
                                 if(_loc9_ || param2)
                                 {
                                    _loc6_.greenMultiplier = §5!6§.§>c§(_loc5_) / 255;
                                    loop10:
                                    while(true)
                                    {
                                       addr214:
                                       while(true)
                                       {
                                          _loc6_.blueMultiplier = §5!6§.§;!D§(_loc5_) / 255;
                                          continue loop10;
                                       }
                                    }
                                    addr230:
                                 }
                                 while(true)
                                 {
                                    _loc6_.alphaMultiplier = 1;
                                    if(!_loc9_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc8_ && this))
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr230);
                                    }
                                    §§goto(addr214);
                                 }
                              }
                              §§goto(addr234);
                           }
                           if(param2 != 1)
                           {
                              addr234:
                              (_loc6_ = this.§<q§).alphaMultiplier = param2;
                              §§goto(addr241);
                           }
                           addr241:
                           if((_loc7_ = param1.clippedBitmapData) == null)
                           {
                              if(_loc9_ || param2)
                              {
                                 this.§ 7§.setPixel(0,0,param1.color);
                                 if(_loc9_ || param1)
                                 {
                                    _loc7_ = this.§ 7§;
                                    if(!(_loc8_ && param2))
                                    {
                                       this.§[1§.a *= param1.§1!%§;
                                       loop5:
                                       while(true)
                                       {
                                          this.§[1§.b *= param1.§1!%§;
                                          loop6:
                                          while(true)
                                          {
                                             addr302:
                                             while(true)
                                             {
                                                this.§[1§.c *= param1.§>L§;
                                                while(_loc9_)
                                                {
                                                   this.§[1§.d *= param1.§>L§;
                                                   if(_loc9_)
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                    while(false)
                                    {
                                       §§goto(addr302);
                                    }
                                 }
                              }
                              §§goto(addr357);
                           }
                           this.§5A§.draw(_loc7_,this.§[1§,_loc6_,null,null,param1.highQuality);
                           §§goto(addr357);
                        }
                        §§goto(addr180);
                     }
                     continue loop0;
                  }
               }
            }
            addr357:
            return;
         }
         §§goto(addr124);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(this.§5A§)
         {
            §§push(this.§5A§.width == this.§%!F§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               §§push(!§§pop());
               addr173:
               while(true)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     while(true)
                     {
                        §§push(this.§5A§.height != this.§2U§);
                        addr158:
                        while(true)
                        {
                           this.§5A§.dispose();
                           this.§5A§ = null;
                           if(!_loc4_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     addr175:
                  }
                  addr156:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§5A§.fillRect(this.§5A§.rect,4278190080 | param2);
                        continue loop0;
                     }
                     §§goto(addr158);
                  }
               }
            }
            addr171:
         }
         while(true)
         {
            §§push(this.§5A§ == null);
            if(_loc4_ || param1)
            {
               §§push(§§pop());
               loop6:
               while(true)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  §§pop();
                  loop7:
                  while(true)
                  {
                     §§push(this.§%!F§);
                     loop8:
                     while(true)
                     {
                        §§push(0);
                        addr63:
                        while(true)
                        {
                           §§push(§§pop() > §§pop());
                           if(!(_loc5_ && this))
                           {
                              continue loop6;
                           }
                           addr98:
                           while(true)
                           {
                              §§pop();
                              addr99:
                              addr21:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop8;
                                 }
                                 continue loop7;
                              }
                              if(this.§5A§)
                              {
                                 if(_loc4_)
                                 {
                                    this.§5A§.lock();
                                 }
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
            else
            {
               §§goto(addr171);
            }
            §§goto(addr173);
         }
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§5A§)
            {
               if(_loc2_ || param1)
               {
                  this.§5A§.unlock();
               }
            }
         }
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§%!F§ = param1;
            while(true)
            {
               this.§2U§ = param2;
               while(_loc5_ || param3)
               {
                  this.§?i§ = param3;
                  while(!(_loc6_ && this))
                  {
                     this.§#f§ = param4;
                     if(_loc6_)
                     {
                        continue;
                     }
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
      }
   }
}
