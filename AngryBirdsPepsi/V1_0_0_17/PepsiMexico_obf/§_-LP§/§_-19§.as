package §_-LP§
{
   import §_-4g§.Texture;
   import §_-4g§.§_-Jq§;
   import §_-Cm§.§_-T5§;
   import §_-HT§.§_-8c§;
   import §_-gY§.§_-K6§;
   import §_-gY§.§_-Vu§;
   import §_-ia§.§_-dF§;
   import flash.display.Bitmap;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-19§ extends §_-rC§
   {
       
      
      private var §_-cX§:Texture;
      
      private var §do §:String;
      
      private var §_-gj§:Boolean;
      
      private var §_-JU§:Boolean;
      
      private var §_-hf§:§_-dF§;
      
      private var §_-mp§:String;
      
      public function §_-19§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:Rectangle = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         if(_loc7_ || param1)
         {
            if(!param1)
            {
               throw new ArgumentError("Texture cannot be null");
            }
            if(!(_loc8_ && this))
            {
               addr36:
               if(_loc4_ = param1.frame)
               {
                  if(!_loc8_)
                  {
                     addr51:
                     §§push(Number(Number(_loc4_.width)));
                     if(!(_loc8_ && this))
                     {
                        _loc5_ = §§pop();
                        if(_loc7_ || this)
                        {
                           if(_loc4_)
                           {
                              addr80:
                              §§push(Number(Number(_loc4_.height)));
                           }
                           else
                           {
                              §§push(param1.height);
                              if(!_loc8_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc7_)
                                 {
                                    §§goto(addr80);
                                 }
                              }
                           }
                           _loc6_ = §§pop();
                           super(_loc5_,_loc6_);
                           §_-bk§.premultipliedAlpha = param1.premultipliedAlpha;
                           §_-bk§.setTexCoords(0,0,0);
                           §_-bk§.setTexCoords(1,1,0);
                           if(_loc7_)
                           {
                              §_-bk§.setTexCoords(2,0,1);
                              if(_loc7_ || param1)
                              {
                                 §_-bk§.setTexCoords(3,1,1);
                                 if(_loc7_ || param2)
                                 {
                                    this.§_-cX§ = param1;
                                    addr136:
                                    if(!param3)
                                    {
                                       §§push(this);
                                       if(_loc7_)
                                       {
                                          if(§_-Vu§.§_-wB§)
                                          {
                                             addr144:
                                             §§push(§_-Jq§.NONE);
                                             if(!(_loc8_ && param1))
                                             {
                                                §§push(§§pop());
                                                if(_loc8_ && param1)
                                                {
                                                   addr171:
                                                   §§push(§§pop());
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(§_-Jq§.§_-mg§);
                                             if(!(_loc8_ && param1))
                                             {
                                                §§goto(addr171);
                                             }
                                          }
                                          §§pop().§do § = §§pop();
                                          addr199:
                                          this.§_-gj§ = param2;
                                          this.§_-JU§ = this.§_-gj§;
                                          if(!(_loc8_ && param2))
                                          {
                                             this.§_-mp§ = §_-R4§(this.§_-cX§.mipMapping,this.§_-cX§.repeat,this.§do §,this.§_-gj§);
                                             addr239:
                                             return;
                                             addr234:
                                          }
                                          §§goto(addr234);
                                          addr173:
                                       }
                                       §§goto(addr144);
                                    }
                                    else
                                    {
                                       §§push(this);
                                       if(_loc7_)
                                       {
                                          if(§_-Vu§.§_-wB§)
                                          {
                                             addr180:
                                             §§push(§_-Jq§.§_-mg§);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc7_)
                                                {
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(§_-Jq§.§_-3q§);
                                             if(_loc7_ || param2)
                                             {
                                                §§push(§§pop());
                                             }
                                          }
                                          §§pop().§do § = §§pop();
                                          §§goto(addr199);
                                       }
                                       §§goto(addr180);
                                    }
                                 }
                                 §§goto(addr234);
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr234);
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr199);
               }
               else
               {
                  §§push(Number(param1.width));
               }
               §§goto(addr51);
            }
            §§goto(addr239);
         }
         §§goto(addr36);
      }
      
      public static function §_-aY§(param1:Bitmap) : §_-19§
      {
         return new §_-19§(Texture.§_-aY§(param1));
      }
      
      public static function §_-Dk§(param1:§_-Vu§) : void
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:§_-T5§ = null;
         var _loc13_:String = null;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = false;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         var _loc2_:* = "m44 op, va0, vc0  \n" + "mov v0, va1       \n";
         §§push("m44 op, va0, vc0  \n" + "mov v0, va1       \n");
         if(!_loc26_)
         {
            §§push(§§pop() + "mov v1, va2       \n");
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = "tex ft1, v0, fs1 <???> \n" + "mov oc, ft1 \n";
         §§push("tex ft1, v0, fs1 <???> \n" + "mul ft2, ft1, v1       \n");
         if(_loc27_ || param1)
         {
            §§push(§§pop() + "mul oc, ft2, fc0       \n");
         }
         var _loc5_:* = §§pop();
         var _loc6_:Object = {
            "0":_loc2_,
            "1":_loc3_
         };
         var _loc7_:Object = {
            "0":_loc4_,
            "1":_loc5_
         };
         var _loc8_:§_-T5§ = new §_-T5§();
         var _loc9_:Array = [§_-Jq§.NONE,§_-Jq§.§_-mg§,§_-Jq§.§_-3q§];
         for each(_loc10_ in [false,true])
         {
            _loc11_ = "0";
            if(_loc27_ || param1)
            {
               if(_loc10_)
               {
                  addr116:
                  _loc11_ = "1";
               }
               (_loc12_ = new §_-T5§()).§_-xm§(Context3DProgramType.VERTEX,_loc6_[_loc11_]);
               if(!(_loc27_ || _loc3_))
               {
                  continue;
               }
               _loc13_ = _loc7_[_loc11_];
               if(_loc26_ && param1)
               {
                  continue;
               }
               var _loc20_:int = 0;
               if(!_loc26_)
               {
                  var _loc21_:* = [true,false];
                  if(_loc27_ || _loc3_)
                  {
                     for each(_loc14_ in _loc21_)
                     {
                        if(!(_loc27_ || param1))
                        {
                           continue;
                        }
                     }
                     addr343:
                     continue;
                     addr340:
                  }
                  while(true)
                  {
                     var _loc22_:int = 0;
                     if(_loc27_)
                     {
                        var _loc23_:* = [true,false];
                        if(_loc26_)
                        {
                        }
                        for each(_loc15_ in _loc23_)
                        {
                           if(_loc26_ && §_-19§)
                           {
                              continue;
                           }
                           var _loc24_:int = 0;
                           if(_loc27_ || _loc2_)
                           {
                              var _loc25_:* = _loc9_;
                              if(!_loc26_)
                              {
                                 for each(_loc16_ in _loc25_)
                                 {
                                    param1.§_-fm§(§_-R4§(_loc15_,_loc14_,_loc16_,_loc10_),_loc12_.§_-Ob§,_loc8_.§_-Ob§);
                                 }
                                 addr328:
                                 continue;
                              }
                              while(true)
                              {
                                 §§push("2d");
                                 if(_loc27_)
                                 {
                                    _loc17_ = null;
                                    if(!_loc26_)
                                    {
                                       §§push(_loc16_);
                                       if(_loc27_)
                                       {
                                          §§push(§_-Jq§.NONE);
                                          if(_loc27_ || param1)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                _loc17_.push("nearest",!!_loc15_ ? "mipnearest" : "mipnone");
                                                addr304:
                                                _loc8_.§_-xm§(Context3DProgramType.FRAGMENT,_loc13_.replace("???",_loc17_.join()));
                                                addr259:
                                             }
                                             else
                                             {
                                                addr273:
                                                if(_loc16_ == §_-Jq§.§_-mg§)
                                                {
                                                   _loc17_.push("linear",!!_loc15_ ? "mipnearest" : "mipnone");
                                                   if(!_loc27_)
                                                   {
                                                   }
                                                   §§goto(addr304);
                                                }
                                                else
                                                {
                                                   _loc17_.push("linear",!!_loc15_ ? "miplinear" : "mipnone");
                                                   if(_loc27_ || param1)
                                                   {
                                                      §§goto(addr304);
                                                   }
                                                }
                                             }
                                             §§goto(addr313);
                                          }
                                       }
                                       §§goto(addr273);
                                    }
                                    §§goto(addr259);
                                 }
                                 §§goto(addr236);
                              }
                           }
                           §§goto(addr328);
                        }
                     }
                     §§goto(addr340);
                  }
               }
               §§goto(addr343);
            }
            §§goto(addr116);
         }
      }
      
      public static function §_-R4§(param1:Boolean = true, param2:Boolean = false, param3:String = "bilinear", param4:Boolean = false) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = "image|";
         if(!_loc7_)
         {
            §§push(param1);
            if(_loc6_ || param2)
            {
               if(!§§pop())
               {
                  if(!(_loc7_ && param2))
                  {
                     §§push(_loc5_);
                     if(!_loc7_)
                     {
                        §§push(§§pop() + "N");
                        if(_loc6_ || param1)
                        {
                           _loc5_ = §§pop();
                           if(!_loc7_)
                           {
                              addr48:
                              §§push(param2);
                              if(!(_loc7_ && param1))
                              {
                                 addr56:
                                 if(§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       addr59:
                                       §§push(_loc5_);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() + "R");
                                          if(_loc6_ || param3)
                                          {
                                             _loc5_ = §§pop();
                                             if(!(_loc7_ && param1))
                                             {
                                                addr86:
                                                §§push(param3);
                                                if(_loc6_ || param2)
                                                {
                                                   if(§§pop() != §_-Jq§.§_-mg§)
                                                   {
                                                      if(_loc6_ || param3)
                                                      {
                                                         addr104:
                                                         §§push(_loc5_);
                                                         if(_loc6_ || param1)
                                                         {
                                                            addr117:
                                                            _loc5_ = §§pop() + param3.charAt(0);
                                                            if(_loc6_ || param3)
                                                            {
                                                               addr125:
                                                               if(param4)
                                                               {
                                                                  addr127:
                                                                  §§push(_loc5_);
                                                                  if(!(_loc7_ && param3))
                                                                  {
                                                                     addr144:
                                                                     _loc5_ = §§pop() + "C";
                                                                     addr142:
                                                                  }
                                                                  §§goto(addr146);
                                                               }
                                                            }
                                                            addr146:
                                                            return §§pop();
                                                            §§push(_loc5_);
                                                         }
                                                         §§goto(addr142);
                                                      }
                                                      §§goto(addr127);
                                                   }
                                                   §§goto(addr125);
                                                }
                                                §§goto(addr117);
                                             }
                                             §§goto(addr125);
                                          }
                                          §§goto(addr144);
                                       }
                                    }
                                    §§goto(addr127);
                                 }
                                 §§goto(addr86);
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr104);
               }
               §§goto(addr48);
            }
            §§goto(addr56);
         }
         §§goto(addr59);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.dispose();
         }
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §_-bk§.setTexCoords(param1,param2.x,param2.y);
            if(_loc3_ || _loc3_)
            {
               addr43:
               §_-ay§ = true;
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function getTexCoords(param1:int) : Point
      {
         return §_-bk§.getTexCoords(param1);
      }
      
      override public function get vertexData() : §_-dF§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§_-hf§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     addr29:
                     this.§_-hf§ = this.§_-cX§.adjustVertexData(§_-bk§);
                  }
               }
               §§push(this.§_-hf§);
            }
            return §§pop();
         }
         §§goto(addr29);
      }
      
      public function get texture() : Texture
      {
         return this.§_-cX§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_ || _loc2_)
         {
            if(param1 == null)
            {
               if(_loc5_)
               {
                  §§goto(addr32);
               }
               else
               {
                  §§goto(addr49);
               }
            }
            else if(param1 != this.§_-cX§)
            {
               if(!_loc6_)
               {
                  addr49:
                  this.§_-cX§ = param1;
                  if(!(_loc6_ && _loc3_))
                  {
                     addr66:
                     _loc2_ = param1.frame;
                     if(!_loc6_)
                     {
                        _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(param1.width);
                        if(!_loc5_)
                        {
                        }
                        §§goto(addr126);
                     }
                     if(_loc2_)
                     {
                        if(!_loc6_)
                        {
                           addr106:
                           _loc4_ = Number(_loc2_.height);
                           §_-Dl§(_loc3_,_loc4_);
                           §_-bk§.premultipliedAlpha = this.§_-cX§.premultipliedAlpha;
                           addr105:
                        }
                        §_-ay§ = true;
                        §§goto(addr126);
                     }
                     else
                     {
                        §§push(param1.height);
                        if(!_loc6_)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc6_ && _loc3_))
                           {
                              §§goto(addr105);
                           }
                        }
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr126);
               }
               §§goto(addr66);
            }
            addr126:
            this.§_-hf§ = null;
            return;
         }
         addr32:
         throw new ArgumentError("Texture cannot be null");
      }
      
      public function get smoothing() : String
      {
         return this.§do §;
      }
      
      public function set smoothing(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(§_-Jq§.§_-Bk§(param1))
            {
               if(!_loc2_)
               {
                  addr27:
                  if(param1 == this.§do §)
                  {
                     throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
                  }
                  if(_loc3_)
                  {
                     this.§do § = param1;
                     if(_loc3_ || param1)
                     {
                        this.§_-mp§ = §_-R4§(this.§_-cX§.mipMapping,this.§_-cX§.repeat,this.§do §,this.§_-gj§);
                        if(_loc2_)
                        {
                        }
                        §§goto(addr81);
                     }
                  }
               }
            }
            addr81:
            return;
         }
         §§goto(addr27);
      }
      
      public function §_-dy§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if((param1 & 16777215) == 16777215)
         {
            if(!_loc3_)
            {
               this.§_-gj§ = this.§_-JU§;
               this.§_-mp§ = §_-R4§(this.§_-cX§.mipMapping,this.§_-cX§.repeat,this.§do §,this.§_-gj§);
               addr30:
               if(!_loc3_)
               {
                  addr53:
                  §_-bk§.setUniformColor(param1);
                  if(!(_loc3_ && param1))
                  {
                     this.§_-hf§ = null;
                  }
                  §§goto(addr76);
               }
               §_-ay§ = true;
            }
            addr76:
            return;
         }
         this.§_-gj§ = true;
         if(!_loc3_)
         {
            §§goto(addr30);
         }
         §§goto(addr53);
      }
      
      public function get §_-Rg§() : Boolean
      {
         return this.§_-gj§;
      }
      
      override public function render(param1:§_-K6§, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && _loc3_))
         {
            §§push(param2);
            if(!_loc6_)
            {
               §§push(§§pop() * this.alpha);
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            param2 = §§pop();
         }
         var _loc3_:Context3D = §_-Vu§.§_-ez§;
         if(_loc7_)
         {
            if(_loc3_ == null)
            {
               if(!(_loc6_ && this))
               {
                  §§goto(addr47);
               }
            }
            §_-RX§();
            §§push(this.§_-cX§.premultipliedAlpha);
            if(_loc7_)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc5_:Vector.<Number> = !!(_loc4_ = §§pop()) ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
            param1.§_-Nw§(_loc4_);
            param1.setProgram(§_-Vu§.§_-dq§.§_-qm§(this.§_-mp§));
            if(_loc7_)
            {
               param1.setTextureAt(§_-K6§.§_-JS§,this.§_-cX§.base);
               if(!_loc6_)
               {
                  _loc3_.setVertexBufferAt(0,§_-iD§,§_-dF§.§_-TJ§,Context3DVertexBufferFormat.FLOAT_3);
                  if(!_loc6_)
                  {
                     _loc3_.setVertexBufferAt(1,§_-VU§,§_-dF§.§_-j4§,Context3DVertexBufferFormat.FLOAT_2);
                     §§push(this.§_-gj§);
                     if(_loc7_)
                     {
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              _loc3_.setVertexBufferAt(2,§_-VU§,§_-dF§.§_-RM§,Context3DVertexBufferFormat.FLOAT_4);
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§goto(addr185);
                              }
                           }
                           §§goto(addr202);
                        }
                        addr185:
                        _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-wW§,true);
                        if(_loc7_)
                        {
                           addr195:
                           _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                           addr202:
                           _loc3_.drawTriangles(§_-l8§,§_-tv§ * 6,2);
                           addr209:
                           _loc3_.setVertexBufferAt(0,null);
                           if(_loc6_ && this)
                           {
                           }
                           §§goto(addr238);
                        }
                        _loc3_.setVertexBufferAt(1,null);
                        if(_loc7_ || param2)
                        {
                           §§goto(addr238);
                        }
                        addr238:
                        §§goto(addr240);
                     }
                     addr240:
                     if(this.§_-gj§)
                     {
                        _loc3_.setVertexBufferAt(2,null);
                     }
                     return;
                  }
                  §§goto(addr209);
               }
            }
            §§goto(addr195);
         }
         addr47:
         throw new §_-8c§();
      }
   }
}
