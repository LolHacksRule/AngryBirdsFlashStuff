package §_-LP§
{
   import §_-Cm§.§_-T5§;
   import §_-HT§.§_-8c§;
   import §_-gY§.§_-K6§;
   import §_-gY§.§_-Vu§;
   import §_-ia§.§_-dF§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §_-rC§ extends DisplayObject
   {
      
      public static const §_-pD§:int = 10;
      
      public static const §_-Pp§:int = 8 * 1024;
      
      public static const §_-9W§:String = "quad";
      
      private static var §_-ri§:Vector.<VertexBuffer3D>;
      
      private static var §_-lO§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      protected static var §_-l8§:IndexBuffer3D;
      
      private static var §_-ii§:int = -1;
      
      private static var §_-oo§:Vector.<int>;
      
      private static var §_-XO§:Boolean;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-pD§ = 10;
         }
         if(_loc1_ || §_-rC§)
         {
            §_-ri§ = new Vector.<VertexBuffer3D>();
         }
      }
      
      protected var §_-bk§:§_-dF§;
      
      private var §_-Wj§:int = -1;
      
      protected var §_-tv§:int = -1;
      
      protected var §_-ay§:Boolean = true;
      
      private var §_-1T§:int = -1;
      
      protected var §_-VU§:VertexBuffer3D;
      
      protected var §_-iD§:VertexBuffer3D;
      
      public function §_-rC§(param1:Number, param2:Number, param3:uint = 16777215)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         super();
         §_-LK§();
         if(_loc5_ || param1)
         {
            this.§_-bk§ = new §_-dF§(4,true);
         }
         this.§_-Dl§(param1,param2);
         this.§_-bk§.setUniformColor(param3);
         if(!(_loc4_ && param1))
         {
            if(§_-oo§.length == 0)
            {
               throw new Error("Trying to create more than " + §_-Pp§ + " Quads/Images at the same time");
            }
            this.§_-Wj§ = §_-oo§.pop();
            if(!(_loc4_ && this))
            {
               this.§_-tv§ = this.§_-Wj§ % §_-Pp§;
               if(_loc5_)
               {
                  this.§_-C3§();
               }
            }
         }
      }
      
      public static function §_-58§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:VertexBuffer3D = null;
         if(!_loc5_)
         {
            if(§_-l8§)
            {
               if(_loc4_)
               {
                  addr22:
                  §_-l8§.dispose();
                  if(_loc4_)
                  {
                     §_-l8§ = null;
                     if(_loc4_)
                     {
                        §§goto(addr31);
                     }
                  }
                  §§goto(addr31);
               }
               §§goto(addr33);
            }
            addr31:
            if(§_-ri§)
            {
               addr33:
               var _loc2_:int = 0;
               var _loc3_:* = §_-ri§;
               while(true)
               {
                  §§push(§§hasnext(_loc3_,_loc2_));
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc2_,_loc3_);
                        if(_loc4_)
                        {
                           _loc1_.dispose();
                        }
                        continue;
                     }
                     if(_loc4_ || _loc3_)
                     {
                        if(!_loc5_)
                        {
                           if(!(_loc5_ && _loc1_))
                           {
                              §_-ri§ = null;
                              §§goto(addr81);
                           }
                           §§goto(addr85);
                        }
                     }
                     §§goto(addr89);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc1_ = §§nextvalue(_loc2_,_loc3_);
                     if(!(_loc5_ && §_-rC§))
                     {
                        _loc1_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr89);
               }
            }
            addr81:
            if(§_-lO§)
            {
               if(!_loc5_)
               {
                  addr85:
                  _loc2_ = 0;
                  if(_loc4_)
                  {
                     addr89:
                     _loc3_ = §_-lO§;
                     while(true)
                     {
                        §§push(§§hasnext(_loc3_,_loc2_));
                        break loop0;
                     }
                     addr108:
                  }
                  §_-lO§ = null;
                  §§goto(addr115);
               }
               §§goto(addr132);
            }
            addr115:
            §_-oo§ = null;
            if(_loc4_ || _loc3_)
            {
               addr132:
               §_-XO§ = false;
            }
            return;
         }
         §§goto(addr22);
      }
      
      private static function §_-LK§(param1:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:int = 0;
         var _loc8_:* = 0;
         if(!_loc10_)
         {
            §§push(§_-XO§);
            if(!(_loc10_ && param1))
            {
               §§push(Boolean(§§pop()));
               if(_loc9_)
               {
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        addr34:
                        §§pop();
                        §§goto(addr54);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc9_ || §_-rC§)
                  {
                     addr54:
                     if(!(_loc10_ && §_-rC§))
                     {
                        §§push(param1);
                        if(!_loc10_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                     }
                     return;
                  }
               }
               §§push(§_-Pp§);
               if(!_loc10_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               var _loc3_:Vector.<Number> = new Vector.<Number>();
               var _loc4_:Vector.<uint> = new Vector.<uint>();
               if(!(_loc10_ && §_-rC§))
               {
                  §§push(param1);
                  if(!(_loc10_ && param1))
                  {
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           §_-oo§ = new Vector.<int>();
                           if(_loc9_)
                           {
                              addr98:
                              if(param1)
                              {
                                 if(!(_loc10_ && §_-rC§))
                                 {
                                    _loc7_ = 0;
                                    addr109:
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       if(_loc9_)
                                       {
                                          if(§§pop() < _loc2_ * §_-pD§)
                                          {
                                             §_-oo§.push(_loc7_);
                                             if(_loc9_)
                                             {
                                                _loc7_++;
                                                if(_loc10_ && §_-rC§)
                                                {
                                                   addr131:
                                                   §§push(0);
                                                }
                                                else
                                                {
                                                   addr131:
                                                }
                                                continue;
                                                break;
                                             }
                                             continue;
                                          }
                                          §§goto(addr131);
                                       }
                                       break;
                                    }
                                    var _loc5_:* = §§pop();
                                    if(_loc9_ || §_-rC§)
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(_loc9_)
                                          {
                                             loop2:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                while(§§pop() < §§pop())
                                                {
                                                   _loc4_.push(_loc5_ * 4,_loc5_ * 4 + 1,_loc5_ * 4 + 2,_loc5_ * 4 + 1,_loc5_ * 4 + 3,_loc5_ * 4 + 2);
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      §§push(0);
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         _loc8_ = §§pop();
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc10_)
                                                            {
                                                               break;
                                                            }
                                                            addr200:
                                                            while(true)
                                                            {
                                                               _loc8_++;
                                                               continue loop4;
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§_-dF§.§_-YF§);
                                                         if(!_loc9_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop() >= §§pop() * 4)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               _loc5_++;
                                                            }
                                                            continue loop1;
                                                         }
                                                         _loc3_.push(0);
                                                         §§goto(addr200);
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr200);
                                                }
                                                break loop1;
                                             }
                                          }
                                          break;
                                       }
                                       var _loc6_:* = §§pop();
                                       while(true)
                                       {
                                          if(_loc6_ >= §_-pD§)
                                          {
                                             if(_loc9_)
                                             {
                                                break;
                                             }
                                             §_-l8§.uploadFromVector(_loc4_,0,_loc2_ * 6);
                                             addr286:
                                          }
                                          else
                                          {
                                             §_-ri§[_loc6_] = §_-Vu§.§_-ez§.createVertexBuffer(_loc2_ * 4,§_-dF§.§_-YF§);
                                             if(_loc10_)
                                             {
                                                break;
                                             }
                                             §_-ri§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
                                             if(_loc9_ || _loc3_)
                                             {
                                                continue;
                                             }
                                          }
                                          §_-XO§ = true;
                                          return;
                                       }
                                       §_-l8§ = §_-Vu§.§_-ez§.createIndexBuffer(_loc2_ * 6);
                                       §§goto(addr286);
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr109);
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr109);
                        }
                     }
                  }
               }
               §§goto(addr98);
            }
         }
         §§goto(addr34);
      }
      
      public static function §_-Dk§(param1:§_-Vu§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§_-T5§ = new §_-T5§();
         if(_loc5_ || _loc2_)
         {
            _loc2_.§_-xm§(Context3DProgramType.VERTEX,"m44 op, va0, vc0  \n" + "mov v0, va1       \n");
         }
         var _loc3_:§_-T5§ = new §_-T5§();
         if(!_loc4_)
         {
            _loc3_.§_-xm§(Context3DProgramType.FRAGMENT,"mul ft0, v0, fc0  \n" + "mov oc, ft0       \n");
            if(_loc5_ || §_-rC§)
            {
               addr66:
               param1.§_-fm§(§_-9W§,_loc2_.§_-Ob§,_loc3_.§_-Ob§);
            }
            return;
         }
         §§goto(addr66);
      }
      
      protected function §_-Dl§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(this.§_-bk§);
            if(_loc4_ || this)
            {
               §§push(0);
               if(_loc4_)
               {
                  §§push(0);
                  if(!_loc3_)
                  {
                     §§push(0);
                     if(_loc4_)
                     {
                        §§pop().setPosition(§§pop(),§§pop(),§§pop());
                        if(!(_loc3_ && this))
                        {
                           addr47:
                           §§push(this.§_-bk§);
                           if(!(_loc3_ && param1))
                           {
                              §§push(1);
                              if(_loc4_)
                              {
                                 addr66:
                                 §§push(param1);
                                 if(!(_loc3_ && param1))
                                 {
                                    addr74:
                                    §§push(0);
                                    if(_loc4_)
                                    {
                                       §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                       if(_loc4_)
                                       {
                                          §§push(this.§_-bk§);
                                          if(_loc4_)
                                          {
                                             addr84:
                                             §§push(2);
                                             if(!(_loc3_ && param1))
                                             {
                                                addr92:
                                                §§push(0);
                                                if(_loc4_ || param2)
                                                {
                                                   §§push(param2);
                                                   if(!_loc3_)
                                                   {
                                                      §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                      if(!(_loc3_ && param2))
                                                      {
                                                         addr123:
                                                         this.§_-bk§.setPosition(3,param1,param2);
                                                      }
                                                      return;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr92);
                           }
                        }
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr74);
               }
               §§goto(addr66);
            }
            §§goto(addr84);
         }
         §§goto(addr47);
      }
      
      private function §_-C3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-VU§ = §_-ri§[int(this.§_-Wj§ / §_-Pp§)];
            if(_loc1_)
            {
               this.§_-iD§ = §_-lO§[int(this.§_-Wj§ / §_-Pp§)];
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§_-Wj§ >= 0)
            {
               if(_loc1_)
               {
                  §_-oo§.push(this.§_-Wj§);
                  if(_loc1_)
                  {
                     this.§_-Wj§ = -1;
                     if(_loc1_ || this)
                     {
                        addr56:
                        super.dispose();
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      override public function getBounds(param1:DisplayObject) : Rectangle
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:Vector3D = null;
         var _loc7_:* = 0;
         var _loc8_:Matrix = null;
         var _loc9_:Point = null;
         var _loc10_:Point = null;
         var _loc2_:* = Number(Number.MAX_VALUE);
         §§push(-Number.MAX_VALUE);
         if(_loc12_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = Number(Number.MAX_VALUE);
         §§push(-Number.MAX_VALUE);
         if(!(_loc11_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc12_)
         {
            if(param1 == this)
            {
               if(!_loc11_)
               {
                  addr67:
                  _loc7_ = 0;
               }
               while(_loc7_ < 4)
               {
                  _loc6_ = this.§_-bk§.§_-rO§(_loc7_);
                  if(!(_loc11_ && this))
                  {
                     §§push(Number(Math.min(_loc2_,_loc6_.x)));
                     if(!(_loc11_ && _loc2_))
                     {
                        _loc2_ = §§pop();
                        if(!(_loc11_ && this))
                        {
                           §§push(Number(Math.max(_loc3_,_loc6_.x)));
                           if(_loc12_ || _loc3_)
                           {
                              _loc3_ = §§pop();
                              if(_loc12_ || _loc2_)
                              {
                              }
                              addr158:
                              _loc7_++;
                              continue;
                           }
                           addr143:
                           _loc5_ = §§pop();
                           if(!(_loc12_ || _loc3_))
                           {
                              continue;
                           }
                           §§goto(addr158);
                        }
                        §§push(Number(Math.min(_loc4_,_loc6_.y)));
                        if(_loc12_)
                        {
                           _loc4_ = §§pop();
                           if(!_loc12_)
                           {
                              continue;
                           }
                           §§push(Number(Math.max(_loc5_,_loc6_.y)));
                        }
                     }
                     §§goto(addr143);
                  }
                  §§goto(addr158);
               }
            }
            else
            {
               _loc8_ = §_-OX§(param1);
               _loc9_ = new Point();
               if(_loc12_ || param1)
               {
                  §§push(0);
                  if(!_loc11_)
                  {
                     _loc7_ = §§pop();
                     if(_loc12_)
                     {
                        while(true)
                        {
                           §§push(_loc7_);
                        }
                        addr285:
                     }
                     return new Rectangle(_loc2_,_loc4_,_loc3_ - _loc2_,_loc5_ - _loc4_);
                     addr288:
                  }
                  for(; §§pop() < 4; §§goto(addr285))
                  {
                     _loc6_ = this.§_-bk§.§_-rO§(_loc7_);
                     if(_loc12_)
                     {
                        _loc9_.x = _loc6_.x;
                        if(!(_loc11_ && this))
                        {
                           addr206:
                           _loc9_.y = _loc6_.y;
                        }
                        _loc10_ = _loc8_.transformPoint(_loc9_);
                        if(!(_loc12_ || _loc3_))
                        {
                           continue;
                        }
                        §§push(Number(Math.min(_loc2_,_loc10_.x)));
                        if(_loc12_ || _loc3_)
                        {
                           _loc2_ = §§pop();
                           if(_loc12_ || _loc3_)
                           {
                              §§push(Number(Math.max(_loc3_,_loc10_.x)));
                              if(_loc12_)
                              {
                                 _loc3_ = §§pop();
                                 if(_loc12_ || _loc2_)
                                 {
                                    addr259:
                                    §§push(Number(Math.min(_loc4_,_loc10_.y)));
                                    if(_loc12_ || _loc2_)
                                    {
                                       addr272:
                                       _loc4_ = §§pop();
                                       if(!_loc12_)
                                       {
                                          continue;
                                       }
                                    }
                                    addr281:
                                    _loc5_ = §§pop();
                                    if(_loc12_)
                                    {
                                       _loc7_++;
                                    }
                                    continue;
                                 }
                                 §§push(Number(Math.max(_loc5_,_loc10_.y)));
                              }
                              §§goto(addr281);
                           }
                           §§goto(addr259);
                        }
                        §§goto(addr272);
                     }
                     §§goto(addr206);
                  }
               }
            }
            §§goto(addr288);
         }
         §§goto(addr67);
      }
      
      public function §_-1V§(param1:int) : uint
      {
         return this.§_-bk§.getColor(param1);
      }
      
      public function §_-eA§(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§_-bk§.§_-dy§(param1,param2);
            if(!_loc3_)
            {
               this.§_-ay§ = true;
            }
         }
      }
      
      public function §_-Fo§(param1:int) : Number
      {
         return this.§_-bk§.§_-Hy§(param1);
      }
      
      public function §_-S8§(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§_-bk§.§_-wk§(param1,param2);
            if(!(_loc4_ && param2))
            {
               addr34:
               this.§_-ay§ = true;
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function get color() : uint
      {
         return this.§_-bk§.getColor(0);
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§_-bk§.setUniformColor(param1);
            if(!_loc2_)
            {
               addr34:
               this.§_-ay§ = true;
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function get vertexData() : §_-dF§
      {
         return this.§_-bk§;
      }
      
      override public function render(param1:§_-K6§, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param2);
            if(_loc5_ || param2)
            {
               §§push(§§pop() * this.alpha);
               if(!(_loc6_ && param2))
               {
                  §§push(Number(§§pop()));
               }
            }
            param2 = §§pop();
         }
         var _loc3_:Vector.<Number> = new <Number>[param2,param2,param2,param2];
         var _loc4_:Context3D;
         if((_loc4_ = §_-Vu§.§_-ez§) == null)
         {
            throw new §_-8c§();
         }
         this.§_-RX§();
         param1.§_-Nw§(true);
         if(!(_loc6_ && this))
         {
            param1.setProgram(§_-Vu§.§_-dq§.§_-qm§(§_-9W§));
            param1.setTextureAt(§_-K6§.§_-JS§,null);
            _loc4_.setVertexBufferAt(0,this.§_-iD§,§_-dF§.§_-TJ§,Context3DVertexBufferFormat.FLOAT_3);
            if(_loc5_ || param2)
            {
               _loc4_.setVertexBufferAt(1,this.§_-VU§,§_-dF§.§_-RM§,Context3DVertexBufferFormat.FLOAT_4);
               _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-wW§,true);
            }
            _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc3_,1);
            _loc4_.drawTriangles(§_-l8§,this.§_-tv§ * 6,2);
            if(_loc5_ || this)
            {
               _loc4_.setVertexBufferAt(0,null);
            }
            _loc4_.setVertexBufferAt(1,null);
         }
      }
      
      protected function §_-RX§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§_-Vu§.§_-Wf§);
         if(!(_loc2_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§_-ii§);
         if(_loc3_ || _loc2_)
         {
            §§push(_loc1_);
            if(!(_loc2_ && this))
            {
               if(§§pop() != §§pop())
               {
                  if(_loc3_ || this)
                  {
                     §_-ii§ = _loc1_;
                     §_-LK§(false);
                     if(_loc3_)
                     {
                        §§goto(addr64);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr72);
               }
               addr64:
               §§goto(addr67);
            }
            addr67:
            §§goto(addr66);
         }
         addr66:
         if(this.§_-1T§ != _loc1_)
         {
            this.§_-C3§();
            if(!_loc2_)
            {
               this.§_-1T§ = _loc1_;
               addr72:
               if(!_loc2_)
               {
                  addr84:
                  this.§_-ay§ = true;
               }
            }
         }
         this.§_-Aq§();
      }
      
      protected function §_-Aq§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§_-ay§)
            {
               if(!_loc2_)
               {
                  return;
               }
            }
            else
            {
               this.§_-ay§ = false;
               if(_loc1_ || this)
               {
                  addr45:
                  this.§_-VU§.uploadFromVector(this.vertexData.data,this.§_-tv§ * 4,4);
                  if(_loc2_ && this)
                  {
                  }
                  §§goto(addr81);
               }
               this.§_-iD§.uploadFromVector(this.vertexData.§_-rc§,this.§_-tv§ * 4,4);
            }
            addr81:
            return;
         }
         §§goto(addr45);
      }
   }
}
