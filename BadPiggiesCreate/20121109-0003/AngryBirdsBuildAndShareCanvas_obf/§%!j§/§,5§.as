package §%!j§
{
   import §+!-§.§4!O§;
   import §+!-§.§7"#§;
   import §+!-§.DisplayObject;
   import §+!-§.DisplayObjectContainer;
   import §0!%§.§%§;
   import §0!%§.Texture;
   import §@@§.§5j§;
   import §]!R§.§2"2§;
   import §`!=§.§?!X§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §,5§
   {
      
      private static var §;m§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §;m§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §<'§:int;
      
      private var §1@§:Texture;
      
      private var §,t§:String;
      
      private var §2!b§:§?!X§;
      
      private var §6!7§:VertexBuffer3D;
      
      private var §6S§:VertexBuffer3D;
      
      private var §%I§:VertexBuffer3D;
      
      private var §;!y§:Vector.<uint>;
      
      private var §&Q§:IndexBuffer3D;
      
      private var §>!l§:Boolean = false;
      
      private var §8!=§:Boolean = false;
      
      public function §,5§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               §+-§();
               addr93:
               while(true)
               {
                  this.§2!b§ = new §?!X§(0,true);
                  addr89:
                  while(true)
                  {
                     this.§;!y§ = new Vector.<uint>(0);
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public static function §9!q§(param1:DisplayObjectContainer, param2:Vector.<§,5§>) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §0!N§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §0!N§(param1:DisplayObject, param2:Vector.<§,5§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§4!O§ = null;
         var _loc13_:§7"#§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§,5§ = null;
         var _loc7_:Boolean = false;
         if(!_loc17_)
         {
            §§push(param3);
            while(§§pop() != -1)
            {
               §§push(param1.alpha == 0);
               if(!_loc17_)
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§pop();
                        addr127:
                        addr165:
                        while(_loc18_ || param3)
                        {
                           §§push(param1.visible);
                           if(!(_loc18_ || param3))
                           {
                              continue loop1;
                           }
                           §§push(!§§pop());
                           if(!(_loc17_ && param2))
                           {
                              continue loop1;
                           }
                           addr179:
                           addr179:
                           if(§§pop())
                           {
                              addr180:
                              §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                              if(_loc18_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc9_ = §§pop();
                              _loc10_ = new Matrix3D();
                              if(!_loc17_)
                              {
                                 §§push(param5);
                                 if(_loc18_ || param2)
                                 {
                                    §§push(param1.alpha);
                                    if(!(_loc17_ && §,5§))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc18_)
                                       {
                                          addr217:
                                          §§push(Number(§§pop()));
                                          if(_loc18_ || param2)
                                          {
                                             §§push(§§pop());
                                             if(!_loc17_)
                                             {
                                                addr228:
                                                param5 = §§pop();
                                                addr229:
                                                §§push(0);
                                             }
                                             if(§§pop() > §§pop())
                                             {
                                                if(!_loc17_)
                                                {
                                                   addr233:
                                                   _loc6_ = 0;
                                                }
                                                addr287:
                                                §§push(_loc6_);
                                                if(!_loc17_)
                                                {
                                                   §§push(_loc9_);
                                                   if(!(_loc17_ && param1))
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         _loc11_ = _loc8_.getChildAt(_loc6_);
                                                         if(_loc18_)
                                                         {
                                                            _loc10_.copyFrom(param4);
                                                            _loc11_.§1w§(_loc10_);
                                                            addr286:
                                                         }
                                                         addr263:
                                                         §§push(§0!N§(_loc11_,param2,param3,_loc10_,param5));
                                                         if(!_loc17_)
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                         param3 = §§pop();
                                                         addr282:
                                                         if(_loc18_)
                                                         {
                                                            _loc6_++;
                                                            if(_loc18_)
                                                            {
                                                               if(_loc18_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr263);
                                                                  }
                                                                  §§goto(addr287);
                                                               }
                                                               §§goto(addr282);
                                                            }
                                                            §§goto(addr263);
                                                         }
                                                         §§goto(addr286);
                                                      }
                                                      if(_loc18_ || param3)
                                                      {
                                                         addr424:
                                                         §§push(_loc7_);
                                                         if(_loc18_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc18_ || param1)
                                                               {
                                                                  §§push(int(param2.length - 1));
                                                                  if(_loc18_ || §,5§)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     if(_loc18_ || param2)
                                                                     {
                                                                        addr455:
                                                                        §§push(_loc6_);
                                                                        if(!_loc17_)
                                                                        {
                                                                           if(!(_loc17_ && §,5§))
                                                                           {
                                                                              addr467:
                                                                              if(§§pop() <= param3)
                                                                              {
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       §§goto(addr473);
                                                                                    }
                                                                                    addr504:
                                                                                    delete param2[_loc6_];
                                                                                    addr512:
                                                                                    §§goto(addr505);
                                                                                    addr512:
                                                                                 }
                                                                                 §§goto(addr487);
                                                                              }
                                                                              param2[_loc6_].dispose();
                                                                              §§goto(addr512);
                                                                           }
                                                                           §§goto(addr486);
                                                                        }
                                                                        addr473:
                                                                        §§push(param3);
                                                                        if(_loc17_ && param3)
                                                                        {
                                                                           addr486:
                                                                           _loc6_ = §§pop() - 1;
                                                                           addr487:
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§goto(addr455);
                                                                           }
                                                                           addr485:
                                                                           §§goto(addr485);
                                                                           §§push(_loc6_);
                                                                           addr505:
                                                                        }
                                                                        return §§pop();
                                                                        addr454:
                                                                     }
                                                                     §§goto(addr512);
                                                                  }
                                                                  §§goto(addr486);
                                                               }
                                                               §§goto(addr454);
                                                            }
                                                            §§goto(addr473);
                                                         }
                                                         §§goto(addr504);
                                                         addr306:
                                                      }
                                                      §§goto(addr473);
                                                   }
                                                   §§goto(addr467);
                                                }
                                                §§goto(addr486);
                                             }
                                             §§goto(addr306);
                                          }
                                       }
                                       §§goto(addr229);
                                    }
                                    §§goto(addr228);
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr233);
                           }
                           else
                           {
                              if(!(param1 is §4!O§))
                              {
                                 throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                              }
                              if(!_loc17_)
                              {
                                 _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §4!O§) as §7"#§) ? _loc13_.texture : null;
                                 if(_loc18_ || §,5§)
                                 {
                                    if(_loc13_)
                                    {
                                       if(_loc18_ || param3)
                                       {
                                          addr349:
                                          §§push(_loc13_.smoothing);
                                          if(!_loc17_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc17_)
                                             {
                                                addr362:
                                                _loc15_ = §§pop();
                                             }
                                          }
                                          §§goto(addr362);
                                       }
                                       if((_loc16_ = param2[param3]).§^G§(_loc12_,_loc14_,_loc15_))
                                       {
                                          if(_loc18_)
                                          {
                                             param3++;
                                             if(!_loc17_)
                                             {
                                                if(param2.length <= param3)
                                                {
                                                   if(!(_loc17_ && §,5§))
                                                   {
                                                      param2.push(new §,5§());
                                                      if(_loc17_ && param2)
                                                      {
                                                      }
                                                      addr415:
                                                      §§goto(addr424);
                                                   }
                                                   §§goto(addr415);
                                                }
                                                (_loc16_ = param2[param3]).reset();
                                                addr408:
                                                _loc16_.§0!B§(_loc12_,param5,_loc14_,_loc15_,param4);
                                             }
                                          }
                                          §§goto(addr415);
                                       }
                                       §§goto(addr408);
                                    }
                                    else
                                    {
                                       §§push(null);
                                       if(_loc18_)
                                       {
                                          §§goto(addr362);
                                       }
                                    }
                                    §§goto(addr362);
                                 }
                                 §§goto(addr349);
                              }
                           }
                           §§goto(addr424);
                        }
                        addr165:
                        §§goto(addr179);
                     }
                  }
                  §§goto(addr82);
               }
               §§goto(addr179);
            }
            while(true)
            {
               §§goto(addr174);
            }
         }
         §§goto(addr88);
      }
      
      private static function §+-§() : void
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
         var _loc1_:§%K§ = §%K§.§`9§;
         if(_loc23_)
         {
            if(_loc1_.§?!W§(§0!+§(true)))
            {
               if(!_loc24_)
               {
                  return;
               }
            }
         }
         var _loc2_:§5j§ = new §5j§();
         var _loc3_:§5j§ = new §5j§();
         var _loc13_:int = 0;
         var _loc14_:* = [true,false];
         loop0:
         while(§§hasnext(_loc14_,_loc13_))
         {
            §§push(Boolean(§§nextvalue(_loc13_,_loc14_)));
            loop1:
            while(true)
            {
               _loc6_ = §§pop();
               while(true)
               {
                  §§push("m44 op, va0, vc0  \n" + "mov v0, va2       \n");
                  addr140:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     if(!(_loc24_ && §,5§))
                     {
                        if(_loc24_ && _loc1_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public static function §0!+§(param1:Boolean) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            return !!param1 ? "QB_q*" : "QB_q\'";
         }
         §§goto(addr30);
      }
      
      public static function §=S§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            var _loc6_:* = !!param1 ? "QB_i*" : "QB_i\'";
            if(_loc8_ || param1)
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
                        addr177:
                        while(true)
                        {
                           §§push(§§pop() + "N");
                           addr179:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              addr180:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr176:
                  }
                  while(true)
                  {
                     §§push(param3);
                     loop6:
                     for(; !_loc7_; while(true)
                     {
                        §§push(param5);
                        if(_loc7_ && param2)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           §§goto(addr138);
                        }
                        §§goto(addr48);
                        §§goto(addr173);
                     })
                     {
                        if(!§§pop())
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(_loc6_);
                           addr158:
                           while(true)
                           {
                              §§push(§§pop() + "R");
                              addr160:
                              while(!_loc7_)
                              {
                                 _loc6_ = §§pop();
                              }
                              §§goto(addr179);
                           }
                           addr76:
                           if(!(_loc8_ || param1))
                           {
                              continue;
                           }
                           §§push(_loc6_);
                           if(!(_loc7_ && param1))
                           {
                              if(!(_loc7_ && param2))
                              {
                                 addr109:
                                 loop16:
                                 for(; !_loc7_; while(true)
                                 {
                                    §§push(_loc6_);
                                    if(_loc8_ || param1)
                                    {
                                       break;
                                    }
                                    continue loop16;
                                 },addr34:,if(!_loc8_)
                                 {
                                    loop15:
                                    while(_loc8_)
                                    {
                                       §§push(§%§.§<!U§);
                                       if(!(_loc7_ && §,5§))
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             if(!(_loc7_ && param1))
                                             {
                                                addr69:
                                                if(_loc8_ || param1)
                                                {
                                                   §§goto(addr76);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      addr48:
                                                      while(true)
                                                      {
                                                         continue loop15;
                                                      }
                                                      §§goto(addr69);
                                                   }
                                                   addr151:
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr116);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr34);
                                       }
                                       §§goto(addr109);
                                    }
                                    §§goto(addr158);
                                 },return §§pop())
                                 {
                                    _loc6_ = §§pop();
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(_loc8_)
                                          {
                                             if(!(_loc8_ || param3))
                                             {
                                                break;
                                             }
                                             continue loop16;
                                          }
                                          addr173:
                                          addr173:
                                          while(true)
                                          {
                                             continue loop6;
                                          }
                                       }
                                       else
                                       {
                                          while(_loc8_)
                                          {
                                             §§push(_loc6_);
                                             break loop16;
                                          }
                                          §§goto(addr180);
                                          addr138:
                                       }
                                    }
                                    §§goto(addr176);
                                 }
                                 §§push(§§pop() + param4.charAt(0));
                                 while(true)
                                 {
                                    §§push(§§pop() + "C");
                                    if(_loc8_ || param3)
                                    {
                                       _loc6_ = §§pop();
                                       §§goto(addr151);
                                    }
                                    break;
                                 }
                                 §§goto(addr160);
                                 addr113:
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr113);
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr173);
         }
         §§goto(addr21);
      }
      
      public function get §^"-§() : int
      {
         return this.§<'§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§6!7§)
            {
               loop0:
               while(true)
               {
                  this.§6!7§.dispose();
                  addr107:
                  addr78:
                  while(true)
                  {
                  }
                  loop2:
                  while(true)
                  {
                     if(!(_loc1_ || this))
                     {
                        continue loop0;
                     }
                     this.§6S§.dispose();
                     loop3:
                     for(; _loc1_; if(!(_loc1_ || this))
                     {
                        continue;
                     },this.§&Q§.dispose(),§§goto(addr59))
                     {
                        while(true)
                        {
                           if(this.§%I§)
                           {
                              while(true)
                              {
                                 this.§%I§.dispose();
                                 addr71:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                              addr68:
                           }
                           while(this.§&Q§)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 continue loop3;
                              }
                              addr59:
                              if(!_loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 §§goto(addr68);
                              }
                              §§goto(addr71);
                           }
                           return;
                        }
                     }
                     §§goto(addr107);
                  }
               }
            }
            while(true)
            {
               if(this.§6S§)
               {
                  §§goto(addr78);
               }
               §§goto(addr64);
               §§goto(addr107);
            }
         }
         §§goto(addr107);
      }
      
      private function §@!J§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§2!b§.§8!B§);
         if(_loc4_ || this)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(_loc1_);
            if(_loc4_ || _loc3_)
            {
               §§push(0);
               if(!_loc5_)
               {
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr73);
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§goto(addr68);
                     }
                  }
                  §§goto(addr72);
               }
               §§goto(addr68);
            }
            addr68:
            §§push(int(§§pop() * 2));
            if(_loc4_)
            {
               §§goto(addr72);
            }
            addr73:
            §§goto(addr50);
         }
         addr50:
         §§push(16);
         if(_loc4_ || _loc2_)
         {
            addr72:
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc5_ && _loc1_))
         {
            this.§2!b§.§8!B§ = _loc2_ * 4;
         }
         §§push(_loc1_);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc4_)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     if(_loc4_ || this)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.§8!=§ = true;
                           addr137:
                           if(_loc4_)
                           {
                              break;
                           }
                           while(true)
                           {
                              this.§;!y§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                              addr204:
                              while(true)
                              {
                                 this.§;!y§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                                 while(!_loc5_)
                                 {
                                    this.§;!y§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                                    loop4:
                                    while(!_loc5_)
                                    {
                                       _loc3_++;
                                       while(_loc5_ && _loc3_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 addr262:
                                 while(true)
                                 {
                                    this.§;!y§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                                 }
                              }
                           }
                           addr221:
                        }
                        while(true)
                        {
                           this.§;!y§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
                           §§goto(addr221);
                           §§goto(addr262);
                        }
                     }
                     §§goto(addr204);
                  }
                  §§goto(addr142);
               }
               §§goto(addr137);
            }
            else
            {
               this.§;!y§[int(_loc3_ * 6)] = _loc3_ * 4;
            }
            §§goto(addr262);
         }
      }
      
      private function §-!D§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§8!=§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  loop0:
                  do
                  {
                     if(param1 == null)
                     {
                        continue;
                     }
                     loop1:
                     while(true)
                     {
                        if(this.§6!7§)
                        {
                           addr88:
                           while(true)
                           {
                              this.§6!7§.dispose();
                              addr91:
                              while(true)
                              {
                              }
                           }
                           addr88:
                        }
                        while(true)
                        {
                           if(this.§6S§)
                           {
                              while(_loc3_)
                              {
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    continue loop0;
                                 }
                                 this.§6S§.dispose();
                                 while(true)
                                 {
                                 }
                              }
                              continue loop1;
                              addr71:
                           }
                           loop5:
                           while(true)
                           {
                              if(this.§%I§)
                              {
                                 if(!_loc4_)
                                 {
                                    this.§%I§.dispose();
                                 }
                                 while(true)
                                 {
                                    addr30:
                                    if(!(_loc3_ || param1))
                                    {
                                       continue;
                                    }
                                    if(!(_loc4_ && param1))
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!_loc3_)
                                          {
                                             addr108:
                                             return false;
                                             addr107:
                                          }
                                          this.§&Q§.dispose();
                                          addr51:
                                          if(!_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                break loop5;
                                             }
                                             if(false)
                                             {
                                                continue loop5;
                                             }
                                             addr110:
                                             §§push(this.§2!b§.§8!B§);
                                             if(!_loc4_)
                                             {
                                                §§push(int(§§pop() / 4));
                                             }
                                             var _loc2_:* = §§pop();
                                             if(!(_loc4_ && param1))
                                             {
                                                this.§6!7§ = param1.createVertexBuffer(_loc2_ * 4,§?!X§.§5;§);
                                                this.§6!7§.uploadFromByteArray(this.§2!b§.§3!T§,0,0,_loc2_ * 4);
                                                this.§6S§ = param1.createVertexBuffer(_loc2_ * 4,§?!X§.§-p§);
                                                addr276:
                                                if(_loc3_)
                                                {
                                                   this.§6S§.uploadFromVector(this.§2!b§.§3!e§,0,_loc2_ * 4);
                                                   this.§%I§ = param1.createVertexBuffer(_loc2_ * 4,§?!X§.§0[§);
                                                   addr230:
                                                   if(_loc3_)
                                                   {
                                                      this.§%I§.uploadFromVector(this.§2!b§.§#5§,0,_loc2_ * 4);
                                                      this.§&Q§ = param1.createIndexBuffer(_loc2_ * 6);
                                                      this.§&Q§.uploadFromVector(this.§;!y§,0,_loc2_ * 6);
                                                      addr193:
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            this.§8!=§ = false;
                                                            if(_loc3_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     if(_loc4_ && _loc2_)
                                                                     {
                                                                        §§goto(addr276);
                                                                     }
                                                                     return true;
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                            }
                                                            §§goto(addr193);
                                                         }
                                                         §§goto(addr230);
                                                      }
                                                      addr205:
                                                      §§goto(addr205);
                                                   }
                                                   §§goto(addr276);
                                                }
                                                addr256:
                                                §§goto(addr256);
                                             }
                                             §§goto(addr193);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr88);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr71);
                                    }
                                    §§goto(addr83);
                                 }
                              }
                              while(this.§&Q§)
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr30);
                                 }
                                 §§goto(addr51);
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr91);
                        }
                     }
                  }
                  while(_loc4_);
                  
                  throw new §2"2§();
               }
               §§goto(addr107);
            }
            §§goto(addr108);
         }
         §§goto(addr88);
      }
      
      private function §9v§(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§-!D§(param1));
            loop0:
            while(!§§pop())
            {
               loop2:
               while(true)
               {
                  §§push(this.§>!l§);
                  if(_loc2_)
                  {
                     continue loop0;
                  }
                  if(§§pop())
                  {
                     while(_loc3_)
                     {
                        this.§6S§.uploadFromVector(this.§2!b§.§3!e§,0,this.§<'§ * 4);
                        while(true)
                        {
                        }
                     }
                     continue;
                     addr59:
                  }
                  while(true)
                  {
                     this.§%I§.uploadFromVector(this.§2!b§.§#5§,0,this.§<'§ * 4);
                     if(_loc2_)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        break;
                     }
                     §§goto(addr59);
                  }
                  if(!_loc2_)
                  {
                     break loop0;
                  }
                  addr77:
                  while(true)
                  {
                     this.§6!7§.uploadFromByteArray(this.§2!b§.§3!T§,0,0,this.§<'§ * 4);
                     continue loop2;
                  }
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
         if(_loc8_ || param3)
         {
            if(this.§<'§ == 0)
            {
               if(!(_loc9_ && param3))
               {
                  return;
               }
            }
         }
         §§push(this.§2!b§.premultipliedAlpha);
         if(!_loc9_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param3 == 1);
         if(!(_loc9_ && param1))
         {
            §§push(!§§pop());
         }
         var _loc5_:* = §§pop();
         if(_loc8_)
         {
            if(this.§1@§)
            {
               addr59:
               §§push(§=S§(_loc5_,this.§1@§.mipMapping,this.§1@§.repeat,this.§,t§,this.§>!l§));
               if(!_loc9_)
               {
                  §§push(§§pop());
                  if(_loc8_ || param3)
                  {
                     addr96:
                     §§push(§§pop());
                     addr82:
                  }
                  else
                  {
                     addr93:
                     §§push(§§pop());
                     if(_loc8_)
                     {
                        §§goto(addr96);
                     }
                  }
                  var _loc6_:* = §§pop();
                  if(_loc8_)
                  {
                     §&Y§.§;!E§(param1,_loc4_);
                     loop0:
                     while(true)
                     {
                        this.§9v§(param1);
                        if(_loc8_ || param3)
                        {
                           param1.setProgram(§%K§.§`9§.§^"9§(_loc6_));
                           if(!(_loc9_ && param2))
                           {
                              param1.setVertexBufferAt(0,this.§%I§,§?!X§.§^!5§,Context3DVertexBufferFormat.FLOAT_3);
                              if(_loc8_ || param3)
                              {
                                 continue;
                              }
                              loop24:
                              while(true)
                              {
                                 §§push(this.§>!l§);
                                 if(!(_loc9_ && param1))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc8_ || param1)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             if(!_loc9_)
                                             {
                                                if(_loc9_)
                                                {
                                                   break loop11;
                                                }
                                                param1.setVertexBufferAt(2,null);
                                                loop13:
                                                while(_loc8_ || param1)
                                                {
                                                   while(true)
                                                   {
                                                      param1.setVertexBufferAt(0,null);
                                                      if(_loc9_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(!(_loc8_ || this))
                                                      {
                                                         continue loop12;
                                                      }
                                                      if(!_loc9_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            break loop0;
                                                         }
                                                         break loop12;
                                                      }
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(_loc9_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            continue loop24;
                                                         }
                                                         addr391:
                                                         addr458:
                                                         loop9:
                                                         while(_loc8_ || param2)
                                                         {
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(this.§1@§);
                                                               if(!_loc9_)
                                                               {
                                                                  if(_loc9_ && this)
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(null);
                                                                     addr365:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(_loc9_ && param3)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        §§push(§§pop());
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr402:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  break loop9;
                                                               }
                                                               addr433:
                                                               param1.setTextureAt(0,null);
                                                               while(true)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr446:
                                                                     while(true)
                                                                     {
                                                                        param1.drawTriangles(this.§&Q§,0,this.§<'§ * 2);
                                                                        break loop15;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        param1.setVertexBufferAt(1,this.§6!7§,§?!X§.§<[§,Context3DVertexBufferFormat.FLOAT_2);
                                                                        §§goto(addr446);
                                                                     }
                                                                     addr446:
                                                                     addr465:
                                                                     addr408:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr446);
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr465);
                                                                  }
                                                                  §§goto(addr408);
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            param1.setTextureAt(0,this.§1@§.getBase(param1));
                                                            §§goto(addr446);
                                                         }
                                                      }
                                                      while(!(_loc9_ && param3))
                                                      {
                                                         §§goto(addr402);
                                                         §§push(this.§1@§);
                                                      }
                                                      §§goto(addr433);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   addr455:
                                                   §§goto(addr457);
                                                }
                                             }
                                             addr403:
                                             while(true)
                                             {
                                                param1.setTextureAt(0,null);
                                                break loop12;
                                             }
                                          }
                                          while(true)
                                          {
                                             param1.setVertexBufferAt(1,null);
                                             §§goto(addr391);
                                          }
                                       }
                                       §§goto(addr297);
                                    }
                                    param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§;m§,1);
                                    addr489:
                                    §§goto(addr484);
                                    addr489:
                                 }
                                 §§goto(addr375);
                              }
                           }
                           §§goto(addr458);
                        }
                        break;
                     }
                     return;
                  }
                  §§goto(addr340);
               }
               §§goto(addr82);
            }
            else
            {
               §§push(§0!+§(_loc5_));
               if(!(_loc9_ && param2))
               {
                  §§goto(addr93);
               }
            }
            §§goto(addr96);
         }
         §§goto(addr59);
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§<'§ = 0;
            loop0:
            do
            {
               this.§>!l§ = false;
               while(true)
               {
                  this.§1@§ = null;
                  while(_loc1_)
                  {
                     this.§,t§ = null;
                     if(_loc1_ || _loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function §0!B§(param1:§4!O§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || param1)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(§§pop() * param1.alpha);
               addr188:
               while(true)
               {
                  §§push(Number(§§pop()));
                  addr189:
                  while(true)
                  {
                     param2 = §§pop();
                     addr190:
                     while(true)
                     {
                        §§push(param2);
                        if(!(_loc10_ && param1))
                        {
                           if(_loc10_ && param1)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        addr198:
                        var _loc6_:int = §§pop();
                        if(!_loc10_)
                        {
                           param1.copyVertexDataTo(this.§2!b§,_loc6_,param2,param5);
                           loop15:
                           while(true)
                           {
                              addr259:
                              while(true)
                              {
                                 §§push(param2 == 1);
                                 loop17:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    loop18:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop19:
                                          while(true)
                                          {
                                             §§pop();
                                             addr267:
                                             while(true)
                                             {
                                                §§push(param1.useColor);
                                                if(_loc9_ || param2)
                                                {
                                                   if(!(_loc9_ || param3))
                                                   {
                                                      break;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(!(_loc9_ || this))
                                                {
                                                   continue loop19;
                                                }
                                                if(_loc10_ && param3)
                                                {
                                                   continue loop17;
                                                }
                                             }
                                             continue loop18;
                                          }
                                       }
                                       while(§§pop())
                                       {
                                          if(!_loc10_)
                                          {
                                             if(!(_loc10_ && param1))
                                             {
                                                this.§>!l§ = true;
                                                if(!_loc10_)
                                                {
                                                   continue loop15;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr267);
                                             }
                                          }
                                          return;
                                       }
                                       addr276:
                                       var _loc7_:*;
                                       §§push((_loc7_ = this).§<'§);
                                       if(_loc9_ || param3)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc8_:* = §§pop();
                                       if(_loc9_ || this)
                                       {
                                          _loc7_.§<'§ = _loc8_;
                                       }
                                       §§goto(addr311);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(false)
                           {
                              §§goto(addr259);
                           }
                           §§goto(addr276);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §^G§(param1:§4!O§, param2:Texture, param3:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §§push(this.§1@§);
            loop0:
            while(true)
            {
               §§push(null);
               addr404:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc5_)
                  {
                     §§push(!§§pop());
                     while(true)
                     {
                        §§push(§§pop());
                        addr409:
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr410:
                              while(true)
                              {
                                 §§pop();
                                 addr411:
                                 while(true)
                                 {
                                    §§push(param2 == null);
                                    addr370:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                    }
                                 }
                              }
                              addr410:
                           }
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§1@§);
                                       if(!(_loc4_ || param3))
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    loop17:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          addr342:
                                          §§push(§§pop().repeat);
                                          if(_loc4_ || param3)
                                          {
                                             addr341:
                                             §§push(§§pop() == param2.repeat);
                                          }
                                          §§push(!§§pop());
                                          loop18:
                                          while(!(_loc5_ && param1))
                                          {
                                             if(_loc4_)
                                             {
                                                loop19:
                                                while(true)
                                                {
                                                   addr354:
                                                   §§push(§§pop());
                                                   if(_loc4_ || param1)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop20:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr363:
                                                            if(!_loc5_)
                                                            {
                                                               §§push(this.§,t§ == param3);
                                                               if(_loc4_ || param2)
                                                               {
                                                                  §§push(!§§pop());
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr321:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop21:
                                                                  do
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr325:
                                                                           §§push(this.§>!l§);
                                                                           if(!_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(param1.useColor);
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop21;
                                                                           }
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop20;
                                                                              }
                                                                              continue;
                                                                           }
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     addr294:
                                                                  }
                                                                  while(!(_loc4_ || param1));
                                                                  
                                                                  if(!§§pop())
                                                                  {
                                                                     addr304:
                                                                     §§pop();
                                                                     addr305:
                                                                     if(_loc4_)
                                                                     {
                                                                        addr250:
                                                                        §§push(this.§<'§ == 8192);
                                                                        if(!_loc5_)
                                                                        {
                                                                           break loop19;
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                     addr373:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§1@§);
                                                                        addr375:
                                                                        while(true)
                                                                        {
                                                                           addr379:
                                                                           §§push(§§pop().root != param2.root);
                                                                           addr380:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              addr381:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    addr382:
                                                                                    §§pop();
                                                                                    break loop20;
                                                                                 }
                                                                                 continue loop19;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  break loop19;
                                                               }
                                                               addr322:
                                                            }
                                                            break;
                                                         }
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            continue loop17;
                                                         }
                                                         §§goto(addr411);
                                                      }
                                                      §§goto(addr321);
                                                   }
                                                   §§goto(addr381);
                                                }
                                                return §§pop();
                                             }
                                             §§goto(addr410);
                                             §§goto(addr411);
                                          }
                                          §§goto(addr370);
                                       }
                                       §§goto(addr375);
                                    }
                                    addr186:
                                 }
                                 §§goto(addr373);
                              }
                           }
                        }
                     }
                     addr408:
                  }
                  §§goto(addr410);
               }
            }
         }
         §§goto(addr185);
      }
   }
}
