package §&#H§
{
   import §!!U§.§#"t§;
   import §!!U§.§2"D§;
   import §!!U§.DisplayObject;
   import §!!U§.DisplayObjectContainer;
   import §!#^§.§if §;
   import §&v§.§ +§;
   import §&v§.Texture;
   import §;8§.§'#]§;
   import §=]§.§%"G§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §%"Y§
   {
      
      private static var §%#4§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §%"Y§)
         {
            §%#4§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §%!$§:int;
      
      private var §#!d§:Texture;
      
      private var §3I§:String;
      
      private var §;q§:§%"G§;
      
      private var §^d§:VertexBuffer3D;
      
      private var §%![§:VertexBuffer3D;
      
      private var §7!E§:VertexBuffer3D;
      
      private var §+!'§:Vector.<uint>;
      
      private var §<#8§:IndexBuffer3D;
      
      private var §8!F§:Boolean = false;
      
      private var §>"C§:Boolean = false;
      
      public function §%"Y§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               §["y§();
               loop1:
               while(!(_loc2_ && this))
               {
                  this.§;q§ = new §%"G§(0,true);
                  while(true)
                  {
                     this.§+!'§ = new Vector.<uint>(0);
                     loop3:
                     while(_loc1_ || _loc1_)
                     {
                        if(_loc1_)
                        {
                           this.§%!$§ = 0;
                           while(true)
                           {
                              this.§]M§();
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                           }
                           return;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public static function §[;§(param1:DisplayObjectContainer, param2:Vector.<§%"Y§>) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §]!v§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §]!v§(param1:DisplayObject, param2:Vector.<§%"Y§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:int = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§2"D§ = null;
         var _loc13_:§#"t§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§%"Y§ = null;
         var _loc7_:Boolean = false;
         if(!_loc18_)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               if(§§pop() == -1)
               {
                  if(!(_loc18_ && param3))
                  {
                     addr173:
                     _loc7_ = true;
                     loop4:
                     while(true)
                     {
                        continue loop0;
                        addr154:
                        while(true)
                        {
                           if(_loc17_ || §%"Y§)
                           {
                              break loop4;
                           }
                           continue loop4;
                        }
                     }
                     if(param2.length == 0)
                     {
                        if(!_loc18_)
                        {
                           param2.push(new §%"Y§());
                        }
                     }
                     else
                     {
                        param2[0].reset();
                        addr124:
                        if(_loc18_ && §%"Y§)
                        {
                           addr143:
                        }
                        if(param1 is DisplayObjectContainer)
                        {
                           addr179:
                           §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                           if(!_loc18_)
                           {
                              addr189:
                              _loc9_ = §§pop();
                              _loc10_ = new Matrix3D();
                              if(!_loc18_)
                              {
                                 §§push(param5);
                                 if(!_loc18_)
                                 {
                                    §§push(param1.alpha);
                                    if(!(_loc18_ && §%"Y§))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc17_ || §%"Y§)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc17_ || param1)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc18_ && param2))
                                             {
                                                param5 = §§pop();
                                                addr233:
                                                §§push(0);
                                             }
                                          }
                                       }
                                       §§goto(addr233);
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       if(_loc17_ || param3)
                                       {
                                          addr242:
                                          _loc6_ = 0;
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(_loc17_ || param3)
                                          {
                                             §§push(_loc9_);
                                             if(_loc17_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc17_ || param3)
                                                   {
                                                      addr459:
                                                      §§push(_loc7_);
                                                      if(_loc17_ || §%"Y§)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               §§push(int(param2.length - 1));
                                                               if(_loc17_)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  if(_loc17_ || param3)
                                                                  {
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(_loc17_ || param1)
                                                                        {
                                                                           if(_loc17_)
                                                                           {
                                                                              addr496:
                                                                              if(!(_loc18_ && §%"Y§))
                                                                              {
                                                                                 break loop8;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - 1);
                                                                                 addr526:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc6_ = §§pop();
                                                                                    addr527:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr496);
                                                                              }
                                                                              addr525:
                                                                           }
                                                                           §§goto(addr526);
                                                                        }
                                                                        §§goto(addr520);
                                                                     }
                                                                  }
                                                                  §§goto(addr527);
                                                               }
                                                               §§goto(addr526);
                                                            }
                                                         }
                                                         addr519:
                                                         addr520:
                                                         return §§pop();
                                                         §§push(param3);
                                                      }
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr533:
                                                         while(_loc18_)
                                                         {
                                                            continue loop21;
                                                         }
                                                         §§goto(addr525);
                                                      }
                                                      addr532:
                                                      addr335:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr532);
                                                   }
                                                   addr552:
                                                }
                                                else
                                                {
                                                   _loc11_ = _loc8_.getChildAt(_loc6_);
                                                   if(_loc17_)
                                                   {
                                                      _loc10_.copyFrom(param4);
                                                      while(true)
                                                      {
                                                         _loc11_.§!]§(_loc10_);
                                                         loop10:
                                                         for(; _loc17_ || §%"Y§; do
                                                         {
                                                            if(!(_loc18_ && §%"Y§))
                                                            {
                                                               continue;
                                                            }
                                                            continue loop10;
                                                         }
                                                         while(_loc6_++, !(_loc17_ || param2));
                                                         ,while(false)
                                                         {
                                                            §§goto(addr265);
                                                         },continue loop8)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§]!v§(_loc11_,param2,param3,_loc10_,param5));
                                                               if(!(_loc18_ && param2))
                                                               {
                                                                  §§push(int(§§pop()));
                                                               }
                                                               param3 = §§pop();
                                                               continue loop10;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr263);
                                                }
                                             }
                                             addr504:
                                             if(§§pop() <= §§pop())
                                             {
                                                if(!(_loc18_ && param2))
                                                {
                                                   if(_loc18_ && param3)
                                                   {
                                                      §§goto(addr533);
                                                   }
                                                   §§goto(addr519);
                                                }
                                                §§goto(addr527);
                                             }
                                             param2[_loc6_].dispose();
                                             §§goto(addr552);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr504);
                                          §§goto(addr496);
                                       }
                                    }
                                    §§goto(addr335);
                                 }
                                 §§goto(addr233);
                              }
                              §§goto(addr242);
                           }
                           §§goto(addr189);
                        }
                        else
                        {
                           if(!(param1 is §2"D§))
                           {
                              throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                           }
                           if(_loc17_)
                           {
                              _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §2"D§) as §#"t§) ? _loc13_.texture : null;
                              if(!(_loc18_ && param2))
                              {
                                 if(_loc13_)
                                 {
                                    if(!(_loc18_ && param2))
                                    {
                                       addr378:
                                       §§push(_loc13_.smoothing);
                                       if(_loc17_)
                                       {
                                          §§push(§§pop());
                                          if(_loc18_ && param3)
                                          {
                                          }
                                          addr396:
                                          _loc15_ = §§pop();
                                       }
                                       §§goto(addr396);
                                    }
                                    if((_loc16_ = param2[param3]).§@c§(_loc12_,_loc14_,_loc15_,param5))
                                    {
                                       if(!_loc18_)
                                       {
                                          param3++;
                                          if(_loc17_)
                                          {
                                             if(param2.length <= param3)
                                             {
                                                if(_loc17_ || param2)
                                                {
                                                   param2.push(new §%"Y§());
                                                   if(_loc18_ && param3)
                                                   {
                                                   }
                                                   addr450:
                                                   §§goto(addr459);
                                                }
                                                §§goto(addr450);
                                             }
                                             (_loc16_ = param2[param3]).reset();
                                             addr443:
                                             _loc16_.§54§(_loc12_,param5,_loc14_,_loc15_,param4);
                                          }
                                       }
                                       §§goto(addr450);
                                    }
                                    §§goto(addr443);
                                 }
                                 else
                                 {
                                    §§push(null);
                                    if(!_loc18_)
                                    {
                                       §§goto(addr396);
                                    }
                                 }
                                 §§goto(addr396);
                              }
                              §§goto(addr378);
                           }
                        }
                        §§goto(addr459);
                        addr99:
                     }
                     §§goto(addr143);
                     addr174:
                  }
                  else
                  {
                     §§goto(addr179);
                  }
                  §§goto(addr189);
               }
               else
               {
                  §§push(param1.alpha == 0);
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(!(_loc18_ && param2))
                           {
                              §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(param1.visible);
                                 if(!(_loc18_ && param3))
                                 {
                                    if(!_loc17_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(!§§pop());
                                    if(!_loc18_)
                                    {
                                       if(!_loc17_)
                                       {
                                          continue loop2;
                                       }
                                       while(§§pop())
                                       {
                                          if(!(_loc17_ || param1))
                                          {
                                             if(false)
                                             {
                                             }
                                             break;
                                          }
                                          if(!_loc17_)
                                          {
                                             continue loop7;
                                          }
                                          if(_loc17_)
                                          {
                                             if(!(_loc18_ && param2))
                                             {
                                                §§push(param3);
                                                if(_loc17_)
                                                {
                                                   break loop0;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr154);
                                          }
                                          §§goto(addr124);
                                          §§goto(addr99);
                                       }
                                       §§goto(addr124);
                                    }
                                 }
                                 §§goto(addr124);
                              }
                              addr116:
                           }
                           else
                           {
                              §§goto(addr173);
                           }
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr66);
                  }
               }
               §§goto(addr124);
            }
            return §§pop();
         }
         §§goto(addr116);
      }
      
      private static function §["y§() : void
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
         var _loc1_:§3#J§ = §3#J§.§2!C§;
         if(!_loc24_)
         {
            if(_loc1_.§,"i§(§&!&§(true)))
            {
               if(_loc23_)
               {
                  §§goto(addr53);
               }
            }
            var _loc2_:§if § = new §if §();
            var _loc3_:§if § = new §if §();
            var _loc13_:int = 0;
            var _loc14_:* = [true,false];
            while(§§hasnext(_loc14_,_loc13_))
            {
               §§push(Boolean(§§nextvalue(_loc13_,_loc14_)));
               loop1:
               while(true)
               {
                  _loc6_ = §§pop();
                  addr168:
                  while(true)
                  {
                     §§push("m44 op, va0, vc0  \n" + "mov v0, va2       \n");
                     addr159:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         addr53:
      }
      
      public static function §&!&§(param1:Boolean) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            return !!param1 ? "QB_q*" : "QB_q\'";
         }
         §§goto(addr46);
      }
      
      public static function §5#@§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && §%"Y§))
         {
            var _loc6_:* = !!param1 ? "QB_i*" : "QB_i\'";
            if(!_loc8_)
            {
               §§push(param2);
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     if(!_loc8_)
                     {
                        §§push(_loc6_);
                        while(true)
                        {
                           §§push(§§pop() + "N");
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
                        addr171:
                     }
                     §§goto(addr174);
                  }
                  while(true)
                  {
                     §§push(param3);
                     loop4:
                     while(!_loc8_)
                     {
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§push(_loc6_);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop() + "R");
                                 loop7:
                                 while(!_loc8_)
                                 {
                                    _loc6_ = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       addr106:
                                       while(true)
                                       {
                                          §§push(param5);
                                          if(_loc8_ && param2)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             continue loop5;
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             §§push(param4);
                                             if(_loc7_ || param2)
                                             {
                                                §§push(§ +§.§1#B§);
                                                if(!(_loc8_ && param1))
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      if(!(_loc8_ && param3))
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            continue;
                                                         }
                                                         addr88:
                                                         §§push(_loc6_);
                                                         while(true)
                                                         {
                                                            §§push(param4);
                                                            addr89:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop().charAt(0));
                                                               addr93:
                                                               while(true)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     addr131:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(§§pop() + "C");
                                                                           if(!(_loc7_ || §%"Y§))
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc6_ = §§pop();
                                                                           continue loop13;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     continue loop7;
                                                                     addr131:
                                                                  }
                                                                  _loc6_ = §§pop();
                                                               }
                                                            }
                                                         }
                                                         addr88:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         continue loop5;
                                                         §§goto(addr95);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         if(!_loc8_)
                                                         {
                                                            if(_loc7_ || param2)
                                                            {
                                                               break loop13;
                                                            }
                                                            §§goto(addr88);
                                                         }
                                                      }
                                                      §§goto(addr131);
                                                      addr33:
                                                   }
                                                   §§goto(addr93);
                                                }
                                                §§goto(addr89);
                                             }
                                             §§goto(addr88);
                                          }
                                          if(_loc7_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr171);
                                          continue loop8;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 §§goto(addr173);
                              }
                           }
                        }
                        §§goto(addr106);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr174);
         }
         §§goto(addr25);
      }
      
      public function get §%">§() : int
      {
         return this.§%!$§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§^d§)
            {
               while(true)
               {
                  this.§^d§.dispose();
                  addr108:
                  while(true)
                  {
                  }
               }
               addr105:
            }
            while(true)
            {
               if(this.§%![§)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     this.§%![§.dispose();
                  }
                  loop2:
                  while(!(_loc1_ && _loc2_))
                  {
                     loop5:
                     while(true)
                     {
                        if(!(_loc2_ || _loc2_))
                        {
                           continue loop2;
                        }
                        if(!_loc1_)
                        {
                           while(this.§<#8§)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 this.§<#8§.dispose();
                              }
                              if(!_loc2_)
                              {
                                 continue loop5;
                              }
                              if(_loc2_)
                              {
                                 break;
                              }
                              addr57:
                              while(true)
                              {
                                 this.§7!E§.dispose();
                                 continue loop5;
                              }
                           }
                           return;
                           addr24:
                        }
                        §§goto(addr105);
                     }
                  }
                  continue;
               }
               while(true)
               {
                  if(this.§7!E§)
                  {
                     §§goto(addr57);
                  }
                  §§goto(addr24);
               }
            }
         }
         §§goto(addr108);
      }
      
      private function §]M§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§;q§.§5#%§);
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(_loc5_ || _loc1_)
         {
            §§push(_loc1_);
            if(_loc5_ || this)
            {
               §§push(0);
               if(_loc5_ || _loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     addr56:
                     §§push(16);
                     if(_loc4_ && this)
                     {
                     }
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(!_loc4_)
                     {
                        §§push(2);
                     }
                  }
                  §§goto(addr74);
                  §§goto(addr73);
               }
               §§push(int(§§pop() * §§pop()));
               if(!_loc4_)
               {
                  addr73:
                  if(!_loc4_)
                  {
                     this.§;q§.§5#%§ = _loc2_ * 4;
                  }
                  §§push(_loc1_);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  loop0:
                  while(true)
                  {
                     if(_loc3_ >= _loc2_)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           if(_loc5_)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(_loc5_)
                                 {
                                    this.§>"C§ = true;
                                    break;
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    this.§+!'§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                                    addr210:
                                    while(true)
                                    {
                                       this.§+!'§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                                       continue loop1;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          _loc3_++;
                                          while(!(_loc5_ || _loc2_))
                                          {
                                          }
                                          continue loop0;
                                          addr136:
                                       }
                                       else
                                       {
                                          addr268:
                                       }
                                       while(true)
                                       {
                                          this.§+!'§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                                       }
                                       while(true)
                                       {
                                          this.§+!'§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§+!'§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                                    }
                                 }
                                 §§goto(addr210);
                              }
                           }
                           §§goto(addr136);
                        }
                        break;
                     }
                     this.§+!'§[int(_loc3_ * 6)] = _loc3_ * 4;
                     §§goto(addr268);
                  }
                  return;
               }
            }
            §§goto(addr74);
         }
         §§goto(addr56);
      }
      
      private function §8!-§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§>"C§);
            if(_loc4_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     §§goto(addr119);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr120:
                  }
               }
               loop1:
               while(true)
               {
                  if(param1 != null)
                  {
                     loop2:
                     while(true)
                     {
                        if(this.§^d§)
                        {
                           while(true)
                           {
                              this.§^d§.dispose();
                              addr90:
                              while(true)
                              {
                              }
                           }
                           addr87:
                        }
                        while(true)
                        {
                           if(this.§%![§)
                           {
                              loop6:
                              for(; !(_loc3_ && _loc3_); if(!(_loc4_ || _loc3_))
                              {
                                 continue;
                              },if(false)
                              {
                                 §§goto(addr44);
                              },§§goto(addr121))
                              {
                                 this.§%![§.dispose();
                                 loop7:
                                 while(_loc4_ || this)
                                 {
                                    while(true)
                                    {
                                       if(this.§7!E§)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             this.§7!E§.dispose();
                                             loop11:
                                             while(true)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(this.§<#8§)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        this.§<#8§.dispose();
                                                                        continue loop6;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               continue loop11;
                                                            }
                                                            continue loop6;
                                                         }
                                                         addr121:
                                                         §§push(this.§;q§.§5#%§);
                                                         if(_loc4_ || this)
                                                         {
                                                            §§push(int(§§pop() / 4));
                                                         }
                                                         var _loc2_:* = §§pop();
                                                         if(!_loc3_)
                                                         {
                                                            this.§^d§ = param1.createVertexBuffer(_loc2_ * 4,§%"G§.§<"<§);
                                                            this.§^d§.uploadFromByteArray(this.§;q§.§ ";§,0,0,_loc2_ * 4);
                                                            addr292:
                                                         }
                                                         this.§%![§ = param1.createVertexBuffer(_loc2_ * 4,§%"G§.§4v§);
                                                         this.§%![§.uploadFromVector(this.§;q§.§>"+§,0,_loc2_ * 4);
                                                         addr246:
                                                         addr259:
                                                         if(!_loc3_)
                                                         {
                                                            this.§7!E§ = param1.createVertexBuffer(_loc2_ * 4,§%"G§.§'!Q§);
                                                            addr232:
                                                            if(!_loc3_)
                                                            {
                                                               this.§7!E§.uploadFromVector(this.§;q§.§%"!§,0,_loc2_ * 4);
                                                               addr214:
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  this.§<#8§ = param1.createIndexBuffer(_loc2_ * 6);
                                                                  this.§<#8§.uploadFromVector(this.§+!'§,0,_loc2_ * 6);
                                                                  addr189:
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        this.§>"C§ = false;
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              if(_loc3_ && param1)
                                                                              {
                                                                                 §§goto(addr292);
                                                                              }
                                                                              return true;
                                                                           }
                                                                           §§goto(addr246);
                                                                        }
                                                                        §§goto(addr189);
                                                                     }
                                                                     §§goto(addr214);
                                                                  }
                                                                  addr202:
                                                                  §§goto(addr202);
                                                               }
                                                               §§goto(addr232);
                                                            }
                                                            §§goto(addr259);
                                                         }
                                                         addr272:
                                                         §§goto(addr272);
                                                      }
                                                      addr20:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            break loop1;
                                                         }
                                                         continue loop1;
                                                      }
                                                      addr95:
                                                   }
                                                }
                                                §§goto(addr87);
                                             }
                                          }
                                          addr48:
                                       }
                                       §§goto(addr20);
                                    }
                                 }
                                 §§goto(addr90);
                              }
                              continue loop2;
                           }
                           §§goto(addr44);
                        }
                     }
                  }
                  §§goto(addr95);
               }
               throw new §'#]§();
            }
            addr119:
            return false;
         }
         §§goto(addr48);
      }
      
      private function §-"^§(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§8!-§(param1));
            loop0:
            for(; !§§pop(); while(true)
            {
               §§push(this.§8!F§);
               if(_loc2_)
               {
                  break;
               }
               if(!§§pop())
               {
                  while(true)
                  {
                     this.§7!E§.uploadFromVector(this.§;q§.§%"!§,0,this.§%!$§ * 4);
                     if(_loc2_)
                     {
                        continue;
                     }
                     if(_loc3_ || _loc3_)
                     {
                        break loop0;
                     }
                  }
                  continue;
                  addr24:
               }
               while(!(_loc2_ && this))
               {
                  §§goto(addr38);
               }
               §§goto(addr92);
            })
            {
               while(true)
               {
                  this.§^d§.uploadFromByteArray(this.§;q§.§ ";§,0,0,this.§%!$§ * 4);
                  continue loop0;
               }
            }
            return;
         }
         while(true)
         {
            this.§%![§.uploadFromVector(this.§;q§.§>"+§,0,this.§%!$§ * 4);
            §§goto(addr80);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            if(this.§%!$§ == 0)
            {
               if(!_loc9_)
               {
                  §§goto(addr24);
               }
            }
            §§push(this.§;q§.premultipliedAlpha);
            if(!(_loc9_ && param2))
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
            if(!(_loc9_ && param2))
            {
               if(this.§#!d§)
               {
                  addr54:
                  §§push(§5#@§(_loc5_,this.§#!d§.mipMapping,this.§#!d§.repeat,this.§3I§,this.§8!F§));
                  if(_loc8_)
                  {
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                     }
                     addr86:
                     §§push(§§pop());
                  }
               }
               else
               {
                  §§push(§&!&§(_loc5_));
                  if(_loc8_ || param1)
                  {
                     §§push(§§pop());
                     if(!_loc9_)
                     {
                        §§goto(addr86);
                     }
                  }
               }
               var _loc6_:* = §§pop();
               if(!(_loc9_ && param2))
               {
                  §%"H§.§`!_§(param1,_loc4_);
                  if(_loc8_)
                  {
                     this.§-"^§(param1);
                     loop0:
                     while(true)
                     {
                        param1.setProgram(§3#J§.§2!C§.§^!_§(_loc6_));
                        if(!_loc9_)
                        {
                           param1.setVertexBufferAt(0,this.§7!E§,§%"G§.§42§,Context3DVertexBufferFormat.FLOAT_3);
                           if(!(_loc9_ && param2))
                           {
                              §§push(this.§#!d§);
                              if(_loc8_)
                              {
                                 §§push(null);
                                 if(!(_loc9_ && param3))
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc9_ && param3))
                                    {
                                       §§push(§§pop());
                                       if(_loc8_ || this)
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc9_ && this))
                                             {
                                                addr176:
                                                §§pop();
                                                if(!_loc9_)
                                                {
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(this.§8!F§);
                                                      if(_loc8_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc8_)
                                                         {
                                                            loop1:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  addr96:
                                                                  param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§push(_loc5_);
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              §%#4§[0] = §%#4§[1] = §%#4§[2] = !!_loc4_ ? Number(param3) : Number(1);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §%#4§[3] = param3;
                                                                                 addr272:
                                                                              }
                                                                              §§goto(addr459);
                                                                           }
                                                                        }
                                                                        §§goto(addr454);
                                                                     }
                                                                     §§goto(addr315);
                                                                  }
                                                                  break;
                                                               }
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr322:
                                                               param1.setVertexBufferAt(2,null);
                                                               if(_loc8_ || this)
                                                               {
                                                                  addr277:
                                                                  param1.setVertexBufferAt(0,null);
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           loop5:
                                                                           while(_loc8_ || param2)
                                                                           {
                                                                              §§push(this.§#!d§);
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop7:
                                                                                    while(!_loc9_)
                                                                                    {
                                                                                       param1.setTextureAt(0,null);
                                                                                       loop8:
                                                                                       while(!(_loc9_ && param2))
                                                                                       {
                                                                                          param1.setVertexBufferAt(1,null);
                                                                                          while(!(_loc9_ && param1))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§#!d§);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      addr342:
                                                                                                      §§push(§§pop() == null);
                                                                                                      loop11:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr344:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr315:
                                                                                                               loop15:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              continue loop8;
                                                                                                                           }
                                                                                                                           §§goto(addr322);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           loop13:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§8!F§);
                                                                                                                              if(_loc9_ && param3)
                                                                                                                              {
                                                                                                                                 continue loop15;
                                                                                                                              }
                                                                                                                              addr299:
                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                              {
                                                                                                                                 continue loop11;
                                                                                                                              }
                                                                                                                              addr345:
                                                                                                                              addr345:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 continue loop13;
                                                                                                                                 §§goto(addr299);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr322);
                                                                                                                  }
                                                                                                                  §§goto(addr277);
                                                                                                               }
                                                                                                            }
                                                                                                            addr314:
                                                                                                         }
                                                                                                         §§goto(addr345);
                                                                                                      }
                                                                                                      addr343:
                                                                                                   }
                                                                                                   addr427:
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      addr398:
                                                                                                      param1.setTextureAt(0,null);
                                                                                                      break loop5;
                                                                                                   }
                                                                                                   break loop8;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                       param1.setTextureAt(0,this.§#!d§.getBase(param1));
                                                                                       break;
                                                                                    }
                                                                                    param1.setVertexBufferAt(1,this.§^d§,§%"G§.§&"o§,Context3DVertexBufferFormat.FLOAT_2);
                                                                                    break loop1;
                                                                                 }
                                                                                 §§goto(addr334);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 addr405:
                                                                                 if(!(_loc9_ && param3))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr454:
                                                                                 addr459:
                                                                                 param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§%#4§,1);
                                                                                 §§goto(addr427);
                                                                                 §§push(this.§#!d§);
                                                                              }
                                                                              break loop1;
                                                                              §§goto(addr398);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              addr378:
                                                                              while(true)
                                                                              {
                                                                                 param1.drawTriangles(this.§<#8§,0,this.§%!$§ * 2);
                                                                                 §§goto(addr388);
                                                                              }
                                                                              §§goto(addr405);
                                                                           }
                                                                           addr388:
                                                                           addr412:
                                                                        }
                                                                        break loop0;
                                                                     }
                                                                     §§goto(addr352);
                                                                  }
                                                                  §§goto(addr322);
                                                               }
                                                               §§goto(addr454);
                                                               §§goto(addr315);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr378);
                                                            }
                                                            addr116:
                                                            addr423:
                                                         }
                                                         §§goto(addr343);
                                                      }
                                                      §§goto(addr315);
                                                   }
                                                }
                                                §§goto(addr272);
                                             }
                                             §§goto(addr345);
                                          }
                                          §§goto(addr116);
                                       }
                                       §§goto(addr344);
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr342);
                              }
                              §§goto(addr427);
                           }
                           §§goto(addr395);
                        }
                        break;
                     }
                     return;
                  }
                  §§goto(addr412);
               }
               §§goto(addr423);
            }
            §§goto(addr54);
         }
         addr24:
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§%!$§ = 0;
            while(true)
            {
               this.§8!F§ = false;
               addr44:
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               return;
               addr51:
            }
         }
         while(true)
         {
            this.§#!d§ = null;
            while(_loc1_ || _loc2_)
            {
               this.§3I§ = null;
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr44);
            }
         }
         §§goto(addr51);
      }
      
      public function §54§(param1:§2"D§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!_loc10_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(§§pop() * param1.alpha);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop2:
                  while(true)
                  {
                     param2 = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(param2);
                        loop4:
                        while(true)
                        {
                           §§push(0);
                           loop5:
                           while(true)
                           {
                              if(§§pop() != §§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§%!$§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(1);
                                       if(!(_loc10_ && this))
                                       {
                                          §§push(§§pop() + §§pop());
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this.§;q§.§5#%§);
                                             loop9:
                                             while(true)
                                             {
                                                §§push(§§pop() / 4);
                                                if(_loc10_ && param1)
                                                {
                                                   break;
                                                }
                                                if(§§pop() > §§pop())
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      this.§]M§();
                                                      addr217:
                                                      addr229:
                                                      while(_loc9_ || param1)
                                                      {
                                                      }
                                                      return;
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(!(_loc10_ && param2))
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(param2);
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     if(!_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc10_ && param2)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     if(_loc10_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     if(_loc10_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§push(1);
                                                                     if(!_loc9_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                     }
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(§§pop())
                                                                           {
                                                                              if(!(_loc10_ && param3))
                                                                              {
                                                                                 if(!(_loc10_ && this))
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    this.§8!F§ = true;
                                                                                    addr62:
                                                                                    if(_loc9_ || param3)
                                                                                    {
                                                                                       addr69:
                                                                                       if(_loc9_ || this)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             break loop16;
                                                                                          }
                                                                                          if(true)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          this.§#!d§ = param3;
                                                                                          §§goto(addr69);
                                                                                       }
                                                                                       addr186:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§3I§ = param4;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop20:
                                                                                    while(_loc9_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1.useColor);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          if(!(_loc10_ && this))
                                                                                          {
                                                                                             continue loop18;
                                                                                          }
                                                                                          addr108:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             continue loop20;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§;q§);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       if(param3)
                                                                                       {
                                                                                          addr119:
                                                                                          §§push(param3.premultipliedAlpha);
                                                                                          if(_loc9_ || param3)
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
                                                                                       §§pop().§[!p§(§§pop(),false);
                                                                                       continue loop16;
                                                                                    }
                                                                                    §§goto(addr119);
                                                                                 }
                                                                              }
                                                                              §§goto(addr62);
                                                                           }
                                                                           addr238:
                                                                           §§push(this.§%!$§);
                                                                           if(_loc9_)
                                                                           {
                                                                              addr244:
                                                                              §§push(int(§§pop() * 4));
                                                                           }
                                                                           var _loc6_:* = §§pop();
                                                                           if(!(_loc10_ && param3))
                                                                           {
                                                                              param1.copyVertexDataTo(this.§;q§,_loc6_,param2,param5);
                                                                              if(_loc9_ || param2)
                                                                              {
                                                                                 addr267:
                                                                                 var _loc7_:*;
                                                                                 §§push((_loc7_ = this).§%!$§);
                                                                                 if(_loc9_ || param3)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                 }
                                                                                 var _loc8_:* = §§pop();
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    _loc7_.§%!$§ = _loc8_;
                                                                                 }
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr267);
                                                                           addr39:
                                                                        }
                                                                        §§goto(addr108);
                                                                     }
                                                                  }
                                                                  §§goto(addr244);
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop10;
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§%!$§);
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      if(_loc10_ && param3)
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§push(0);
                                                      if(_loc9_ || param1)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            §§goto(addr186);
                                                         }
                                                         §§goto(addr238);
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr244);
                                             }
                                             continue loop5;
                                          }
                                       }
                                       §§goto(addr244);
                                    }
                                 }
                              }
                              §§goto(addr229);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      public function §@c§(param1:§2"D§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(this.§#!d§);
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
                                    addr351:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       addr336:
                                       if(_loc5_ && param1)
                                       {
                                          continue;
                                       }
                                       if(!_loc6_)
                                       {
                                          continue loop3;
                                       }
                                       §§pop();
                                       loop26:
                                       while(true)
                                       {
                                          addr284:
                                          §§push(this.§3I§ != param3);
                                          addr285:
                                          loop27:
                                          while(true)
                                          {
                                             addr286:
                                             §§push(§§pop());
                                             if(!(_loc5_ && this))
                                             {
                                                if(!§§pop())
                                                {
                                                   addr295:
                                                   §§pop();
                                                   loop28:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         addr303:
                                                         if(_loc6_ || param2)
                                                         {
                                                            addr259:
                                                            §§push(this.§8!F§);
                                                            §§push(param1.useColor);
                                                            if(_loc6_)
                                                            {
                                                               addr264:
                                                               §§push(§§pop() != §§pop());
                                                               while(!§§pop())
                                                               {
                                                                  §§pop();
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop26;
                                                                  }
                                                                  continue loop28;
                                                               }
                                                               return §§pop();
                                                               addr265:
                                                               addr253:
                                                            }
                                                            break;
                                                         }
                                                         addr354:
                                                         while(true)
                                                         {
                                                            addr356:
                                                            §§push(this.§#!d§);
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop().root == param2.root);
                                                            if(!(_loc5_ && param3))
                                                            {
                                                               §§push(!§§pop());
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  break loop28;
                                                                  addr315:
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     §§push(param2.repeat);
                                                                     if(_loc6_ || param2)
                                                                     {
                                                                        addr332:
                                                                        §§push(§§pop() != §§pop());
                                                                        while(true)
                                                                        {
                                                                           addr334:
                                                                           §§push(§§pop());
                                                                           break loop27;
                                                                        }
                                                                        addr333:
                                                                     }
                                                                     break loop27;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                         continue loop0;
                                                      }
                                                      while(true)
                                                      {
                                                         addr314:
                                                         §§goto(addr315);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§goto(addr372);
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                }
                                                §§goto(addr265);
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§goto(addr336);
                                             }
                                             else
                                             {
                                                §§goto(addr285);
                                             }
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                              addr391:
                           }
                           while(true)
                           {
                              loop9:
                              for(; !§§pop(); if(_loc5_ && this)
                              {
                                 continue;
                              },§§goto(addr121))
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§#!d§);
                                    if(_loc6_ || param3)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(null);
                                          if(_loc5_ && param3)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() == §§pop());
                                          if(!_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop());
                                                loop11:
                                                while(!_loc5_)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               §§pop();
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  §§push(param2 == null);
                                                                  loop20:
                                                                  while(!_loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§%!$§);
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          loop15:
                                                                                          while(!_loc5_)
                                                                                          {
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   loop16:
                                                                                                   while(!_loc5_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                      addr121:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        continue loop10;
                                                                                                                     }
                                                                                                                     §§push(this.§8!F§);
                                                                                                                     if(!(_loc5_ && this))
                                                                                                                     {
                                                                                                                        if(!(_loc6_ || this))
                                                                                                                        {
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(param1.useColor);
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          addr56:
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             continue loop11;
                                                                                                                                          }
                                                                                                                                          §§pop();
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             if(_loc6_ || param2)
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(param4 == 1);
                                                                                                                                                   if(!(_loc5_ && param2))
                                                                                                                                                   {
                                                                                                                                                      addr88:
                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         addr90:
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                         if(_loc6_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr98:
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               continue loop2;
                                                                                                                                                            }
                                                                                                                                                            addr103:
                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                            if(_loc5_ && this)
                                                                                                                                                            {
                                                                                                                                                               continue loop15;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               continue loop14;
                                                                                                                                                            }
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               continue loop9;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr266);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr103);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr266);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr88);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr391);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr332);
                                                                                                                                          }
                                                                                                                                          §§goto(addr103);
                                                                                                                                       }
                                                                                                                                       §§goto(addr88);
                                                                                                                                    }
                                                                                                                                    §§goto(addr90);
                                                                                                                                 }
                                                                                                                                 §§goto(addr56);
                                                                                                                              }
                                                                                                                              §§goto(addr315);
                                                                                                                           }
                                                                                                                           §§goto(addr284);
                                                                                                                        }
                                                                                                                        §§goto(addr295);
                                                                                                                     }
                                                                                                                     §§goto(addr98);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr179:
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        §§goto(addr182);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr269);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  if(_loc5_ && param2)
                                                                                                                  {
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  if(!(_loc5_ && this))
                                                                                                                  {
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr392);
                                                                                                            }
                                                                                                            §§goto(addr259);
                                                                                                         }
                                                                                                         §§goto(addr182);
                                                                                                      }
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§goto(addr334);
                                                                                             }
                                                                                             §§goto(addr264);
                                                                                          }
                                                                                          §§goto(addr264);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr252);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr252);
                                                                           }
                                                                           §§goto(addr179);
                                                                        }
                                                                        addr177:
                                                                     }
                                                                     §§goto(addr372);
                                                                  }
                                                                  §§goto(addr286);
                                                               }
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         addr239:
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                   §§goto(addr286);
                                                }
                                                §§goto(addr259);
                                             }
                                             §§goto(addr336);
                                          }
                                          §§goto(addr239);
                                       }
                                       §§goto(addr356);
                                    }
                                    break;
                                 }
                                 §§goto(addr314);
                              }
                              §§goto(addr354);
                           }
                        }
                     }
                  }
               }
            }
         }
         addr182:
         return false;
      }
   }
}
