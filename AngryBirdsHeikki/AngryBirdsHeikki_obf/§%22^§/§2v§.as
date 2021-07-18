package §"^§
{
   import §2Y§.§7!f§;
   import §2Y§.§7?§;
   import §2Y§.DisplayObject;
   import §2Y§.DisplayObjectContainer;
   import §2i§.§"V§;
   import §3;§.§%O§;
   import §=9§.§?!2§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §2v§
   {
      
      private static var §3!"§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §3!"§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §8e§:int;
      
      private var §71§:Texture;
      
      private var §45§:String;
      
      private var §-!^§:§?!2§;
      
      private var §%3§:VertexBuffer3D;
      
      private var §3§:VertexBuffer3D;
      
      private var §[l§:VertexBuffer3D;
      
      private var §-6§:Vector.<uint>;
      
      private var §8`§:IndexBuffer3D;
      
      private var §]1§:Boolean = false;
      
      private var §14§:Boolean = false;
      
      public function §2v§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            while(true)
            {
               §[!2§();
               addr52:
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               return;
               addr59:
            }
         }
         while(true)
         {
            this.§-!^§ = new §?!2§(0,true);
            while(!_loc2_)
            {
               this.§-6§ = new Vector.<uint>(0);
               do
               {
                  this.§8e§ = 0;
                  do
                  {
                     this.§"z§();
                  }
                  while(!(_loc1_ || _loc1_));
                  
               }
               while(!_loc1_);
               
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr52);
            }
         }
         §§goto(addr59);
      }
      
      public static function §-#§(param1:DisplayObjectContainer, param2:Vector.<§2v§>) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §4!f§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §4!f§(param1:DisplayObject, param2:Vector.<§2v§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§7?§ = null;
         var _loc13_:§7!f§ = null;
         var _loc14_:Texture = null;
         var _loc15_:* = null;
         var _loc16_:§2v§ = null;
         var _loc7_:* = false;
         if(_loc18_ || §2v§)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               if(§§pop() != -1)
               {
                  §§push(param1.alpha == 0);
                  if(_loc18_)
                  {
                     if(!§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§pop();
                           if(!_loc17_)
                           {
                              if(_loc18_)
                              {
                                 §§push(param1.visible);
                                 if(!(_loc17_ && param3))
                                 {
                                    §§push(!§§pop());
                                    if(_loc18_ || §2v§)
                                    {
                                       if(!_loc18_)
                                       {
                                          continue;
                                       }
                                       if(§§pop())
                                       {
                                          if(!(_loc17_ && param2))
                                          {
                                             if(_loc18_)
                                             {
                                                §§push(param3);
                                                if(!_loc17_)
                                                {
                                                   break loop0;
                                                }
                                                loop3:
                                                while(_loc18_)
                                                {
                                                   addr149:
                                                   param3 = §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc18_ || param2)
                                                      {
                                                         if(param2.length != 0)
                                                         {
                                                            param2[0].reset();
                                                            if(_loc17_ && param3)
                                                            {
                                                            }
                                                            break loop1;
                                                         }
                                                         param2.push(new §2v§());
                                                         while(true)
                                                         {
                                                            if(_loc17_ && param3)
                                                            {
                                                               addr170:
                                                               while(true)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               addr170:
                                                            }
                                                         }
                                                         addr174:
                                                         if(param1 is DisplayObjectContainer)
                                                         {
                                                            break loop1;
                                                         }
                                                         if(!(param1 is §7?§))
                                                         {
                                                            throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                                                         }
                                                         if(!_loc17_)
                                                         {
                                                            _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §7?§) as §7!f§) ? _loc13_.texture : null;
                                                            if(_loc18_)
                                                            {
                                                               if(_loc13_)
                                                               {
                                                                  addr349:
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§push(_loc13_.smoothing);
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc17_)
                                                                        {
                                                                           addr347:
                                                                           §§push(§§pop());
                                                                        }
                                                                     }
                                                                  }
                                                                  if((_loc16_ = param2[param3]).§?!=§(_loc12_,_loc14_,_loc15_))
                                                                  {
                                                                     if(_loc18_ || §2v§)
                                                                     {
                                                                        param3++;
                                                                        if(!_loc17_)
                                                                        {
                                                                           if(param2.length <= param3)
                                                                           {
                                                                              if(!_loc18_)
                                                                              {
                                                                              }
                                                                              addr387:
                                                                              (_loc16_ = param2[param3]).reset();
                                                                              addr394:
                                                                              _loc16_.§>[§(_loc12_,param5,_loc14_,_loc15_,param4);
                                                                              §§push(_loc7_);
                                                                              if(!(_loc17_ && param1))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc17_ && §2v§))
                                                                                    {
                                                                                       addr426:
                                                                                       §§push(int(param2.length - 1));
                                                                                       if(!(_loc17_ && param1))
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          if(_loc18_ || param1)
                                                                                          {
                                                                                             addr446:
                                                                                             §§push(_loc6_);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                if(!(_loc17_ && param3))
                                                                                                {
                                                                                                   addr458:
                                                                                                   if(§§pop() <= param3)
                                                                                                   {
                                                                                                      if(_loc18_ || param2)
                                                                                                      {
                                                                                                         §§goto(addr467);
                                                                                                      }
                                                                                                      §§goto(addr481);
                                                                                                   }
                                                                                                   param2[_loc6_].dispose();
                                                                                                   §§goto(addr508);
                                                                                                }
                                                                                                §§goto(addr480);
                                                                                             }
                                                                                             addr467:
                                                                                             §§push(param3);
                                                                                             if(!(_loc18_ || §2v§))
                                                                                             {
                                                                                                addr480:
                                                                                                _loc6_ = §§pop() - 1;
                                                                                                addr481:
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      §§goto(addr446);
                                                                                                   }
                                                                                                   addr500:
                                                                                                   delete param2[_loc6_];
                                                                                                   addr508:
                                                                                                }
                                                                                                addr479:
                                                                                                §§goto(addr479);
                                                                                                §§push(_loc6_);
                                                                                             }
                                                                                             return §§pop();
                                                                                             addr445:
                                                                                          }
                                                                                          §§goto(addr467);
                                                                                       }
                                                                                       §§goto(addr480);
                                                                                    }
                                                                                    §§goto(addr445);
                                                                                 }
                                                                                 §§goto(addr467);
                                                                              }
                                                                              §§goto(addr500);
                                                                              addr401:
                                                                           }
                                                                           §§goto(addr387);
                                                                        }
                                                                        param2.push(new §2v§());
                                                                        if(!(_loc17_ && param3))
                                                                        {
                                                                           §§goto(addr387);
                                                                        }
                                                                        §§goto(addr401);
                                                                     }
                                                                     §§goto(addr387);
                                                                  }
                                                                  §§goto(addr394);
                                                               }
                                                               else
                                                               {
                                                                  §§push(null);
                                                                  if(_loc18_)
                                                                  {
                                                                     §§goto(addr347);
                                                                  }
                                                               }
                                                               _loc15_ = §§pop();
                                                            }
                                                            §§goto(addr349);
                                                         }
                                                         §§goto(addr387);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(true);
                                                            if(_loc18_ || param2)
                                                            {
                                                               _loc7_ = §§pop();
                                                               §§goto(addr170);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr174);
                                                            }
                                                         }
                                                         addr161:
                                                      }
                                                      §§goto(addr174);
                                                      §§goto(addr149);
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr137);
                                          }
                                          break;
                                       }
                                    }
                                 }
                                 §§goto(addr174);
                              }
                              §§goto(addr150);
                           }
                           break;
                        }
                        §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                        if(!(_loc17_ && param3))
                        {
                           §§push(int(§§pop()));
                        }
                        _loc9_ = §§pop();
                        _loc10_ = new Matrix3D();
                        if(_loc18_ || param2)
                        {
                           §§push(param5);
                           if(_loc18_ || §2v§)
                           {
                              §§push(§§pop() * param1.alpha);
                              if(!_loc17_)
                              {
                                 addr215:
                                 §§push(Number(§§pop()));
                              }
                              param5 = §§pop();
                              if(!(_loc17_ && param3))
                              {
                                 _loc6_ = 0;
                                 addr283:
                                 §§push(_loc6_);
                                 if(_loc18_)
                                 {
                                    §§push(_loc9_);
                                    if(!(_loc17_ && param3))
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          _loc11_ = _loc8_.getChildAt(_loc6_);
                                          if(!(_loc17_ && §2v§))
                                          {
                                             _loc10_.copyFrom(param4);
                                             _loc11_.§6!W§(_loc10_);
                                             addr259:
                                             §§push(§4!f§(_loc11_,param2,param3,_loc10_,param5));
                                             if(!_loc17_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             param3 = §§pop();
                                             addr278:
                                             if(_loc18_)
                                             {
                                                _loc6_++;
                                                if(_loc18_)
                                                {
                                                   if(_loc18_)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr259);
                                                      }
                                                      §§goto(addr283);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                §§goto(addr259);
                                                addr273:
                                             }
                                             addr282:
                                             §§goto(addr282);
                                          }
                                          §§goto(addr273);
                                       }
                                       if(!(_loc17_ && param3))
                                       {
                                          §§goto(addr387);
                                       }
                                       §§goto(addr426);
                                    }
                                    §§goto(addr458);
                                 }
                                 §§goto(addr480);
                                 addr226:
                              }
                              §§goto(addr226);
                           }
                           §§goto(addr215);
                        }
                        §§goto(addr283);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr174);
               }
               §§goto(addr161);
            }
            return §§pop();
         }
         §§goto(addr170);
      }
      
      private static function §[!2§() : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         var _loc8_:Array = null;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc1_:§+!'§ = §+!'§.§2d§;
         if(_loc24_ || _loc3_)
         {
            if(_loc1_.§9!A§(native(true)))
            {
               if(!_loc23_)
               {
                  return;
               }
            }
         }
         var _loc2_:§%O§ = new §%O§();
         var _loc3_:§%O§ = new §%O§();
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
               loop2:
               while(true)
               {
                  §§push("m44 op, va0, vc0  \n" + "mov v0, va2       \n");
                  while(true)
                  {
                     _loc4_ = §§pop();
                     continue loop1;
                     addr134:
                     loop8:
                     while(true)
                     {
                        §§push("mul ft0, v0, fc0  \n" + "mov oc, ft0       \n");
                        if(!(_loc24_ || _loc3_))
                        {
                           break;
                        }
                        addr144:
                        while(true)
                        {
                           _loc5_ = §§pop();
                           loop6:
                           while(true)
                           {
                              if(_loc24_)
                              {
                                 _loc2_.§!!-§(Context3DProgramType.VERTEX,_loc4_);
                                 if(!_loc24_)
                                 {
                                    break;
                                 }
                                 if(_loc24_ || _loc1_)
                                 {
                                    while(true)
                                    {
                                       _loc3_.§!!-§(Context3DProgramType.FRAGMENT,_loc5_);
                                       if(_loc23_)
                                       {
                                          break loop6;
                                       }
                                       if(!_loc23_)
                                       {
                                          _loc1_.§;!a§(native(_loc6_),_loc2_.§0! §,_loc3_.§0! §);
                                          if(_loc23_ && §2v§)
                                          {
                                             break loop6;
                                          }
                                          continue;
                                       }
                                       continue loop8;
                                    }
                                    continue loop1;
                                 }
                                 continue;
                              }
                              continue loop2;
                           }
                           continue loop0;
                           §§goto(addr144);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function native(param1:Boolean) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            return !!param1 ? "QB_q*" : "QB_q\'";
         }
         §§goto(addr30);
      }
      
      public static function §^W§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            var _loc6_:* = !!param1 ? "QB_i*" : "QB_i\'";
            if(!(_loc7_ && param3))
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
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr152:
                           while(true)
                           {
                              §§push(_loc6_);
                              addr153:
                              while(true)
                              {
                                 §§push(§§pop() + "R");
                                 addr155:
                                 while(true)
                                 {
                                    if(!(_loc7_ && param2))
                                    {
                                       _loc6_ = §§pop();
                                       while(true)
                                       {
                                       }
                                       addr173:
                                    }
                                    else
                                    {
                                       §§goto(addr179);
                                    }
                                 }
                              }
                           }
                           addr152:
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
            §§goto(addr152);
         }
         §§goto(addr21);
      }
      
      public function get §8!&§() : int
      {
         return this.§8e§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§%3§)
            {
               while(true)
               {
                  this.§%3§.dispose();
                  addr118:
                  while(true)
                  {
                  }
               }
               addr115:
            }
            while(true)
            {
               if(this.§3§)
               {
                  while(!(_loc1_ && _loc2_))
                  {
                     if(_loc2_)
                     {
                        this.§3§.dispose();
                        while(true)
                        {
                        }
                        addr111:
                     }
                     else
                     {
                        §§goto(addr115);
                     }
                     loop6:
                     while(_loc2_ || _loc1_)
                     {
                        while(this.§8`§)
                        {
                           if(_loc1_ && this)
                           {
                              break;
                           }
                           addr60:
                           if(_loc1_ && this)
                           {
                              continue loop6;
                           }
                           this.§8`§.dispose();
                           §§goto(addr60);
                           continue loop6;
                        }
                        return;
                     }
                  }
                  continue;
               }
               while(true)
               {
                  if(this.§[l§)
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        if(_loc1_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           this.§[l§.dispose();
                        }
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr29);
               }
            }
         }
         §§goto(addr74);
      }
      
      private function §"z§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§-!^§.§<!§);
         if(!_loc5_)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(!(_loc5_ && _loc1_))
         {
            §§push(_loc1_);
            if(_loc4_ || _loc1_)
            {
               §§push(0);
               if(_loc4_)
               {
                  if(§§pop() == §§pop())
                  {
                     addr45:
                     §§push(16);
                     if(_loc4_ || _loc1_)
                     {
                        addr72:
                        §§push(int(§§pop()));
                        addr53:
                     }
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(!(_loc5_ && _loc3_))
                     {
                        addr63:
                        §§push(int(§§pop() * 2));
                        if(_loc4_ || this)
                        {
                           §§goto(addr72);
                        }
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc5_)
                  {
                     this.§-!^§.§<!§ = _loc2_ * 4;
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
                        if(!_loc5_)
                        {
                           if(_loc4_)
                           {
                              this.§14§ = true;
                              addr103:
                              if(!_loc5_)
                              {
                                 if(!(_loc5_ && _loc1_))
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          this.§-6§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                                       }
                                       addr211:
                                    }
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             this.§-6§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                                             addr228:
                                             while(true)
                                             {
                                                this.§-6§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
                                                §§goto(addr211);
                                                continue loop7;
                                             }
                                          }
                                          addr252:
                                       }
                                       this.§-6§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                                       loop2:
                                       while(true)
                                       {
                                          this.§-6§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                                          addr134:
                                          while(true)
                                          {
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                break loop2;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc3_++;
                                 }
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr228);
                        }
                        §§goto(addr103);
                     }
                     else
                     {
                        this.§-6§[int(_loc3_ * 6)] = _loc3_ * 4;
                     }
                     §§goto(addr252);
                  }
                  return;
               }
               §§goto(addr63);
            }
            §§goto(addr53);
         }
         §§goto(addr45);
      }
      
      private function §0!X§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§14§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     if(param1 != null)
                     {
                        loop1:
                        while(true)
                        {
                           if(this.§%3§)
                           {
                              loop2:
                              while(!_loc4_)
                              {
                                 this.§%3§.dispose();
                                 while(true)
                                 {
                                    addr88:
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    loop10:
                                    while(this.§8`§)
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             while(true)
                                             {
                                                this.§8`§.dispose();
                                                addr45:
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         if(_loc4_ && param1)
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(true)
                                                         {
                                                            break loop10;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!this.§[l§)
                                                            {
                                                               continue loop10;
                                                            }
                                                         }
                                                      }
                                                      while(!(_loc4_ && _loc2_))
                                                      {
                                                         if(!(_loc3_ || _loc2_))
                                                         {
                                                            §§goto(addr118);
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         this.§[l§.dispose();
                                                      }
                                                      continue loop1;
                                                   }
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr88);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§3§.dispose();
                                                            break loop9;
                                                         }
                                                         addr100:
                                                      }
                                                   }
                                                }
                                             }
                                             addr42:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr63);
                                          }
                                       }
                                       §§goto(addr45);
                                    }
                                    §§push(this.§-!^§.§<!§);
                                    if(_loc3_)
                                    {
                                       §§push(int(§§pop() / 4));
                                    }
                                    var _loc2_:* = §§pop();
                                    if(!(_loc4_ && this))
                                    {
                                       this.§%3§ = param1.createVertexBuffer(_loc2_ * 4,§?!2§.§6?§);
                                       this.§%3§.uploadFromByteArray(this.§-!^§.§8Y§,0,0,_loc2_ * 4);
                                       this.§3§ = param1.createVertexBuffer(_loc2_ * 4,§?!2§.§1!R§);
                                       this.§3§.uploadFromVector(this.§-!^§.§!$§,0,_loc2_ * 4);
                                       this.§[l§ = param1.createVertexBuffer(_loc2_ * 4,§?!2§.§#!Q§);
                                       addr271:
                                       addr291:
                                       addr247:
                                       if(!(_loc4_ && this))
                                       {
                                          this.§[l§.uploadFromVector(this.§-!^§.§+k§,0,_loc2_ * 4);
                                          addr215:
                                          if(_loc3_)
                                          {
                                             this.§8`§ = param1.createIndexBuffer(_loc2_ * 6);
                                             addr201:
                                             if(!_loc4_)
                                             {
                                                this.§8`§.uploadFromVector(this.§-6§,0,_loc2_ * 6);
                                                addr183:
                                                if(_loc3_)
                                                {
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      this.§14§ = false;
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§goto(addr271);
                                                            }
                                                            return true;
                                                            addr172:
                                                         }
                                                         §§goto(addr271);
                                                      }
                                                      §§goto(addr183);
                                                   }
                                                   §§goto(addr215);
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr291);
                                          }
                                          §§goto(addr247);
                                       }
                                       addr258:
                                       §§goto(addr258);
                                    }
                                    §§goto(addr172);
                                 }
                              }
                              addr128:
                              return false;
                              addr127:
                           }
                           while(true)
                           {
                              if(this.§3§)
                              {
                                 §§goto(addr100);
                              }
                              §§goto(addr63);
                           }
                        }
                     }
                     addr118:
                     throw new §"V§();
                  }
               }
               §§goto(addr127);
            }
            §§goto(addr128);
         }
         §§goto(addr42);
      }
      
      private function §5c§(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§0!X§(param1));
            loop0:
            while(!§§pop())
            {
               while(true)
               {
                  this.§%3§.uploadFromByteArray(this.§-!^§.§8Y§,0,0,this.§8e§ * 4);
                  loop2:
                  while(true)
                  {
                     §§push(this.§]1§);
                     if(!(_loc2_ || _loc2_))
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        while(true)
                        {
                           this.§3§.uploadFromVector(this.§-!^§.§!$§,0,this.§8e§ * 4);
                           addr79:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 continue loop2;
                              }
                           }
                        }
                        addr68:
                     }
                     while(true)
                     {
                        this.§[l§.uploadFromVector(this.§-!^§.§+k§,0,this.§8e§ * 4);
                        if(!_loc2_)
                        {
                           continue;
                        }
                        if(_loc2_ || this)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr86);
                           }
                           §§goto(addr56);
                        }
                     }
                  }
                  continue loop0;
               }
               break;
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            if(this.§8e§ == 0)
            {
               if(!_loc8_)
               {
                  §§goto(addr25);
               }
            }
            §§push(this.§-!^§.premultipliedAlpha);
            if(_loc9_ || param2)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param3 == 1);
            if(_loc9_)
            {
               §§push(!§§pop());
            }
            var _loc5_:* = §§pop();
            if(!_loc8_)
            {
               if(this.§71§)
               {
                  addr50:
                  §§push(§^W§(_loc5_,this.§71§.mipMapping,this.§71§.repeat,this.§45§,this.§]1§));
                  if(!(_loc8_ && this))
                  {
                     §§push(§§pop());
                     if(!(_loc8_ && param1))
                     {
                        addr92:
                        §§push(§§pop());
                     }
                  }
               }
               else
               {
                  §§push(native(_loc5_));
                  if(!(_loc8_ && param1))
                  {
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                        §§goto(addr92);
                     }
                  }
               }
               var _loc6_:* = §§pop();
               if(!(_loc8_ && param2))
               {
                  §'X§.§"W§(param1,_loc4_);
                  if(!(_loc8_ && param3))
                  {
                     this.§5c§(param1);
                     if(!(_loc8_ && this))
                     {
                        param1.setProgram(§+!'§.§2d§.§>!T§(_loc6_));
                        if(_loc9_)
                        {
                           param1.setVertexBufferAt(0,this.§[l§,§?!2§.§3A§,Context3DVertexBufferFormat.FLOAT_3);
                           loop0:
                           while(true)
                           {
                              §§push(this.§71§);
                              if(!(_loc8_ && param3))
                              {
                                 §§push(null);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc8_ && param1))
                                    {
                                       §§push(§§pop());
                                       if(!_loc8_)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc9_)
                                             {
                                                §§pop();
                                                if(!(_loc8_ && this))
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(this.§]1§);
                                                      if(_loc9_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc9_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  addr102:
                                                                  param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
                                                                  if(!(_loc8_ && param2))
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§push(_loc5_);
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              §§goto(addr252);
                                                                           }
                                                                           §§goto(addr360);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§71§);
                                                                           break loop0;
                                                                        }
                                                                        addr436:
                                                                     }
                                                                     §§goto(addr329);
                                                                  }
                                                                  break;
                                                               }
                                                               if(!_loc9_)
                                                               {
                                                                  §3!"§[0] = §3!"§[1] = §3!"§[2] = !!_loc4_ ? Number(param3) : Number(1);
                                                                  addr252:
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     §3!"§[3] = param3;
                                                                  }
                                                                  break;
                                                               }
                                                               param1.setVertexBufferAt(2,this.§3§,§?!2§.§'"§,Context3DVertexBufferFormat.FLOAT_4);
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§71§);
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        addr371:
                                                                        §§push(null);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           addr373:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              addr374:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    break loop1;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr329);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr372:
                                                                     }
                                                                     §§goto(addr386);
                                                                  }
                                                               }
                                                               §§goto(addr470);
                                                               §§goto(addr329);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr436);
                                                            }
                                                            addr127:
                                                            addr465:
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§goto(addr376);
                                                   }
                                                }
                                                §§goto(addr398);
                                             }
                                             §§goto(addr373);
                                          }
                                          §§goto(addr127);
                                       }
                                       §§goto(addr374);
                                    }
                                    addr329:
                                    loop5:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc9_ || param1)
                                          {
                                             if(!_loc9_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§]1§);
                                                   if(_loc8_ && this)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc8_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      continue loop25;
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop4;
                                                   }
                                                }
                                                continue;
                                                addr376:
                                             }
                                             if(!_loc9_)
                                             {
                                                continue loop13;
                                             }
                                             if(_loc9_)
                                             {
                                                if(_loc9_)
                                                {
                                                   if(_loc9_ || param1)
                                                   {
                                                      param1.setVertexBufferAt(2,null);
                                                      addr446:
                                                      loop16:
                                                      for(; !_loc8_; while(true)
                                                      {
                                                         param1.setVertexBufferAt(0,null);
                                                         if(!(_loc9_ || param2))
                                                         {
                                                            continue loop16;
                                                         }
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            break loop5;
                                                         }
                                                         addr402:
                                                         addr402:
                                                         while(true)
                                                         {
                                                            param1.setVertexBufferAt(1,null);
                                                            continue loop13;
                                                         }
                                                      })
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop16;
                                                            }
                                                            addr360:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§3!"§,1);
                                                               break loop2;
                                                            }
                                                            addr470:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         param1.setVertexBufferAt(1,this.§%3§,§?!2§.§1!,§,Context3DVertexBufferFormat.FLOAT_2);
                                                      }
                                                      addr446:
                                                      addr356:
                                                   }
                                                   loop6:
                                                   while(true)
                                                   {
                                                      loop7:
                                                      while(true)
                                                      {
                                                         param1.drawTriangles(this.§8`§,0,this.§8e§ * 2);
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(this.§71§);
                                                            addr386:
                                                            while(!_loc8_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue loop14;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  if(!(_loc9_ || this))
                                                                  {
                                                                     break loop2;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     param1.setTextureAt(0,null);
                                                                     §§goto(addr402);
                                                                  }
                                                               }
                                                            }
                                                            break loop0;
                                                            §§goto(addr371);
                                                         }
                                                         addr421:
                                                         while(true)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               break loop7;
                                                            }
                                                            continue loop7;
                                                         }
                                                      }
                                                      addr439:
                                                      while(true)
                                                      {
                                                         param1.setTextureAt(0,this.§71§.getBase(param1));
                                                         continue loop6;
                                                      }
                                                   }
                                                }
                                                §§goto(addr421);
                                             }
                                             §§goto(addr389);
                                          }
                                          §§goto(addr356);
                                       }
                                       §§goto(addr288);
                                    }
                                    return;
                                 }
                                 §§goto(addr372);
                              }
                              break;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 param1.setTextureAt(0,null);
                                 §§goto(addr421);
                              }
                              §§goto(addr439);
                           }
                        }
                        §§goto(addr465);
                     }
                  }
                  §§goto(addr402);
               }
               §§goto(addr446);
            }
            §§goto(addr50);
         }
         addr25:
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§8e§ = 0;
            do
            {
               this.§]1§ = false;
               do
               {
                  this.§71§ = null;
                  do
                  {
                     this.§45§ = null;
                  }
                  while(!(_loc1_ || this));
                  
               }
               while(!(_loc1_ || _loc2_));
               
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function §>[§(param1:§7?§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!(_loc10_ && param3))
         {
            §§push(this.§8e§);
            if(_loc9_)
            {
               §§push(1);
               if(!_loc10_)
               {
                  §§push(§§pop() + §§pop());
                  if(!(_loc10_ && param3))
                  {
                     if(§§pop() > this.§-!^§.§<!§ / 4)
                     {
                        while(true)
                        {
                           this.§"z§();
                           addr130:
                           while(true)
                           {
                           }
                        }
                        addr128:
                     }
                     loop2:
                     while(true)
                     {
                        §§push(this.§8e§);
                        if(_loc9_ || param3)
                        {
                           §§push(0);
                           if(!_loc10_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 loop3:
                                 while(true)
                                 {
                                    this.§71§ = param3;
                                    addr97:
                                    while(!(_loc10_ && param2))
                                    {
                                       if(_loc9_)
                                       {
                                          while(true)
                                          {
                                             this.§45§ = param4;
                                             continue loop3;
                                          }
                                          addr68:
                                       }
                                       else
                                       {
                                          §§goto(addr128);
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr146);
                        }
                        break;
                     }
                     var _loc6_:* = §§pop();
                     if(_loc9_)
                     {
                        §§push(param2);
                        if(!_loc10_)
                        {
                           §§push(§§pop() * param1.alpha);
                        }
                        loop7:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop8:
                           while(true)
                           {
                              param2 = §§pop();
                              while(true)
                              {
                                 param1.copyVertexDataTo(this.§-!^§,_loc6_,param2,param5);
                                 loop10:
                                 while(_loc9_ || param1)
                                 {
                                    while(true)
                                    {
                                       §§push(param2);
                                       if(_loc10_)
                                       {
                                          break;
                                       }
                                       if(!_loc9_)
                                       {
                                          continue loop7;
                                       }
                                       §§push(§§pop() == 1);
                                       loop12:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          loop13:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr226:
                                                   while(true)
                                                   {
                                                      §§push(param1.useColor);
                                                      if(_loc9_ || param2)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(!(_loc9_ || param2))
                                                      {
                                                         continue loop14;
                                                      }
                                                      if(_loc10_ && param2)
                                                      {
                                                         continue loop13;
                                                      }
                                                   }
                                                   continue loop12;
                                                }
                                             }
                                             while(§§pop())
                                             {
                                                if(_loc9_ || param3)
                                                {
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      if(!(_loc9_ || param2))
                                                      {
                                                         continue loop10;
                                                      }
                                                      this.§]1§ = true;
                                                      if(_loc9_ || param3)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr214);
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                      continue loop10;
                                                   }
                                                   §§goto(addr226);
                                                }
                                             }
                                             addr252:
                                             var _loc7_:*;
                                             §§push((_loc7_ = this).§8e§);
                                             if(!(_loc10_ && param3))
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc8_:* = §§pop();
                                             if(!(_loc10_ && param1))
                                             {
                                                _loc7_.§8e§ = _loc8_;
                                             }
                                          }
                                       }
                                    }
                                    continue loop8;
                                 }
                              }
                           }
                        }
                     }
                     return;
                  }
               }
            }
            §§goto(addr146);
         }
         §§goto(addr79);
      }
      
      public function §?!=§(param1:§7?§, param2:Texture, param3:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §§push(this.§71§);
            loop0:
            while(true)
            {
               §§push(null);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(!§§pop());
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr371:
                                 while(true)
                                 {
                                    §§push(param2 == null);
                                    addr328:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                    }
                                 }
                              }
                              addr370:
                           }
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       addr340:
                                       §§push(this.§71§);
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop().root == param2.root);
                                       while(true)
                                       {
                                          addr309:
                                          §§push(!§§pop());
                                          if(_loc5_ && param3)
                                          {
                                             continue;
                                          }
                                          if(_loc5_)
                                          {
                                             continue loop9;
                                          }
                                          §§goto(addr318);
                                       }
                                       addr346:
                                    }
                                    §§goto(addr350);
                                 }
                                 else
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(this.§71§);
                                       if(!_loc5_)
                                       {
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(null);
                                             if(!_loc4_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(§§pop() == §§pop());
                                             loop11:
                                             for(; !_loc5_; if(_loc5_ && this)
                                             {
                                                continue;
                                             },if(!(_loc5_ && this))
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr121);
                                                   §§push(§§pop());
                                                }
                                                §§goto(addr266);
                                             },§§goto(addr245))
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc4_ || param2)
                                                   {
                                                      §§push(§§pop());
                                                      loop12:
                                                      while(!(_loc5_ && param3))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop14:
                                                               while(_loc4_)
                                                               {
                                                                  §§push(param2 == null);
                                                                  loop15:
                                                                  while(_loc4_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    while(_loc4_)
                                                                                    {
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§8e§);
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(!(_loc4_ || param2))
                                                                                                         {
                                                                                                            break loop16;
                                                                                                         }
                                                                                                         §§push(!§§pop());
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr309);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                   addr102:
                                                                                                }
                                                                                                §§goto(addr243);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr243);
                                                                                          addr76:
                                                                                       }
                                                                                       §§goto(addr294);
                                                                                       addr133:
                                                                                       §§pop();
                                                                                       if(!(_loc4_ || param2))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(this.§]1§);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!(_loc5_ && param1))
                                                                                          {
                                                                                             §§push(param1.useColor);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(!(_loc5_ && param2))
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         addr56:
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  addr63:
                                                                                                                  §§push(!§§pop());
                                                                                                                  if(!(_loc4_ || this))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§goto(addr133);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr164);
                                                                                                                        }
                                                                                                                        §§goto(addr63);
                                                                                                                     }
                                                                                                                     §§goto(addr268);
                                                                                                                     addr131:
                                                                                                                  }
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§goto(addr72);
                                                                                                                  }
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               §§goto(addr349);
                                                                                                            }
                                                                                                            §§goto(addr299);
                                                                                                         }
                                                                                                         §§goto(addr102);
                                                                                                      }
                                                                                                      §§goto(addr63);
                                                                                                   }
                                                                                                   §§goto(addr308);
                                                                                                }
                                                                                                §§goto(addr321);
                                                                                             }
                                                                                             while(_loc4_ || param2)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      §§goto(addr131);
                                                                                                   }
                                                                                                   addr72:
                                                                                                   return §§pop();
                                                                                                }
                                                                                                §§goto(addr254);
                                                                                             }
                                                                                             §§goto(addr267);
                                                                                             addr121:
                                                                                          }
                                                                                          §§goto(addr321);
                                                                                       }
                                                                                       §§goto(addr56);
                                                                                    }
                                                                                    continue loop14;
                                                                                 }
                                                                                 if(_loc4_ || param3)
                                                                                 {
                                                                                    addr164:
                                                                                    §§push(false);
                                                                                    if(_loc4_ || param1)
                                                                                    {
                                                                                       if(!(_loc5_ && param3))
                                                                                       {
                                                                                          return §§pop();
                                                                                       }
                                                                                       §§goto(addr309);
                                                                                    }
                                                                                    §§goto(addr268);
                                                                                 }
                                                                                 else if(!_loc5_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 §§goto(addr323);
                                                                                 §§goto(addr292);
                                                                              }
                                                                              §§goto(addr76);
                                                                           }
                                                                           §§goto(addr370);
                                                                           addr152:
                                                                        }
                                                                        §§goto(addr328);
                                                                     }
                                                                     §§goto(addr323);
                                                                  }
                                                                  §§goto(addr293);
                                                               }
                                                               §§goto(addr268);
                                                            }
                                                         }
                                                         §§goto(addr152);
                                                      }
                                                      §§goto(addr309);
                                                   }
                                                   §§goto(addr323);
                                                }
                                                §§goto(addr254);
                                             }
                                             §§goto(addr257);
                                          }
                                          else
                                          {
                                             §§goto(addr340);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr298);
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr352);
      }
   }
}
