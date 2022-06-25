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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
         if(!_loc1_)
         {
            super();
         }
         while(true)
         {
            §2!t§();
            while(_loc2_)
            {
               this.§ Q§ = new §0p§(0,true);
               do
               {
                  this.§^u§ = new Vector.<uint>(0);
                  do
                  {
                     this.§<S§ = 0;
                     do
                     {
                        this.§1Y§();
                     }
                     while(!_loc2_);
                     
                  }
                  while(!(_loc2_ || this));
                  
               }
               while(!_loc2_);
               
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public static function §^!1§(param1:DisplayObjectContainer, param2:Vector.<§!j§>) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §1!f§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §1!f§(param1:DisplayObject, param2:Vector.<§!j§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§%!g§ = null;
         var _loc13_:§?!U§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§!j§ = null;
         var _loc7_:Boolean = false;
         if(!_loc18_)
         {
            §§push(param3);
            loop0:
            do
            {
               if(§§pop() == -1)
               {
                  if(!(_loc18_ && param1))
                  {
                     addr168:
                     _loc7_ = true;
                  }
                  addr148:
                  param3 = 0;
                  addr169:
                  if(!(_loc18_ && param1))
                  {
                     if(param2.length == 0)
                     {
                        addr134:
                        param2.push(new §!j§());
                        addr138:
                        if(!(_loc17_ || param3))
                        {
                           §§goto(addr169);
                        }
                        if(param1 is DisplayObjectContainer)
                        {
                           addr174:
                           §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                           if(_loc17_ || param2)
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
                              if(!(_loc18_ && param3))
                              {
                                 _loc6_ = 0;
                              }
                           }
                           while(true)
                           {
                              §§push(_loc6_);
                              if(!(_loc18_ && §!j§))
                              {
                                 §§push(_loc9_);
                                 if(_loc17_ || param3)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       _loc11_ = _loc8_.getChildAt(_loc6_);
                                       if(!_loc18_)
                                       {
                                          _loc10_.copyFrom(param4);
                                          loop4:
                                          while(true)
                                          {
                                             _loc11_.§0! §(_loc10_);
                                             loop5:
                                             while(true)
                                             {
                                                addr248:
                                                while(true)
                                                {
                                                   §§push(§1!f§(_loc11_,param2,param3,_loc10_,param5));
                                                   if(!(_loc18_ && §!j§))
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   param3 = §§pop();
                                                   continue loop5;
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                       while(false)
                                       {
                                          §§goto(addr248);
                                       }
                                       continue;
                                    }
                                    if(_loc17_ || param3)
                                    {
                                       addr444:
                                       §§push(_loc7_);
                                       if(_loc17_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc18_ && param2))
                                             {
                                                §§push(int(param2.length - 1));
                                                if(!(_loc18_ && param2))
                                                {
                                                   break;
                                                }
                                                loop16:
                                                while(true)
                                                {
                                                   addr480:
                                                   if(§§pop() <= param3)
                                                   {
                                                      if(_loc17_ || param3)
                                                      {
                                                         if(_loc17_ || param3)
                                                         {
                                                            addr495:
                                                            while(true)
                                                            {
                                                               §§push(param3);
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  if(!(_loc17_ || §!j§))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        addr527:
                                                                        while(true)
                                                                        {
                                                                           addr470:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(_loc17_ || §!j§)
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr526:
                                                                  }
                                                                  return §§pop();
                                                               }
                                                            }
                                                            addr495:
                                                         }
                                                         else
                                                         {
                                                            loop10:
                                                            for(; !_loc17_; while(true)
                                                            {
                                                               §§pop();
                                                               continue loop10;
                                                            })
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(delete param2[_loc6_]);
                                                                  continue loop10;
                                                               }
                                                            }
                                                            §§push(_loc6_);
                                                            if(!(_loc18_ && param1))
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                         }
                                                         §§goto(addr526);
                                                      }
                                                      §§goto(addr527);
                                                   }
                                                   else
                                                   {
                                                      param2[_loc6_].dispose();
                                                   }
                                                   §§goto(addr542);
                                                }
                                             }
                                          }
                                          §§goto(addr495);
                                       }
                                       §§goto(addr532);
                                    }
                                    §§goto(addr495);
                                 }
                                 §§goto(addr480);
                              }
                              break;
                           }
                           _loc6_ = §§pop();
                           if(!_loc18_)
                           {
                              §§goto(addr470);
                           }
                           §§goto(addr495);
                        }
                        else
                        {
                           if(!(param1 is §%!g§))
                           {
                              throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                           }
                           if(_loc17_ || param3)
                           {
                              _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §%!g§) as §?!U§) ? _loc13_.texture : null;
                              if(_loc17_ || param2)
                              {
                                 if(_loc13_)
                                 {
                                    if(!(_loc18_ && param3))
                                    {
                                       addr364:
                                       §§push(_loc13_.smoothing);
                                       if(!(_loc18_ && §!j§))
                                       {
                                          §§push(§§pop());
                                          if(_loc17_)
                                          {
                                             addr382:
                                             _loc15_ = §§pop();
                                          }
                                       }
                                       §§goto(addr382);
                                    }
                                    if((_loc16_ = param2[param3]).§#2§(_loc12_,_loc14_,_loc15_))
                                    {
                                       if(_loc17_ || param1)
                                       {
                                          param3++;
                                          if(!(_loc18_ && param2))
                                          {
                                             if(param2.length <= param3)
                                             {
                                                if(!_loc18_)
                                                {
                                                   addr415:
                                                   param2.push(new §!j§());
                                                   if(_loc17_)
                                                   {
                                                      addr421:
                                                      (_loc16_ = param2[param3]).reset();
                                                      _loc16_.§ §(_loc12_,param5,_loc14_,_loc15_,param4);
                                                   }
                                                   §§goto(addr444);
                                                }
                                             }
                                          }
                                          §§goto(addr421);
                                       }
                                       §§goto(addr415);
                                    }
                                    §§goto(addr421);
                                 }
                                 else
                                 {
                                    §§push(null);
                                    if(_loc17_)
                                    {
                                       §§goto(addr382);
                                    }
                                 }
                                 §§goto(addr382);
                              }
                              §§goto(addr364);
                           }
                        }
                        §§goto(addr444);
                        addr85:
                        addr145:
                     }
                     param2[0].reset();
                     if(!_loc18_)
                     {
                        if(!(_loc18_ && param1))
                        {
                           if(_loc18_ && param2)
                           {
                              §§goto(addr134);
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr138);
                     }
                  }
                  §§goto(addr174);
               }
               else
               {
                  §§push(param1.alpha == 0);
                  if(!_loc18_)
                  {
                     if(!§§pop())
                     {
                        if(_loc17_ || param3)
                        {
                           addr103:
                           §§pop();
                           loop2:
                           while(true)
                           {
                              §§push(param1.visible);
                              if(!_loc18_)
                              {
                                 if(_loc17_)
                                 {
                                    addr56:
                                    §§push(!§§pop());
                                    if(!(_loc18_ && param2))
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc17_)
                                             {
                                                if(!_loc17_)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(param3);
                                                if(!(_loc18_ && param2))
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr148);
                                             }
                                             §§goto(addr174);
                                          }
                                          break;
                                          §§goto(addr56);
                                       }
                                       §§goto(addr134);
                                       addr64:
                                    }
                                    §§goto(addr134);
                                 }
                                 else
                                 {
                                    §§goto(addr168);
                                 }
                              }
                              §§goto(addr134);
                           }
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr103);
               }
            }
            while(_loc18_);
            
            return §§pop();
         }
         §§goto(addr145);
      }
      
      private static function §2!t§() : void
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
         var _loc1_:§^b§ = §^b§.§9E§;
         if(!(_loc23_ && _loc2_))
         {
            if(_loc1_.§91§(§@!Y§(true)))
            {
               if(_loc24_ || _loc2_)
               {
                  §§goto(addr64);
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
                  addr192:
                  while(true)
                  {
                     §§push("m44 op, va0, vc0  \n");
                     addr181:
                     while(true)
                     {
                        §§push("mov v0, va2       \n");
                        addr182:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr183:
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
         addr64:
      }
      
      public static function §@!Y§(param1:Boolean) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1)
            {
               addr20:
               §§push("QB_q*");
               if(_loc3_)
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
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param3)
         {
            if(param1)
            {
               addr25:
               §§push("QB_i*");
               if(_loc7_ || §!j§)
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
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(_loc6_);
                        addr202:
                        while(true)
                        {
                           §§push("N");
                           addr203:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr204:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 addr205:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                     }
                     addr201:
                  }
                  while(true)
                  {
                     §§push(param3);
                     while(true)
                     {
                        if(!§§pop())
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(_loc6_);
                           addr162:
                           while(_loc7_ || param1)
                           {
                              §§push("R");
                              while(_loc7_ || param2)
                              {
                                 §§push(§§pop() + §§pop());
                                 while(!(_loc8_ && param1))
                                 {
                                    _loc6_ = §§pop();
                                    while(_loc7_)
                                    {
                                    }
                                    §§goto(addr205);
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr203);
                           }
                           §§goto(addr202);
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr133);
            }
         }
         §§goto(addr25);
      }
      
      public function get §4!y§() : int
      {
         return this.§<S§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§`9§)
            {
               addr99:
               while(true)
               {
                  this.§`9§.dispose();
                  addr102:
                  while(true)
                  {
                  }
               }
               addr99:
            }
            loop0:
            while(true)
            {
               if(this.§'!T§)
               {
                  while(true)
                  {
                     this.§'!T§.dispose();
                     addr95:
                     while(true)
                     {
                     }
                  }
                  addr92:
               }
               while(true)
               {
                  if(this.§,!g§)
                  {
                     while(true)
                     {
                        if(_loc1_)
                        {
                           this.§,!g§.dispose();
                           while(true)
                           {
                              if(_loc2_ && this)
                              {
                                 §§goto(addr92);
                              }
                           }
                           §§goto(addr95);
                           addr80:
                        }
                        else
                        {
                           §§goto(addr99);
                        }
                     }
                     continue loop0;
                     addr75:
                  }
                  while(this.§=!"§)
                  {
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           if(_loc2_ && _loc1_)
                           {
                              continue loop0;
                           }
                           this.§=!"§.dispose();
                           addr56:
                           if(_loc1_)
                           {
                              if(_loc1_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr75);
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr56);
                  }
                  return;
               }
            }
         }
         §§goto(addr99);
      }
      
      private function §1Y§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§ Q§.§<`§);
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(!_loc5_)
         {
            §§push(_loc1_);
            if(!(_loc5_ && this))
            {
               §§push(0);
               if(!_loc5_)
               {
                  if(§§pop() == §§pop())
                  {
                     addr45:
                     §§push(16);
                     if(_loc4_ || _loc3_)
                     {
                        addr72:
                        §§push(int(§§pop()));
                     }
                     else
                     {
                        addr62:
                        §§push(int(§§pop() * 2));
                        if(_loc4_ || _loc1_)
                        {
                           §§goto(addr72);
                        }
                     }
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(!(_loc5_ && _loc1_))
                     {
                        §§goto(addr62);
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_)
                  {
                     this.§ Q§.§<`§ = _loc2_ * 4;
                  }
                  §§push(_loc1_);
                  if(!(_loc5_ && _loc3_))
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
                           if(_loc4_)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 this.§%!'§ = true;
                                 addr125:
                                 if(!(_loc5_ && _loc1_))
                                 {
                                    break;
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc4_ || _loc1_)
                                    {
                                       continue loop0;
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       this.§^u§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                                       addr159:
                                       while(true)
                                       {
                                          if(!(_loc5_ && _loc1_))
                                          {
                                             _loc3_++;
                                             continue loop6;
                                          }
                                          addr200:
                                          addr248:
                                          addr246:
                                          while(!_loc5_)
                                          {
                                             this.§^u§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                                             continue loop3;
                                          }
                                          loop4:
                                          while(!_loc4_)
                                          {
                                             while(true)
                                             {
                                                this.§^u§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                                                continue loop4;
                                             }
                                          }
                                          this.§^u§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§^u§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                                 §§goto(addr200);
                                 §§goto(addr248);
                              }
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr125);
                     }
                     else
                     {
                        this.§^u§[int(_loc3_ * 6)] = _loc3_ * 4;
                        §§goto(addr262);
                     }
                  }
                  return;
               }
            }
            §§goto(addr62);
         }
         §§goto(addr45);
      }
      
      private function §#!8§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§%!'§);
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
                                 while(true)
                                 {
                                    this.§'!T§.dispose();
                                    addr98:
                                    while(true)
                                    {
                                    }
                                    addr39:
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       if(_loc3_)
                                       {
                                          this.§=!"§.dispose();
                                          addr51:
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             while(true)
                                             {
                                                if(false)
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(this.§,!g§)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ || this))
                                                            {
                                                               break loop7;
                                                            }
                                                            if(!(_loc3_ || _loc2_))
                                                            {
                                                               break;
                                                            }
                                                            this.§,!g§.dispose();
                                                            while(!(_loc4_ && param1))
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr51);
                                                            }
                                                            §§goto(addr106);
                                                         }
                                                         addr128:
                                                         return false;
                                                         addr64:
                                                      }
                                                      while(this.§=!"§)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr39);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr98);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr64);
                                                            }
                                                            §§goto(addr81);
                                                         }
                                                         §§goto(addr51);
                                                      }
                                                   }
                                                   §§goto(addr103);
                                                   addr60:
                                                }
                                                §§push(this.§ Q§.§<`§);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§push(int(§§pop() / 4));
                                                }
                                                var _loc2_:* = §§pop();
                                                if(_loc3_)
                                                {
                                                   this.§`9§ = param1.createVertexBuffer(_loc2_ * 4,§0p§.§1!0§);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      this.§`9§.uploadFromByteArray(this.§ Q§.§2!e§,0,0,_loc2_ * 4);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         this.§'!T§ = param1.createVertexBuffer(_loc2_ * 4,§0p§.§0!Q§);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            this.§'!T§.uploadFromVector(this.§ Q§.§-=§,0,_loc2_ * 4);
                                                            while(true)
                                                            {
                                                               this.§,!g§ = param1.createVertexBuffer(_loc2_ * 4,§0p§.§<h§);
                                                               continue loop13;
                                                               loop19:
                                                               while(_loc3_ || _loc3_)
                                                               {
                                                                  this.§%!'§ = false;
                                                                  if(!(_loc3_ || _loc3_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr173:
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     addr180:
                                                                     if(_loc4_ && _loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§=!"§ = param1.createIndexBuffer(_loc2_ * 6);
                                                                           addr223:
                                                                           while(_loc3_)
                                                                           {
                                                                              this.§=!"§.uploadFromVector(this.§^u§,0,_loc2_ * 6);
                                                                              continue loop19;
                                                                              §§goto(addr173);
                                                                           }
                                                                           continue loop14;
                                                                           §§goto(addr180);
                                                                        }
                                                                        addr237:
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  §§goto(addr223);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                return true;
                                             }
                                             addr58:
                                          }
                                          §§goto(addr81);
                                       }
                                       §§goto(addr111);
                                    }
                                 }
                              }
                              §§goto(addr60);
                           }
                        }
                     }
                     addr111:
                     throw new §4!+§();
                  }
               }
               §§goto(addr64);
            }
            §§goto(addr128);
         }
         §§goto(addr58);
      }
      
      private function §`!v§(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§#!8§(param1));
            loop0:
            while(!§§pop())
            {
               loop2:
               while(true)
               {
                  §§push(this.§5_§);
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        this.§'!T§.uploadFromVector(this.§ Q§.§-=§,0,this.§<S§ * 4);
                        loop4:
                        while(!_loc3_)
                        {
                           while(true)
                           {
                              this.§,!g§.uploadFromVector(this.§ Q§.§!!=§,0,this.§<S§ * 4);
                              if(_loc2_ || _loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           if(_loc2_ || _loc2_)
                           {
                              break loop0;
                           }
                           continue loop2;
                        }
                        addr96:
                        while(true)
                        {
                           this.§`9§.uploadFromByteArray(this.§ Q§.§2!e§,0,0,this.§<S§ * 4);
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr23);
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
         if(!(_loc9_ && param2))
         {
            if(this.§<S§ == 0)
            {
               if(_loc8_ || param3)
               {
                  §§goto(addr34);
               }
            }
            §§push(this.§ Q§.premultipliedAlpha);
            if(!(_loc9_ && param3))
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
            if(!(_loc9_ && param1))
            {
               if(this.§#!E§)
               {
                  addr64:
                  §§push(§1a§(_loc5_,this.§#!E§.mipMapping,this.§#!E§.repeat,this.§^?§,this.§5_§));
                  if(_loc8_)
                  {
                     §§push(§§pop());
                     if(_loc9_ && param1)
                     {
                     }
                     addr101:
                     §§push(§§pop());
                  }
                  else
                  {
                     addr93:
                     §§push(§§pop());
                     if(!(_loc9_ && this))
                     {
                        §§goto(addr101);
                     }
                  }
               }
               else
               {
                  §§push(§@!Y§(_loc5_));
                  if(!_loc9_)
                  {
                     §§goto(addr93);
                  }
               }
               var _loc6_:* = §§pop();
               if(!(_loc9_ && param3))
               {
                  §`K§.§&!m§(param1,_loc4_);
                  if(!_loc9_)
                  {
                     this.§`!v§(param1);
                     if(!(_loc9_ && param3))
                     {
                        param1.setProgram(§^b§.§9E§.§!g§(_loc6_));
                        if(_loc8_)
                        {
                           param1.setVertexBufferAt(0,this.§,!g§,§0p§.§[!w§,Context3DVertexBufferFormat.FLOAT_3);
                           if(_loc8_)
                           {
                              §§push(this.§#!E§);
                              if(!(_loc9_ && param3))
                              {
                                 §§push(null);
                                 if(!(_loc9_ && param3))
                                 {
                                    §§push(§§pop() == §§pop());
                                    loop0:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc8_ || param1)
                                       {
                                          if(!§§pop())
                                          {
                                             loop1:
                                             while(true)
                                             {
                                                §§pop();
                                                addr207:
                                                while(true)
                                                {
                                                   addr123:
                                                   while(true)
                                                   {
                                                      §§push(this.§5_§);
                                                      if(_loc9_ && param1)
                                                      {
                                                         break;
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr349:
                                                   if(§§pop())
                                                   {
                                                      loop8:
                                                      while(true)
                                                      {
                                                         param1.setVertexBufferAt(2,null);
                                                         loop9:
                                                         while(_loc8_)
                                                         {
                                                            while(true)
                                                            {
                                                               param1.setVertexBufferAt(0,null);
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               if(_loc8_ || param2)
                                                               {
                                                                  if(!(_loc9_ && param3))
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 param1.drawTriangles(this.§=!"§,0,this.§<S§ * 2);
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§#!E§);
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   addr407:
                                                                                                   param1.setTextureAt(0,null);
                                                                                                   break;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc8_ || param2))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   addr443:
                                                                                                   §§push(this.§#!E§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1.setTextureAt(0,this.§#!E§.getBase(param1));
                                                                                                         }
                                                                                                         addr456:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         param1.setTextureAt(0,null);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         addr430:
                                                                                                      }
                                                                                                      §§goto(addr443);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                param1.setVertexBufferAt(1,this.§`9§,§0p§.§;Z§,Context3DVertexBufferFormat.FLOAT_2);
                                                                                                continue loop20;
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       addr357:
                                                                                       addr369:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§#!E§);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          if(_loc8_ || this)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr455);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(null);
                                                                                          addr370:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(!(_loc9_ && param2))
                                                                                             {
                                                                                                addr378:
                                                                                                §§push(§§pop());
                                                                                                break loop0;
                                                                                             }
                                                                                             addr380:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr381:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§5_§);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      addr340:
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                   }
                                                                                                   if(!(_loc8_ || param2))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr349);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr411:
                                                                                    while(true)
                                                                                    {
                                                                                       param1.setVertexBufferAt(1,null);
                                                                                       break loop9;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr430);
                                                                  }
                                                                  §§goto(addr411);
                                                               }
                                                               §§goto(addr381);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc8_ || this)
                                                            {
                                                               §§goto(addr357);
                                                            }
                                                            §§goto(addr456);
                                                            §§goto(addr411);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr307);
                                                }
                                             }
                                          }
                                          §§goto(addr150);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§goto(addr380);
                                       }
                                       §§goto(addr348);
                                       §§goto(addr378);
                                    }
                                 }
                                 §§goto(addr370);
                              }
                              §§goto(addr369);
                           }
                        }
                        §§goto(addr484);
                     }
                     §§goto(addr302);
                  }
                  §§goto(addr381);
               }
               §§goto(addr484);
            }
            §§goto(addr64);
         }
         addr34:
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§<S§ = 0;
            while(true)
            {
               this.§5_§ = false;
               loop1:
               while(_loc2_)
               {
                  this.§#!E§ = null;
                  while(true)
                  {
                     this.§^?§ = null;
                     if(!(_loc1_ && _loc1_))
                     {
                        if(_loc2_ || _loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      public function § §(param1:§%!g§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && param3))
         {
            §§push(this.§<S§);
            if(_loc10_ || param1)
            {
               §§push(1);
               if(!_loc9_)
               {
                  §§push(§§pop() + §§pop());
                  if(!(_loc9_ && param1))
                  {
                     if(§§pop() > this.§ Q§.§<`§ / 4)
                     {
                        while(true)
                        {
                           this.§1Y§();
                           addr116:
                           while(true)
                           {
                           }
                           addr65:
                           if(_loc9_ && param1)
                           {
                              continue;
                           }
                           §§push(this.§ Q§);
                           if(!(_loc9_ && param3))
                           {
                              if(param3)
                              {
                                 addr37:
                                 §§push(param3.premultipliedAlpha);
                                 if(!_loc9_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc10_ || param2)
                                    {
                                    }
                                 }
                                 addr51:
                                 §§pop().setPremultipliedAlpha(§§pop(),false);
                                 if(!_loc9_)
                                 {
                                    addr55:
                                    if(!_loc9_)
                                    {
                                       while(true)
                                       {
                                          if(false)
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                this.§^?§ = param4;
                                                addr63:
                                                while(true)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      §§goto(addr65);
                                                   }
                                                   else
                                                   {
                                                      while(!_loc9_)
                                                      {
                                                         this.§#!E§ = param3;
                                                         break loop5;
                                                      }
                                                      §§goto(addr116);
                                                      addr82:
                                                   }
                                                }
                                                §§goto(addr55);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr59);
                                             }
                                             addr59:
                                             addr87:
                                          }
                                          addr117:
                                          §§push(this.§<S§);
                                          addr134:
                                          if(!_loc9_)
                                          {
                                             addr122:
                                             §§push(int(§§pop() * 4));
                                          }
                                          var _loc6_:* = §§pop();
                                          if(_loc10_ || param3)
                                          {
                                             §§push(param2);
                                             if(!(_loc9_ && param2))
                                             {
                                                §§push(§§pop() * param1.alpha);
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr204:
                                                   if(!(_loc10_ || param2))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop() == 1);
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc10_ || param1)
                                                                  {
                                                                     if(!(_loc10_ || param3))
                                                                     {
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.useColor);
                                                                           if(!(_loc10_ || param3))
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              break;
                                                                           }
                                                                           addr223:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              continue loop14;
                                                                           }
                                                                        }
                                                                        continue;
                                                                     }
                                                                     if(_loc10_)
                                                                     {
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           this.§5_§ = true;
                                                                           if(!_loc9_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       addr258:
                                                                                       var _loc7_:*;
                                                                                       §§push((_loc7_ = this).§<S§);
                                                                                       if(_loc10_ || param2)
                                                                                       {
                                                                                          §§push(§§pop() + 1);
                                                                                       }
                                                                                       var _loc8_:* = §§pop();
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          _loc7_.§<S§ = _loc8_;
                                                                                       }
                                                                                       break loop16;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param2);
                                                                                       if(_loc9_ && this)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr204);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       param2 = §§pop();
                                                                                    }
                                                                                    addr195:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    param1.copyVertexDataTo(this.§ Q§,_loc6_,param2,param5);
                                                                                    addr233:
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr195);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr191:
                                                                           }
                                                                           break;
                                                                        }
                                                                        return;
                                                                        addr186:
                                                                     }
                                                                     §§goto(addr233);
                                                                  }
                                                                  §§goto(addr191);
                                                               }
                                                               §§goto(addr258);
                                                            }
                                                            continue;
                                                            addr168:
                                                         }
                                                      }
                                                      §§goto(addr223);
                                                   }
                                                }
                                             }
                                             §§goto(addr256);
                                          }
                                          §§goto(addr186);
                                       }
                                       addr57:
                                    }
                                    §§goto(addr87);
                                 }
                                 §§goto(addr63);
                              }
                              §§goto(addr51);
                              §§push(true);
                           }
                           §§goto(addr37);
                        }
                     }
                     while(true)
                     {
                        §§push(this.§<S§);
                        if(_loc10_)
                        {
                           §§push(0);
                           if(_loc10_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 §§goto(addr82);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr122);
                        }
                        break;
                        §§goto(addr116);
                     }
                     §§goto(addr134);
                  }
               }
               §§goto(addr122);
            }
            §§goto(addr134);
         }
         §§goto(addr57);
      }
      
      public function §#2§(param1:§%!g§, param2:Texture, param3:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
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
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param2 == null);
                                    while(!_loc4_)
                                    {
                                       §§push(!§§pop());
                                       addr149:
                                       if(_loc5_ || param2)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc5_ || param2)
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      if(!(_loc4_ && param2))
                                                      {
                                                         §§goto(addr180);
                                                      }
                                                      §§goto(addr347);
                                                   }
                                                   else if(!(_loc4_ && this))
                                                   {
                                                      §§goto(addr201);
                                                   }
                                                   §§goto(addr315);
                                                }
                                                else
                                                {
                                                   loop13:
                                                   while(_loc5_ || this)
                                                   {
                                                      while(true)
                                                      {
                                                         addr77:
                                                         while(true)
                                                         {
                                                            §§push(this.§<S§);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(0);
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        §§push(!§§pop());
                                                                        loop15:
                                                                        for(; !_loc4_; if(!(_loc4_ && param1))
                                                                        {
                                                                           if(!(_loc4_ && param1))
                                                                           {
                                                                              §§goto(addr66);
                                                                              §§push(!§§pop());
                                                                           }
                                                                           addr180:
                                                                           §§push(false);
                                                                        },continue,if(!_loc5_)
                                                                        {
                                                                           addr390:
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           §§pop();
                                                                           §§push(this.§#!E§);
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§push(§§pop().repeat);
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2.repeat);
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    addr333:
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(_loc4_ && this)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(!§§pop());
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       addr343:
                                                                                       §§push(§§pop());
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          addr346:
                                                                                          §§pop();
                                                                                          addr302:
                                                                                          §§push(this.§^?§ != param3);
                                                                                          continue loop21;
                                                                                          addr347:
                                                                                       }
                                                                                       addr310:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop22;
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                addr315:
                                                                                                §§pop();
                                                                                                if(!(_loc4_ && param2))
                                                                                                {
                                                                                                   addr266:
                                                                                                   §§push(this.§5_§);
                                                                                                   if(_loc4_ && param2)
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   §§push(§§pop() == param1.useColor);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr279:
                                                                                                      §§push(!§§pop());
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr285:
                                                                                                            break;
                                                                                                         }
                                                                                                         addr283:
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               addr288:
                                                                                                               §§pop();
                                                                                                               if(!(_loc5_ || param1))
                                                                                                               {
                                                                                                                  continue loop20;
                                                                                                               }
                                                                                                               §§push(this.§<S§ == 8192);
                                                                                                            }
                                                                                                            §§goto(addr254);
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   §§goto(addr288);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§#!E§);
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr357:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr283);
                                                                                          }
                                                                                          addr380:
                                                                                          while(true)
                                                                                          {
                                                                                             addr381:
                                                                                             §§push(!§§pop());
                                                                                             §§push(!§§pop());
                                                                                             continue loop23;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 addr356:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§#!E§);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          §§push(null);
                                                                                          if(!(_loc5_ || param2))
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             if(_loc5_ || param3)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                while(_loc5_ || param3)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     break loop12;
                                                                                                                  }
                                                                                                                  §§push(param2 == null);
                                                                                                                  if(!(_loc4_ && param2))
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        continue loop12;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr180);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr245:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr315);
                                                                                                            }
                                                                                                            §§goto(addr288);
                                                                                                         }
                                                                                                         §§goto(addr266);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr343);
                                                                                                }
                                                                                                §§goto(addr285);
                                                                                                addr230:
                                                                                             }
                                                                                             §§goto(addr302);
                                                                                          }
                                                                                          §§goto(addr240);
                                                                                       }
                                                                                       continue loop20;
                                                                                       addr201:
                                                                                    }
                                                                                    §§goto(addr357);
                                                                                    §§goto(addr333);
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr393:
                                                                        },return §§pop())
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc4_ && param2))
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       for(; !(_loc4_ && this); if(_loc5_ || this)
                                                                                       {
                                                                                          break loop16;
                                                                                       })
                                                                                       {
                                                                                          if(_loc5_ || param2)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(this.§5_§);
                                                                                                   if(!(_loc5_ || this))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      §§push(param1.useColor);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(_loc5_ || param1)
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr230);
                                                                                                   }
                                                                                                   §§goto(addr240);
                                                                                                }
                                                                                                §§goto(addr245);
                                                                                             }
                                                                                             §§goto(addr381);
                                                                                          }
                                                                                          §§goto(addr343);
                                                                                       }
                                                                                       §§goto(addr279);
                                                                                       addr114:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr275);
                                                                              }
                                                                              return §§pop();
                                                                           }
                                                                           §§goto(addr333);
                                                                        }
                                                                        addr254:
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr346);
                                                                  }
                                                                  §§goto(addr114);
                                                               }
                                                               §§goto(addr252);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                   }
                                                }
                                                §§goto(addr288);
                                             }
                                             §§goto(addr77);
                                          }
                                          continue loop6;
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr356);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr200);
      }
   }
}
