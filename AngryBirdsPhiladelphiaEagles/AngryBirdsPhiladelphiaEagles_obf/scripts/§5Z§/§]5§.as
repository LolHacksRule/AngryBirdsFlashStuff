package §5Z§
{
   import § N§.§1!A§;
   import § N§.§6!O§;
   import § N§.DisplayObject;
   import § N§.DisplayObjectContainer;
   import §+§.§0&§;
   import §7!O§.§-!C§;
   import §7w§.AGALMiniAssembler;
   import §8z§.Texture;
   import §8z§.§^,§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §]5§
   {
      
      private static var §!K§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §!K§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §"!B§:int;
      
      private var §-?§:Texture;
      
      private var §'>§:String;
      
      private var §"!F§:§0&§;
      
      private var §=t§:VertexBuffer3D;
      
      private var § >§:VertexBuffer3D;
      
      private var §;F§:VertexBuffer3D;
      
      private var §^!0§:Vector.<uint>;
      
      private var §+!P§:IndexBuffer3D;
      
      private var §`?§:Boolean = false;
      
      private var §9E§:Boolean = false;
      
      public function §]5§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               §9e§();
               loop1:
               while(true)
               {
                  this.§"!F§ = new §0&§(0,true);
                  while(true)
                  {
                     this.§^!0§ = new Vector.<uint>(0);
                     while(_loc1_ || this)
                     {
                        if(_loc1_)
                        {
                           while(true)
                           {
                              this.§"!B§ = 0;
                              continue loop0;
                           }
                           return;
                           addr35:
                           addr86:
                        }
                        continue loop1;
                        if(_loc2_ && this)
                        {
                           continue;
                        }
                        §§goto(addr35);
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public static function §[&§(param1:DisplayObjectContainer, param2:Vector.<§]5§>) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §1@§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §1@§(param1:DisplayObject, param2:Vector.<§]5§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§6!O§ = null;
         var _loc13_:§1!A§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§]5§ = null;
         var _loc7_:* = false;
         if(_loc17_)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               if(§§pop() != -1)
               {
                  §§push(param1.alpha == 0);
                  if(!_loc18_)
                  {
                     if(_loc17_ || §]5§)
                     {
                        if(!§§pop())
                        {
                           loop1:
                           while(true)
                           {
                              §§pop();
                              §§push(param1.visible);
                              if(!(_loc17_ || param3))
                              {
                                 break;
                              }
                              if(_loc17_ || §]5§)
                              {
                                 §§push(!§§pop());
                                 if(!_loc18_)
                                 {
                                    addr69:
                                    if(§§pop())
                                    {
                                       if(_loc17_)
                                       {
                                          addr160:
                                          if(_loc17_ || param1)
                                          {
                                             if(!_loc18_)
                                             {
                                                §§push(param3);
                                                if(_loc17_)
                                                {
                                                   break loop0;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             addr136:
                                             while(true)
                                             {
                                                if(_loc17_ || param1)
                                                {
                                                   addr161:
                                                   §§push(param1 is DisplayObjectContainer);
                                                   break loop1;
                                                   addr97:
                                                }
                                                else
                                                {
                                                   addr158:
                                                }
                                                while(true)
                                                {
                                                   §§push(true);
                                                   addr159:
                                                   while(true)
                                                   {
                                                      _loc7_ = §§pop();
                                                   }
                                                }
                                             }
                                             addr136:
                                          }
                                          while(true)
                                          {
                                             continue loop0;
                                          }
                                          addr160:
                                       }
                                       else
                                       {
                                          if(!(_loc18_ && param2))
                                          {
                                             if(false)
                                             {
                                             }
                                             §§goto(addr161);
                                          }
                                          else
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                if(_loc18_)
                                                {
                                                   while(true)
                                                   {
                                                      if(param2.length != 0)
                                                      {
                                                         param2[0].reset();
                                                         continue loop5;
                                                      }
                                                      param2.push(new §]5§());
                                                      §§goto(addr136);
                                                   }
                                                   addr154:
                                                }
                                             }
                                          }
                                          §§goto(addr97);
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr161);
                                 }
                                 break;
                              }
                           }
                           addr164:
                           if(§§pop())
                           {
                              §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                              if(!_loc18_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc9_ = §§pop();
                              _loc10_ = new Matrix3D();
                              if(!_loc18_)
                              {
                                 §§push(param5);
                                 if(_loc17_ || param1)
                                 {
                                    §§push(§§pop() * param1.alpha);
                                    if(!_loc18_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 param5 = §§pop();
                                 if(_loc17_)
                                 {
                                    addr199:
                                    _loc6_ = 0;
                                 }
                                 addr273:
                                 §§push(_loc6_);
                                 if(!(_loc18_ && param2))
                                 {
                                    §§push(_loc9_);
                                    if(_loc17_ || §]5§)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          _loc11_ = _loc8_.getChildAt(_loc6_);
                                          if(_loc17_ || param1)
                                          {
                                             _loc10_.copyFrom(param4);
                                             _loc11_.§>m§(_loc10_);
                                             addr272:
                                          }
                                          addr238:
                                          §§push(§1@§(_loc11_,param2,param3,_loc10_,param5));
                                          if(_loc17_ || param1)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          param3 = §§pop();
                                          if(!(_loc18_ && param2))
                                          {
                                             if(!_loc18_)
                                             {
                                                _loc6_++;
                                                if(!(_loc18_ && param2))
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr273);
                                                }
                                                §§goto(addr238);
                                             }
                                             §§goto(addr272);
                                          }
                                          addr268:
                                          §§goto(addr268);
                                       }
                                       if(!_loc18_)
                                       {
                                          addr415:
                                          §§push(_loc7_);
                                          if(_loc17_ || §]5§)
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr424);
                                             }
                                             §§goto(addr448);
                                          }
                                          §§goto(addr470);
                                       }
                                       addr424:
                                       §§push(int(param2.length - 1));
                                       if(_loc17_)
                                       {
                                          addr430:
                                          _loc6_ = §§pop();
                                          addr432:
                                          §§push(_loc6_);
                                          if(_loc17_)
                                          {
                                             addr437:
                                             if(§§pop() <= param3)
                                             {
                                                addr449:
                                                addr448:
                                                §§push(param3);
                                                if(_loc17_ || param1)
                                                {
                                                   §§goto(addr458);
                                                }
                                                _loc6_ = §§pop();
                                                §§goto(addr432);
                                             }
                                             param2[_loc6_].dispose();
                                             addr470:
                                             delete param2[_loc6_];
                                             §§goto(addr463);
                                             §§push(_loc6_);
                                          }
                                          §§goto(addr449);
                                       }
                                       addr458:
                                       if(!_loc17_)
                                       {
                                          addr463:
                                          return §§pop() - 1;
                                       }
                                    }
                                    §§goto(addr437);
                                 }
                                 §§goto(addr430);
                              }
                              §§goto(addr199);
                           }
                           else
                           {
                              if(!(param1 is §6!O§))
                              {
                                 throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                              }
                              if(_loc17_)
                              {
                                 _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §6!O§) as §1!A§) ? _loc13_.texture : null;
                                 if(_loc17_ || §]5§)
                                 {
                                    if(_loc13_)
                                    {
                                       if(_loc17_ || param2)
                                       {
                                          addr335:
                                          §§push(_loc13_.smoothing);
                                          if(_loc17_)
                                          {
                                             §§push(§§pop());
                                             if(_loc17_)
                                             {
                                                addr348:
                                                _loc15_ = §§pop();
                                             }
                                          }
                                          §§goto(addr348);
                                       }
                                       if((_loc16_ = param2[param3]).§"!P§(_loc12_,_loc14_,_loc15_))
                                       {
                                          if(!(_loc18_ && param3))
                                          {
                                             param3++;
                                             if(_loc17_ || param1)
                                             {
                                                if(param2.length <= param3)
                                                {
                                                   if(_loc17_)
                                                   {
                                                      param2.push(new §]5§());
                                                      if(!(_loc18_ && param1))
                                                      {
                                                         addr392:
                                                         (_loc16_ = param2[param3]).reset();
                                                         _loc16_.§8^§(_loc12_,param5,_loc14_,_loc15_,param4);
                                                      }
                                                   }
                                                }
                                                §§goto(addr392);
                                             }
                                             §§goto(addr415);
                                          }
                                       }
                                       §§goto(addr392);
                                    }
                                    else
                                    {
                                       §§push(null);
                                       if(!_loc18_)
                                       {
                                          §§goto(addr348);
                                       }
                                    }
                                    §§goto(addr348);
                                 }
                                 §§goto(addr335);
                              }
                           }
                           §§goto(addr415);
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr164);
               }
               §§goto(addr158);
            }
            return §§pop();
         }
         §§goto(addr160);
      }
      
      private static function §9e§() : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = false;
         var _loc7_:Boolean = false;
         var _loc8_:Array = null;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc1_:§[Z§ = §[Z§.§%m§;
         if(_loc24_ || _loc3_)
         {
            if(_loc1_.§6!B§(§@#§(true)))
            {
               if(!_loc23_)
               {
                  return;
               }
            }
         }
         var _loc2_:AGALMiniAssembler = new AGALMiniAssembler();
         var _loc3_:AGALMiniAssembler = new AGALMiniAssembler();
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
               §§push("m44 op, va0, vc0  \n");
               while(true)
               {
                  §§push("mov v0, va2       \n");
                  addr156:
                  addr130:
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     continue loop1;
                  }
                  if(_loc23_ && _loc1_)
                  {
                     continue;
                  }
                  §§push("mov oc, ft0       \n");
                  if(!_loc23_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc24_ || §]5§)
                     {
                     }
                     addr150:
                     _loc5_ = §§pop();
                     _loc2_.§'!C§(Context3DProgramType.VERTEX,_loc4_);
                     addr105:
                     if(!(_loc23_ && §]5§))
                     {
                        addr92:
                        _loc3_.§'!C§(Context3DProgramType.FRAGMENT,_loc5_);
                        _loc1_.§=B§(§@#§(_loc6_),_loc2_.§+!5§,_loc3_.§+!5§);
                        if(_loc23_)
                        {
                           continue loop0;
                        }
                        if(!_loc23_)
                        {
                           if(false)
                           {
                              §§goto(addr92);
                           }
                           var _loc15_:int = 0;
                           if(_loc24_)
                           {
                              var _loc16_:* = [true,false];
                              addr596:
                              if(§§hasnext(_loc16_,_loc15_))
                              {
                                 addr321:
                                 _loc7_ = §§nextvalue(_loc15_,_loc16_);
                                 if(_loc7_)
                                 {
                                    addr335:
                                    §§push("m44 op, va0, vc0  \n");
                                    §§push("mov v0, va1 \n");
                                    if(_loc24_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       §§push("mov v1, va2       \n");
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc23_)
                                    {
                                       _loc4_ = §§pop();
                                       addr256:
                                       §§push(_loc7_);
                                       if(_loc24_ || §]5§)
                                       {
                                          if(!(_loc23_ && _loc3_))
                                          {
                                             if(§§pop())
                                             {
                                                addr282:
                                                if(_loc6_)
                                                {
                                                   addr275:
                                                   §§push("tex ft1, v0, fs0 <???>  \n" + "mul ft1, ft1, v1        \n");
                                                   §§push("mul oc, ft1, fc0        \n");
                                                   if(_loc24_)
                                                   {
                                                      addr305:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc24_ || _loc1_)
                                                      {
                                                         _loc5_ = §§pop();
                                                         addr177:
                                                         _loc2_.§'!C§(Context3DProgramType.VERTEX,_loc4_);
                                                         addr187:
                                                         if(!_loc23_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr187);
                                                            }
                                                            addr342:
                                                            _loc8_ = [§^,§.NONE,§^,§.§#b§,§^,§.§1K§];
                                                            if(_loc24_ || _loc2_)
                                                            {
                                                               var _loc17_:int = 0;
                                                               if(!(_loc23_ && _loc3_))
                                                               {
                                                                  var _loc18_:* = [true,false];
                                                                  if(_loc24_ || _loc2_)
                                                                  {
                                                                     addr592:
                                                                     for each(_loc9_ in _loc18_)
                                                                     {
                                                                        if(!_loc23_)
                                                                        {
                                                                           addr386:
                                                                           var _loc19_:int = 0;
                                                                           if(!(_loc23_ && §]5§))
                                                                           {
                                                                              var _loc20_:* = [true,false];
                                                                              if(_loc24_ || _loc1_)
                                                                              {
                                                                                 addr588:
                                                                                 for each(_loc10_ in _loc20_)
                                                                                 {
                                                                                    if(!(_loc23_ && _loc3_))
                                                                                    {
                                                                                       addr421:
                                                                                       var _loc21_:int = 0;
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          var _loc22_:* = _loc8_;
                                                                                          if(_loc24_)
                                                                                          {
                                                                                             addr584:
                                                                                             for each(_loc11_ in _loc22_)
                                                                                             {
                                                                                             }
                                                                                             addr587:
                                                                                             §§goto(addr588);
                                                                                          }
                                                                                          §§push("2d");
                                                                                          if(!(_loc23_ && _loc3_))
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr447:
                                                                                                §§push("repeat");
                                                                                                if(_loc24_ || _loc2_)
                                                                                                {
                                                                                                   addr459:
                                                                                                   _loc12_ = null;
                                                                                                   if(!(_loc23_ && §]5§))
                                                                                                   {
                                                                                                      addr562:
                                                                                                      if(_loc11_ == §^,§.NONE)
                                                                                                      {
                                                                                                         addr563:
                                                                                                         §§push(_loc12_);
                                                                                                         §§push("nearest");
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            addr582:
                                                                                                            §§pop().push(§§pop(),"mipnearest");
                                                                                                            addr493:
                                                                                                            _loc3_.§'!C§(Context3DProgramType.FRAGMENT,_loc5_.replace("???",_loc12_.join()));
                                                                                                            if(!(_loc23_ && _loc1_))
                                                                                                            {
                                                                                                               if(_loc24_ || _loc3_)
                                                                                                               {
                                                                                                                  _loc1_.§=B§(§ !L§(_loc6_,_loc10_,_loc9_,_loc11_,_loc7_),_loc2_.§+!5§,_loc3_.§+!5§);
                                                                                                                  if(!(_loc23_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr493);
                                                                                                                     }
                                                                                                                     §§goto(addr584);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr493);
                                                                                                               addr558:
                                                                                                            }
                                                                                                            §§goto(addr493);
                                                                                                         }
                                                                                                         §§goto(addr582);
                                                                                                         §§push("mipnone");
                                                                                                      }
                                                                                                      §§push(_loc11_);
                                                                                                      if(!(_loc23_ && §]5§))
                                                                                                      {
                                                                                                         §§push(§^,§.§#b§);
                                                                                                         if(!_loc23_)
                                                                                                         {
                                                                                                            if(§§pop() == §§pop())
                                                                                                            {
                                                                                                               §§push(_loc12_);
                                                                                                               §§push("linear");
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  addr557:
                                                                                                                  §§pop().push(§§pop(),"mipnearest");
                                                                                                                  §§goto(addr558);
                                                                                                               }
                                                                                                               §§goto(addr557);
                                                                                                               §§push("mipnone");
                                                                                                            }
                                                                                                            §§push(_loc12_);
                                                                                                            §§push("linear");
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               addr530:
                                                                                                               §§pop().push(§§pop(),"miplinear");
                                                                                                               §§goto(addr582);
                                                                                                            }
                                                                                                            §§goto(addr530);
                                                                                                            §§push("mipnone");
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr562);
                                                                                                   }
                                                                                                   §§goto(addr563);
                                                                                                }
                                                                                                addr458:
                                                                                                §§goto(addr459);
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                             §§goto(addr458);
                                                                                             §§push("clamp");
                                                                                          }
                                                                                          §§goto(addr447);
                                                                                       }
                                                                                       §§goto(addr587);
                                                                                    }
                                                                                    §§goto(addr588);
                                                                                 }
                                                                                 addr591:
                                                                                 §§goto(addr592);
                                                                              }
                                                                              §§goto(addr421);
                                                                           }
                                                                           §§goto(addr591);
                                                                        }
                                                                        §§goto(addr592);
                                                                     }
                                                                     addr595:
                                                                     §§goto(addr596);
                                                                  }
                                                                  §§goto(addr386);
                                                               }
                                                               §§goto(addr595);
                                                            }
                                                            §§goto(addr596);
                                                         }
                                                         §§goto(addr177);
                                                      }
                                                      §§goto(addr342);
                                                   }
                                                   §§goto(addr335);
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§push("tex ft1, v0, fs0 <???>  \n");
                                                §§push("mul ft1, ft1, v1        \n");
                                                if(_loc24_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   §§push("mov oc, ft1 \n");
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc24_ || §]5§)
                                                {
                                                   §§goto(addr305);
                                                }
                                                §§goto(addr335);
                                             }
                                             §§push(_loc6_);
                                             if(!_loc23_)
                                             {
                                                if(_loc24_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc24_)
                                                      {
                                                         §§push("tex ft1, v0, fs0 <???>  \n");
                                                         if(_loc24_)
                                                         {
                                                            §§push("mul oc, ft1, fc0        \n");
                                                            if(_loc24_)
                                                            {
                                                               if(!(_loc23_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc24_ || _loc3_)
                                                                  {
                                                                     addr244:
                                                                     §§push(§§pop());
                                                                     if(_loc24_ || _loc3_)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        §§goto(addr177);
                                                                     }
                                                                     §§goto(addr342);
                                                                  }
                                                                  addr228:
                                                                  if(!(_loc23_ && _loc3_))
                                                                  {
                                                                     addr237:
                                                                     §§push(§§pop() + "mov oc, ft1 \n");
                                                                     if(_loc24_ || §]5§)
                                                                     {
                                                                        §§goto(addr244);
                                                                     }
                                                                     §§goto(addr282);
                                                                  }
                                                                  §§goto(addr335);
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                      §§goto(addr335);
                                                   }
                                                   §§push("tex ft1, v0, fs0 <???>  \n");
                                                   if(!(_loc23_ && _loc2_))
                                                   {
                                                      §§goto(addr228);
                                                   }
                                                   §§goto(addr237);
                                                }
                                                §§goto(addr256);
                                             }
                                             §§goto(addr282);
                                          }
                                       }
                                       §§goto(addr321);
                                    }
                                    §§goto(addr342);
                                 }
                                 §§goto(addr275);
                                 §§push("m44 op, va0, vc0  \n");
                                 §§push("mov v0, va1 \n");
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr105);
                     }
                     addr152:
                     §§goto(addr152);
                  }
                  else
                  {
                     §§goto(addr156);
                  }
               }
            }
         }
      }
      
      public static function §@#§(param1:Boolean) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1)
            {
               addr21:
               §§push("QB_q*");
               if(!_loc3_)
               {
               }
            }
            else
            {
               return "QB_q\'";
            }
            return §§pop();
         }
         §§goto(addr21);
      }
      
      public static function § !L§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(param1)
            {
               addr20:
               §§push("QB_i*");
               if(_loc7_ || §]5§)
               {
               }
            }
            else
            {
               §§push("QB_i\'");
            }
            var _loc6_:* = §§pop();
            §§push(param2);
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§push(_loc6_);
                     addr156:
                     while(true)
                     {
                        §§push("N");
                        addr157:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr158:
                           while(true)
                           {
                              _loc6_ = §§pop();
                           }
                        }
                     }
                  }
                  addr155:
               }
               while(true)
               {
                  §§push(param3);
                  loop6:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        continue;
                     }
                     §§push(_loc6_);
                     §§push("R");
                     loop7:
                     while(!(_loc8_ && param2))
                     {
                        §§push(§§pop() + §§pop());
                        while(_loc7_ || param1)
                        {
                           _loc6_ = §§pop();
                           continue loop6;
                           addr111:
                           §§push(§§pop() + §§pop());
                           if(_loc8_ && param2)
                           {
                              continue;
                           }
                           _loc6_ = §§pop();
                           while(true)
                           {
                              §§push(param4);
                              §§push(§^,§.§#b§);
                              if(_loc7_ || param3)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       if(!_loc8_)
                                       {
                                          §§push(_loc6_);
                                          loop12:
                                          for(; _loc7_; if(!(_loc7_ || param3))
                                          {
                                             continue;
                                          },§§goto(addr44))
                                          {
                                             §§push(param4);
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop().charAt(0));
                                                loop16:
                                                while(true)
                                                {
                                                   _loc6_ = §§pop();
                                                   addr82:
                                                   while(true)
                                                   {
                                                      addr33:
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc8_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         continue loop16;
                                                      }
                                                      addr44:
                                                      return §§pop();
                                                      continue loop16;
                                                   }
                                                }
                                             }
                                          }
                                          while(_loc7_ || param3)
                                          {
                                             §§push("C");
                                             if(_loc8_)
                                             {
                                                continue loop7;
                                             }
                                             §§goto(addr111);
                                             §§goto(addr64);
                                          }
                                          addr64:
                                          addr101:
                                       }
                                       else
                                       {
                                          §§goto(addr155);
                                       }
                                       §§goto(addr156);
                                    }
                                    §§goto(addr82);
                                 }
                                 §§goto(addr33);
                              }
                              §§goto(addr77);
                           }
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr157);
                  }
               }
               if(_loc8_ && param1)
               {
                  continue;
               }
               if(§§pop())
               {
                  §§goto(addr101);
                  §§push(_loc6_);
               }
               §§goto(addr47);
            }
         }
         §§goto(addr20);
      }
      
      public function get § !9§() : int
      {
         return this.§"!B§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(this.§=t§)
         {
            if(!(_loc1_ && this))
            {
               this.§=t§.dispose();
            }
            while(true)
            {
               addr26:
               if(!(_loc1_ && _loc2_))
               {
                  this.§+!P§.dispose();
               }
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr18);
            }
            addr95:
         }
         loop1:
         while(true)
         {
            if(this.§ >§)
            {
               while(true)
               {
                  this.§ >§.dispose();
                  addr53:
                  if(_loc2_ || _loc2_)
                  {
                     this.§;F§.dispose();
                     addr22:
                     if(this.§+!P§)
                     {
                        §§goto(addr26);
                     }
                     break loop1;
                  }
               }
               addr78:
            }
            while(true)
            {
               if(this.§;F§)
               {
                  §§goto(addr53);
               }
               break;
               §§goto(addr78);
            }
            §§goto(addr22);
            §§goto(addr95);
         }
         addr18:
      }
      
      private function §-Q§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§"!F§.§6P§);
         if(_loc4_)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc1_);
            if(_loc4_ || _loc3_)
            {
               §§push(0);
               if(!_loc5_)
               {
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr63);
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(!(_loc5_ && _loc1_))
                     {
                        §§push(2);
                     }
                     §§goto(addr62);
                  }
               }
               §§push(int(§§pop() * §§pop()));
               if(!(_loc5_ && _loc1_))
               {
                  §§goto(addr62);
               }
               addr63:
               §§goto(addr40);
            }
            §§goto(addr62);
         }
         addr40:
         §§push(16);
         if(!_loc5_)
         {
            addr62:
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc5_)
         {
            this.§"!F§.§6P§ = _loc2_ * 4;
         }
         §§push(_loc1_);
         if(_loc4_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               this.§9E§ = true;
               if(_loc4_ || _loc1_)
               {
                  break;
               }
               loop1:
               while(_loc5_ && _loc2_)
               {
                  while(true)
                  {
                     this.§^!0§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                     _loc3_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§^!0§[int(_loc3_ * 6)] = _loc3_ * 4;
            this.§^!0§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
            this.§^!0§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
            this.§^!0§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
            this.§^!0§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
            §§goto(addr155);
         }
      }
      
      private function §finally§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§9E§);
            if(!(_loc3_ && _loc2_))
            {
               if(!§§pop())
               {
                  return false;
               }
               else
               {
                  if(param1 == null)
                  {
                     if(_loc4_ || this)
                     {
                        throw new §-!C§();
                     }
                     while(true)
                     {
                        addr51:
                        loop2:
                        for(; !(_loc3_ && _loc3_); this.§+!P§.dispose(),if(!(_loc4_ || param1))
                        {
                           continue;
                        },§§goto(addr34))
                        {
                           loop3:
                           while(true)
                           {
                              if(this.§;F§)
                              {
                                 this.§;F§.dispose();
                              }
                              if(!this.§+!P§)
                              {
                                 break;
                              }
                              continue loop2;
                              addr34:
                              while(true)
                              {
                                 if(true)
                                 {
                                    break loop3;
                                 }
                                 continue loop3;
                              }
                           }
                           §§push(this.§"!F§.§6P§);
                           if(!(_loc3_ && param1))
                           {
                              §§push(int(§§pop() / 4));
                           }
                           var _loc2_:* = §§pop();
                           this.§=t§ = param1.createVertexBuffer(_loc2_ * 4,§0&§.§7R§);
                           this.§=t§.uploadFromByteArray(this.§"!F§.§4!#§,0,0,_loc2_ * 4);
                           loop4:
                           while(true)
                           {
                              this.§ >§ = param1.createVertexBuffer(_loc2_ * 4,§0&§.§<W§);
                              while(true)
                              {
                                 this.§ >§.uploadFromVector(this.§"!F§.§+!R§,0,_loc2_ * 4);
                                 while(true)
                                 {
                                    this.§;F§ = param1.createVertexBuffer(_loc2_ * 4,§0&§.§&!H§);
                                    this.§;F§.uploadFromVector(this.§"!F§.§5q§,0,_loc2_ * 4);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                     addr88:
                  }
                  while(true)
                  {
                     if(this.§=t§)
                     {
                        if(!(_loc3_ && this))
                        {
                           this.§=t§.dispose();
                        }
                     }
                     if(this.§ >§)
                     {
                        this.§ >§.dispose();
                        §§goto(addr51);
                     }
                     §§goto(addr36);
                     §§goto(addr88);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr34);
      }
      
      private function §7a§(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§finally§(param1));
            loop0:
            for(; !§§pop(); while(true)
            {
               §§push(this.§`?§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && this))
                     {
                        this.§ >§.uploadFromVector(this.§"!F§.§+!R§,0,this.§"!B§ * 4);
                     }
                     loop3:
                     while(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           while(true)
                           {
                              continue loop3;
                           }
                           addr96:
                        }
                        else
                        {
                           §§goto(addr101);
                        }
                     }
                     continue;
                     addr92:
                  }
                  while(true)
                  {
                     this.§;F§.uploadFromVector(this.§"!F§.§5q§,0,this.§"!B§ * 4);
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     §§goto(addr92);
                  }
                  break loop0;
               }
               break;
            })
            {
               while(true)
               {
                  this.§=t§.uploadFromByteArray(this.§"!F§.§4!#§,0,0,this.§"!B§ * 4);
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr96);
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            if(this.§"!B§ == 0)
            {
               if(_loc8_ || param1)
               {
                  §§goto(addr29);
               }
            }
            §§push(this.§"!F§.premultipliedAlpha);
            if(_loc8_)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param3 == 1);
            if(!(_loc9_ && this))
            {
               §§push(!§§pop());
            }
            var _loc5_:* = §§pop();
            if(_loc8_ || param1)
            {
               if(this.§-?§)
               {
                  addr59:
                  §§push(§ !L§(_loc5_,this.§-?§.mipMapping,this.§-?§.repeat,this.§'>§,this.§`?§));
                  if(!_loc9_)
                  {
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                     }
                     addr91:
                     §§push(§§pop());
                  }
                  else
                  {
                     addr88:
                     §§push(§§pop());
                     if(!_loc9_)
                     {
                        §§goto(addr91);
                     }
                  }
               }
               else
               {
                  §§push(§@#§(_loc5_));
                  if(_loc8_ || param2)
                  {
                     §§goto(addr88);
                  }
               }
               var _loc6_:* = §§pop();
               if(_loc8_ || param1)
               {
                  §4]§.§<Y§(param1,_loc4_);
                  loop0:
                  while(true)
                  {
                     this.§7a§(param1);
                     if(!_loc9_)
                     {
                        param1.setProgram(§[Z§.§%m§.§ %§(_loc6_));
                        param1.setVertexBufferAt(0,this.§;F§,§0&§.§%#§,Context3DVertexBufferFormat.FLOAT_3);
                        if(_loc8_)
                        {
                           §§push(this.§-?§);
                           if(!_loc9_)
                           {
                              §§push(null);
                              if(_loc8_ || this)
                              {
                                 §§push(§§pop() == §§pop());
                                 §§push(§§pop() == §§pop());
                                 if(!_loc9_)
                                 {
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             while(true)
                                             {
                                                param1.setVertexBufferAt(2,this.§ >§,§0&§.§ C§,Context3DVertexBufferFormat.FLOAT_4);
                                             }
                                             addr130:
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                param1.drawTriangles(this.§+!P§,0,this.§"!B§ * 2);
                                                addr341:
                                                §§push(this.§-?§);
                                                loop9:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      continue;
                                                   }
                                                   param1.setTextureAt(0,null);
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         param1.setVertexBufferAt(1,null);
                                                         while(true)
                                                         {
                                                            continue loop9;
                                                         }
                                                         addr319:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            param1.setVertexBufferAt(1,this.§=t§,§0&§.§@!%§,Context3DVertexBufferFormat.FLOAT_2);
                                                            continue loop7;
                                                         }
                                                         addr382:
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr360:
                                       }
                                       while(true)
                                       {
                                          param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§`?§);
                                                if(_loc9_)
                                                {
                                                   break;
                                                }
                                                §§push(Boolean(§§pop()));
                                                if(!(_loc9_ && param2))
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr277);
                                             }
                                             addr111:
                                          }
                                          else
                                          {
                                             §§push(_loc5_);
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc8_ || param3)
                                             {
                                                §!K§[0] = §!K§[1] = §!K§[2] = !!_loc4_ ? Number(param3) : Number(1);
                                                if(_loc8_ || param1)
                                                {
                                                   break loop0;
                                                }
                                                §§goto(addr324);
                                             }
                                             §§goto(addr341);
                                          }
                                          addr362:
                                          §§goto(addr374);
                                       }
                                    }
                                 }
                                 §§goto(addr311);
                              }
                           }
                           §§goto(addr309);
                        }
                        §§goto(addr360);
                     }
                     break;
                  }
                  §!K§[3] = param3;
                  do
                  {
                     param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§!K§,1);
                  }
                  while(!(_loc8_ || param2));
                  
                  §§goto(addr362);
               }
               §§goto(addr130);
            }
            §§goto(addr59);
         }
         addr29:
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§"!B§ = 0;
            loop0:
            while(true)
            {
               this.§`?§ = false;
               addr58:
               while(true)
               {
                  this.§-?§ = null;
                  continue loop0;
               }
            }
         }
         §§goto(addr53);
      }
      
      public function §8^§(param1:§6!O§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         §§push(this.§"!B§);
         if(_loc10_)
         {
            §§push(1);
            loop0:
            while(true)
            {
               §§push(§§pop() + §§pop());
               if(!(_loc9_ && param1))
               {
                  if(§§pop() > this.§"!F§.§6P§ / 4)
                  {
                     while(true)
                     {
                        this.§-Q§();
                        addr117:
                        while(true)
                        {
                        }
                     }
                     addr115:
                  }
                  while(true)
                  {
                     §§push(this.§"!B§);
                     if(_loc10_ || param1)
                     {
                        §§push(0);
                        if(!_loc10_)
                        {
                           §§push(§§pop() * §§pop());
                        }
                        else
                        {
                           addr128:
                        }
                        continue loop0;
                        break loop0;
                     }
                     break;
                     §§goto(addr117);
                  }
                  addr130:
                  var _loc6_:* = §§pop();
                  §§push(param2);
                  if(_loc10_)
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
                        param1.copyVertexDataTo(this.§"!F§,_loc6_,param2,param5);
                        loop9:
                        while(true)
                        {
                           §§push(param2);
                           if(_loc9_ && param2)
                           {
                              continue loop8;
                           }
                           if(!_loc10_)
                           {
                              continue loop7;
                           }
                           §§push(§§pop() == 1);
                           loop10:
                           while(true)
                           {
                              §§push(!§§pop());
                              loop11:
                              while(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    §§push(param1.useColor);
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    if(!_loc9_)
                                    {
                                       if(_loc10_)
                                       {
                                          if(_loc10_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             break loop11;
                                          }
                                          continue loop10;
                                       }
                                       continue loop11;
                                    }
                                 }
                                 continue loop9;
                              }
                              continue loop9;
                           }
                        }
                        var _loc7_:*;
                        §§push((_loc7_ = this).§"!B§);
                        if(!_loc9_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc8_:* = §§pop();
                        if(_loc10_)
                        {
                           _loc7_.§"!B§ = _loc8_;
                        }
                        return;
                     }
                  }
               }
               break;
            }
            §§push(int(§§pop()));
         }
         §§goto(addr130);
      }
      
      public function §"!P§(param1:§6!O§, param2:Texture, param3:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §§push(this.§-?§);
            loop0:
            while(true)
            {
               §§push(null);
               loop1:
               while(true)
               {
                  §§push(§§pop() != §§pop());
                  §§push(§§pop() != §§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(param2 != null);
                           addr243:
                           loop19:
                           while(true)
                           {
                              if(!(_loc5_ || param2))
                              {
                                 continue loop3;
                              }
                              §§push(this.§`?§);
                              while(true)
                              {
                                 §§push(param1.useColor);
                                 addr226:
                                 while(true)
                                 {
                                    §§push(§§pop() != §§pop());
                                    loop18:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr230:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§pop();
                                                addr232:
                                                while(true)
                                                {
                                                   §§push(this.§"!B§);
                                                   addr207:
                                                   while(true)
                                                   {
                                                      §§push(8192);
                                                      addr208:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc5_ || param1)
                                                            {
                                                               break loop10;
                                                            }
                                                            addr262:
                                                            while(true)
                                                            {
                                                               §§push(param2.repeat);
                                                               addr264:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() != §§pop());
                                                                  addr266:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr268:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§'>§ != param3);
                                                                           }
                                                                           addr270:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               continue loop18;
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop19;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                             addr231:
                                          }
                                          addr218:
                                          return §§pop();
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§push(this.§-?§);
                        }
                        else
                        {
                           §§push(this.§-?§);
                           if(!(_loc5_ || param3))
                           {
                              continue loop0;
                           }
                           if(!(_loc4_ && this))
                           {
                              §§push(null);
                              if(_loc4_ && this)
                              {
                                 continue loop1;
                              }
                              §§push(§§pop() == §§pop());
                              while(true)
                              {
                                 §§push(§§pop());
                                 while(!(_loc4_ && param3))
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       if(§§pop())
                                       {
                                          §§pop();
                                          if(!(_loc4_ && param2))
                                          {
                                             §§goto(addr131);
                                          }
                                          §§goto(addr243);
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr264);
                                 }
                                 §§goto(addr226);
                              }
                           }
                           else
                           {
                              addr290:
                              §§push(§§pop().root == param2.root);
                              if(!(_loc4_ && this))
                              {
                                 §§push(!§§pop());
                              }
                              if(!§§pop())
                              {
                                 §§pop();
                                 §§push(this.§-?§);
                                 continue loop0;
                              }
                           }
                           §§goto(addr266);
                        }
                        §§goto(addr290);
                     }
                     addr131:
                     §§push(param2 == null);
                     loop7:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc5_ || this)
                           {
                              break loop4;
                           }
                        }
                        §§push(this.§"!B§);
                        if(_loc5_ || param1)
                        {
                           §§push(0);
                           if(!_loc4_)
                           {
                              §§push(§§pop() == §§pop());
                              if(!(_loc4_ && this))
                              {
                                 §§push(!§§pop());
                              }
                              if(_loc5_)
                              {
                                 §§push(§§pop());
                                 while(true)
                                 {
                                    if(_loc5_ || param3)
                                    {
                                       if(_loc5_ || param1)
                                       {
                                          if(_loc5_ || param2)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(§§pop())
                                                {
                                                   return §§pop();
                                                }
                                                addr63:
                                                continue loop7;
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr268);
                                       }
                                       break;
                                    }
                                    continue loop6;
                                 }
                                 §§goto(addr230);
                                 addr92:
                              }
                              §§goto(addr242);
                           }
                           §§goto(addr208);
                        }
                        §§goto(addr207);
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr270);
      }
   }
}
