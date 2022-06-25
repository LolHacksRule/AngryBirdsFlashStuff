package §catch§
{
   import §,G§.§"p§;
   import §,_§.§-!!§;
   import §7!=§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class §+7§ extends §'d§
   {
       
      
      private var §6#§:BitmapData;
      
      private var §,J§:int = 0;
      
      private var §%W§:int = 0;
      
      private var §@E§:Number = 1.0;
      
      private var §0&§:Number = 1.0;
      
      private var §2x§:BitmapData;
      
      private var §`!H§:Vector.<Number>;
      
      private var §3]§:Matrix;
      
      private var §+o§:ColorTransform;
      
      public function §+7§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§`!H§ = new Vector.<Number>(16);
            if(!(_loc2_ && this))
            {
               this.§3]§ = new Matrix();
               if(!(_loc2_ && _loc2_))
               {
                  this.§+o§ = new ColorTransform();
                  if(_loc2_ && _loc2_)
                  {
                  }
                  addr88:
                  this.§2x§ = new BitmapData(1,1,false);
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
         return this.§6#§;
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
               if(this.§2x§)
               {
                  if(_loc1_ || _loc2_)
                  {
                     this.§2x§.dispose();
                     if(!_loc1_)
                     {
                     }
                     §§goto(addr55);
                  }
                  this.§2x§ = null;
               }
            }
            addr55:
            return;
         }
         §§goto(addr37);
      }
      
      override public function batchQuad(param1:§-!!§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:ColorTransform = null;
         var _loc7_:BitmapData = null;
         if(_loc9_ || param3)
         {
            if(this.§6#§)
            {
               if(_loc9_)
               {
                  addr38:
                  §`I§.copyRawDataTo(this.§`!H§,0);
                  this.§3]§.setTo(this.§`!H§[0],this.§`!H§[1],this.§`!H§[4],this.§`!H§[5],this.§`!H§[12],this.§`!H§[13]);
               }
               this.§3]§.scale(this.§@E§,this.§0&§);
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
                           (_loc6_ = this.§+o§).redMultiplier = §"p§.§9V§(_loc5_) / 255;
                           if(!(_loc8_ && this))
                           {
                              _loc6_.greenMultiplier = §"p§.§5J§(_loc5_) / 255;
                              if(_loc9_ || param2)
                              {
                              }
                              §§goto(addr199);
                           }
                           _loc6_.blueMultiplier = §"p§.§@R§(_loc5_) / 255;
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
                        (_loc6_ = this.§+o§).alphaMultiplier = param2;
                     }
                     if((_loc7_ = param1.clippedBitmapData) == null)
                     {
                        if(_loc9_)
                        {
                           this.§2x§.setPixel(0,0,param1.color);
                           if(!_loc9_)
                           {
                           }
                           §§goto(addr301);
                        }
                        _loc7_ = this.§2x§;
                        if(!_loc8_)
                        {
                           this.§3]§.a *= param1.initialWidth;
                           if(_loc9_)
                           {
                              this.§3]§.b *= param1.initialWidth;
                              if(_loc9_ || this)
                              {
                                 this.§3]§.c *= param1.initialHeight;
                                 if(_loc8_)
                                 {
                                 }
                                 §§goto(addr290);
                              }
                              this.§3]§.d *= param1.initialHeight;
                           }
                        }
                     }
                     addr290:
                     this.§6#§.draw(_loc7_,this.§3]§,_loc6_,null,null,param1.highQuality);
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
            if(this.§6#§)
            {
               §§push(this.§6#§.width != this.§,J§);
               if(_loc4_ || this)
               {
                  §§push(§§pop());
                  if(!(_loc5_ && param1))
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        addr51:
                        §§push(this.§6#§.height != this.§%W§);
                        if(!(_loc5_ && this))
                        {
                           addr59:
                           if(§§pop())
                           {
                              if(!(_loc5_ && param3))
                              {
                                 this.§6#§.dispose();
                                 if(!(_loc5_ && param1))
                                 {
                                    this.§6#§ = null;
                                    if(_loc5_ && param3)
                                    {
                                    }
                                    addr160:
                                    if(this.§%W§ > 0)
                                    {
                                       this.§6#§ = new BitmapData(this.§,J§,this.§%W§,true,4278190080 | param2);
                                       if(!_loc5_)
                                       {
                                          addr179:
                                          if(this.§6#§)
                                          {
                                             if(!_loc5_)
                                             {
                                                this.§6#§.lock();
                                             }
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr179);
                                 }
                                 addr114:
                                 §§push(this.§6#§ == null);
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
                                             §§push(this.§,J§);
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
                              this.§6#§.fillRect(this.§6#§.rect,4278190080 | param2);
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
            if(this.§6#§)
            {
               if(!(_loc2_ && this))
               {
                  addr44:
                  this.§6#§.unlock();
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
            this.§,J§ = param1;
            if(!_loc6_)
            {
               this.§%W§ = param2;
               if(!(_loc6_ && this))
               {
                  this.§@E§ = param3;
                  if(!_loc5_)
                  {
                  }
                  §§goto(addr51);
               }
               this.§0&§ = param4;
            }
         }
         addr51:
      }
   }
}
