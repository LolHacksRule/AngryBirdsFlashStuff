package §_-0Ea§
{
   import §_-JM§.§_-05z§;
   import §_-M2§.AGALMiniAssembler;
   import §_-UD§.§_-9f§;
   import §_-uY§.DisplayObject;
   import §_-uY§.DisplayObjectContainer;
   import §_-uY§.§_-09b§;
   import §_-uY§.§_-2p§;
   import §_-z4§.Texture;
   import §_-z4§.§_-IJ§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §_-XW§
   {
      
      private static var §_-DI§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-DI§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §_-Mq§:int;
      
      private var §_-02T§:Texture;
      
      private var §_-Ef§:String;
      
      private var §_-BF§:§_-9f§;
      
      private var §_-Ll§:VertexBuffer3D;
      
      private var §_-Sv§:VertexBuffer3D;
      
      private var §_-8x§:VertexBuffer3D;
      
      private var §try §:Vector.<uint>;
      
      private var §_-uo§:IndexBuffer3D;
      
      private var §_-064§:Boolean = false;
      
      private var §_-0CQ§:Boolean = false;
      
      public function §_-XW§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
            loop0:
            while(true)
            {
               §_-VA§();
               while(true)
               {
                  this.§_-BF§ = new §_-9f§(0,true);
                  loop2:
                  while(!(_loc1_ && _loc2_))
                  {
                     this.§try § = new Vector.<uint>(0);
                     while(true)
                     {
                        this.§_-Mq§ = 0;
                        do
                        {
                           this.§_-Nn§();
                        }
                        while(!(_loc2_ || this));
                        
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      public static function §_-go§(param1:DisplayObjectContainer, param2:Vector.<§_-XW§>) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §_-XW§)
         {
            §_-af§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §_-af§(param1:DisplayObject, param2:Vector.<§_-XW§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§_-2p§ = null;
         var _loc13_:§_-09b§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§_-XW§ = null;
         var _loc7_:* = false;
         if(_loc17_ || param1)
         {
            §§push(param3);
            for(; §§pop() != -1; if(!(_loc18_ && param3))
            {
               return §§pop();
            })
            {
               §§push(param1.alpha == 0);
               loop1:
               while(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     if(!(_loc18_ && §_-XW§))
                     {
                        §§push(param1.visible);
                        if(_loc17_)
                        {
                           if(!_loc17_)
                           {
                              continue loop1;
                           }
                           §§push(!§§pop());
                           if(!(_loc18_ && param3))
                           {
                              addr69:
                              if(_loc17_)
                              {
                                 break loop1;
                              }
                              continue;
                           }
                           if(§§pop())
                           {
                              break;
                           }
                           if(!(param1 is §_-2p§))
                           {
                              throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                           }
                           if(_loc17_)
                           {
                              _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §_-2p§) as §_-09b§) ? _loc13_.texture : null;
                              if(!_loc18_)
                              {
                                 if(_loc13_)
                                 {
                                    if(!_loc18_)
                                    {
                                       addr324:
                                       §§push(_loc13_.smoothing);
                                       if(_loc17_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc18_)
                                          {
                                             addr337:
                                             _loc15_ = §§pop();
                                          }
                                       }
                                       §§goto(addr337);
                                    }
                                    if((_loc16_ = param2[param3]).§_-P0§(_loc12_,_loc14_,_loc15_))
                                    {
                                       if(!(_loc18_ && param1))
                                       {
                                          param3++;
                                          if(!_loc18_)
                                          {
                                             if(param2.length <= param3)
                                             {
                                                if(!_loc18_)
                                                {
                                                   param2.push(new §_-XW§());
                                                   if(_loc17_ || param3)
                                                   {
                                                      addr376:
                                                      (_loc16_ = param2[param3]).reset();
                                                      _loc16_.§_-ED§(_loc12_,param5,_loc14_,_loc15_,param4);
                                                   }
                                                }
                                                addr399:
                                                §§push(_loc7_);
                                                if(_loc17_ || param1)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc17_)
                                                      {
                                                         §§push(int(param2.length - 1));
                                                         if(!(_loc18_ && §_-XW§))
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(!(_loc18_ && param2))
                                                            {
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(!(_loc18_ && param1))
                                                                  {
                                                                     if(_loc17_ || param2)
                                                                     {
                                                                        addr447:
                                                                        if(§§pop() <= param3)
                                                                        {
                                                                           if(_loc18_ && §_-XW§)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc18_)
                                                                           {
                                                                              if(!_loc18_)
                                                                              {
                                                                                 addr469:
                                                                                 §§push(param3);
                                                                                 break;
                                                                              }
                                                                              addr484:
                                                                              §§push(delete param2[_loc6_]);
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                              }
                                                                              addr492:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                    addr478:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       continue loop3;
                                                                                    }
                                                                                 }
                                                                                 addr477:
                                                                              }
                                                                              §§goto(addr478);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           param2[_loc6_].dispose();
                                                                        }
                                                                        §§goto(addr492);
                                                                     }
                                                                     §§goto(addr478);
                                                                  }
                                                                  break;
                                                               }
                                                            }
                                                            §§goto(addr479);
                                                         }
                                                         return §§pop();
                                                      }
                                                      §§goto(addr479);
                                                   }
                                                   §§goto(addr469);
                                                }
                                                §§goto(addr484);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr376);
                                 }
                                 else
                                 {
                                    §§push(null);
                                    if(_loc17_)
                                    {
                                       §§goto(addr337);
                                    }
                                 }
                                 §§goto(addr337);
                              }
                              §§goto(addr324);
                           }
                           §§goto(addr399);
                        }
                        §§goto(addr69);
                     }
                     break;
                  }
                  §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                  if(_loc17_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc9_ = §§pop();
                  _loc10_ = new Matrix3D();
                  if(!_loc18_)
                  {
                     §§push(param5);
                     if(_loc17_)
                     {
                        §§push(§§pop() * param1.alpha);
                        if(!(_loc18_ && param2))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     param5 = §§pop();
                     if(_loc17_ || param3)
                     {
                        addr213:
                        _loc6_ = 0;
                     }
                     loop8:
                     while(true)
                     {
                        §§push(_loc6_);
                        if(_loc17_)
                        {
                           §§push(_loc9_);
                           if(_loc17_ || §_-XW§)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(!(_loc18_ && param2))
                                 {
                                    §§goto(addr399);
                                 }
                                 §§goto(addr485);
                              }
                              else
                              {
                                 _loc11_ = _loc8_.getChildAt(_loc6_);
                                 if(_loc17_ || §_-XW§)
                                 {
                                    _loc10_.copyFrom(param4);
                                 }
                                 while(true)
                                 {
                                    _loc11_.§_-cb§(_loc10_);
                                    loop10:
                                    while(_loc17_)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          §§push(§_-af§(_loc11_,param2,param3,_loc10_,param5));
                                          if(!_loc18_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          param3 = §§pop();
                                          while(_loc17_)
                                          {
                                             _loc6_++;
                                             if(_loc17_)
                                             {
                                                continue loop11;
                                             }
                                          }
                                          continue loop10;
                                       }
                                       continue loop8;
                                    }
                                 }
                              }
                           }
                           §§goto(addr447);
                        }
                        break;
                     }
                     §§goto(addr477);
                  }
                  §§goto(addr213);
               }
               if(§§pop())
               {
                  if(_loc17_)
                  {
                     if(_loc17_ || param2)
                     {
                        if(!_loc17_)
                        {
                           break;
                        }
                        §§push(param3);
                        if(_loc17_ || param3)
                        {
                           continue;
                        }
                        while(true)
                        {
                           param3 = §§pop();
                           if(param2.length != 0)
                           {
                              param2[0].reset();
                              addr138:
                              break;
                           }
                           if(_loc17_)
                           {
                              if(!_loc17_)
                              {
                                 continue;
                              }
                              param2.push(new §_-XW§());
                           }
                           §§goto(addr174);
                        }
                        addr170:
                        §§goto(addr173);
                        §§push(param1 is DisplayObjectContainer);
                        addr113:
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr174);
               }
               §§goto(addr170);
            }
            §§push(true);
            if(!(_loc18_ && §_-XW§))
            {
               _loc7_ = §§pop();
               §§goto(addr169);
            }
            §§goto(addr173);
         }
         §§goto(addr138);
      }
      
      private static function §_-VA§() : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         var _loc8_:Array = null;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc1_:§_-AY§ = §_-AY§.§_-un§;
         if(_loc23_ || §_-XW§)
         {
            if(_loc1_.§_-TJ§(§_-Y§(true)))
            {
               if(_loc23_ || _loc3_)
               {
                  §§goto(addr63);
               }
            }
            var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
            var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
            var _loc13_:int = 0;
            var _loc14_:* = [true,false];
            while(§§hasnext(_loc14_,_loc13_))
            {
               §§push(Boolean(§§nextvalue(_loc13_,_loc14_)));
               loop1:
               while(true)
               {
                  _loc6_ = §§pop();
                  addr191:
                  while(true)
                  {
                     §§push("m44 op, va0, vc0  \n");
                     addr180:
                     while(true)
                     {
                        §§push("mov v0, va2       \n");
                        addr181:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr182:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         addr63:
      }
      
      public static function §_-Y§(param1:Boolean) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1)
            {
               addr20:
               §§push("QB_q*");
               if(!_loc2_)
               {
               }
            }
            else
            {
               return "QB_q\'";
            }
            return §§pop();
         }
         §§goto(addr20);
      }
      
      public static function §_-aN§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && §_-XW§))
         {
            if(param1)
            {
               addr26:
               §§push("QB_i*");
               if(!_loc8_)
               {
               }
            }
            else
            {
               §§push("QB_i\'");
            }
            var _loc6_:* = §§pop();
            if(_loc8_)
            {
               §§push(param2);
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(_loc6_);
                        addr178:
                        while(true)
                        {
                           §§push("N");
                           addr179:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr180:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 addr181:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                     }
                     addr177:
                  }
                  while(true)
                  {
                     §§push(param3);
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(_loc6_);
                              addr171:
                              while(true)
                              {
                                 §§push("R");
                                 addr172:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr173:
                                    while(true)
                                    {
                                       _loc6_ = §§pop();
                                       addr174:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                           }
                           addr170:
                        }
                        while(true)
                        {
                           §§push(param5);
                           if(!_loc8_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr110);
         }
         §§goto(addr26);
      }
      
      public function get dynamic() : int
      {
         return this.§_-Mq§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§_-Ll§)
            {
               while(true)
               {
                  this.§_-Ll§.dispose();
                  addr117:
                  while(true)
                  {
                  }
                  addr70:
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  addr19:
                  return;
                  addr87:
               }
            }
            loop2:
            while(true)
            {
               if(this.§_-Sv§)
               {
                  if(_loc1_ || _loc1_)
                  {
                     this.§_-Sv§.dispose();
                  }
                  while(true)
                  {
                     addr36:
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     if(!(_loc1_ || _loc1_))
                     {
                        continue loop2;
                     }
                     this.§_-uo§.dispose();
                     addr63:
                     if(_loc2_ && _loc1_)
                     {
                        loop6:
                        while(true)
                        {
                           addr23:
                           loop7:
                           for(; this.§_-uo§; continue loop6)
                           {
                              if(_loc1_)
                              {
                                 addr29:
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§goto(addr36);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§_-8x§.dispose();
                                       continue loop7;
                                       §§goto(addr29);
                                    }
                                    addr92:
                                 }
                              }
                              §§goto(addr63);
                           }
                           §§goto(addr19);
                        }
                     }
                     §§goto(addr70);
                  }
                  addr110:
               }
               while(true)
               {
                  if(this.§_-8x§)
                  {
                     §§goto(addr92);
                  }
                  §§goto(addr23);
                  §§goto(addr110);
               }
            }
         }
         §§goto(addr87);
      }
      
      private function §_-Nn§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§_-BF§.§_-Tz§);
         if(_loc5_)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(_loc5_)
         {
            §§push(_loc1_);
            if(_loc5_ || this)
            {
               §§push(0);
               if(_loc5_ || _loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     addr46:
                     §§push(16);
                     if(_loc5_ || _loc2_)
                     {
                     }
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(!(_loc4_ && _loc3_))
                     {
                        addr64:
                        §§push(int(§§pop() * 2));
                        if(_loc4_)
                        {
                        }
                        §§goto(addr69);
                     }
                  }
                  addr69:
                  var _loc2_:* = §§pop();
                  if(_loc5_)
                  {
                     this.§_-BF§.§_-Tz§ = _loc2_ * 4;
                  }
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  loop0:
                  while(true)
                  {
                     if(_loc3_ >= _loc2_)
                     {
                        if(_loc5_)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              if(_loc5_)
                              {
                                 this.§_-0CQ§ = true;
                                 addr106:
                                 if(_loc5_ || _loc3_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                    this.§try §[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                                 }
                              }
                              while(_loc4_)
                              {
                                 while(true)
                                 {
                                    this.§try §[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                                    §§goto(addr234);
                                 }
                                 §§goto(addr207);
                              }
                              this.§try §[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                              loop2:
                              while(true)
                              {
                                 this.§try §[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                                 loop3:
                                 while(true)
                                 {
                                    _loc3_++;
                                    addr126:
                                    while(true)
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr106);
                     }
                     else
                     {
                        this.§try §[int(_loc3_ * 6)] = _loc3_ * 4;
                     }
                     §§goto(addr248);
                  }
                  return;
                  §§push(int(§§pop()));
               }
            }
            §§goto(addr64);
         }
         §§goto(addr46);
      }
      
      private function §_-ZT§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(this.§_-0CQ§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     if(param1 == null)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           break;
                        }
                        while(true)
                        {
                        }
                        addr127:
                     }
                     while(true)
                     {
                        if(this.§_-Ll§)
                        {
                           while(true)
                           {
                              this.§_-Ll§.dispose();
                              addr112:
                              while(true)
                              {
                              }
                              loop7:
                              for(; !(_loc3_ && _loc3_); if(_loc4_ || this)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       this.§_-uo§.dispose();
                                       §§goto(addr64);
                                    }
                                    addr144:
                                    return false;
                                    addr143:
                                 }
                                 continue loop0;
                              })
                              {
                                 loop8:
                                 while(true)
                                 {
                                    if(this.§_-8x§)
                                    {
                                       while(!_loc3_)
                                       {
                                          this.§_-8x§.dispose();
                                          while(true)
                                          {
                                          }
                                       }
                                       §§goto(addr127);
                                       addr77:
                                    }
                                    while(this.§_-uo§)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(!_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop7;
                                             }
                                             §§goto(addr77);
                                          }
                                          §§goto(addr82);
                                       }
                                       else
                                       {
                                          addr64:
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop8;
                                          }
                                          addr87:
                                          while(!(_loc3_ && param1))
                                          {
                                             this.§_-Sv§.dispose();
                                             continue loop7;
                                             §§goto(addr64);
                                          }
                                          §§goto(addr112);
                                       }
                                    }
                                    §§push(this.§_-BF§.§_-Tz§);
                                    if(_loc4_)
                                    {
                                       §§push(int(§§pop() / 4));
                                    }
                                    var _loc2_:* = §§pop();
                                    if(!(_loc3_ && param1))
                                    {
                                       this.§_-Ll§ = param1.createVertexBuffer(_loc2_ * 4,§_-9f§.§_-u7§);
                                       this.§_-Ll§.uploadFromByteArray(this.§_-BF§.§_-ho§,0,0,_loc2_ * 4);
                                       addr297:
                                    }
                                    addr287:
                                    addr274:
                                    addr253:
                                    this.§_-Sv§ = param1.createVertexBuffer(_loc2_ * 4,§_-9f§.§_-vj§);
                                    addr239:
                                    this.§_-Sv§.uploadFromVector(this.§_-BF§.§_-ge§,0,_loc2_ * 4);
                                    this.§_-8x§ = param1.createVertexBuffer(_loc2_ * 4,§_-9f§.§_-3x§);
                                    if(_loc4_)
                                    {
                                       this.§_-8x§.uploadFromVector(this.§_-BF§.§_-y2§,0,_loc2_ * 4);
                                       this.§_-uo§ = param1.createIndexBuffer(_loc2_ * 6);
                                       addr207:
                                       if(_loc4_)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             this.§_-uo§.uploadFromVector(this.§try §,0,_loc2_ * 6);
                                             addr194:
                                             if(!_loc3_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   this.§_-0CQ§ = false;
                                                   if(_loc4_ || this)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr297);
                                                         }
                                                         return true;
                                                      }
                                                      §§goto(addr287);
                                                   }
                                                   §§goto(addr194);
                                                }
                                                §§goto(addr274);
                                             }
                                             §§goto(addr207);
                                          }
                                          §§goto(addr239);
                                       }
                                       addr228:
                                       §§goto(addr228);
                                    }
                                    §§goto(addr253);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                           if(this.§_-Sv§)
                           {
                              §§goto(addr87);
                           }
                           §§goto(addr73);
                           §§goto(addr112);
                        }
                     }
                  }
                  §§goto(addr124);
               }
               §§goto(addr143);
            }
            §§goto(addr144);
         }
         addr124:
         throw new §_-05z§();
      }
      
      private function §_-bv§(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§_-ZT§(param1));
            loop0:
            while(!§§pop())
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.§_-Ll§.uploadFromByteArray(this.§_-BF§.§_-ho§,0,0,this.§_-Mq§ * 4);
               }
               while(true)
               {
                  §§push(this.§_-064§);
                  if(_loc2_ && _loc2_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        while(true)
                        {
                           this.§_-Sv§.uploadFromVector(this.§_-BF§.§_-ge§,0,this.§_-Mq§ * 4);
                        }
                        addr77:
                     }
                     loop2:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           this.§_-8x§.uploadFromVector(this.§_-BF§.§_-y2§,0,this.§_-Mq§ * 4);
                           if(!(_loc2_ && param1))
                           {
                              break;
                           }
                           continue loop2;
                        }
                        break loop0;
                     }
                     continue;
                  }
                  §§goto(addr29);
               }
            }
            return;
         }
         §§goto(addr77);
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            if(this.§_-Mq§ == 0)
            {
               if(!_loc9_)
               {
                  §§goto(addr24);
               }
            }
            §§push(this.§_-BF§.premultipliedAlpha);
            if(_loc8_ || this)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param3 == 1);
            if(_loc8_)
            {
               §§push(!§§pop());
            }
            var _loc5_:* = §§pop();
            if(_loc8_)
            {
               if(this.§_-02T§)
               {
                  addr49:
                  §§push(§_-aN§(_loc5_,this.§_-02T§.mipMapping,this.§_-02T§.repeat,this.§_-Ef§,this.§_-064§));
                  if(!_loc9_)
                  {
                     §§push(§§pop());
                     if(_loc9_)
                     {
                        addr73:
                        §§push(§§pop());
                        if(_loc8_ || param1)
                        {
                        }
                        addr82:
                        var _loc6_:* = §§pop();
                        if(_loc8_)
                        {
                           §_-zM§.§_-jw§(param1,_loc4_);
                           loop0:
                           while(true)
                           {
                              this.§_-bv§(param1);
                              while(true)
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    param1.setProgram(§_-AY§.§_-un§.§_-NB§(_loc6_));
                                    if(_loc9_ && param1)
                                    {
                                       break;
                                    }
                                    param1.setVertexBufferAt(0,this.§_-8x§,§_-9f§.§_-gg§,Context3DVertexBufferFormat.FLOAT_3);
                                    continue;
                                 }
                                 continue loop0;
                              }
                              return;
                           }
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr82);
                  }
                  §§push(§§pop());
               }
               else
               {
                  §§push(§_-Y§(_loc5_));
                  if(_loc8_)
                  {
                     §§goto(addr73);
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr49);
         }
         addr24:
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§_-Mq§ = 0;
            while(true)
            {
               this.§_-064§ = false;
            }
            addr62:
         }
         loop1:
         while(true)
         {
            this.§_-02T§ = null;
            while(!_loc2_)
            {
               this.§_-Ef§ = null;
               if(!_loc1_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  break loop1;
               }
               §§goto(addr62);
            }
         }
      }
      
      public function §_-ED§(param1:§_-2p§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!_loc10_)
         {
            §§push(this.§_-Mq§);
            loop0:
            while(true)
            {
               §§push(1);
               loop1:
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc9_ || param2)
                  {
                     if(§§pop() > this.§_-BF§.§_-Tz§ / 4)
                     {
                        while(true)
                        {
                           this.§_-Nn§();
                           addr125:
                           while(true)
                           {
                           }
                        }
                        addr123:
                     }
                     while(true)
                     {
                        §§push(this.§_-Mq§);
                        if(!(_loc9_ || this))
                        {
                           break;
                        }
                        if(!_loc10_)
                        {
                           §§push(0);
                           if(!_loc10_)
                           {
                              if(_loc10_ && this)
                              {
                                 continue loop1;
                              }
                              if(§§pop() == §§pop())
                              {
                                 if(_loc9_)
                                 {
                                    this.§_-02T§ = param3;
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc9_)
                                    {
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             this.§_-Ef§ = param4;
                                             while(true)
                                             {
                                                §§push(this.§_-BF§);
                                                if(_loc9_ || param1)
                                                {
                                                   if(param3)
                                                   {
                                                      addr31:
                                                      §§push(param3.premultipliedAlpha);
                                                      if(!(_loc10_ && param3))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc9_)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(true);
                                                   }
                                                   §§pop().setPremultipliedAlpha(§§pop(),false);
                                                   if(!(_loc10_ && this))
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr31);
                                             }
                                             if(!_loc9_)
                                             {
                                                break;
                                             }
                                             if(!_loc9_)
                                             {
                                                break loop5;
                                             }
                                             if(false)
                                             {
                                                continue;
                                             }
                                          }
                                          continue loop5;
                                       }
                                       addr95:
                                    }
                                    else
                                    {
                                       §§goto(addr123);
                                    }
                                 }
                                 continue;
                              }
                              §§push(this.§_-Mq§);
                              if(_loc9_ || this)
                              {
                                 break;
                              }
                              var _loc6_:* = §§pop();
                              if(!_loc10_)
                              {
                                 §§push(param2);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(§§pop() * param1.alpha);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop11:
                                       while(true)
                                       {
                                          param2 = §§pop();
                                          loop12:
                                          while(true)
                                          {
                                             param1.copyVertexDataTo(this.§_-BF§,_loc6_,param2,param5);
                                             loop13:
                                             while(true)
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   if(!(_loc9_ || param2))
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc9_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(!_loc9_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   §§push(§§pop() == 1);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc9_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr203:
                                                               while(_loc9_ || param1)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.useColor);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     if(_loc10_ && this)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     if(_loc10_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                  }
                                                                  continue loop18;
                                                               }
                                                               continue loop12;
                                                            }
                                                            addr202:
                                                         }
                                                         while(§§pop())
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               if(_loc9_ || param2)
                                                               {
                                                                  this.§_-064§ = true;
                                                                  if(!(_loc10_ && param3))
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr203);
                                                               }
                                                            }
                                                            return;
                                                         }
                                                         var _loc7_:*;
                                                         §§push((_loc7_ = this).§_-Mq§);
                                                         if(!_loc10_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         var _loc8_:* = §§pop();
                                                         if(!_loc10_)
                                                         {
                                                            _loc7_.§_-Mq§ = _loc8_;
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                }
                                                continue loop11;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr210);
                           }
                           addr136:
                           §§push(§§pop() * §§pop());
                           break loop1;
                        }
                        continue loop0;
                     }
                     §§goto(addr136);
                     §§push(4);
                  }
                  break;
               }
               §§goto(addr138);
            }
         }
         §§goto(addr95);
      }
      
      public function §_-P0§(param1:§_-2p§, param2:Texture, param3:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            §§push(this.§_-02T§);
            while(true)
            {
               §§push(null);
               addr387:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param2 == null);
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       addr143:
                                       if(!(_loc5_ || this))
                                       {
                                          continue;
                                       }
                                       §§pop();
                                       if(!_loc4_)
                                       {
                                          §§push(this.§_-064§);
                                          if(!(_loc4_ && param3))
                                          {
                                             if(!_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr41:
                                                   §§push(param1.useColor);
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               addr62:
                                                               if(!(_loc4_ && param3))
                                                               {
                                                                  addr70:
                                                                  §§push(!§§pop());
                                                                  if(_loc5_)
                                                                  {
                                                                     addr72:
                                                                     if(_loc4_ && param2)
                                                                     {
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              if(_loc5_ || param3)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc4_ && param1))
                                                                                    {
                                                                                       addr114:
                                                                                       if(!(_loc4_ && param3))
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                                §§push(§§pop());
                                                                                                while(_loc5_ || param1)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         loop13:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr249:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param2 == null);
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr174);
                                                                                                   }
                                                                                                   §§goto(addr379);
                                                                                                }
                                                                                                §§goto(addr281);
                                                                                             }
                                                                                             continue loop6;
                                                                                             addr235:
                                                                                          }
                                                                                          if(!(_loc4_ && param2))
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(§§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      while(!_loc4_)
                                                                                                      {
                                                                                                         §§goto(addr143);
                                                                                                      }
                                                                                                      loop34:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_ || param3)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               loop35:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  loop53:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        loop36:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§_-Ef§ == param3);
                                                                                                                                 addr322:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(!§§pop());
                                                                                                                                    break loop36;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr346:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 addr379:
                                                                                                                                 loop38:
                                                                                                                                 while(!§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr381:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             continue loop6;
                                                                                                                                          }
                                                                                                                                          §§push(this.§_-02T§);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().repeat);
                                                                                                                                             addr334:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(param2.repeat);
                                                                                                                                                addr336:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                      break loop38;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop35;
                                                                                                                              }
                                                                                                                              addr378:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr343:
                                                                                                                     }
                                                                                                                     loop46:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr324:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           addr325:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 loop49:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    addr327:
                                                                                                                                    addr329:
                                                                                                                                    while(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr346);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§_-064§);
                                                                                                                                       addr279:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param1.useColor);
                                                                                                                                          addr281:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc5_ || param1))
                                                                                                                                             {
                                                                                                                                                continue loop53;
                                                                                                                                             }
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      continue loop49;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      continue loop46;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc4_ && param3))
                                                                                                                                                   {
                                                                                                                                                      addr303:
                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         break loop19;
                                                                                                                                                      }
                                                                                                                                                      addr303:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr339);
                                                                                                                                                   continue loop34;
                                                                                                                                                }
                                                                                                                                                addr291:
                                                                                                                                             }
                                                                                                                                             §§goto(addr336);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr303);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr291);
                                                                                                      }
                                                                                                      addr264:
                                                                                                      return §§pop();
                                                                                                      addr255:
                                                                                                      addr141:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr79:
                                                                                                   }
                                                                                                   return §§pop();
                                                                                                }
                                                                                                break;
                                                                                                §§goto(addr41);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc4_ && param3))
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         while(_loc5_)
                                                                                                         {
                                                                                                            §§push(this.§_-Mq§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(8192);
                                                                                                               addr254:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr255);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr327);
                                                                                                         addr314:
                                                                                                      }
                                                                                                      §§goto(addr343);
                                                                                                   }
                                                                                                   addr306:
                                                                                                }
                                                                                                §§goto(addr264);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr306);
                                                                                          §§goto(addr238);
                                                                                       }
                                                                                       §§goto(addr158);
                                                                                    }
                                                                                    §§goto(addr210);
                                                                                    §§goto(addr62);
                                                                                 }
                                                                                 continue loop2;
                                                                                 addr107:
                                                                              }
                                                                              §§goto(addr334);
                                                                           }
                                                                           break;
                                                                           §§goto(addr72);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr305);
                                                                           §§goto(addr303);
                                                                        }
                                                                     }
                                                                     §§goto(addr79);
                                                                  }
                                                                  §§goto(addr141);
                                                               }
                                                               §§goto(addr107);
                                                            }
                                                            §§goto(addr70);
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr133);
                                                }
                                                §§goto(addr324);
                                             }
                                             §§goto(addr279);
                                          }
                                          §§goto(addr70);
                                       }
                                       §§goto(addr211);
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr353);
                           }
                        }
                     }
                  }
               }
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               §§push(null);
               if(!(_loc4_ && param1))
               {
                  §§goto(addr235);
                  §§push(§§pop() == §§pop());
               }
               §§goto(addr387);
            }
         }
         §§goto(addr329);
      }
   }
}
