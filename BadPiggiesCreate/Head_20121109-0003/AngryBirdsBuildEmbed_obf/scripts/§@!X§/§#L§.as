package §@!X§
{
   import §-!`§.§7!J§;
   import §-!`§.§8!p§;
   import §-!`§.DisplayObject;
   import §-!`§.DisplayObjectContainer;
   import §0!-§.§89§;
   import §0!-§.Texture;
   import §6!@§.§3!'§;
   import §6$§.AGALMiniAssembler;
   import §6x§.§9!§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §#L§
   {
      
      private static var §@+§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@+§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §,!e§:int;
      
      private var §;O§:Texture;
      
      private var §!!9§:String;
      
      private var §8<§:§9!§;
      
      private var §+[§:VertexBuffer3D;
      
      private var §'9§:VertexBuffer3D;
      
      private var §>b§:VertexBuffer3D;
      
      private var §`f§:Vector.<uint>;
      
      private var §7[§:IndexBuffer3D;
      
      private var §%Z§:Boolean = false;
      
      private var §'!F§:Boolean = false;
      
      public function §#L§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            §`S§();
         }
         this.§8<§ = new §9!§(0,true);
         if(_loc2_ || this)
         {
            this.§`f§ = new Vector.<uint>(0);
            if(_loc2_ || _loc1_)
            {
               this.§,!e§ = 0;
               if(_loc1_)
               {
               }
               §§goto(addr78);
            }
            this.§,!l§();
         }
         addr78:
      }
      
      public static function §0z§(param1:DisplayObjectContainer, param2:Vector.<§#L§>) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || §#L§)
         {
            §>J§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §>J§(param1:DisplayObject, param2:Vector.<§#L§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§8!p§ = null;
         var _loc13_:§7!J§ = null;
         var _loc14_:Texture = null;
         var _loc15_:* = null;
         var _loc16_:§#L§ = null;
         var _loc7_:* = false;
         §§push(param3);
         if(_loc18_)
         {
            if(§§pop() == -1)
            {
               if(_loc18_ || §#L§)
               {
                  §§push(true);
                  if(_loc18_)
                  {
                     _loc7_ = §§pop();
                     §§push(0);
                     if(_loc18_ || §#L§)
                     {
                        addr71:
                        param3 = §§pop();
                        if(!_loc17_)
                        {
                           if(param2.length == 0)
                           {
                              param2.push(new §#L§());
                              if(!_loc17_)
                              {
                                 addr123:
                                 if(param1 is DisplayObjectContainer)
                                 {
                                    addr127:
                                    §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                                    if(_loc18_ || §#L§)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    _loc9_ = §§pop();
                                    _loc10_ = new Matrix3D();
                                    if(!_loc17_)
                                    {
                                       §§push(param5);
                                       if(_loc18_)
                                       {
                                          §§push(§§pop() * param1.alpha);
                                          if(!_loc17_)
                                          {
                                             addr157:
                                             §§push(Number(§§pop()));
                                          }
                                          param5 = §§pop();
                                          if(_loc18_)
                                          {
                                             addr161:
                                             _loc6_ = 0;
                                          }
                                          loop0:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             if(_loc18_)
                                             {
                                                §§push(_loc9_);
                                                if(!(_loc17_ && param2))
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      addr337:
                                                      §§push(_loc7_);
                                                      if(!(_loc17_ && param3))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§push(int(param2.length - 1));
                                                            if(_loc18_ || param3)
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(_loc17_ && param2)
                                                               {
                                                               }
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(!_loc17_)
                                                                  {
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        §§push(param3);
                                                                        addr408:
                                                                        loop1:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              addr409:
                                                                              §§push(param3);
                                                                              break;
                                                                           }
                                                                           addr384:
                                                                           param2[_loc6_].dispose();
                                                                           §§push(delete param2[_loc6_]);
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc18_ || §#L§)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    break loop0;
                                                                                 }
                                                                                 break loop1;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                     }
                                                                     addr407:
                                                                  }
                                                                  §§goto(addr410);
                                                               }
                                                               addr404:
                                                            }
                                                            §§goto(addr407);
                                                         }
                                                         §§goto(addr409);
                                                      }
                                                      §§goto(addr384);
                                                   }
                                                   else
                                                   {
                                                      _loc11_ = _loc8_.getChildAt(_loc6_);
                                                      if(_loc18_)
                                                      {
                                                         _loc10_.copyFrom(param4);
                                                         if(_loc18_)
                                                         {
                                                            addr177:
                                                            §"W§.§'!&§(_loc10_,_loc11_);
                                                            if(!_loc17_)
                                                            {
                                                               §§push(§>J§(_loc11_,param2,param3,_loc10_,param5));
                                                               if(_loc18_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                               }
                                                               param3 = §§pop();
                                                               if(!_loc18_)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                         }
                                                         _loc6_++;
                                                         continue;
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                }
                                                §§goto(addr408);
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() - 1);
                                             if(_loc18_ || §#L§)
                                             {
                                                _loc6_ = §§pop();
                                                §§goto(addr404);
                                             }
                                             addr410:
                                             return §§pop();
                                          }
                                       }
                                       §§goto(addr157);
                                    }
                                    §§goto(addr161);
                                 }
                                 else
                                 {
                                    if(!(param1 is §8!p§))
                                    {
                                       throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                                    }
                                    if(_loc18_)
                                    {
                                       _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §8!p§) as §7!J§) ? _loc13_.texture : null;
                                       if(!_loc17_)
                                       {
                                          if(_loc13_)
                                          {
                                             if(_loc18_)
                                             {
                                                §§push(_loc13_.smoothing);
                                                if(!_loc17_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc18_ || param1)
                                                   {
                                                   }
                                                   addr275:
                                                   _loc15_ = §§pop();
                                                   addr276:
                                                   if((_loc16_ = param2[param3]).§2D§(_loc12_,_loc14_,_loc15_))
                                                   {
                                                      if(!(_loc17_ && param2))
                                                      {
                                                         param3++;
                                                         if(!_loc17_)
                                                         {
                                                            if(param2.length <= param3)
                                                            {
                                                               if(_loc18_ || param3)
                                                               {
                                                                  param2.push(new §#L§());
                                                                  if(_loc18_)
                                                                  {
                                                                     addr314:
                                                                     (_loc16_ = param2[param3]).reset();
                                                                     _loc16_.§[!9§(_loc12_,param5,_loc14_,_loc15_,param4);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr314);
                                                         }
                                                         §§goto(addr337);
                                                      }
                                                   }
                                                   §§goto(addr314);
                                                }
                                                addr274:
                                                §§push(§§pop());
                                             }
                                             §§goto(addr276);
                                          }
                                          else
                                          {
                                             §§push(null);
                                             if(!(_loc17_ && param3))
                                             {
                                                §§goto(addr274);
                                             }
                                          }
                                       }
                                       §§goto(addr275);
                                    }
                                 }
                                 §§goto(addr337);
                                 addr89:
                              }
                              §§goto(addr127);
                           }
                           else
                           {
                              param2[0].reset();
                           }
                           §§goto(addr89);
                        }
                        else
                        {
                           addr121:
                           return param3;
                        }
                     }
                     return §§pop();
                  }
                  addr110:
                  §§pop();
                  if(!_loc17_)
                  {
                     §§push(param1.visible);
                     if(!_loc17_)
                     {
                        addr117:
                        §§push(!§§pop());
                        if(_loc18_)
                        {
                           addr120:
                           if(§§pop())
                           {
                              §§goto(addr121);
                           }
                           else
                           {
                              §§goto(addr123);
                           }
                        }
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr121);
               }
               §§goto(addr123);
            }
            else
            {
               §§push(param1.alpha == 0);
               if(_loc18_ || param1)
               {
                  if(!§§pop())
                  {
                     if(_loc18_ || §#L§)
                     {
                        §§goto(addr110);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr120);
               }
            }
            §§goto(addr117);
         }
         §§goto(addr71);
      }
      
      private static function §`S§() : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:Array = null;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc1_:§7j§ = §7j§.§else§;
         if(_loc24_)
         {
            if(_loc1_.§%!@§(§3`§(true)))
            {
               if(!_loc23_)
               {
                  §§goto(addr54);
               }
            }
            var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
            var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
            var _loc13_:int = 0;
            var _loc14_:* = [true,false];
            while(§§hasnext(_loc14_,_loc13_))
            {
               §§push(Boolean(§§nextvalue(_loc13_,_loc14_)));
               if(!(_loc23_ && _loc3_))
               {
                  _loc6_ = §§pop();
                  if(_loc24_)
                  {
                     §§push("m44 op, va0, vc0  \n");
                     if(_loc24_)
                     {
                        §§push("mov v0, va2       \n");
                        if(_loc24_ || §#L§)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc23_)
                           {
                              addr100:
                              _loc4_ = §§pop();
                              if(!_loc24_)
                              {
                                 continue;
                              }
                              addr104:
                              if(_loc6_)
                              {
                                 if(!(_loc23_ && _loc3_))
                                 {
                                    §§push("mul ft0, v0, fc0  \n");
                                    if(_loc24_)
                                    {
                                       addr116:
                                       §§push(§§pop() + "mov oc, ft0       \n");
                                       if(!(_loc23_ && _loc3_))
                                       {
                                          addr126:
                                          _loc5_ = §§pop();
                                          if(!(_loc23_ && _loc3_))
                                          {
                                             addr135:
                                             _loc2_.§]!D§(Context3DProgramType.VERTEX,_loc4_);
                                             if(_loc24_)
                                             {
                                                _loc3_.§]!D§(Context3DProgramType.FRAGMENT,_loc5_);
                                                addr147:
                                                _loc1_.§"!U§(§3`§(_loc6_),_loc2_.§-x§,_loc3_.§-x§);
                                                if(_loc23_)
                                                {
                                                   continue;
                                                }
                                             }
                                          }
                                          var _loc15_:int = 0;
                                          if(!_loc23_)
                                          {
                                             var _loc16_:* = [true,false];
                                             while(§§hasnext(_loc16_,_loc15_))
                                             {
                                                §§push(Boolean(§§nextvalue(_loc15_,_loc16_)));
                                                if(!_loc23_)
                                                {
                                                   §§push(_loc7_ = §§pop());
                                                   if(_loc24_)
                                                   {
                                                      addr179:
                                                      if(§§pop())
                                                      {
                                                         §§push("m44 op, va0, vc0  \n");
                                                         §§push("mov v0, va1 \n");
                                                         if(!(_loc23_ && _loc2_))
                                                         {
                                                            §§push(§§pop() + §§pop() + "mov v1, va2       \n");
                                                            if(_loc23_ && §#L§)
                                                            {
                                                            }
                                                            addr214:
                                                            §§push(§§pop());
                                                            if(!_loc23_)
                                                            {
                                                               _loc4_ = §§pop();
                                                               §§push(_loc7_);
                                                               if(_loc24_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc24_ || §#L§)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(!(_loc23_ && _loc1_))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr239:
                                                                              §§push("tex ft1, v0, fs0 <???>  \n" + "mul ft1, ft1, v1        \n");
                                                                              §§push("mul oc, ft1, fc0        \n");
                                                                              if(_loc24_)
                                                                              {
                                                                                 addr244:
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr257:
                                                                                 §§push(§§pop() + §§pop() + "mov oc, ft1 \n");
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    addr262:
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc23_ && _loc1_))
                                                                                    {
                                                                                       addr280:
                                                                                       _loc5_ = §§pop();
                                                                                       addr313:
                                                                                       _loc2_.§]!D§(Context3DProgramType.VERTEX,_loc4_);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr310:
                                                                                       _loc5_ = §§pop();
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          §§goto(addr313);
                                                                                       }
                                                                                    }
                                                                                    §§push(§89§.NONE);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr306:
                                                                                    §§push(§§pop() + "mov oc, ft1 \n");
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       §§goto(addr310);
                                                                                    }
                                                                                 }
                                                                                 _loc8_ = null;
                                                                                 if(_loc23_ && _loc2_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 var _loc17_:int = 0;
                                                                                 if(!(_loc23_ && §#L§))
                                                                                 {
                                                                                    var _loc18_:* = [true,false];
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       for each(_loc9_ in _loc18_)
                                                                                       {
                                                                                          if(!(_loc24_ || _loc2_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       addr553:
                                                                                       continue;
                                                                                       addr550:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       var _loc19_:int = 0;
                                                                                       if(!(_loc23_ && _loc3_))
                                                                                       {
                                                                                          var _loc20_:* = [true,false];
                                                                                          if(_loc24_ || _loc1_)
                                                                                          {
                                                                                          }
                                                                                          for each(_loc10_ in _loc20_)
                                                                                          {
                                                                                             if(!(_loc24_ || _loc2_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             var _loc21_:int = 0;
                                                                                             if(_loc24_ || _loc2_)
                                                                                             {
                                                                                                var _loc22_:* = _loc8_;
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   for each(_loc11_ in _loc22_)
                                                                                                   {
                                                                                                   }
                                                                                                   addr545:
                                                                                                   continue;
                                                                                                   addr542:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push("2d");
                                                                                                   if(_loc24_ || _loc3_)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         _loc12_ = ["repeat",!(_loc23_ && §#L§) ? §§pop() : §§pop()];
                                                                                                         addr430:
                                                                                                         if(_loc24_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(_loc11_);
                                                                                                            if(_loc24_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(§89§.NONE);
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  if(§§pop() == §§pop())
                                                                                                                  {
                                                                                                                     _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        addr492:
                                                                                                                     }
                                                                                                                     addr510:
                                                                                                                     _loc3_.§]!D§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                                                                                                                     _loc1_.§"!U§(§9F§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§-x§,_loc3_.§-x§);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr481:
                                                                                                                     if(_loc11_ == §89§.§8!;§)
                                                                                                                     {
                                                                                                                        _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                                                                                                                        addr482:
                                                                                                                        §§goto(addr492);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                                                                                                                        if(_loc24_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§goto(addr510);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr542);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr481);
                                                                                                         }
                                                                                                         §§goto(addr482);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push("clamp");
                                                                                                      }
                                                                                                      §§goto(addr441);
                                                                                                   }
                                                                                                   §§goto(addr430);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr545);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr550);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr553);
                                                                              }
                                                                              §§goto(addr262);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push("tex ft1, v0, fs0 <???>  \n");
                                                                              if(!_loc23_)
                                                                              {
                                                                                 §§push("mul ft1, ft1, v1        \n");
                                                                                 if(!(_loc23_ && _loc2_))
                                                                                 {
                                                                                    §§goto(addr257);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr292:
                                                                                 §§push("mul oc, ft1, fc0        \n");
                                                                                 if(_loc24_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc24_ || _loc3_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr306);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr283:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc24_ || _loc3_)
                                                                              {
                                                                                 addr291:
                                                                                 §§goto(addr292);
                                                                                 §§push("tex ft1, v0, fs0 <???>  \n");
                                                                              }
                                                                              §§goto(addr262);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr306);
                                                                              §§push("tex ft1, v0, fs0 <???>  \n");
                                                                           }
                                                                           §§goto(addr306);
                                                                        }
                                                                        §§goto(addr306);
                                                                     }
                                                                     §§goto(addr291);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr283);
                                                                     §§push(_loc6_);
                                                                  }
                                                               }
                                                               §§goto(addr283);
                                                            }
                                                            §§goto(addr280);
                                                         }
                                                         §§goto(addr306);
                                                      }
                                                      else
                                                      {
                                                         §§push("m44 op, va0, vc0  \n");
                                                         if(!(_loc23_ && _loc2_))
                                                         {
                                                            §§push("mov v0, va1 \n");
                                                            if(_loc24_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc24_)
                                                               {
                                                                  §§goto(addr214);
                                                               }
                                                               §§goto(addr239);
                                                            }
                                                            §§goto(addr244);
                                                         }
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                   §§goto(addr283);
                                                }
                                                §§goto(addr179);
                                             }
                                          }
                                          continue;
                                          addr124:
                                       }
                                       §§goto(addr126);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr135);
                              }
                              else
                              {
                                 §§push("mov oc, v0        \n");
                              }
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr147);
               }
               §§goto(addr104);
            }
            return;
         }
         addr54:
      }
      
      public static function §3`§(param1:Boolean) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(param1)
            {
               addr36:
               §§push("QB_q*");
               if(_loc2_ && param1)
               {
               }
            }
            else
            {
               §§push("QB_q\'");
            }
            return §§pop();
         }
         §§goto(addr36);
      }
      
      public static function §9F§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param2))
         {
            if(param1)
            {
               addr25:
               §§push("QB_i*");
               if(_loc8_)
               {
               }
            }
            else
            {
               §§push("QB_i\'");
            }
            var _loc6_:* = §§pop();
            if(_loc7_ || param3)
            {
               §§push(param2);
               if(_loc7_ || §#L§)
               {
                  if(!§§pop())
                  {
                     §§push(_loc6_);
                     §§push("N");
                     if(!(_loc8_ && param3))
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc8_ && §#L§))
                        {
                           _loc6_ = §§pop();
                           if(_loc7_ || param3)
                           {
                              addr83:
                              §§push(param3);
                              if(_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    §§push(_loc6_);
                                    §§push("R");
                                    if(_loc7_)
                                    {
                                       addr91:
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_)
                                       {
                                          addr104:
                                          _loc6_ = §§pop();
                                          §§goto(addr105);
                                       }
                                    }
                                    §§goto(addr117);
                                 }
                                 addr105:
                                 §§goto(addr106);
                              }
                              addr106:
                              if(param5)
                              {
                                 if(!(_loc8_ && param1))
                                 {
                                    addr117:
                                    _loc6_ += "C";
                                 }
                              }
                              §§push(param4);
                              §§push(§89§.§8!;§);
                              if(!_loc8_)
                              {
                                 §§goto(addr131);
                              }
                              _loc6_ = §§pop() + §§pop().charAt(0);
                              §§goto(addr131);
                           }
                           addr131:
                           if(§§pop() != §§pop())
                           {
                              addr124:
                              §§push(_loc6_);
                              §§push(param4);
                           }
                           return _loc6_;
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr83);
               }
               §§goto(addr104);
            }
            §§goto(addr124);
         }
         §§goto(addr25);
      }
      
      public function get §1!Z§() : int
      {
         return this.§,!e§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(this.§+[§)
         {
            this.§+[§.dispose();
            if(!(_loc1_ && this))
            {
               addr40:
               if(this.§'9§)
               {
                  this.§'9§.dispose();
               }
               if(this.§>b§)
               {
                  if(_loc2_)
                  {
                     this.§>b§.dispose();
                     if(_loc2_ || this)
                     {
                        addr71:
                        if(this.§7[§)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              addr81:
                              this.§7[§.dispose();
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr81);
               }
            }
            §§goto(addr71);
         }
         §§goto(addr40);
      }
      
      private function §,!l§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§8<§.§9m§);
         if(!_loc4_)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc1_);
            if(_loc5_ || _loc2_)
            {
               §§push(0);
               if(!_loc4_)
               {
                  if(§§pop() == §§pop())
                  {
                     addr41:
                     §§push(16);
                     if(!(_loc4_ && _loc3_))
                     {
                        addr68:
                        §§push(int(§§pop()));
                     }
                     §§goto(addr68);
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(!(_loc4_ && _loc1_))
                     {
                        addr59:
                        §§push(int(§§pop() * 2));
                        if(!(_loc4_ && _loc1_))
                        {
                           §§goto(addr68);
                        }
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(_loc5_)
                  {
                     this.§8<§.§9m§ = _loc2_ * 4;
                  }
                  §§push(_loc1_);
                  if(_loc5_ || _loc1_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  while(true)
                  {
                     if(_loc3_ >= _loc2_)
                     {
                        if(!_loc4_)
                        {
                           this.§'!F§ = true;
                           break;
                        }
                        break;
                     }
                     this.§`f§[int(_loc3_ * 6)] = _loc3_ * 4;
                     if(_loc4_ && _loc3_)
                     {
                        break;
                     }
                     this.§`f§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                     if(_loc5_)
                     {
                        this.§`f§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
                        if(_loc5_)
                        {
                           this.§`f§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                           if(_loc5_ || _loc2_)
                           {
                              this.§`f§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                           }
                        }
                        this.§`f§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                        if(!(_loc4_ && _loc2_))
                        {
                           _loc3_++;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr59);
            }
            §§goto(addr68);
         }
         §§goto(addr41);
      }
      
      private function §!E§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§'!F§);
         if(!_loc4_)
         {
            if(!§§pop())
            {
               if(_loc3_)
               {
                  §§goto(addr24);
               }
            }
            else if(param1 != null)
            {
               if(this.§+[§)
               {
                  this.§+[§.dispose();
                  if(!(_loc4_ && _loc2_))
                  {
                     addr46:
                     if(this.§'9§)
                     {
                        this.§'9§.dispose();
                     }
                     if(this.§>b§)
                     {
                        this.§>b§.dispose();
                     }
                  }
                  if(this.§7[§)
                  {
                     if(!_loc4_)
                     {
                        this.§7[§.dispose();
                     }
                  }
                  §§push(this.§8<§.§9m§);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(int(§§pop() / 4));
                  }
                  var _loc2_:* = §§pop();
                  this.§+[§ = param1.createVertexBuffer(_loc2_ * 4,§9!§.§4>§);
                  if(!_loc4_)
                  {
                     this.§+[§.uploadFromByteArray(this.§8<§.§>!I§,0,0,_loc2_ * 4);
                     this.§'9§ = param1.createVertexBuffer(_loc2_ * 4,§9!§.§#!R§);
                     if(_loc3_)
                     {
                        this.§'9§.uploadFromVector(this.§8<§.§`!7§,0,_loc2_ * 4);
                        this.§>b§ = param1.createVertexBuffer(_loc2_ * 4,§9!§.§1W§);
                        if(!_loc4_)
                        {
                           this.§>b§.uploadFromVector(this.§8<§.§1!P§,0,_loc2_ * 4);
                           addr164:
                           this.§7[§ = param1.createIndexBuffer(_loc2_ * 6);
                           addr171:
                           this.§7[§.uploadFromVector(this.§`f§,0,_loc2_ * 6);
                        }
                        this.§'!F§ = false;
                        return true;
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr164);
               }
               §§goto(addr46);
            }
            throw new §3!'§();
         }
         addr24:
         return false;
      }
      
      private function §9!b§(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§!E§(param1));
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     this.§+[§.uploadFromByteArray(this.§8<§.§>!I§,0,0,this.§,!e§ * 4);
                     if(!_loc3_)
                     {
                        addr62:
                        if(this.§%Z§)
                        {
                           if(_loc2_)
                           {
                              this.§'9§.uploadFromVector(this.§8<§.§`!7§,0,this.§,!e§ * 4);
                              if(!_loc3_)
                              {
                                 addr78:
                                 this.§>b§.uploadFromVector(this.§8<§.§1!P§,0,this.§,!e§ * 4);
                              }
                           }
                        }
                        §§goto(addr78);
                     }
                  }
                  §§goto(addr78);
               }
               return;
            }
            §§goto(addr62);
         }
         §§goto(addr78);
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            if(this.§,!e§ == 0)
            {
               if(_loc9_)
               {
                  §§goto(addr25);
               }
            }
            §§push(this.§8<§.premultipliedAlpha);
            if(!(_loc8_ && param1))
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
            if(!(_loc8_ && param2))
            {
               if(this.§;O§)
               {
                  addr55:
                  §§push(§9F§(_loc5_,this.§;O§.mipMapping,this.§;O§.repeat,this.§!!9§,this.§%Z§));
                  if(_loc9_)
                  {
                     §§push(§§pop());
                     if(_loc8_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(§3`§(_loc5_));
                  if(_loc9_)
                  {
                     §§push(§§pop());
                     if(_loc9_ || param3)
                     {
                        addr87:
                        §§push(§§pop());
                     }
                     var _loc6_:* = §§pop();
                     §"W§.§"!b§(param1,_loc4_);
                     this.§9!b§(param1);
                     param1.setProgram(§7j§.§else§.§+!l§(_loc6_));
                     param1.setVertexBufferAt(0,this.§>b§,§9!§.§3!V§,Context3DVertexBufferFormat.FLOAT_3);
                     §§push(this.§;O§);
                     if(_loc9_ || param2)
                     {
                        §§push(null);
                        if(!_loc8_)
                        {
                           §§push(§§pop() == §§pop());
                           §§push(§§pop() == §§pop());
                           if(_loc9_ || param2)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc8_ && this))
                                 {
                                    §§pop();
                                    if(_loc9_ || this)
                                    {
                                       §§push(this.§%Z§);
                                       if(_loc9_ || param1)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc9_)
                                          {
                                             addr170:
                                             if(§§pop())
                                             {
                                                param1.setVertexBufferAt(2,this.§'9§,§9!§.§5Q§,Context3DVertexBufferFormat.FLOAT_4);
                                                if(_loc9_)
                                                {
                                                   addr182:
                                                   param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
                                                   if(_loc5_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         §@+§[0] = §@+§[1] = §@+§[2] = !!_loc4_ ? Number(param3) : Number(1);
                                                         if(!(_loc8_ && this))
                                                         {
                                                            §@+§[3] = param3;
                                                            if(!(_loc8_ && param3))
                                                            {
                                                               addr235:
                                                               param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§@+§,1);
                                                               if(_loc9_ || param3)
                                                               {
                                                                  addr249:
                                                                  §§push(this.§;O§);
                                                                  if(_loc9_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           addr256:
                                                                           param1.setTextureAt(0,this.§;O§.getBase(param1));
                                                                           if(!(_loc8_ && param2))
                                                                           {
                                                                              param1.setVertexBufferAt(1,this.§+[§,§9!§.§<!l§,Context3DVertexBufferFormat.FLOAT_2);
                                                                              addr284:
                                                                              param1.drawTriangles(this.§7[§,0,this.§,!e§ * 2);
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§goto(addr295);
                                                                              }
                                                                              §§goto(addr340);
                                                                              addr279:
                                                                           }
                                                                           §§goto(addr340);
                                                                        }
                                                                        §§goto(addr300);
                                                                     }
                                                                     else
                                                                     {
                                                                        param1.setTextureAt(0,null);
                                                                     }
                                                                     §§goto(addr284);
                                                                  }
                                                                  §§goto(addr299);
                                                               }
                                                               §§goto(addr256);
                                                            }
                                                            addr295:
                                                            §§push(this.§;O§);
                                                            if(_loc9_)
                                                            {
                                                               addr299:
                                                               if(§§pop())
                                                               {
                                                                  addr300:
                                                                  param1.setTextureAt(0,null);
                                                                  param1.setVertexBufferAt(1,null);
                                                                  if(!_loc9_)
                                                                  {
                                                                  }
                                                                  addr340:
                                                                  param1.setVertexBufferAt(2,null);
                                                                  §§goto(addr344);
                                                               }
                                                               §§push(this.§;O§);
                                                            }
                                                            §§push(§§pop() == null);
                                                            if(_loc9_ || this)
                                                            {
                                                               addr331:
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§pop();
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr339);
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      §§goto(addr256);
                                                   }
                                                   §§goto(addr249);
                                                }
                                                §§goto(addr279);
                                             }
                                             §§goto(addr182);
                                          }
                                          §§goto(addr339);
                                       }
                                       addr339:
                                       if(this.§%Z§)
                                       {
                                       }
                                       addr344:
                                       param1.setVertexBufferAt(0,null);
                                       return;
                                    }
                                    §§goto(addr249);
                                 }
                                 §§goto(addr331);
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr331);
                        }
                        §§goto(addr295);
                     }
                     §§goto(addr299);
                  }
               }
               §§goto(addr87);
            }
            §§goto(addr55);
         }
         addr25:
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§,!e§ = 0;
            if(!(_loc2_ && this))
            {
               this.§%Z§ = false;
               if(!_loc2_)
               {
                  this.§;O§ = null;
                  if(_loc1_ || _loc1_)
                  {
                     addr53:
                     this.§!!9§ = null;
                  }
               }
               §§goto(addr53);
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §[!9§(param1:§8!p§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_)
         {
            §§push(this.§,!e§);
            if(!_loc10_)
            {
               §§push(1);
               if(_loc9_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc10_)
                  {
                     if(§§pop() > this.§8<§.§9m§ / 4)
                     {
                        addr34:
                        this.§,!l§();
                        if(_loc9_ || param3)
                        {
                           addr43:
                           §§push(this.§,!e§);
                           if(_loc9_)
                           {
                              addr47:
                              §§push(0);
                              if(_loc9_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    this.§;O§ = param3;
                                    if(_loc9_ || this)
                                    {
                                       addr61:
                                       this.§!!9§ = param4;
                                    }
                                    §§push(this.§8<§);
                                    if(_loc9_)
                                    {
                                       if(param3)
                                       {
                                          addr70:
                                          §§push(param3.premultipliedAlpha);
                                          if(!_loc10_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc10_ && param3)
                                             {
                                             }
                                             addr84:
                                             §§pop().setPremultipliedAlpha(§§pop(),false);
                                             §§push(this.§,!e§);
                                             if(_loc9_ || this)
                                             {
                                                addr106:
                                                §§push(int(§§pop() * 4));
                                             }
                                             var _loc6_:* = §§pop();
                                             if(_loc9_)
                                             {
                                                §§push(param2);
                                                if(!(_loc10_ && param3))
                                                {
                                                   §§push(§§pop() * param1.alpha);
                                                   if(!(_loc10_ && this))
                                                   {
                                                      addr129:
                                                      §§push(Number(§§pop()));
                                                      if(!_loc10_)
                                                      {
                                                         param2 = §§pop();
                                                         param1.copyVertexDataTo(this.§8<§,_loc6_,param2,param5);
                                                         §§push(param2);
                                                      }
                                                   }
                                                   §§push(§§pop() == 1);
                                                   if(!(_loc10_ && param3))
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc9_)
                                                      {
                                                         addr153:
                                                         if(!§§pop())
                                                         {
                                                            if(_loc9_ || param1)
                                                            {
                                                               §§pop();
                                                               §§push(param1.useColor);
                                                               if(_loc10_)
                                                               {
                                                               }
                                                               addr168:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc9_ || param3)
                                                                  {
                                                                     this.§%Z§ = true;
                                                                     addr189:
                                                                     var _loc7_:*;
                                                                     §§push((_loc7_ = this).§,!e§);
                                                                     if(_loc9_ || param2)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                     }
                                                                     var _loc8_:* = §§pop();
                                                                     if(!(_loc10_ && param3))
                                                                     {
                                                                        _loc7_.§,!e§ = _loc8_;
                                                                     }
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr189);
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                      }
                                                      §§goto(addr168);
                                                   }
                                                   §§goto(addr153);
                                                }
                                                §§goto(addr129);
                                             }
                                             §§goto(addr189);
                                          }
                                       }
                                       else
                                       {
                                          §§push(true);
                                       }
                                       §§goto(addr84);
                                    }
                                    §§goto(addr70);
                                 }
                                 §§goto(addr84);
                              }
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr61);
                     }
                     §§goto(addr43);
                  }
               }
               §§goto(addr106);
            }
            §§goto(addr47);
         }
         §§goto(addr34);
      }
      
      public function §2D§(param1:§8!p§, param2:Texture, param3:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this.§;O§);
            if(_loc4_ || param2)
            {
               §§push(null);
               if(!(_loc5_ && param3))
               {
                  §§push(§§pop() != §§pop());
                  if(§§pop() != §§pop())
                  {
                     §§pop();
                     if(!_loc5_)
                     {
                        addr42:
                        §§push(param2 != null);
                        if(_loc4_ || param1)
                        {
                           addr53:
                           if(§§pop())
                           {
                              addr54:
                              §§push(this.§;O§);
                              if(!_loc5_)
                              {
                                 §§push(§§pop().root == param2.root);
                                 if(!_loc5_)
                                 {
                                    §§push(!§§pop());
                                    §§push(!§§pop());
                                    if(!(_loc5_ && param2))
                                    {
                                       if(!§§pop())
                                       {
                                          §§pop();
                                          if(!(_loc5_ && param2))
                                          {
                                             §§push(this.§;O§);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop().repeat);
                                                if(!(_loc5_ && this))
                                                {
                                                   §§push(param2.repeat);
                                                   if(_loc4_)
                                                   {
                                                      addr100:
                                                      §§push(§§pop() != §§pop());
                                                      §§push(§§pop() != §§pop());
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§pop();
                                                            if(_loc4_)
                                                            {
                                                               addr126:
                                                               §§push(this.§!!9§ != param3);
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  addr134:
                                                                  §§push(§§pop() || this.§%Z§ != param1.useColor);
                                                                  §§push(§§pop() || this.§%Z§ != param1.useColor);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§goto(addr146);
                                                                  }
                                                                  §§goto(addr246);
                                                               }
                                                               §§goto(addr139);
                                                            }
                                                            else
                                                            {
                                                               addr192:
                                                               §§push(this.§;O§ == null);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§pop();
                                                                        §§goto(addr206);
                                                                     }
                                                                     §§goto(addr219);
                                                                  }
                                                                  §§goto(addr246);
                                                               }
                                                            }
                                                            §§goto(addr221);
                                                         }
                                                      }
                                                      §§goto(addr134);
                                                   }
                                                   addr146:
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§pop();
                                                         if(_loc4_)
                                                         {
                                                            §§push(this.§,!e§);
                                                            if(!(_loc5_ && this))
                                                            {
                                                               §§push(8192);
                                                               if(_loc4_ || param3)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc5_ && param3))
                                                                  {
                                                                     §§goto(addr182);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr219:
                                                                     if(§§pop())
                                                                     {
                                                                        addr221:
                                                                        return false;
                                                                     }
                                                                     addr226:
                                                                     §§push(this.§,!e§);
                                                                     §§push(0);
                                                                  }
                                                               }
                                                               §§push(§§pop() != §§pop());
                                                               if(_loc4_ || param3)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§pop();
                                                                        addr246:
                                                                        §§push(this.§%Z§ != param1.useColor);
                                                                     }
                                                                  }
                                                               }
                                                               return §§pop();
                                                            }
                                                            §§goto(addr226);
                                                         }
                                                         else
                                                         {
                                                            addr206:
                                                            §§push(param2 == null);
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   addr182:
                                                   return §§pop();
                                                }
                                                §§goto(addr100);
                                             }
                                             §§goto(addr192);
                                          }
                                          §§goto(addr246);
                                       }
                                       §§goto(addr100);
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr126);
                              }
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr53);
               }
            }
            §§goto(addr192);
         }
         §§goto(addr42);
      }
   }
}
