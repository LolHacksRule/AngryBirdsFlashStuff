package §&p§
{
   import §8f§.§<A§;
   import §?^§.§?C§;
   import each.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §,l§ extends §`G§
   {
       
      
      private var §<P§:BitmapData;
      
      private var §^9§:int = 0;
      
      private var §@!0§:int = 0;
      
      private var §[C§:Number = 1.0;
      
      private var §+]§:Number = 1.0;
      
      private var §;!7§:BitmapData;
      
      private var §0M§:Vector.<Number>;
      
      private var §-I§:Matrix;
      
      private var §%I§:ColorTransform;
      
      public function §,l§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§0M§ = new Vector.<Number>(16);
            if(!(_loc2_ && this))
            {
               this.§-I§ = new Matrix();
               if(!(_loc2_ && _loc2_))
               {
                  this.§%I§ = new ColorTransform();
                  if(_loc2_ && _loc2_)
                  {
                  }
                  addr88:
                  this.§;!7§ = new BitmapData(1,1,false);
                  §§goto(addr95);
               }
               super();
               if(_loc1_ || this)
               {
               }
               addr95:
               return;
            }
         }
         §§goto(addr88);
      }
      
      override public function get canvas() : BitmapData
      {
         return this.§<P§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.dispose();
            if(_loc1_)
            {
               addr37:
               if(this.§;!7§)
               {
                  if(_loc1_ || _loc2_)
                  {
                     this.§;!7§.dispose();
                     if(!_loc1_)
                     {
                     }
                     §§goto(addr55);
                  }
                  this.§;!7§ = null;
               }
            }
            addr55:
            return;
         }
         §§goto(addr37);
      }
      
      override public function batchQuad(param1:§?C§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(_loc9_ || param3)
         {
            if(this.§<P§)
            {
               if(_loc9_)
               {
                  addr38:
                  §%G§.copyRawDataTo(this.§0M§,0);
                  this.§-I§.setTo(this.§0M§[0],this.§0M§[1],this.§0M§[4],this.§0M§[5],this.§0M§[12],this.§0M§[13]);
               }
               this.§-I§.scale(this.§[C§,this.§+]§);
               if(_loc9_)
               {
                  §§push(param1.color);
                  if(_loc9_)
                  {
                     §§push(uint(§§pop()));
                  }
                  _loc5_ = §§pop();
               }
               §§push(param2);
               if(!(_loc8_ && this))
               {
                  §§push(§§pop() * param1.alpha);
                  if(_loc9_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               param2 = §§pop();
               _loc6_ = null;
               if(_loc9_ || this)
               {
                  §§push(Boolean(param3));
                  if(!(_loc8_ && param2))
                  {
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           addr123:
                           §§pop();
                           if(_loc9_)
                           {
                              §§push(_loc5_ == 16777215);
                              if(!_loc9_)
                              {
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr202);
                        }
                     }
                     addr132:
                     if(!§§pop())
                     {
                        if(!(_loc8_ && param2))
                        {
                           addr150:
                           (_loc6_ = this.§%I§).redMultiplier = §<A§.§2t§(_loc5_) / 255;
                           if(!(_loc8_ && this))
                           {
                              _loc6_.greenMultiplier = §<A§.§;c§(_loc5_) / 255;
                              if(_loc9_ || param2)
                              {
                              }
                              §§goto(addr199);
                           }
                           _loc6_.blueMultiplier = §<A§.§^q§(_loc5_) / 255;
                           if(_loc9_ || this)
                           {
                              _loc6_.alphaMultiplier = 1;
                           }
                        }
                        §§goto(addr202);
                     }
                     addr199:
                     if(param2 != 1)
                     {
                        addr202:
                        (_loc6_ = this.§%I§).alphaMultiplier = param2;
                     }
                     if((_loc7_ = param1.clippedBitmapData) == null)
                     {
                        if(_loc9_)
                        {
                           this.§;!7§.setPixel(0,0,param1.color);
                           if(!_loc9_)
                           {
                           }
                           §§goto(addr301);
                        }
                        _loc7_ = this.§;!7§;
                        if(!_loc8_)
                        {
                           this.§-I§.a *= param1.initialWidth;
                           if(_loc9_)
                           {
                              this.§-I§.b *= param1.initialWidth;
                              if(_loc9_ || this)
                              {
                                 this.§-I§.c *= param1.initialHeight;
                                 if(_loc8_)
                                 {
                                 }
                                 §§goto(addr290);
                              }
                              this.§-I§.d *= param1.initialHeight;
                           }
                        }
                     }
                     addr290:
                     this.§<P§.draw(_loc7_,this.§-I§,_loc6_,null,null,param1.highQuality);
                     §§goto(addr301);
                  }
                  §§goto(addr123);
               }
               §§goto(addr150);
            }
            addr301:
            return;
         }
         §§goto(addr38);
      }
      
      override public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(this.§<P§)
            {
               §§push(this.§<P§.width != this.§^9§);
               if(_loc4_ || this)
               {
                  §§push(§§pop());
                  if(!(_loc5_ && param1))
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        addr51:
                        §§push(this.§<P§.height != this.§@!0§);
                        if(!(_loc5_ && this))
                        {
                           addr59:
                           if(§§pop())
                           {
                              if(!(_loc5_ && param3))
                              {
                                 this.§<P§.dispose();
                                 if(!(_loc5_ && param1))
                                 {
                                    this.§<P§ = null;
                                    if(_loc5_ && param3)
                                    {
                                    }
                                    addr160:
                                    if(this.§@!0§ > 0)
                                    {
                                       this.§<P§ = new BitmapData(this.§^9§,this.§@!0§,true,4278190080 | param2);
                                       if(!_loc5_)
                                       {
                                          addr179:
                                          if(this.§<P§)
                                          {
                                             if(!_loc5_)
                                             {
                                                this.§<P§.lock();
                                             }
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr179);
                                 }
                                 addr114:
                                 §§push(this.§<P§ == null);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          addr124:
                                          §§pop();
                                          if(!(_loc5_ && param2))
                                          {
                                             addr132:
                                             §§push(this.§^9§);
                                             if(!(_loc5_ && param2))
                                             {
                                                §§push(0);
                                                if(!_loc5_)
                                                {
                                                   addr145:
                                                   §§push(§§pop() > §§pop());
                                                   if(§§pop() > §§pop())
                                                   {
                                                      addr147:
                                                      §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr160);
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr160);
                                       }
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr114);
                           }
                           else
                           {
                              this.§<P§.fillRect(this.§<P§.rect,4278190080 | param2);
                              if(_loc4_ || param2)
                              {
                                 §§goto(addr114);
                              }
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr145);
               }
               §§goto(addr51);
            }
            §§goto(addr114);
         }
         §§goto(addr160);
      }
      
      override public function finishRendering(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§<P§)
            {
               if(!(_loc2_ && this))
               {
                  addr44:
                  this.§<P§.unlock();
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      override public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§^9§ = param1;
            if(!_loc6_)
            {
               this.§@!0§ = param2;
               if(!(_loc6_ && this))
               {
                  this.§[C§ = param3;
                  if(!_loc5_)
                  {
                  }
                  §§goto(addr51);
               }
               this.§+]§ = param4;
            }
         }
         addr51:
      }
   }
}
