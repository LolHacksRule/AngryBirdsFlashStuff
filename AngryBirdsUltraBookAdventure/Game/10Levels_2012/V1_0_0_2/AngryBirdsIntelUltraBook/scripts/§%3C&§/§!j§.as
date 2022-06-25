package §<&§
{
   import § !'§.§4!+§;
   import §'!9§.§%!g§;
   import §'!9§.§?!U§;
   import §'!9§.DisplayObject;
   import §'!9§.DisplayObjectContainer;
   import §^!+§.Texture;
   import §^!+§.§]-§;
   import §^!b§.AGALMiniAssembler;
   import §`s§.§0p§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §!j§
   {
      
      private static var §,!T§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §,!T§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §<S§:int;
      
      private var §#!E§:Texture;
      
      private var §^?§:String;
      
      private var § Q§:§0p§;
      
      private var §`9§:VertexBuffer3D;
      
      private var §'!T§:VertexBuffer3D;
      
      private var §,!g§:VertexBuffer3D;
      
      private var §^u§:Vector.<uint>;
      
      private var §=!"§:IndexBuffer3D;
      
      private var §5_§:Boolean = false;
      
      private var §%!'§:Boolean = false;
      
      public function §!j§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
         loop0:
         do
         {
            §2!t§();
            while(true)
            {
               this.§ Q§ = new §0p§(0,true);
               while(_loc2_ || _loc2_)
               {
                  this.§^u§ = new Vector.<uint>(0);
                  do
                  {
                     this.§<S§ = 0;
                     do
                     {
                        this.§1Y§();
                     }
                     while(_loc1_ && _loc2_);
                     
                  }
                  while(!(_loc2_ || _loc1_));
                  
                  if(_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc1_);
         
      }
      
      public static function §^!1§(param1:DisplayObjectContainer, param2:Vector.<§!j§>) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §1!f§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §1!f§(param1:DisplayObject, param2:Vector.<§!j§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§%!g§ = null;
         var _loc13_:§?!U§ = null;
         var _loc14_:Texture = null;
         var _loc15_:* = null;
         var _loc16_:§!j§ = null;
         var _loc7_:* = false;
         if(!_loc17_)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               if(§§pop() != -1)
               {
                  §§push(param1.alpha == 0);
                  if(_loc18_ || param1)
                  {
                     if(!_loc17_)
                     {
                        if(!§§pop())
                        {
                           if(_loc18_)
                           {
                              addr114:
                              §§pop();
                              if(_loc18_ || §!j§)
                              {
                                 if(!_loc17_)
                                 {
                                    if(!_loc17_)
                                    {
                                       §§push(param1.visible);
                                       if(!(_loc17_ && param1))
                                       {
                                          §§push(!§§pop());
                                          if(!(_loc17_ && param1))
                                          {
                                             addr68:
                                             if(§§pop())
                                             {
                                                if(_loc18_ || param1)
                                                {
                                                   if(!_loc17_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param3);
                                                         if(_loc18_)
                                                         {
                                                            break;
                                                         }
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(!_loc18_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            param3 = §§pop();
                                                            while(true)
                                                            {
                                                               if(!(_loc17_ && param3))
                                                               {
                                                                  if(!(_loc18_ || param2))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(true);
                                                                        addr169:
                                                                        while(true)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           addr170:
                                                                           while(true)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     addr168:
                                                                  }
                                                                  if(param2.length == 0)
                                                                  {
                                                                     addr140:
                                                                     param2.push(new §!j§());
                                                                     addr144:
                                                                  }
                                                                  else
                                                                  {
                                                                     param2[0].reset();
                                                                     addr134:
                                                                  }
                                                                  addr171:
                                                                  if(param1 is DisplayObjectContainer)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  if(!(param1 is §%!g§))
                                                                  {
                                                                     throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                                                                  }
                                                                  if(!_loc17_)
                                                                  {
                                                                     _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §%!g§) as §?!U§) ? _loc13_.texture : null;
                                                                     if(_loc18_ || param3)
                                                                     {
                                                                        if(_loc13_)
                                                                        {
                                                                           if(_loc18_ || §!j§)
                                                                           {
                                                                              §§push(_loc13_.smoothing);
                                                                              if(!_loc17_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc17_ && param3)
                                                                                 {
                                                                                 }
                                                                                 addr353:
                                                                                 _loc15_ = §§pop();
                                                                                 addr354:
                                                                                 if((_loc16_ = param2[param3]).§#2§(_loc12_,_loc14_,_loc15_))
                                                                                 {
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       param3++;
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          if(param2.length <= param3)
                                                                                          {
                                                                                             if(_loc18_ || param3)
                                                                                             {
                                                                                                addr381:
                                                                                                param2.push(new §!j§());
                                                                                                if(_loc17_ && param1)
                                                                                                {
                                                                                                }
                                                                                                §§push(_loc7_);
                                                                                                if(_loc18_ || param1)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         §§push(int(param2.length - 1));
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               addr436:
                                                                                                               §§push(_loc6_);
                                                                                                               if(_loc18_ || §!j§)
                                                                                                               {
                                                                                                                  loop10:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr446:
                                                                                                                     if(§§pop() <= param3)
                                                                                                                     {
                                                                                                                        if(!(_loc17_ && §!j§))
                                                                                                                        {
                                                                                                                           addr454:
                                                                                                                           §§push(param3);
                                                                                                                           while(_loc17_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc6_ = §§pop();
                                                                                                                              }
                                                                                                                              continue loop10;
                                                                                                                           }
                                                                                                                           return §§pop();
                                                                                                                           addr455:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              addr483:
                                                                                                                              continue loop10;
                                                                                                                           }
                                                                                                                           addr496:
                                                                                                                           while(_loc17_ && param2)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                           }
                                                                                                                           §§push(_loc6_);
                                                                                                                           if(!(_loc17_ && §!j§))
                                                                                                                           {
                                                                                                                              §§push(§§pop() - 1);
                                                                                                                           }
                                                                                                                           §§goto(addr480);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        param2[_loc6_].dispose();
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr488);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr445:
                                                                                                               }
                                                                                                               §§goto(addr455);
                                                                                                            }
                                                                                                            §§goto(addr496);
                                                                                                         }
                                                                                                         §§goto(addr480);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr454);
                                                                                                }
                                                                                                §§goto(addr488);
                                                                                                addr406:
                                                                                             }
                                                                                          }
                                                                                          (_loc16_ = param2[param3]).reset();
                                                                                          addr399:
                                                                                          _loc16_.§ §(_loc12_,param5,_loc14_,_loc15_,param4);
                                                                                          §§goto(addr406);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr381);
                                                                                 }
                                                                                 §§goto(addr399);
                                                                              }
                                                                              addr352:
                                                                              §§push(§§pop());
                                                                           }
                                                                           §§goto(addr354);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(null);
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§goto(addr352);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr353);
                                                                  }
                                                                  §§goto(addr381);
                                                                  addr94:
                                                               }
                                                               §§goto(addr170);
                                                            }
                                                         }
                                                      }
                                                      return §§pop();
                                                      addr79:
                                                   }
                                                   §§goto(addr144);
                                                }
                                                else if(_loc18_)
                                                {
                                                   if(false)
                                                   {
                                                   }
                                                   §§goto(addr171);
                                                }
                                                else
                                                {
                                                   §§goto(addr134);
                                                }
                                                §§goto(addr134);
                                             }
                                          }
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr140);
                              }
                              break;
                           }
                           §§goto(addr171);
                        }
                        §§goto(addr68);
                     }
                     §§goto(addr169);
                  }
                  §§goto(addr114);
               }
               §§goto(addr168);
            }
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
               if(!(_loc17_ && param1))
               {
                  §§push(§§pop() * param1.alpha);
                  if(!(_loc17_ && §!j§))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               param5 = §§pop();
               if(_loc18_)
               {
                  addr214:
                  _loc6_ = 0;
               }
               loop5:
               while(true)
               {
                  §§push(_loc6_);
                  if(_loc18_ || param1)
                  {
                     §§push(_loc9_);
                     if(!(_loc17_ && param1))
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc17_)
                           {
                              §§goto(addr381);
                           }
                           §§goto(addr483);
                        }
                        else
                        {
                           _loc11_ = _loc8_.getChildAt(_loc6_);
                           if(_loc18_)
                           {
                              _loc10_.copyFrom(param4);
                              while(true)
                              {
                                 _loc11_.§0! §(_loc10_);
                              }
                              addr272:
                           }
                           loop7:
                           while(true)
                           {
                              addr232:
                              while(true)
                              {
                                 §§push(§1!f§(_loc11_,param2,param3,_loc10_,param5));
                                 if(!_loc17_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 param3 = §§pop();
                                 continue loop7;
                              }
                              continue loop5;
                           }
                        }
                     }
                     §§goto(addr446);
                  }
                  break;
               }
               §§goto(addr445);
            }
            §§goto(addr214);
         }
         §§goto(addr79);
      }
      
      private static function §2!t§() : void
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
         var _loc1_:§^b§ = §^b§.§9E§;
         if(!_loc24_)
         {
            if(_loc1_.§91§(§@!Y§(true)))
            {
               if(!(_loc24_ && §!j§))
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
               loop2:
               while(true)
               {
                  §§push("m44 op, va0, vc0  \n");
                  while(true)
                  {
                     §§push("mov v0, va2       \n");
                     addr191:
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        addr192:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           continue loop1;
                        }
                     }
                     addr153:
                     if(_loc24_ && _loc3_)
                     {
                        continue;
                     }
                     §§push("mov oc, ft0       \n");
                     if(_loc23_ || _loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc23_ || _loc3_)
                        {
                        }
                        loop7:
                        while(true)
                        {
                           _loc5_ = §§pop();
                           if(!(_loc23_ || _loc2_))
                           {
                              continue loop0;
                           }
                           _loc2_.§6?§(Context3DProgramType.VERTEX,_loc4_);
                           loop8:
                           while(true)
                           {
                              addr103:
                              while(true)
                              {
                                 _loc3_.§6?§(Context3DProgramType.FRAGMENT,_loc5_);
                                 if(_loc24_ && §!j§)
                                 {
                                    continue loop0;
                                 }
                                 if(_loc23_)
                                 {
                                    if(_loc24_)
                                    {
                                       break;
                                    }
                                    _loc1_.§9!<§(§@!Y§(_loc6_),_loc2_.§;E§,_loc3_.§;E§);
                                    if(_loc23_ || _loc2_)
                                    {
                                       continue loop8;
                                    }
                                    continue loop0;
                                 }
                                 addr138:
                                 while(true)
                                 {
                                    §§push("mul ft0, v0, fc0  \n");
                                    if(_loc23_ || _loc3_)
                                    {
                                       if(_loc23_ || _loc2_)
                                       {
                                          §§goto(addr153);
                                       }
                                       break;
                                    }
                                    continue loop7;
                                 }
                                 §§goto(addr192);
                              }
                              continue loop2;
                           }
                        }
                        addr178:
                     }
                     §§goto(addr191);
                  }
               }
            }
         }
      }
      
      public static function §@!Y§(param1:Boolean) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1)
            {
               addr20:
               §§push("QB_q*");
               if(_loc2_ || param1)
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
      
      public static function §1a§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            if(param1)
            {
               addr21:
               §§push("QB_i*");
               if(_loc7_ && param3)
               {
               }
            }
            else
            {
               §§push("QB_i\'");
            }
            var _loc6_:* = §§pop();
            if(!(_loc7_ && param1))
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
                        addr193:
                        while(true)
                        {
                           §§push("N");
                           addr194:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr195:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 addr196:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                     }
                     addr192:
                  }
                  while(true)
                  {
                     §§push(param3);
                     continue loop0;
                  }
               }
            }
            §§goto(addr196);
         }
         §§goto(addr21);
      }
      
      public function get §4!y§() : int
      {
         return this.§<S§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§`9§)
            {
               while(true)
               {
                  this.§`9§.dispose();
                  addr108:
                  while(true)
                  {
                  }
               }
               addr105:
            }
            loop2:
            while(true)
            {
               if(this.§'!T§)
               {
                  while(true)
                  {
                     this.§'!T§.dispose();
                     addr101:
                     while(true)
                     {
                     }
                  }
                  addr98:
               }
               loop5:
               while(true)
               {
                  if(this.§,!g§)
                  {
                     loop6:
                     while(true)
                     {
                        if(_loc1_)
                        {
                           continue loop5;
                        }
                        if(_loc2_)
                        {
                           this.§,!g§.dispose();
                           while(_loc2_)
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(!_loc1_)
                                 {
                                    this.§=!"§.dispose();
                                    addr62:
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       addr25:
                                       return;
                                       addr79:
                                    }
                                    break loop6;
                                 }
                                 continue loop6;
                              }
                           }
                           §§goto(addr98);
                        }
                        else
                        {
                           §§goto(addr105);
                        }
                     }
                     continue loop2;
                  }
                  while(this.§=!"§)
                  {
                     if(_loc2_ || this)
                     {
                        §§goto(addr40);
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr25);
               }
            }
         }
         §§goto(addr79);
      }
      
      private function §1Y§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§ Q§.§<`§);
         if(!(_loc4_ && _loc1_))
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(0);
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr74);
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(!_loc4_)
                     {
                        §§goto(addr64);
                     }
                  }
                  §§goto(addr73);
               }
               §§goto(addr64);
            }
            addr64:
            §§push(int(§§pop() * 2));
            if(_loc5_ || _loc2_)
            {
               §§goto(addr73);
            }
            addr74:
            §§goto(addr51);
         }
         addr51:
         §§push(16);
         if(_loc5_ || _loc1_)
         {
            addr73:
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc5_)
         {
            this.§ Q§.§<`§ = _loc2_ * 4;
         }
         §§push(_loc1_);
         if(_loc5_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc5_ || _loc2_)
               {
                  if(!_loc4_)
                  {
                     if(_loc5_)
                     {
                        this.§%!'§ = true;
                        addr126:
                        if(!_loc4_)
                        {
                           if(_loc5_ || this)
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 this.§^u§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                              }
                              addr200:
                           }
                           while(true)
                           {
                              this.§^u§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                              addr166:
                              while(true)
                              {
                                 _loc3_++;
                              }
                              continue loop0;
                           }
                        }
                        loop6:
                        while(true)
                        {
                           if(!(_loc4_ && this))
                           {
                              if(_loc5_)
                              {
                                 continue loop0;
                              }
                              addr244:
                              while(true)
                              {
                                 this.§^u§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
                              }
                           }
                           while(true)
                           {
                              this.§^u§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                              §§goto(addr200);
                              continue loop6;
                           }
                        }
                     }
                     else
                     {
                        this.§^u§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                        addr258:
                     }
                     §§goto(addr244);
                  }
                  §§goto(addr166);
               }
               §§goto(addr126);
            }
            else
            {
               this.§^u§[int(_loc3_ * 6)] = _loc3_ * 4;
            }
            §§goto(addr258);
         }
      }
      
      private function §#!8§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§%!'§);
            if(!(_loc4_ && param1))
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
                           if(this.§`9§)
                           {
                              while(true)
                              {
                                 this.§`9§.dispose();
                                 addr106:
                                 while(true)
                                 {
                                 }
                              }
                              addr103:
                           }
                           while(true)
                           {
                              if(this.§'!T§)
                              {
                                 loop5:
                                 while(_loc3_ || this)
                                 {
                                    this.§'!T§.dispose();
                                    while(!_loc4_)
                                    {
                                       while(true)
                                       {
                                       }
                                       while(!(_loc4_ && param1))
                                       {
                                          continue loop5;
                                          addr42:
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          if(!_loc4_)
                                          {
                                             if(false)
                                             {
                                                while(true)
                                                {
                                                   if(!this.§,!g§)
                                                   {
                                                      while(this.§=!"§)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc3_ || this)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  this.§=!"§.dispose();
                                                                  §§goto(addr42);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr103);
                                                               }
                                                            }
                                                            §§goto(addr106);
                                                         }
                                                         §§goto(addr42);
                                                      }
                                                      addr24:
                                                   }
                                                   §§goto(addr57);
                                                }
                                                addr53:
                                             }
                                             §§push(this.§ Q§.§<`§);
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(int(§§pop() / 4));
                                             }
                                             var _loc2_:* = §§pop();
                                             if(_loc3_)
                                             {
                                                this.§`9§ = param1.createVertexBuffer(_loc2_ * 4,§0p§.§1!0§);
                                                this.§`9§.uploadFromByteArray(this.§ Q§.§2!e§,0,0,_loc2_ * 4);
                                                addr306:
                                             }
                                             this.§'!T§ = param1.createVertexBuffer(_loc2_ * 4,§0p§.§0!Q§);
                                             this.§'!T§.uploadFromVector(this.§ Q§.§-=§,0,_loc2_ * 4);
                                             addr296:
                                             addr283:
                                             if(_loc3_ || param1)
                                             {
                                                this.§,!g§ = param1.createVertexBuffer(_loc2_ * 4,§0p§.§<h§);
                                                this.§,!g§.uploadFromVector(this.§ Q§.§!!=§,0,_loc2_ * 4);
                                                addr225:
                                                addr243:
                                                if(!(_loc4_ && param1))
                                                {
                                                   this.§=!"§ = param1.createIndexBuffer(_loc2_ * 6);
                                                   addr204:
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         this.§=!"§.uploadFromVector(this.§^u§,0,_loc2_ * 6);
                                                         addr188:
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            this.§%!'§ = false;
                                                            if(!(_loc4_ && this))
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§goto(addr296);
                                                                  }
                                                                  return true;
                                                               }
                                                               §§goto(addr204);
                                                            }
                                                            §§goto(addr188);
                                                         }
                                                         §§goto(addr225);
                                                      }
                                                      §§goto(addr296);
                                                   }
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr283);
                                             }
                                             §§goto(addr306);
                                          }
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue loop5;
                                          }
                                          §§goto(addr24);
                                          addr57:
                                          §§goto(addr111);
                                       }
                                    }
                                    continue loop0;
                                 }
                                 if(_loc4_)
                                 {
                                    return false;
                                 }
                                 addr127:
                                 continue loop1;
                              }
                              §§goto(addr53);
                           }
                        }
                     }
                     addr111:
                     while(!(_loc4_ && this))
                     {
                        this.§,!g§.dispose();
                        continue loop9;
                     }
                     throw new §4!+§();
                  }
               }
            }
            §§goto(addr127);
         }
         §§goto(addr98);
      }
      
      private function §`!v§(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§#!8§(param1));
            loop0:
            while(!§§pop())
            {
               while(true)
               {
                  this.§`9§.uploadFromByteArray(this.§ Q§.§2!e§,0,0,this.§<S§ * 4);
                  continue loop0;
               }
            }
            addr24:
            return;
            addr100:
         }
         loop2:
         while(true)
         {
            §§push(this.§5_§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§'!T§.uploadFromVector(this.§ Q§.§-=§,0,this.§<S§ * 4);
                     addr87:
                     while(!_loc3_)
                     {
                        if(!(_loc2_ || _loc2_))
                        {
                           §§goto(addr101);
                        }
                     }
                     continue loop2;
                     addr42:
                     if(!_loc2_)
                     {
                        continue;
                     }
                     addr54:
                     §§goto(addr24);
                  }
               }
               while(true)
               {
                  this.§,!g§.uploadFromVector(this.§ Q§.§!!=§,0,this.§<S§ * 4);
                  if(_loc2_)
                  {
                     §§goto(addr42);
                  }
                  §§goto(addr87);
               }
               §§goto(addr54);
            }
            else
            {
               §§goto(addr100);
            }
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || this)
         {
            if(this.§<S§ == 0)
            {
               if(_loc9_)
               {
                  return;
               }
            }
         }
         §§push(this.§ Q§.premultipliedAlpha);
         if(!(_loc8_ && param2))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param3 == 1);
         if(!(_loc8_ && param3))
         {
            §§push(!§§pop());
         }
         var _loc5_:* = §§pop();
         if(!_loc8_)
         {
            if(this.§#!E§)
            {
               addr93:
               §§push(§1a§(_loc5_,this.§#!E§.mipMapping,this.§#!E§.repeat,this.§^?§,this.§5_§));
               if(_loc9_ || param2)
               {
                  §§push(§§pop());
                  if(_loc9_)
                  {
                     addr92:
                     §§push(§§pop());
                  }
               }
               var _loc6_:* = §§pop();
               if(_loc9_ || param3)
               {
                  §`K§.§&!m§(param1,_loc4_);
                  if(!_loc8_)
                  {
                     this.§`!v§(param1);
                     if(!(_loc8_ && param3))
                     {
                        param1.setProgram(§^b§.§9E§.§!g§(_loc6_));
                        if(_loc9_)
                        {
                           param1.setVertexBufferAt(0,this.§,!g§,§0p§.§[!w§,Context3DVertexBufferFormat.FLOAT_3);
                           if(_loc9_ || param3)
                           {
                              §§push(this.§#!E§);
                              if(_loc9_ || param1)
                              {
                                 §§push(null);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    loop16:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc8_ && this))
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc8_ && param1))
                                             {
                                                §§pop();
                                                if(!(_loc8_ && param1))
                                                {
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(this.§5_§);
                                                      if(!_loc8_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc8_ && param2))
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc8_ && param3))
                                                                  {
                                                                     param1.setVertexBufferAt(2,this.§'!T§,§0p§.§"!<§,Context3DVertexBufferFormat.FLOAT_4);
                                                                     if(_loc8_)
                                                                     {
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§#!E§);
                                                                        loop3:
                                                                        for(; !(_loc8_ && param2); while(true)
                                                                        {
                                                                           §§push(this.§#!E§);
                                                                           if(_loc8_ && param1)
                                                                           {
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(null);
                                                                              addr364:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 addr365:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    break loop16;
                                                                                    addr324:
                                                                                    if(_loc8_ && this)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       addr332:
                                                                                       while(true)
                                                                                       {
                                                                                          addr333:
                                                                                          loop15:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop11:
                                                                                                while(_loc9_ || param3)
                                                                                                {
                                                                                                   if(_loc9_ || param3)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         param1.setVertexBufferAt(2,null);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr298:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               param1.setVertexBufferAt(0,null);
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               if(!(_loc8_ && param1))
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  addr457:
                                                                                                                  while(_loc9_)
                                                                                                                  {
                                                                                                                     param1.setTextureAt(0,this.§#!E§.getBase(param1));
                                                                                                                  }
                                                                                                                  §§goto(addr480);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  param1.setVertexBufferAt(1,this.§`9§,§0p§.§;Z§,Context3DVertexBufferFormat.FLOAT_2);
                                                                                                                  §§goto(addr452);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr348:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr403);
                                                                                                   }
                                                                                                   §§goto(addr475);
                                                                                                }
                                                                                                loop10:
                                                                                                while(!_loc8_)
                                                                                                {
                                                                                                   §§push(this.§5_§);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      §§goto(addr324);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr367:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      addr367:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr376);
                                                                                             }
                                                                                             §§goto(addr298);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        })
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              continue;
                                                                           }
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              param1.setTextureAt(0,null);
                                                                              addr403:
                                                                              addr475:
                                                                              while(!(_loc8_ && this))
                                                                              {
                                                                                 param1.setVertexBufferAt(1,null);
                                                                                 continue loop4;
                                                                              }
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 addr454:
                                                                                 addr480:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§#!E§);
                                                                                    break loop3;
                                                                                 }
                                                                                 addr480:
                                                                                 while(true)
                                                                                 {
                                                                                    param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§,!T§,1);
                                                                                    continue loop19;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr457);
                                                                           }
                                                                           else
                                                                           {
                                                                              param1.setTextureAt(0,null);
                                                                              §§goto(addr429);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr421:
                                                                  }
                                                                  §§goto(addr399);
                                                               }
                                                               param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
                                                               if(!(_loc8_ && param2))
                                                               {
                                                                  if(false)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  §§push(_loc5_);
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc8_ && param1))
                                                                        {
                                                                           §,!T§[0] = §,!T§[1] = §,!T§[2] = !!_loc4_ ? Number(param3) : Number(1);
                                                                           if(!(_loc8_ && param2))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr475);
                                                                        }
                                                                        §§goto(addr348);
                                                                     }
                                                                     §§goto(addr454);
                                                                  }
                                                                  §§goto(addr367);
                                                               }
                                                               break;
                                                            }
                                                            §,!T§[3] = param3;
                                                            §§goto(addr480);
                                                            addr134:
                                                            addr293:
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                      §§goto(addr365);
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr475);
                                             }
                                             §§goto(addr331);
                                          }
                                          §§goto(addr134);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§goto(addr367);
                                       }
                                       §§goto(addr332);
                                    }
                                 }
                                 §§goto(addr364);
                              }
                              §§goto(addr363);
                           }
                           §§goto(addr421);
                        }
                        §§goto(addr399);
                     }
                     §§goto(addr293);
                     addr250:
                  }
                  §§goto(addr452);
               }
               §§goto(addr250);
            }
            else
            {
               §§push(§@!Y§(_loc5_));
               if(_loc9_)
               {
                  §§push(§§pop());
                  if(!_loc8_)
                  {
                     §§goto(addr92);
                  }
                  §§goto(addr93);
               }
            }
            §§goto(addr92);
         }
         §§goto(addr93);
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§<S§ = 0;
            while(true)
            {
               this.§5_§ = false;
               while(_loc1_ || _loc2_)
               {
                  this.§#!E§ = null;
                  while(_loc1_)
                  {
                     this.§^?§ = null;
                     if(_loc1_)
                     {
                        return;
                        addr39:
                     }
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function § §(param1:§%!g§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || param2)
         {
            §§push(this.§<S§);
            if(!_loc9_)
            {
               §§push(1);
               loop0:
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc10_ || param2)
                  {
                     if(§§pop() > this.§ Q§.§<`§ / 4)
                     {
                        if(!(_loc9_ && param2))
                        {
                           this.§1Y§();
                        }
                        while(true)
                        {
                           addr78:
                           if(!(_loc10_ || param1))
                           {
                              continue;
                           }
                           while(true)
                           {
                              §§push(this.§ Q§);
                              if(!(_loc9_ && this))
                              {
                                 if(param3)
                                 {
                                    addr37:
                                    §§push(param3.premultipliedAlpha);
                                    if(_loc10_ || param3)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc9_ && param2)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(true);
                                 }
                                 §§pop().setPremultipliedAlpha(§§pop(),false);
                                 if(_loc10_ || param3)
                                 {
                                    if(false)
                                    {
                                       while(true)
                                       {
                                          this.§^?§ = param4;
                                       }
                                       addr67:
                                    }
                                    else
                                    {
                                       addr169:
                                       §§push(this.§<S§);
                                       if(!(_loc9_ && param2))
                                       {
                                          addr167:
                                          §§push(§§pop() * 4);
                                          break loop0;
                                       }
                                       var _loc6_:* = §§pop();
                                       if(_loc10_)
                                       {
                                          §§push(param2);
                                          if(_loc10_ || this)
                                          {
                                             §§push(§§pop() * param1.alpha);
                                             if(!(_loc9_ && param1))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          while(true)
                                          {
                                             param2 = §§pop();
                                          }
                                          addr276:
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          param1.copyVertexDataTo(this.§ Q§,_loc6_,param2,param5);
                                          loop8:
                                          while(true)
                                          {
                                             addr223:
                                             while(true)
                                             {
                                                §§push(param2);
                                                if(!_loc10_)
                                                {
                                                   break;
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
                                                         if(_loc9_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc10_)
                                                         {
                                                            §§push(param1.useColor);
                                                            if(_loc10_)
                                                            {
                                                               if(_loc9_ && param3)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!(_loc10_ || param3))
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(_loc10_)
                                                            {
                                                               break loop11;
                                                            }
                                                            continue loop10;
                                                         }
                                                         continue loop7;
                                                      }
                                                      return;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         this.§5_§ = true;
                                                         if(_loc10_ || param3)
                                                         {
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr278:
                                                      var _loc7_:*;
                                                      §§push((_loc7_ = this).§<S§);
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                      }
                                                      var _loc8_:* = §§pop();
                                                      if(_loc10_)
                                                      {
                                                         _loc7_.§<S§ = _loc8_;
                                                      }
                                                   }
                                                   §§goto(addr293);
                                                }
                                             }
                                             §§goto(addr276);
                                          }
                                       }
                                    }
                                 }
                                 while(!(_loc9_ && this))
                                 {
                                    §§goto(addr78);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr67);
                                    §§goto(addr71);
                                 }
                                 addr71:
                                 addr117:
                              }
                              §§goto(addr37);
                           }
                        }
                        addr156:
                     }
                     while(true)
                     {
                        §§push(this.§<S§);
                        if(_loc10_)
                        {
                           §§push(0);
                           if(_loc10_ || param2)
                           {
                              continue loop0;
                           }
                           §§goto(addr167);
                        }
                        break;
                        §§goto(addr156);
                     }
                     §§goto(addr169);
                  }
                  break;
               }
               §§goto(addr169);
               §§push(int(§§pop()));
            }
            §§goto(addr167);
         }
         §§goto(addr85);
      }
      
      public function §#2§(param1:§%!g§, param2:Texture, param3:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            §§push(this.§#!E§);
            loop0:
            while(true)
            {
               §§push(null);
               loop1:
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
                              while(true)
                              {
                                 §§pop();
                                 addr392:
                                 while(true)
                                 {
                                    §§push(param2 == null);
                                    addr368:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                    }
                                 }
                              }
                              addr391:
                           }
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(this.§#!E§);
                                       if(_loc4_ && this)
                                       {
                                          break;
                                       }
                                       if(_loc5_ || param2)
                                       {
                                          §§push(null);
                                          if(!(_loc5_ || param1))
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() == §§pop());
                                          loop11:
                                          for(; _loc5_ || param2; while(true)
                                          {
                                             if(!(_loc4_ && param2))
                                             {
                                                if(_loc5_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      §§goto(addr118);
                                                      §§push(§§pop());
                                                   }
                                                   §§goto(addr312);
                                                }
                                                break;
                                             }
                                             continue loop11;
                                          },§§goto(addr255))
                                          {
                                             if(_loc5_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(§§pop());
                                                   loop12:
                                                   for(; !_loc4_; if(_loc4_ && this)
                                                   {
                                                      continue;
                                                   },§§push(§§pop() == §§pop()),if(!_loc4_)
                                                   {
                                                      §§goto(addr65);
                                                   },§§goto(addr86))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc5_ || param1)
                                                            {
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(param2 == null);
                                                               }
                                                               addr229:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr391);
                                                            }
                                                         }
                                                         §§goto(addr392);
                                                         addr221:
                                                      }
                                                      while(true)
                                                      {
                                                         loop16:
                                                         while(!§§pop())
                                                         {
                                                            addr92:
                                                            while(true)
                                                            {
                                                               §§push(this.§<S§);
                                                               if(!_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(0);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  while(_loc5_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     continue loop11;
                                                                     if(_loc4_ && param1)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc4_ && param3)
                                                                     {
                                                                        §§goto(addr164);
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr86:
                                                                        §§push(!§§pop());
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§goto(addr88);
                                                                        }
                                                                        §§goto(addr221);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr248);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr235);
                                                               }
                                                               §§goto(addr236);
                                                            }
                                                            §§goto(addr236);
                                                            addr35:
                                                            if(_loc4_ && param3)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  §§push(param1.useColor);
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  addr118:
                                                                  while(!_loc4_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop21:
                                                                        while(_loc5_ || param2)
                                                                        {
                                                                           if(!(_loc4_ && param2))
                                                                           {
                                                                              §§pop();
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break loop16;
                                                                                 }
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§5_§);
                                                                                       if(!(_loc4_ && param2))
                                                                                       {
                                                                                          §§goto(addr35);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr65:
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             continue loop21;
                                                                                          }
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          §§goto(addr69);
                                                                                       }
                                                                                    }
                                                                                    addr164:
                                                                                    return §§pop();
                                                                                    addr142:
                                                                                 }
                                                                                 else if(_loc5_ || this)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 §§goto(addr362);
                                                                              }
                                                                              else if(!_loc4_)
                                                                              {
                                                                                 §§goto(addr92);
                                                                              }
                                                                              §§goto(addr229);
                                                                           }
                                                                           §§goto(addr380);
                                                                        }
                                                                        §§goto(addr273);
                                                                     }
                                                                     addr88:
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr250);
                                                               }
                                                               §§goto(addr296);
                                                            }
                                                            §§goto(addr253);
                                                         }
                                                         if(_loc5_ || this)
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               §§goto(addr164);
                                                               §§push(false);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr276);
                                                         }
                                                         §§goto(addr383);
                                                      }
                                                   }
                                                   §§goto(addr256);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                   addr329:
                                                }
                                                §§goto(addr331);
                                             }
                                             §§goto(addr343);
                                          }
                                          §§goto(addr314);
                                       }
                                       else
                                       {
                                          §§goto(addr375);
                                       }
                                    }
                                    continue loop0;
                                 }
                                 if(_loc5_)
                                 {
                                    addr375:
                                    §§push(this.§#!E§.root == param2.root);
                                    loop31:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       addr380:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop33:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop34:
                                                while(true)
                                                {
                                                   addr343:
                                                   loop35:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop30:
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ || param2))
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            addr362:
                                                            §§pop();
                                                            §§push(this.§^?§ == param3);
                                                            while(true)
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     §§push(!§§pop());
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr383:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§#!E§);
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     addr382:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr362);
                                                               }
                                                               §§goto(addr363);
                                                            }
                                                            addr363:
                                                            addr296:
                                                         }
                                                         loop24:
                                                         while(true)
                                                         {
                                                            addr312:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop31;
                                                                        }
                                                                        §§pop();
                                                                        loop28:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§5_§);
                                                                           addr248:
                                                                           addr276:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.useColor);
                                                                              addr250:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop30;
                                                                                 }
                                                                                 §§push(§§pop() == §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr276:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_ && param1)
                                                                              {
                                                                                 continue loop28;
                                                                              }
                                                                              if(_loc5_ || param2)
                                                                              {
                                                                                 addr236:
                                                                                 return this.§<S§ == 8192;
                                                                                 addr235:
                                                                              }
                                                                              §§goto(addr392);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr314:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr255:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr256:
                                                                        while(!_loc4_)
                                                                        {
                                                                           if(_loc5_ || param3)
                                                                           {
                                                                              if(_loc4_ && this)
                                                                              {
                                                                                 continue loop33;
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    §§pop();
                                                                                    §§goto(addr276);
                                                                                 }
                                                                                 addr273:
                                                                              }
                                                                              §§goto(addr235);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!(_loc5_ || this))
                                                                                 {
                                                                                    continue loop35;
                                                                                 }
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    continue loop34;
                                                                                 }
                                                                              }
                                                                              addr331:
                                                                           }
                                                                           §§goto(addr368);
                                                                        }
                                                                        continue loop26;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop24;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr382);
                                          }
                                       }
                                    }
                                    addr379:
                                 }
                                 §§goto(addr383);
                                 §§goto(addr375);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr142);
      }
   }
}
