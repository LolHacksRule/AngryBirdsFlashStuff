package §catch§
{
   import §#e§.AGALMiniAssembler;
   import §,G§.§ u§;
   import §,_§.§-!!§;
   import §,_§.§4K§;
   import §,_§.DisplayObject;
   import §,_§.DisplayObjectContainer;
   import §7!=§.§<V§;
   import §7!=§.Texture;
   import §8E§.§#!C§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §2O§
   {
      
      private static var §1J§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §2O§)
         {
            §1J§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §9N§:int;
      
      private var §return§:Texture;
      
      private var §+$§:String;
      
      private var § !!§:§ u§;
      
      private var §!Y§:VertexBuffer3D;
      
      private var §=J§:VertexBuffer3D;
      
      private var §^<§:VertexBuffer3D;
      
      private var §^!%§:Vector.<uint>;
      
      private var §%r§:IndexBuffer3D;
      
      private var §;6§:Boolean = false;
      
      private var §!!#§:Boolean = false;
      
      public function §2O§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
            § 9§();
            this.§ !!§ = new § u§(0,true);
            if(_loc2_ || _loc2_)
            {
               this.§^!%§ = new Vector.<uint>(0);
               if(_loc2_)
               {
                  addr71:
                  this.§9N§ = 0;
                  addr74:
                  this.§43§();
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr71);
      }
      
      public static function §;B§(param1:DisplayObjectContainer, param2:Vector.<§2O§>) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §2O§))
         {
            §@O§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §@O§(param1:DisplayObject, param2:Vector.<§2O§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§-!!§ = null;
         var _loc13_:§4K§ = null;
         var _loc14_:Texture = null;
         var _loc15_:* = null;
         var _loc16_:§2O§ = null;
         var _loc7_:* = false;
         if(_loc18_)
         {
            §§push(param3);
            if(!(_loc17_ && param2))
            {
               if(§§pop() == -1)
               {
                  if(_loc18_ || param2)
                  {
                     §§push(true);
                     if(!(_loc17_ && param2))
                     {
                        _loc7_ = §§pop();
                        addr75:
                        §§push(0);
                        if(!_loc17_)
                        {
                           param3 = §§pop();
                           if(param2.length == 0)
                           {
                              if(_loc18_)
                              {
                                 param2.push(new §2O§());
                              }
                           }
                           else
                           {
                              param2[0].reset();
                           }
                           addr125:
                           if(param1 is DisplayObjectContainer)
                           {
                              addr129:
                              §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                              if(!_loc17_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc9_ = §§pop();
                              _loc10_ = new Matrix3D();
                              if(_loc18_ || param1)
                              {
                                 §§push(param5);
                                 if(!(_loc17_ && param2))
                                 {
                                    §§push(§§pop() * param1.alpha);
                                    if(_loc18_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 param5 = §§pop();
                                 if(_loc18_ || §2O§)
                                 {
                                    addr173:
                                    _loc6_ = 0;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(_loc18_)
                                    {
                                       §§push(_loc9_);
                                       if(!(_loc17_ && param2))
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             _loc11_ = _loc8_.getChildAt(_loc6_);
                                             if(_loc18_)
                                             {
                                                _loc10_.copyFrom(param4);
                                                if(!_loc18_)
                                                {
                                                   continue;
                                                }
                                                _loc11_.§]@§(_loc10_);
                                                if(_loc17_ && param2)
                                                {
                                                   continue;
                                                }
                                             }
                                             §§push(§@O§(_loc11_,param2,param3,_loc10_,param5));
                                             if(!(_loc17_ && param2))
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             param3 = §§pop();
                                             if(_loc18_)
                                             {
                                                _loc6_++;
                                             }
                                             continue;
                                          }
                                          if(!(_loc17_ && param1))
                                          {
                                             addr365:
                                             §§push(_loc7_);
                                             if(!_loc17_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc18_)
                                                   {
                                                      §§push(int(param2.length - 1));
                                                      if(_loc18_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr432);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(delete param2[_loc6_]);
                                                   }
                                                   addr408:
                                                }
                                                addr431:
                                                addr432:
                                                return §§pop();
                                                §§push(param3);
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                if(!_loc17_)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc18_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                      if(_loc18_)
                                                      {
                                                         _loc6_ = §§pop();
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc18_ || param3)
                                                            {
                                                               addr429:
                                                               §§push(param3);
                                                               while(§§pop() > §§pop())
                                                               {
                                                                  param2[_loc6_].dispose();
                                                                  if(_loc17_ && param1)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§goto(addr408);
                                                                  §§goto(addr429);
                                                               }
                                                               §§goto(addr431);
                                                               addr430:
                                                            }
                                                            break;
                                                         }
                                                         addr421:
                                                      }
                                                   }
                                                   §§goto(addr432);
                                                }
                                             }
                                          }
                                          §§goto(addr431);
                                       }
                                       §§goto(addr430);
                                    }
                                    break;
                                 }
                                 _loc6_ = §§pop();
                                 if(!(_loc17_ && param1))
                                 {
                                    §§goto(addr421);
                                 }
                                 §§goto(addr431);
                              }
                              §§goto(addr173);
                           }
                           else
                           {
                              if(!(param1 is §-!!§))
                              {
                                 throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                              }
                              if(!(_loc17_ && param1))
                              {
                                 _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §-!!§) as §4K§) ? _loc13_.texture : null;
                                 if(!_loc17_)
                                 {
                                    if(_loc13_)
                                    {
                                       if(_loc18_ || param1)
                                       {
                                          addr290:
                                          §§push(_loc13_.smoothing);
                                          if(_loc18_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc18_)
                                             {
                                             }
                                             addr308:
                                             _loc15_ = §§pop();
                                             if((_loc16_ = param2[param3]).§'!B§(_loc12_,_loc14_,_loc15_))
                                             {
                                                if(_loc18_)
                                                {
                                                   param3++;
                                                   if(!_loc17_)
                                                   {
                                                      addr325:
                                                      if(param2.length <= param3)
                                                      {
                                                         if(!_loc17_)
                                                         {
                                                            param2.push(new §2O§());
                                                            if(_loc17_ && §2O§)
                                                            {
                                                            }
                                                            addr356:
                                                            §§goto(addr365);
                                                         }
                                                         §§goto(addr356);
                                                      }
                                                      (_loc16_ = param2[param3]).reset();
                                                      _loc16_.§9`§(_loc12_,param5,_loc14_,_loc15_,param4);
                                                   }
                                                   §§goto(addr356);
                                                }
                                             }
                                             §§goto(addr325);
                                          }
                                          addr307:
                                          §§goto(addr308);
                                          §§push(§§pop());
                                       }
                                       §§goto(addr308);
                                    }
                                    else
                                    {
                                       §§push(null);
                                       if(!(_loc17_ && §2O§))
                                       {
                                          §§goto(addr307);
                                       }
                                    }
                                    §§goto(addr308);
                                 }
                                 §§goto(addr290);
                              }
                           }
                           §§goto(addr365);
                        }
                        else
                        {
                           §§goto(addr117);
                        }
                     }
                     else
                     {
                        addr105:
                        §§pop();
                        if(_loc18_)
                        {
                           §§push(param1.visible);
                           if(!_loc17_)
                           {
                              §§push(!§§pop());
                              if(_loc18_)
                              {
                                 addr115:
                                 if(§§pop())
                                 {
                                    addr117:
                                    return §§pop();
                                    §§push(param3);
                                 }
                                 else
                                 {
                                    §§goto(addr125);
                                 }
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr115);
                        }
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr75);
               }
               else
               {
                  §§push(param1.alpha == 0);
                  if(!_loc17_)
                  {
                     if(!§§pop())
                     {
                        if(_loc18_)
                        {
                           §§goto(addr105);
                        }
                        §§goto(addr125);
                     }
                  }
               }
               §§goto(addr115);
            }
            §§goto(addr117);
         }
         §§goto(addr125);
      }
      
      private static function § 9§() : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:Array = null;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc1_:§4@§ = §4@§.§0W§;
         if(!(_loc24_ && _loc2_))
         {
            if(_loc1_.§`U§(§@"§(true)))
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
               if(_loc23_ || §2O§)
               {
                  _loc6_ = §§pop();
                  §§push("m44 op, va0, vc0  \n");
                  if(_loc23_)
                  {
                     §§push("mov v0, va2       \n");
                     if(!_loc24_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc24_ && §2O§))
                        {
                           _loc4_ = §§pop();
                           if(!_loc24_)
                           {
                              addr111:
                              if(_loc6_)
                              {
                                 §§push("mul ft0, v0, fc0  \n");
                                 if(!(_loc24_ && _loc3_))
                                 {
                                    addr121:
                                    §§push(§§pop() + "mov oc, ft0       \n");
                                    if(_loc23_ || _loc1_)
                                    {
                                       addr131:
                                       _loc5_ = §§pop();
                                       _loc2_.§>f§(Context3DProgramType.VERTEX,_loc4_);
                                       if(!(_loc24_ && _loc2_))
                                       {
                                          _loc3_.§>f§(Context3DProgramType.FRAGMENT,_loc5_);
                                          if(!(_loc24_ && _loc3_))
                                          {
                                             addr157:
                                             _loc1_.§;!9§(§@"§(_loc6_),_loc2_.§#,§,_loc3_.§#,§);
                                             if(_loc24_)
                                             {
                                                continue;
                                             }
                                          }
                                          var _loc15_:int = 0;
                                          if(_loc23_)
                                          {
                                             var _loc16_:* = [true,false];
                                             while(§§hasnext(_loc16_,_loc15_))
                                             {
                                                §§push(Boolean(§§nextvalue(_loc15_,_loc16_)));
                                                if(!(_loc24_ && _loc2_))
                                                {
                                                   §§push(_loc7_ = §§pop());
                                                   if(_loc23_)
                                                   {
                                                      addr194:
                                                      if(§§pop())
                                                      {
                                                         if(_loc23_)
                                                         {
                                                            §§push("m44 op, va0, vc0  \n" + "mov v0, va1 \n");
                                                            if(!_loc24_)
                                                            {
                                                               §§push("mov v1, va2       \n");
                                                               if(_loc23_ || _loc1_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc23_)
                                                                  {
                                                                     addr219:
                                                                     §§push(§§pop());
                                                                     if(!_loc24_)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        §§push(_loc7_);
                                                                        if(!_loc24_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(_loc23_)
                                                                              {
                                                                                 addr230:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc24_)
                                                                                    {
                                                                                       §§push("tex ft1, v0, fs0 <???>  \n");
                                                                                       if(_loc23_ || _loc2_)
                                                                                       {
                                                                                          addr293:
                                                                                          §§push(§§pop() + "mul ft1, ft1, v1        \n");
                                                                                          §§push("mul oc, ft1, fc0        \n");
                                                                                          if(_loc23_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc23_ || §2O§))
                                                                                          {
                                                                                             addr303:
                                                                                             §§push(§§pop() + "mov oc, ft1 \n");
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr301:
                                                                                          }
                                                                                          §§push(§§pop());
                                                                                          if(!_loc24_)
                                                                                          {
                                                                                             addr308:
                                                                                             _loc5_ = §§pop();
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                addr311:
                                                                                                _loc2_.§>f§(Context3DProgramType.VERTEX,_loc4_);
                                                                                             }
                                                                                             §§push(§<V§.NONE);
                                                                                          }
                                                                                          _loc8_ = null;
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          var _loc17_:int = 0;
                                                                                          if(!_loc24_)
                                                                                          {
                                                                                             var _loc18_:* = [true,false];
                                                                                             if(!_loc24_)
                                                                                             {
                                                                                                for each(_loc9_ in _loc18_)
                                                                                                {
                                                                                                   if(!(_loc23_ || _loc1_))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                addr530:
                                                                                                continue;
                                                                                                addr527:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                var _loc19_:int = 0;
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   var _loc20_:* = [true,false];
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      for each(_loc10_ in _loc20_)
                                                                                                      {
                                                                                                         if(_loc24_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                      }
                                                                                                      addr526:
                                                                                                      §§goto(addr527);
                                                                                                      addr523:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      var _loc21_:int = 0;
                                                                                                      if(!(_loc24_ && _loc3_))
                                                                                                      {
                                                                                                         var _loc22_:* = _loc8_;
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            for each(_loc11_ in _loc22_)
                                                                                                            {
                                                                                                            }
                                                                                                            addr522:
                                                                                                            §§goto(addr523);
                                                                                                            addr519:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push("2d");
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  _loc12_ = ["repeat",_loc23_ || _loc2_ ? §§pop() : §§pop()];
                                                                                                                  addr398:
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     §§push(_loc11_);
                                                                                                                     if(!(_loc24_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(§<V§.NONE);
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           if(§§pop() == §§pop())
                                                                                                                           {
                                                                                                                              _loc12_.push("nearest",!!_loc10_ ? "mipnearest" : "mipnone");
                                                                                                                              if(_loc23_ || _loc1_)
                                                                                                                              {
                                                                                                                                 addr487:
                                                                                                                                 _loc3_.§>f§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                                                                                                                                 _loc1_.§;!9§(§#+§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§#,§,_loc3_.§#,§);
                                                                                                                              }
                                                                                                                              §§goto(addr519);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr449:
                                                                                                                              if(_loc11_ == §<V§.§4s§)
                                                                                                                              {
                                                                                                                                 if(_loc23_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    _loc12_.push("linear",!!_loc10_ ? "mipnearest" : "mipnone");
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       addr469:
                                                                                                                                    }
                                                                                                                                    §§goto(addr487);
                                                                                                                                 }
                                                                                                                                 §§goto(addr469);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 _loc12_.push("linear",!!_loc10_ ? "miplinear" : "mipnone");
                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§goto(addr487);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr487);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr449);
                                                                                                                  }
                                                                                                                  §§goto(addr469);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push("clamp");
                                                                                                               }
                                                                                                               §§goto(addr409);
                                                                                                            }
                                                                                                            §§goto(addr398);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr522);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr526);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr530);
                                                                                       }
                                                                                       addr277:
                                                                                       §§push(§§pop());
                                                                                       if(_loc23_)
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          if(!(_loc24_ && _loc3_))
                                                                                          {
                                                                                             §§goto(addr311);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr291:
                                                                                             §§goto(addr293);
                                                                                             §§push("tex ft1, v0, fs0 <???>  \n");
                                                                                             §§push("mul oc, ft1, fc0        \n");
                                                                                          }
                                                                                          §§goto(addr293);
                                                                                       }
                                                                                       §§goto(addr308);
                                                                                    }
                                                                                    §§goto(addr311);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push("tex ft1, v0, fs0 <???>  \n" + "mul ft1, ft1, v1        \n");
                                                                                    §§push("mov oc, ft1 \n");
                                                                                    if(_loc23_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc23_ || _loc2_)
                                                                                       {
                                                                                          §§goto(addr277);
                                                                                       }
                                                                                       §§goto(addr293);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr293);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr290:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    §§goto(addr291);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push("tex ft1, v0, fs0 <???>  \n");
                                                                                 }
                                                                                 §§goto(addr303);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(_loc6_);
                                                                           }
                                                                           §§goto(addr290);
                                                                        }
                                                                        §§goto(addr230);
                                                                     }
                                                                     §§goto(addr308);
                                                                  }
                                                                  §§goto(addr301);
                                                               }
                                                               §§goto(addr303);
                                                            }
                                                            §§goto(addr277);
                                                         }
                                                         §§goto(addr311);
                                                      }
                                                      else
                                                      {
                                                         §§push("m44 op, va0, vc0  \n");
                                                         if(_loc23_)
                                                         {
                                                            §§push(§§pop() + "mov v0, va1 \n");
                                                         }
                                                      }
                                                      §§goto(addr219);
                                                   }
                                                   §§goto(addr230);
                                                }
                                                §§goto(addr194);
                                             }
                                          }
                                          continue;
                                       }
                                    }
                                 }
                                 §§goto(addr131);
                              }
                              else
                              {
                                 §§goto(addr131);
                                 §§push("mov oc, v0        \n");
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr131);
               }
               §§goto(addr111);
            }
            return;
         }
         addr63:
      }
      
      public static function §@"§(param1:Boolean) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1)
            {
               addr21:
               §§push("QB_q*");
               if(_loc3_ || §2O§)
               {
               }
            }
            else
            {
               §§push("QB_q\'");
            }
            return §§pop();
         }
         §§goto(addr21);
      }
      
      public static function §#+§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && §2O§))
         {
            if(param1)
            {
               addr26:
               §§push("QB_i*");
               if(_loc8_ || param1)
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
               if(_loc8_ || §2O§)
               {
                  if(!§§pop())
                  {
                     if(_loc8_ || param3)
                     {
                        §§push(_loc6_);
                        §§push("N");
                        if(_loc8_ || param3)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc8_)
                           {
                              _loc6_ = §§pop();
                              if(_loc8_)
                              {
                                 addr81:
                                 §§push(param3);
                                 if(!(_loc7_ && §2O§))
                                 {
                                    addr89:
                                    if(§§pop())
                                    {
                                       §§push(_loc6_);
                                       if(_loc8_ || param3)
                                       {
                                          §§push("R");
                                          if(_loc8_)
                                          {
                                             addr101:
                                             §§push(§§pop() + §§pop());
                                             if(_loc8_)
                                             {
                                                addr104:
                                                _loc6_ = §§pop();
                                                if(_loc8_)
                                                {
                                                   addr107:
                                                   if(param5)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         addr111:
                                                         §§push(_loc6_);
                                                         if(!_loc7_)
                                                         {
                                                            addr116:
                                                            _loc6_ = §§pop() + "C";
                                                            if(!(_loc7_ && param2))
                                                            {
                                                               addr124:
                                                               §§push(param4);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(§<V§.§4s§);
                                                                  if(!(_loc7_ && param3))
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           addr164:
                                                                           addr149:
                                                                           §§push(_loc6_);
                                                                           if(_loc8_ || param2)
                                                                           {
                                                                              addr157:
                                                                              §§push(param4);
                                                                           }
                                                                           return §§pop();
                                                                           addr165:
                                                                        }
                                                                     }
                                                                     §§goto(addr165);
                                                                  }
                                                                  §§push(§§pop() + §§pop().charAt(0));
                                                                  if(_loc7_)
                                                                  {
                                                                  }
                                                                  §§goto(addr164);
                                                               }
                                                               §§goto(addr157);
                                                            }
                                                         }
                                                         §§goto(addr164);
                                                      }
                                                   }
                                                   §§goto(addr124);
                                                }
                                                §§goto(addr149);
                                             }
                                          }
                                          §§goto(addr116);
                                       }
                                       §§goto(addr164);
                                    }
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr81);
               }
               §§goto(addr89);
            }
            §§goto(addr107);
         }
         §§goto(addr26);
      }
      
      public function get §]2§() : int
      {
         return this.§9N§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§!Y§)
            {
               this.§!Y§.dispose();
               if(_loc2_ || _loc1_)
               {
                  addr57:
                  if(this.§=J§)
                  {
                     if(_loc2_)
                     {
                        addr62:
                        this.§=J§.dispose();
                        if(_loc2_)
                        {
                           addr67:
                           if(this.§^<§)
                           {
                              §§goto(addr70);
                           }
                           §§goto(addr80);
                        }
                        §§goto(addr83);
                     }
                  }
                  §§goto(addr67);
               }
               addr70:
               this.§^<§.dispose();
               if(_loc2_ || _loc2_)
               {
                  addr80:
                  if(this.§%r§)
                  {
                     addr83:
                     this.§%r§.dispose();
                  }
               }
               return;
            }
            §§goto(addr57);
         }
         §§goto(addr62);
      }
      
      private function §43§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§ !!§.§3K§);
         if(!_loc5_)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(!_loc5_)
         {
            §§push(_loc1_);
            if(!_loc5_)
            {
               §§push(0);
               if(_loc4_)
               {
                  if(§§pop() == §§pop())
                  {
                     addr35:
                     §§push(16);
                     if(!_loc4_)
                     {
                     }
                     addr53:
                     var _loc2_:int = §§pop();
                     addr52:
                     if(!_loc5_)
                     {
                        this.§ !!§.§3K§ = _loc2_ * 4;
                     }
                     §§push(_loc1_);
                     if(!_loc5_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     while(_loc3_ < _loc2_)
                     {
                        this.§^!%§[int(_loc3_ * 6)] = _loc3_ * 4;
                        this.§^!%§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                        if(_loc4_)
                        {
                           this.§^!%§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
                           if(!(_loc4_ || _loc3_))
                           {
                              break;
                           }
                           this.§^!%§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                        }
                        this.§^!%§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                        if(!(_loc5_ && _loc3_))
                        {
                           this.§^!%§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                           _loc3_++;
                           if(_loc5_)
                           {
                              return;
                           }
                           addr200:
                        }
                     }
                     this.§!!#§ = true;
                     §§goto(addr200);
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(2);
                     }
                     §§goto(addr53);
                  }
               }
               §§push(int(§§pop() * §§pop()));
               if(!_loc5_)
               {
                  §§goto(addr52);
               }
            }
            §§goto(addr53);
         }
         §§goto(addr35);
      }
      
      private function §8Y§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§!!#§);
         if(_loc4_ || _loc2_)
         {
            if(!§§pop())
            {
               if(_loc4_ || _loc2_)
               {
                  §§goto(addr35);
               }
               else
               {
                  addr79:
                  this.§=J§.dispose();
               }
            }
            else if(param1 == null)
            {
               if(_loc4_ || this)
               {
                  throw new §#!C§();
               }
            }
            else
            {
               if(this.§!Y§)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§!Y§.dispose();
                     addr76:
                     if(!this.§=J§)
                     {
                     }
                     if(this.§^<§)
                     {
                        if(_loc4_)
                        {
                           this.§^<§.dispose();
                           addr90:
                           if(this.§%r§)
                           {
                              if(_loc4_)
                              {
                                 this.§%r§.dispose();
                              }
                           }
                        }
                        §§push(this.§ !!§.§3K§);
                        if(!(_loc3_ && param1))
                        {
                           §§push(int(§§pop() / 4));
                        }
                        var _loc2_:* = §§pop();
                        this.§!Y§ = param1.createVertexBuffer(_loc2_ * 4,§ u§.§=#§);
                        if(_loc4_ || this)
                        {
                           this.§!Y§.uploadFromByteArray(this.§ !!§.§;@§,0,0,_loc2_ * 4);
                           this.§=J§ = param1.createVertexBuffer(_loc2_ * 4,§ u§.§-q§);
                           if(_loc4_ || param1)
                           {
                              this.§=J§.uploadFromVector(this.§ !!§.§2,§,0,_loc2_ * 4);
                              this.§^<§ = param1.createVertexBuffer(_loc2_ * 4,§ u§.§18§);
                              this.§^<§.uploadFromVector(this.§ !!§.§-h§,0,_loc2_ * 4);
                              addr184:
                              if(_loc4_ || param1)
                              {
                                 this.§%r§ = param1.createIndexBuffer(_loc2_ * 6);
                              }
                           }
                           this.§%r§.uploadFromVector(this.§^!%§,0,_loc2_ * 6);
                           this.§!!#§ = false;
                           return true;
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr79);
               }
               §§goto(addr76);
            }
            §§goto(addr76);
         }
         addr35:
         return false;
      }
      
      private function §6f§(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§8Y§(param1));
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     this.§!Y§.uploadFromByteArray(this.§ !!§.§;@§,0,0,this.§9N§ * 4);
                     addr31:
                     if(!(_loc3_ && _loc3_))
                     {
                        addr60:
                        if(this.§;6§)
                        {
                           if(!(_loc3_ && this))
                           {
                              this.§=J§.uploadFromVector(this.§ !!§.§2,§,0,this.§9N§ * 4);
                              if(!_loc2_)
                              {
                              }
                              §§goto(addr104);
                           }
                        }
                     }
                     this.§^<§.uploadFromVector(this.§ !!§.§-h§,0,this.§9N§ * 4);
                     §§goto(addr104);
                  }
                  §§goto(addr60);
               }
               addr104:
               return;
            }
            §§goto(addr60);
         }
         §§goto(addr31);
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && this))
         {
            if(this.§9N§ == 0)
            {
               if(_loc8_)
               {
                  return;
               }
            }
         }
         §§push(this.§ !!§.premultipliedAlpha);
         if(!_loc9_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param3 == 1);
         if(!_loc9_)
         {
            §§push(!§§pop());
         }
         var _loc5_:* = §§pop();
         if(_loc8_)
         {
            if(this.§return§)
            {
               addr49:
               §§push(§#+§(_loc5_,this.§return§.mipMapping,this.§return§.repeat,this.§+$§,this.§;6§));
               if(_loc8_)
               {
                  §§push(§§pop());
                  if(!(_loc9_ && param1))
                  {
                     addr86:
                     §§push(§§pop());
                  }
                  else
                  {
                     addr78:
                     §§push(§§pop());
                     if(_loc8_ || param2)
                     {
                        §§goto(addr86);
                     }
                  }
               }
               var _loc6_:* = §§pop();
               if(_loc8_ || param2)
               {
                  §'d§.§1f§(param1,_loc4_);
                  this.§6f§(param1);
                  if(_loc8_ || param2)
                  {
                     param1.setProgram(§4@§.§0W§.§0!<§(_loc6_));
                     param1.setVertexBufferAt(0,this.§^<§,§ u§.§`&§,Context3DVertexBufferFormat.FLOAT_3);
                     if(!_loc9_)
                     {
                        §§push(this.§return§);
                        if(!(_loc9_ && param1))
                        {
                           §§push(null);
                           if(!_loc9_)
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc8_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc9_ && param1))
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc9_)
                                       {
                                          §§pop();
                                          if(!_loc9_)
                                          {
                                             §§goto(addr168);
                                          }
                                          §§goto(addr259);
                                       }
                                       §§goto(addr204);
                                    }
                                    addr168:
                                    if(this.§;6§)
                                    {
                                       if(!_loc9_)
                                       {
                                          param1.setVertexBufferAt(2,this.§=J§,§ u§.§<4§,Context3DVertexBufferFormat.FLOAT_4);
                                          if(!(_loc9_ && this))
                                          {
                                             §§goto(addr187);
                                          }
                                          §§goto(addr235);
                                       }
                                       §§goto(addr196);
                                    }
                                    addr187:
                                    param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
                                    if(_loc8_)
                                    {
                                       addr196:
                                       §§push(_loc5_);
                                       if(!(_loc9_ && param3))
                                       {
                                          addr204:
                                          if(§§pop())
                                          {
                                             §1J§[0] = §1J§[1] = §1J§[2] = !!_loc4_ ? Number(param3) : Number(1);
                                             if(!_loc9_)
                                             {
                                                §1J§[3] = param3;
                                                addr235:
                                                param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§1J§,1);
                                             }
                                             addr275:
                                             param1.drawTriangles(this.§%r§,0,this.§9N§ * 2);
                                             if(_loc8_)
                                             {
                                                addr286:
                                                §§push(this.§return§);
                                                if(_loc8_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      param1.setTextureAt(0,null);
                                                      param1.setVertexBufferAt(1,null);
                                                      addr295:
                                                      if(!_loc9_)
                                                      {
                                                         addr311:
                                                         §§push(this.§return§ == null);
                                                         if(!_loc9_)
                                                         {
                                                            addr317:
                                                            if(!§§pop())
                                                            {
                                                               §§pop();
                                                               if(_loc8_)
                                                               {
                                                                  addr322:
                                                                  §§push(this.§;6§);
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr327:
                                                                     if(§§pop())
                                                                     {
                                                                        addr328:
                                                                        param1.setVertexBufferAt(2,null);
                                                                     }
                                                                  }
                                                                  §§goto(addr327);
                                                               }
                                                               param1.setVertexBufferAt(0,null);
                                                               §§goto(addr336);
                                                            }
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      §§goto(addr322);
                                                   }
                                                }
                                                §§goto(addr311);
                                             }
                                             §§goto(addr328);
                                          }
                                          §§push(this.§return§);
                                          if(!(_loc9_ && this))
                                          {
                                             addr251:
                                             if(§§pop())
                                             {
                                                param1.setTextureAt(0,this.§return§.getBase(param1));
                                                addr259:
                                                param1.setVertexBufferAt(1,this.§!Y§,§ u§.§]!$§,Context3DVertexBufferFormat.FLOAT_2);
                                                if(!_loc8_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                param1.setTextureAt(0,null);
                                             }
                                             §§goto(addr275);
                                          }
                                          §§goto(addr311);
                                       }
                                       §§goto(addr317);
                                    }
                                    addr336:
                                    return;
                                 }
                                 §§goto(addr317);
                              }
                              §§goto(addr327);
                           }
                           §§goto(addr311);
                        }
                        §§goto(addr251);
                     }
                     §§goto(addr286);
                  }
                  §§goto(addr295);
               }
               §§goto(addr275);
            }
            else
            {
               §§push(§@"§(_loc5_));
               if(_loc8_)
               {
                  §§goto(addr78);
               }
            }
            §§goto(addr86);
         }
         §§goto(addr49);
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§9N§ = 0;
            if(_loc1_)
            {
               this.§;6§ = false;
               if(_loc1_ || this)
               {
                  addr43:
                  this.§return§ = null;
                  if(!_loc2_)
                  {
                     this.§+$§ = null;
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §9`§(param1:§-!!§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         §§push(this.§9N§);
         if(_loc10_)
         {
            §§push(1);
            if(!_loc9_)
            {
               §§push(§§pop() + §§pop());
               if(!_loc9_)
               {
                  if(§§pop() > this.§ !!§.§3K§ / 4)
                  {
                     if(!_loc9_)
                     {
                        this.§43§();
                        if(!(_loc9_ && param1))
                        {
                           addr44:
                           §§push(this.§9N§);
                           if(!_loc9_)
                           {
                              §§push(0);
                              if(_loc10_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    this.§return§ = param3;
                                    if(!(_loc9_ && param2))
                                    {
                                       this.§+$§ = param4;
                                       addr65:
                                       §§push(this.§ !!§);
                                       if(_loc10_ || param1)
                                       {
                                          if(param3)
                                          {
                                             addr76:
                                             §§push(param3.premultipliedAlpha);
                                             if(!(_loc9_ && param3))
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc9_ && param2)
                                                {
                                                }
                                                addr95:
                                                §§pop().setPremultipliedAlpha(§§pop(),false);
                                                §§push(this.§9N§);
                                                if(_loc10_)
                                                {
                                                   addr114:
                                                   var _loc6_:int = §§pop() * 4;
                                                   if(!_loc9_)
                                                   {
                                                      §§push(param2);
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §§push(§§pop() * param1.alpha);
                                                         if(_loc10_ || param1)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_)
                                                            {
                                                               addr138:
                                                               param2 = §§pop();
                                                               param1.copyVertexDataTo(this.§ !!§,_loc6_,param2,param5);
                                                               §§push(param2);
                                                            }
                                                            §§push(§§pop() == 1);
                                                            if(!(_loc9_ && this))
                                                            {
                                                               §§push(!§§pop());
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!(_loc9_ && param2))
                                                                     {
                                                                        §§pop();
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(param1.useColor);
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              addr196:
                                                                              addr185:
                                                                              if(§§pop())
                                                                              {
                                                                                 this.§;6§ = true;
                                                                              }
                                                                              var _loc7_:*;
                                                                              §§push((_loc7_ = this).§9N§);
                                                                              if(!(_loc9_ && param3))
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                              }
                                                                              var _loc8_:* = §§pop();
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 _loc7_.§9N§ = _loc8_;
                                                                              }
                                                                           }
                                                                           §§goto(addr196);
                                                                        }
                                                                        return;
                                                                     }
                                                                  }
                                                                  §§goto(addr196);
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr138);
                                                }
                                                §§goto(addr114);
                                             }
                                          }
                                          else
                                          {
                                             §§push(true);
                                          }
                                          §§goto(addr95);
                                       }
                                       §§goto(addr76);
                                    }
                                 }
                                 §§goto(addr95);
                              }
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr44);
               }
            }
         }
         §§goto(addr114);
      }
      
      public function §'!B§(param1:§-!!§, param2:Texture, param3:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§return§);
            if(_loc5_ || param1)
            {
               §§push(null);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() != §§pop());
                  §§push(§§pop() != §§pop());
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        §§push(param2 != null);
                        if(_loc5_ || param1)
                        {
                           addr54:
                           if(§§pop())
                           {
                              if(_loc5_ || this)
                              {
                                 §§push(this.§return§);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop().root != param2.root);
                                    if(_loc5_ || param3)
                                    {
                                       if(!§§pop())
                                       {
                                          §§pop();
                                          §§push(this.§return§);
                                          if(!(_loc4_ && this))
                                          {
                                             addr93:
                                             §§push(§§pop().repeat != param2.repeat);
                                             if(!(_loc4_ && this))
                                             {
                                                §§goto(addr102);
                                             }
                                             §§goto(addr218);
                                          }
                                          else
                                          {
                                             addr184:
                                             §§push(§§pop() == null);
                                             if(_loc5_ || param3)
                                             {
                                                §§push(§§pop());
                                                if(!_loc4_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§pop();
                                                      §§push(param2 == null);
                                                      if(!(_loc4_ && param2))
                                                      {
                                                         §§goto(addr218);
                                                      }
                                                      §§goto(addr232);
                                                   }
                                                   §§goto(addr218);
                                                }
                                                §§goto(addr242);
                                             }
                                          }
                                          §§goto(addr232);
                                       }
                                       addr102:
                                       §§push(§§pop());
                                       if(!(_loc4_ && param1))
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc4_ && param2))
                                             {
                                                §§pop();
                                                if(_loc5_)
                                                {
                                                   §§push(this.§+$§ == param3);
                                                   if(_loc5_)
                                                   {
                                                      addr138:
                                                      §§push(!§§pop());
                                                      §§push(!§§pop());
                                                      if(_loc5_ || param3)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            addr147:
                                                            §§pop();
                                                            addr223:
                                                            if(!(_loc4_ && param3))
                                                            {
                                                               §§push(this.§;6§);
                                                               §§push(param1.useColor);
                                                            }
                                                            §§push(this.§9N§ == 0);
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr229);
                                                            }
                                                            §§goto(addr232);
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc4_)
                                                      {
                                                         addr163:
                                                         if(!§§pop())
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§pop();
                                                               §§push(this.§9N§);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(8192);
                                                                  if(_loc5_ || param2)
                                                                  {
                                                                     §§goto(addr181);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr223);
                                                               }
                                                               §§goto(addr223);
                                                            }
                                                            else
                                                            {
                                                               addr218:
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr220);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr223);
                                                               }
                                                            }
                                                            §§goto(addr223);
                                                         }
                                                         addr181:
                                                         return §§pop() == §§pop();
                                                         §§push(!§§pop());
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                   §§goto(addr220);
                                                }
                                                §§goto(addr223);
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr138);
                                       }
                                       addr229:
                                       §§push(!§§pop());
                                       if(!!§§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             addr232:
                                             §§pop();
                                             §§goto(addr246);
                                          }
                                          §§goto(addr242);
                                       }
                                       addr246:
                                       §§push(this.§;6§);
                                       if(!(_loc4_ && param2))
                                       {
                                          addr242:
                                          §§push(§§pop() == param1.useColor);
                                       }
                                       return !§§pop();
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr220);
                           }
                           else
                           {
                              §§push(this.§return§);
                           }
                           §§goto(addr184);
                        }
                        addr220:
                        return false;
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr93);
               }
               §§goto(addr184);
            }
            §§goto(addr93);
         }
         §§goto(addr232);
      }
   }
}
