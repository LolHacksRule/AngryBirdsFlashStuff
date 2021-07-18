package §_-LP§
{
   import §_-4g§.§_-Jq§;
   import §_-HT§.§_-8c§;
   import §_-gY§.§_-K6§;
   import §_-gY§.§_-Vu§;
   import §_-ia§.§_-dF§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   class §_-yv§
   {
      
      private static var §_-np§:§_-dF§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §_-yv§)
         {
            §_-np§ = new §_-dF§(0);
         }
      }
      
      private var §_-bk§:§_-dF§;
      
      private var §_-O6§:Vector.<uint>;
      
      private var §_-cX§:TextureBase;
      
      private var §_-VU§:VertexBuffer3D;
      
      private var §_-z2§:VertexBuffer3D;
      
      private var §_-aB§:IndexBuffer3D;
      
      private var §_-1T§:int = -1;
      
      private var §do §:String;
      
      private var §_-PU§:Boolean;
      
      private var §_-ne§:Boolean;
      
      private var §_-Cr§:Boolean;
      
      private var §_-gj§:Boolean;
      
      private var §_-gc§:int;
      
      private var §_-8X§:int;
      
      private var §_-dI§:int;
      
      private var §_-tE§:int = -1;
      
      private var §_-oS§:int = -1;
      
      private var §_-fk§:int;
      
      function §_-yv§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            if(!_loc8_)
            {
               this.§_-bk§ = new §_-dF§(0,param5);
               if(_loc7_ || param2)
               {
                  §§goto(addr39);
               }
            }
            §§goto(addr61);
         }
         addr39:
         this.§_-O6§ = new Vector.<uint>(0);
         if(!(_loc8_ && param1))
         {
            addr61:
            this.§_-oA§(param1,param2,param3,param4,param5,param6);
         }
      }
      
      public static function §_-Gr§(param1:DisplayObjectContainer, param2:Vector.<§_-yv§>) : Vector.<§_-yv§>
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§_-yv§ = null;
         if(!_loc6_)
         {
            if(!param2)
            {
               if(_loc5_)
               {
                  addr22:
                  param2 = new Vector.<§_-yv§>(0);
                  §§goto(addr30);
               }
               §§goto(addr35);
            }
            addr30:
            param2.fixed = false;
            if(!_loc6_)
            {
               addr35:
               §_-a8§(param1,param2,-1,§_-np§,new Matrix3D(),1);
            }
            var _loc3_:* = int(param2.length - 1);
            while(_loc3_ >= 0)
            {
               if((_loc4_ = param2[_loc3_]).§_-oz§())
               {
                  if(_loc6_)
                  {
                     continue;
                  }
                  param2.splice(_loc3_,1);
                  if(_loc6_)
                  {
                     continue;
                  }
                  _loc4_.dispose();
                  if(_loc6_)
                  {
                     continue;
                  }
               }
               else
               {
                  _loc4_.§_-n5§();
                  if(_loc6_)
                  {
                     continue;
                  }
               }
               §§push(_loc3_);
               if(_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
            if(!(_loc6_ && §_-yv§))
            {
               param2.fixed = true;
            }
            return param2;
         }
         §§goto(addr22);
      }
      
      private static function §_-a8§(param1:DisplayObject, param2:Vector.<§_-yv§>, param3:int, param4:§_-dF§, param5:Matrix3D, param6:Number) : int
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc7_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§_-rC§ = null;
         var _loc13_:§_-19§ = null;
         var _loc14_:TextureBase = null;
         var _loc15_:* = null;
         var _loc16_:* = false;
         var _loc17_:* = false;
         var _loc18_:* = false;
         var _loc19_:* = false;
         var _loc20_:§_-yv§ = null;
         var _loc21_:* = false;
         var _loc22_:* = false;
         if(!_loc24_)
         {
            §§push(param3);
            if(_loc23_)
            {
               §§push(§§pop() >= 0);
               if(!(_loc24_ && param1))
               {
                  §§push(§§pop());
                  if(!(_loc24_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!(_loc24_ && param2))
                        {
                           §§pop();
                           if(!_loc24_)
                           {
                              §§push(param1.alpha == 0);
                              if(!_loc24_)
                              {
                                 addr93:
                                 if(!§§pop())
                                 {
                                    if(_loc23_ || param2)
                                    {
                                       addr101:
                                       §§pop();
                                       if(!(_loc24_ && §_-yv§))
                                       {
                                          §§push(param1.visible);
                                          if(!(_loc24_ && param3))
                                          {
                                             addr118:
                                             §§push(!§§pop());
                                             if(!(_loc24_ && param1))
                                             {
                                                addr126:
                                                if(§§pop())
                                                {
                                                   if(_loc23_ || param2)
                                                   {
                                                      addr135:
                                                      return param3;
                                                      addr134:
                                                   }
                                                   else
                                                   {
                                                      addr143:
                                                      §§push(param1 is DisplayObjectContainer);
                                                   }
                                                }
                                                §§goto(addr143);
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                                             if(!(_loc24_ && param1))
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             _loc9_ = §§pop();
                                             _loc10_ = new Matrix3D();
                                             if(_loc23_ || param2)
                                             {
                                                _loc7_ = 0;
                                             }
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                if(!(_loc23_ || param1))
                                                {
                                                   break;
                                                }
                                                if(§§pop() >= _loc9_)
                                                {
                                                   addr586:
                                                   §§push(param3);
                                                   break;
                                                }
                                                _loc11_ = _loc8_.getChildAt(_loc7_);
                                                if(_loc23_)
                                                {
                                                   _loc10_.copyFrom(param5);
                                                   if(_loc23_)
                                                   {
                                                      _loc11_.§_-vF§(_loc10_);
                                                      if(_loc23_ || param1)
                                                      {
                                                         §§push(§_-a8§(_loc11_,param2,param3,param4,_loc10_,_loc11_.alpha));
                                                         if(_loc23_ || param2)
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                         param3 = §§pop();
                                                         if(!(_loc23_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                   _loc7_++;
                                                }
                                             }
                                             return §§pop();
                                          }
                                          if(!(param1 is §_-rC§))
                                          {
                                             throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                                          }
                                          if(_loc23_)
                                          {
                                             _loc12_ = param1 as §_-rC§;
                                             _loc13_ = param1 as §_-19§;
                                             param4.reset();
                                             if(_loc23_)
                                             {
                                                param4.§_-Zi§(_loc12_.vertexData);
                                                param4.§_-vF§(param5);
                                                if(param6 != 1)
                                                {
                                                   §§push(0);
                                                   if(!(_loc24_ && §_-yv§))
                                                   {
                                                      _loc7_ = §§pop();
                                                      addr276:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                      }
                                                      addr283:
                                                   }
                                                   while(§§pop() < 4)
                                                   {
                                                      param4.§_-V§(_loc7_,param6);
                                                      _loc7_++;
                                                      §§goto(addr283);
                                                   }
                                                }
                                                _loc14_ = null;
                                                §§push(§_-Jq§.NONE);
                                                if(!_loc24_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                _loc15_ = §§pop();
                                                §§push(false);
                                                if(_loc23_ || §_-yv§)
                                                {
                                                   _loc16_ = §§pop();
                                                   _loc17_ = false;
                                                   §§push(true);
                                                   if(_loc23_ || §_-yv§)
                                                   {
                                                      _loc18_ = §§pop();
                                                      if(_loc23_)
                                                      {
                                                         _loc19_ = false;
                                                         if(_loc13_)
                                                         {
                                                            if(!_loc24_)
                                                            {
                                                               §§push(_loc13_.texture);
                                                               if(!(_loc24_ && §_-yv§))
                                                               {
                                                                  _loc14_ = §§pop().base;
                                                                  if(_loc23_ || param1)
                                                                  {
                                                                     §§push(_loc13_.smoothing);
                                                                     if(_loc23_ || param2)
                                                                     {
                                                                        §§push(§§pop());
                                                                     }
                                                                     _loc15_ = §§pop();
                                                                     if(_loc23_ || param1)
                                                                     {
                                                                     }
                                                                     addr378:
                                                                     §§push(param3);
                                                                     if(!(_loc24_ && §_-yv§))
                                                                     {
                                                                        §§push(§§pop() < 0);
                                                                        if(_loc23_ || param2)
                                                                        {
                                                                           _loc21_ = §§pop();
                                                                           _loc22_ = true;
                                                                           addr398:
                                                                           §§push(_loc21_);
                                                                           if(_loc23_ || param3)
                                                                           {
                                                                              addr406:
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§push((_loc20_ = param2[param3]).texture == _loc14_);
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    §§push(!§§pop());
                                                                                    if(!(_loc24_ && param1))
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          addr428:
                                                                                          §§pop();
                                                                                          if(!(_loc24_ && param2))
                                                                                          {
                                                                                             §§push(_loc20_.smoothing == _loc15_);
                                                                                             if(_loc23_)
                                                                                             {
                                                                                                addr443:
                                                                                                §§push(!§§pop());
                                                                                                §§push(!§§pop());
                                                                                                if(_loc23_ || param1)
                                                                                                {
                                                                                                   addr451:
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc23_ || param3)
                                                                                                         {
                                                                                                            addr462:
                                                                                                            §§push(_loc20_.§_-Rg§);
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               addr467:
                                                                                                               §§push(§§pop() == _loc19_);
                                                                                                            }
                                                                                                            §§push(!§§pop());
                                                                                                            if(_loc24_ && param1)
                                                                                                            {
                                                                                                            }
                                                                                                            addr477:
                                                                                                            _loc22_ = §§pop();
                                                                                                            addr478:
                                                                                                            if(_loc22_)
                                                                                                            {
                                                                                                               if(!(_loc24_ && §_-yv§))
                                                                                                               {
                                                                                                                  addr487:
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        §§push(_loc13_.texture);
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           _loc16_ = Boolean(§§pop().repeat);
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              §§push(_loc13_.texture);
                                                                                                                              if(!(_loc24_ && param2))
                                                                                                                              {
                                                                                                                                 addr509:
                                                                                                                                 §§push(§§pop().mipMapping);
                                                                                                                                 if(_loc23_ || param2)
                                                                                                                                 {
                                                                                                                                    addr524:
                                                                                                                                    addr525:
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       _loc17_ = §§pop();
                                                                                                                                       addr521:
                                                                                                                                       §§push(_loc13_.texture);
                                                                                                                                    }
                                                                                                                                    _loc18_ = Boolean(§§pop());
                                                                                                                                    addr526:
                                                                                                                                    param3++;
                                                                                                                                    if(_loc23_ || param1)
                                                                                                                                    {
                                                                                                                                       addr534:
                                                                                                                                       if(param3 < param2.length)
                                                                                                                                       {
                                                                                                                                          (_loc20_ = param2[param3]).§_-oA§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
                                                                                                                                          addr567:
                                                                                                                                          _loc20_.§_-2k§(param4);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          _loc20_ = new §_-yv§(_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             param2.push(_loc20_);
                                                                                                                                          }
                                                                                                                                          §§goto(addr567);
                                                                                                                                       }
                                                                                                                                       §§goto(addr567);
                                                                                                                                    }
                                                                                                                                    §§goto(addr586);
                                                                                                                                 }
                                                                                                                                 §§goto(addr524);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr534);
                                                                                                                        }
                                                                                                                        §§goto(addr524);
                                                                                                                        §§push(§§pop().premultipliedAlpha);
                                                                                                                     }
                                                                                                                     §§goto(addr521);
                                                                                                                  }
                                                                                                                  §§goto(addr526);
                                                                                                               }
                                                                                                               §§goto(addr534);
                                                                                                            }
                                                                                                            §§goto(addr567);
                                                                                                         }
                                                                                                         §§goto(addr478);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr477);
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                                §§goto(addr467);
                                                                                             }
                                                                                             §§goto(addr477);
                                                                                          }
                                                                                          §§goto(addr462);
                                                                                       }
                                                                                       §§goto(addr443);
                                                                                    }
                                                                                    §§goto(addr451);
                                                                                 }
                                                                                 §§goto(addr428);
                                                                              }
                                                                              §§goto(addr462);
                                                                           }
                                                                           §§goto(addr525);
                                                                        }
                                                                        §§goto(addr406);
                                                                     }
                                                                     §§goto(addr534);
                                                                  }
                                                                  §§push(_loc13_.§_-Rg§);
                                                                  if(!(_loc24_ && param2))
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  _loc19_ = §§pop();
                                                                  §§goto(addr378);
                                                               }
                                                               §§goto(addr509);
                                                            }
                                                            §§goto(addr398);
                                                         }
                                                         §§goto(addr378);
                                                      }
                                                      §§goto(addr487);
                                                   }
                                                   §§goto(addr462);
                                                }
                                                §§goto(addr524);
                                             }
                                             §§goto(addr276);
                                          }
                                          §§goto(addr586);
                                       }
                                    }
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr93);
               }
               §§goto(addr101);
            }
            §§goto(addr135);
         }
         §§goto(addr143);
      }
      
      public function §_-oA§(param1:TextureBase, param2:String, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         this.§_-cX§ = param1;
         this.§do § = param2;
         this.§_-PU§ = param3;
         if(_loc8_)
         {
            this.§_-ne§ = param4;
         }
         this.§_-Cr§ = param5;
         if(!_loc7_)
         {
            this.§_-gj§ = param6;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§_-VU§)
            {
               this.§_-VU§.dispose();
               if(!(_loc2_ && _loc1_))
               {
                  addr40:
                  if(this.§_-z2§)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        this.§_-z2§.dispose();
                        addr60:
                        if(this.§_-aB§)
                        {
                           this.§_-aB§.dispose();
                        }
                     }
                  }
                  §§goto(addr60);
               }
               return;
            }
            §§goto(addr40);
         }
         §§goto(addr60);
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-gc§ = 0;
            if(_loc2_ || _loc1_)
            {
               this.§_-8X§ = 0;
               if(!(_loc1_ && this))
               {
                  this.§_-dI§ = 0;
                  if(_loc2_ || _loc2_)
                  {
                  }
                  §§goto(addr65);
               }
            }
            this.§_-bk§.reset();
            if(_loc1_)
            {
            }
            §§goto(addr65);
         }
         addr65:
         this.§_-O6§.fixed = false;
      }
      
      public function §_-oz§() : Boolean
      {
         return this.§_-dI§ == 0;
      }
      
      private function §_-2k§(param1:§_-dF§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc5_ || this)
         {
            var _loc3_:*;
            §§push((_loc3_ = this).§_-dI§);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param1))
            {
               _loc3_.§_-dI§ = _loc4_;
            }
            §§push(this.§_-dI§);
            if(!(_loc6_ && param1))
            {
               §§push(this.§_-fk§);
               if(!(_loc6_ && _loc3_))
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(this.§_-fk§);
                        if(_loc5_ || _loc2_)
                        {
                           addr90:
                           §§push(int(§§pop() * 4));
                        }
                        _loc2_ = §§pop();
                        if(!_loc6_)
                        {
                           this.§_-O6§.push(_loc2_,_loc2_ + 1,_loc2_ + 2,_loc2_ + 1,_loc2_ + 3,_loc2_ + 2);
                        }
                        §§push((_loc3_ = this).§_-fk§);
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc4_ = §§pop();
                        if(_loc5_ || param1)
                        {
                           _loc3_.§_-fk§ = _loc4_;
                        }
                        if(!_loc6_)
                        {
                           addr141:
                           this.§_-bk§.§_-Zi§(param1);
                           this.§_-gc§ += 6;
                        }
                        this.§_-8X§ += 4;
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr141);
               }
            }
            §§goto(addr90);
         }
         addr164:
      }
      
      public function §_-n5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§_-O6§.fixed = true;
            if(!_loc2_)
            {
               this.§_-pa§();
            }
         }
      }
      
      private function §_-RX§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§_-Vu§.§_-Wf§);
         if(_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            if(this.§_-1T§ != _loc1_)
            {
               if(_loc2_)
               {
                  this.§_-oS§ = -1;
                  if(!_loc3_)
                  {
                     addr39:
                     this.§_-tE§ = -1;
                     if(!(_loc3_ && _loc3_))
                     {
                        this.§_-pa§();
                        if(_loc3_)
                        {
                        }
                        §§goto(addr63);
                     }
                  }
               }
               this.§_-1T§ = _loc1_;
            }
            addr63:
            return;
         }
         §§goto(addr39);
      }
      
      private function §_-pa§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Context3D = §_-Vu§.§_-ez§;
         if(_loc4_)
         {
            if(_loc1_ == null)
            {
               if(!_loc3_)
               {
                  throw new §_-8c§();
               }
               this.§_-z2§ = _loc1_.createVertexBuffer(this.§_-8X§,§_-dF§.§_-T6§);
               §§goto(addr78);
            }
            else
            {
               §§push(this.§_-oS§);
               if(_loc4_ || this)
               {
                  §§push(this.§_-8X§);
                  if(_loc4_)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           if(this.§_-VU§)
                           {
                              §§goto(addr52);
                           }
                           §§goto(addr62);
                        }
                        addr52:
                        this.§_-VU§.dispose();
                        if(!(_loc3_ && _loc2_))
                        {
                           addr62:
                           if(this.§_-z2§)
                           {
                              this.§_-z2§.dispose();
                              if(_loc4_)
                              {
                                 §§goto(addr70);
                              }
                              §§goto(addr134);
                           }
                           addr70:
                           this.§_-VU§ = _loc1_.createVertexBuffer(this.§_-8X§,§_-dF§.§_-YF§);
                           §§goto(addr78);
                        }
                        addr78:
                        if(_loc4_)
                        {
                           this.§_-oS§ = this.§_-8X§;
                           if(!_loc3_)
                           {
                              §§goto(addr101);
                           }
                           §§goto(addr115);
                        }
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr112);
               }
            }
            §§goto(addr176);
         }
         addr101:
         §§push(this.§_-tE§);
         if(!(_loc3_ && this))
         {
            addr112:
            if(§§pop() < this.§_-gc§)
            {
               if(_loc4_)
               {
                  addr115:
                  if(this.§_-aB§)
                  {
                     this.§_-aB§.dispose();
                  }
                  this.§_-aB§ = _loc1_.createIndexBuffer(this.§_-gc§);
                  if(_loc4_ || this)
                  {
                     addr134:
                     this.§_-tE§ = this.§_-gc§;
                     this.§_-aB§.uploadFromVector(this.§_-O6§,0,this.§_-gc§);
                     addr146:
                     this.§_-VU§.uploadFromVector(this.§_-bk§.data,0,this.§_-8X§);
                     addr155:
                     this.§_-z2§.uploadFromVector(this.§_-bk§.§_-rc§,0,this.§_-8X§);
                  }
                  §§push(§_-Vu§.§_-Wf§);
                  if(_loc4_)
                  {
                     §§goto(addr176);
                  }
                  addr176:
                  var _loc2_:int = §§pop();
                  §§goto(addr175);
               }
               §§goto(addr155);
            }
            §§goto(addr146);
         }
         addr175:
         if(_loc4_)
         {
            this.§_-1T§ = _loc2_;
         }
      }
      
      public function render(param1:§_-K6§, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Context3D = §_-Vu§.§_-ez§;
         if(_loc7_)
         {
            if(_loc3_ == null)
            {
               if(!_loc8_)
               {
                  §§goto(addr24);
               }
            }
            this.§_-RX§();
            §§push(this.§_-bk§.premultipliedAlpha);
            if(_loc7_)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!_loc8_)
            {
               if(this.§_-cX§)
               {
                  addr43:
                  §§push(§_-19§.§_-R4§(this.§_-ne§,this.§_-PU§,this.§do §,this.§_-gj§));
                  if(_loc7_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                        addr81:
                        §§push(§§pop());
                     }
                  }
               }
               else
               {
                  §§push(§_-rC§.§_-9W§);
                  if(!(_loc8_ && param1))
                  {
                     §§push(§§pop());
                     if(!(_loc8_ && this))
                     {
                        §§goto(addr81);
                     }
                  }
               }
               var _loc5_:* = §§pop();
               if(_loc7_)
               {
                  var _loc6_:Vector.<Number> = !!_loc4_ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
                  param1.§_-Nw§(_loc4_);
                  param1.setProgram(§_-Vu§.§_-dq§.§_-qm§(_loc5_));
                  _loc3_.setVertexBufferAt(0,this.§_-z2§,§_-dF§.§_-TJ§,Context3DVertexBufferFormat.FLOAT_3);
                  §§push(this.§_-gj§);
                  if(_loc7_)
                  {
                     if(§§pop())
                     {
                        _loc3_.setVertexBufferAt(2,this.§_-VU§,§_-dF§.§_-RM§,Context3DVertexBufferFormat.FLOAT_4);
                     }
                     _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-wW§,true);
                     _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc6_,1);
                     if(!_loc8_)
                     {
                        if(this.§_-cX§)
                        {
                           if(!_loc8_)
                           {
                              param1.setTextureAt(§_-K6§.§_-JS§,this.§_-cX§);
                              if(!_loc8_)
                              {
                                 _loc3_.setVertexBufferAt(1,this.§_-VU§,§_-dF§.§_-j4§,Context3DVertexBufferFormat.FLOAT_2);
                                 if(!_loc8_)
                                 {
                                    addr233:
                                    _loc3_.drawTriangles(this.§_-aB§,0,this.§_-gc§ / 3);
                                    if(_loc7_)
                                    {
                                       addr244:
                                       _loc3_.setVertexBufferAt(0,null);
                                    }
                                    addr266:
                                    _loc3_.setVertexBufferAt(2,null);
                                    return;
                                    addr216:
                                 }
                                 _loc3_.setVertexBufferAt(1,null);
                                 if(!_loc8_)
                                 {
                                    addr263:
                                    if(this.§_-gj§)
                                    {
                                       if(!_loc8_)
                                       {
                                          §§goto(addr266);
                                       }
                                    }
                                 }
                                 §§goto(addr266);
                              }
                           }
                           §§goto(addr233);
                        }
                        else
                        {
                           param1.setTextureAt(§_-K6§.§_-JS§,null);
                           _loc3_.setVertexBufferAt(1,this.§_-VU§,§_-dF§.§_-RM§,Context3DVertexBufferFormat.FLOAT_4);
                           if(_loc7_)
                           {
                              §§goto(addr233);
                           }
                        }
                        §§goto(addr244);
                     }
                     §§goto(addr216);
                  }
                  §§goto(addr263);
               }
               §§goto(addr87);
            }
            §§goto(addr43);
         }
         addr24:
         throw new §_-8c§();
      }
      
      public function get texture() : TextureBase
      {
         return this.§_-cX§;
      }
      
      public function get smoothing() : String
      {
         return this.§do §;
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-PU§;
      }
      
      public function get mipMapping() : Boolean
      {
         return this.§_-ne§;
      }
      
      public function get §_-Rg§() : Boolean
      {
         return this.§_-gj§;
      }
   }
}
