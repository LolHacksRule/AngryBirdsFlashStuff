package §6p§
{
   import §2!F§.§0M§;
   import §3W§.§>!-§;
   import §7R§.§=!O§;
   import §7R§.Texture;
   import §<"+§.§%!g§;
   import §default§.§=!Z§;
   import §default§.DisplayObject;
   import §default§.DisplayObjectContainer;
   import §default§.§^$§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §50§
   {
      
      private static var §;!@§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §;!@§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §'h§:int;
      
      private var §2!X§:Texture;
      
      private var §>!V§:String;
      
      private var §8!m§:§>!-§;
      
      private var §="<§:VertexBuffer3D;
      
      private var §[!n§:VertexBuffer3D;
      
      private var §^">§:VertexBuffer3D;
      
      private var §>!p§:Vector.<uint>;
      
      private var §?!U§:IndexBuffer3D;
      
      private var §@!E§:Boolean = false;
      
      private var §?O§:Boolean = false;
      
      public function §50§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
            loop0:
            while(true)
            {
               §?m§();
               loop1:
               while(true)
               {
                  this.§8!m§ = new §>!-§(0,true);
                  while(true)
                  {
                     this.§>!p§ = new Vector.<uint>(0);
                     loop3:
                     while(!(_loc1_ && _loc2_))
                     {
                        while(true)
                        {
                           this.§'h§ = 0;
                           while(_loc2_)
                           {
                              this.§=M§();
                              if(_loc2_ || _loc2_)
                              {
                                 if(!(_loc1_ && this))
                                 {
                                    continue loop0;
                                 }
                                 continue loop3;
                                 continue loop3;
                              }
                           }
                           continue loop1;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public static function §]!`§(param1:DisplayObjectContainer, param2:Vector.<§50§>) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §6t§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §6t§(param1:DisplayObject, param2:Vector.<§50§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§^$§ = null;
         var _loc13_:§=!Z§ = null;
         var _loc14_:Texture = null;
         var _loc15_:* = null;
         var _loc16_:§50§ = null;
         var _loc7_:Boolean = false;
         if(!_loc17_)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               if(§§pop() == -1)
               {
                  addr149:
                  _loc7_ = true;
                  addr143:
                  param3 = 0;
                  addr144:
                  if(param2.length == 0)
                  {
                     if(_loc18_)
                     {
                        param2.push(new §50§());
                        addr138:
                        if(_loc17_)
                        {
                           §§goto(addr144);
                        }
                        addr151:
                        if(param1 is DisplayObjectContainer)
                        {
                           addr155:
                           §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                           if(!(_loc17_ && param3))
                           {
                              §§push(int(§§pop()));
                           }
                           _loc9_ = §§pop();
                           _loc10_ = new Matrix3D();
                           if(_loc18_ || param1)
                           {
                              §§push(param5);
                              if(_loc18_)
                              {
                                 §§push(§§pop() * param1.alpha);
                                 if(!_loc17_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              param5 = §§pop();
                              if(!(_loc17_ && param2))
                              {
                                 _loc6_ = 0;
                              }
                           }
                           loop5:
                           while(true)
                           {
                              §§push(_loc6_);
                              if(!_loc17_)
                              {
                                 §§push(_loc9_);
                                 if(!_loc17_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!(_loc17_ && §50§))
                                       {
                                          addr425:
                                          §§push(_loc7_);
                                          if(!(_loc17_ && param2))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc18_)
                                                {
                                                   §§push(int(param2.length - 1));
                                                   if(_loc18_)
                                                   {
                                                      _loc6_ = §§pop();
                                                      if(_loc18_ || §50§)
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc18_ || §50§)
                                                            {
                                                               if(_loc18_ || param1)
                                                               {
                                                                  addr468:
                                                                  if(§§pop() <= param3)
                                                                  {
                                                                     if(!_loc17_)
                                                                     {
                                                                        if(!_loc17_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(param3);
                                                                              addr474:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc18_ || param1))
                                                                                 {
                                                                                    addr487:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       addr488:
                                                                                       addr518:
                                                                                       while(!(_loc17_ && param2))
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(delete param2[_loc6_]);
                                                                                          addr510:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr511:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                break loop5;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr487:
                                                                                 }
                                                                                 return §§pop();
                                                                              }
                                                                           }
                                                                           addr473:
                                                                        }
                                                                        §§goto(addr511);
                                                                     }
                                                                     §§goto(addr488);
                                                                  }
                                                                  else
                                                                  {
                                                                     param2[_loc6_].dispose();
                                                                     §§goto(addr518);
                                                                  }
                                                               }
                                                               break loop5;
                                                            }
                                                            §§goto(addr474);
                                                         }
                                                         addr450:
                                                      }
                                                      §§goto(addr518);
                                                   }
                                                   §§goto(addr487);
                                                }
                                                §§goto(addr511);
                                             }
                                             §§goto(addr473);
                                          }
                                          §§goto(addr510);
                                       }
                                       §§goto(addr450);
                                    }
                                    else
                                    {
                                       _loc11_ = _loc8_.getChildAt(_loc6_);
                                       if(!(_loc17_ && param3))
                                       {
                                          _loc10_.copyFrom(param4);
                                       }
                                       while(true)
                                       {
                                          _loc11_.§+U§(_loc10_);
                                          loop7:
                                          while(!(_loc17_ && param1))
                                          {
                                             do
                                             {
                                                §§push(§6t§(_loc11_,param2,param3,_loc10_,param5));
                                                if(!(_loc17_ && param3))
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                                param3 = §§pop();
                                                do
                                                {
                                                   _loc6_++;
                                                }
                                                while(!(_loc18_ || param2));
                                                
                                                if(_loc18_ || param1)
                                                {
                                                   continue;
                                                }
                                                continue loop7;
                                             }
                                             while(false);
                                             
                                             continue loop5;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr468);
                              }
                              break;
                           }
                           while(true)
                           {
                              §§goto(addr487);
                           }
                        }
                        else
                        {
                           if(!(param1 is §^$§))
                           {
                              throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                           }
                           if(!_loc17_)
                           {
                              _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §^$§) as §=!Z§) ? _loc13_.texture : null;
                              if(!(_loc17_ && §50§))
                              {
                                 if(_loc13_)
                                 {
                                    addr359:
                                    if(_loc18_ || param3)
                                    {
                                       §§push(_loc13_.smoothing);
                                       if(_loc18_ || param3)
                                       {
                                          §§push(§§pop());
                                          if(_loc18_ || param3)
                                          {
                                             addr357:
                                             §§push(§§pop());
                                          }
                                       }
                                    }
                                    if((_loc16_ = param2[param3]).§5'§(_loc12_,_loc14_,_loc15_))
                                    {
                                       if(_loc18_ || param3)
                                       {
                                          param3++;
                                          if(!(_loc17_ && param1))
                                          {
                                             if(param2.length <= param3)
                                             {
                                                if(_loc18_ || param2)
                                                {
                                                   param2.push(new §50§());
                                                   if(_loc17_)
                                                   {
                                                   }
                                                   addr416:
                                                   §§goto(addr425);
                                                }
                                             }
                                          }
                                          (_loc16_ = param2[param3]).reset();
                                          addr409:
                                          _loc16_.§!"0§(_loc12_,param5,_loc14_,_loc15_,param4);
                                       }
                                       §§goto(addr416);
                                    }
                                    §§goto(addr409);
                                 }
                                 else
                                 {
                                    §§push(null);
                                    if(_loc18_)
                                    {
                                       §§goto(addr357);
                                    }
                                 }
                                 _loc15_ = §§pop();
                              }
                              §§goto(addr359);
                           }
                        }
                        §§goto(addr425);
                        addr99:
                     }
                     §§goto(addr155);
                  }
                  param2[0].reset();
                  if(_loc18_)
                  {
                     addr126:
                     §§goto(addr99);
                  }
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
                           §§pop();
                           loop3:
                           while(!(_loc17_ && param3))
                           {
                              §§push(param1.visible);
                              if(!(_loc17_ && §50§))
                              {
                                 continue loop1;
                              }
                              addr70:
                              if(!_loc18_)
                              {
                                 continue loop2;
                              }
                              if(!(_loc17_ && §50§))
                              {
                                 while(§§pop())
                                 {
                                    if(_loc18_)
                                    {
                                       if(!_loc18_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(param3);
                                       if(!_loc17_)
                                       {
                                          if(_loc18_)
                                          {
                                             return §§pop();
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr143);
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr151);
                                 addr79:
                              }
                              else
                              {
                                 §§goto(addr149);
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr138);
                        }
                     }
                     §§goto(addr79);
                  }
               }
               §§goto(addr155);
            }
         }
         §§goto(addr126);
      }
      
      private static function §?m§() : void
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
         var _loc1_:§?%§ = §?%§.§%b§;
         if(!_loc23_)
         {
            if(_loc1_.§`!z§(§;Q§(true)))
            {
               if(!(_loc23_ && _loc2_))
               {
                  §§goto(addr59);
               }
            }
            var _loc2_:§%!g§ = new §%!g§();
            var _loc3_:§%!g§ = new §%!g§();
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
                        addr139:
                        §§push("mul ft0, v0, fc0  \n" + "mov oc, ft0       \n");
                        if(_loc23_ && _loc1_)
                        {
                           continue;
                        }
                        addr149:
                        while(true)
                        {
                           _loc5_ = §§pop();
                           if(!(_loc23_ && _loc1_))
                           {
                              _loc2_.§6!<§(Context3DProgramType.VERTEX,_loc4_);
                              while(true)
                              {
                                 if(!_loc23_)
                                 {
                                    if(!(_loc24_ || _loc2_))
                                    {
                                       break;
                                       addr104:
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       _loc3_.§6!<§(Context3DProgramType.FRAGMENT,_loc5_);
                                       while(true)
                                       {
                                          _loc1_.§3A§(§;Q§(_loc6_),_loc2_.§6"%§,_loc3_.§6"%§);
                                          if(!_loc23_)
                                          {
                                             if(_loc24_ || _loc2_)
                                             {
                                                continue loop7;
                                             }
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                    }
                                    continue;
                                 }
                                 addr132:
                                 while(!(_loc23_ && _loc1_))
                                 {
                                    §§goto(addr139);
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           continue loop0;
                           §§goto(addr149);
                        }
                     }
                  }
               }
            }
            return;
         }
         addr59:
      }
      
      public static function §;Q§(param1:Boolean) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            return !!param1 ? "QB_q*" : "QB_q\'";
         }
         §§goto(addr45);
      }
      
      public static function §["3§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            var _loc6_:* = !!param1 ? "QB_i*" : "QB_i\'";
            if(_loc7_ || param1)
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
                        addr161:
                        while(true)
                        {
                           §§push(§§pop() + "N");
                           addr163:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              addr164:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr160:
                  }
                  while(true)
                  {
                     §§push(param3);
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              if(!(_loc8_ && param1))
                              {
                                 §§push(_loc6_);
                                 while(true)
                                 {
                                    §§push(§§pop() + "R");
                                    addr156:
                                    while(true)
                                    {
                                       _loc6_ = §§pop();
                                       addr157:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr71:
                                    if(_loc8_ && param3)
                                    {
                                       continue;
                                    }
                                    §§push(param4);
                                    loop17:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop().charAt(0));
                                       loop18:
                                       while(true)
                                       {
                                          _loc6_ = §§pop();
                                          addr94:
                                          loop15:
                                          while(!_loc8_)
                                          {
                                             if(_loc7_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   if(!_loc7_)
                                                   {
                                                      continue loop18;
                                                   }
                                                   if(!_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   addr64:
                                                   addr114:
                                                   while(!(_loc8_ && param1))
                                                   {
                                                      §§goto(addr71);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         break loop7;
                                                      }
                                                      §§push(§§pop() + "C");
                                                      if(!_loc8_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            break loop15;
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr156);
                                                      }
                                                   }
                                                }
                                                return §§pop();
                                                addr33:
                                             }
                                             while(_loc7_ || §50§)
                                             {
                                                while(true)
                                                {
                                                   §§goto(addr114);
                                                }
                                             }
                                             §§goto(addr157);
                                          }
                                          while(true)
                                          {
                                             if(_loc8_ && §50§)
                                             {
                                                continue loop7;
                                             }
                                             addr130:
                                             if(!_loc8_)
                                             {
                                                while(true)
                                                {
                                                   §§push(param4);
                                                   if(_loc8_ && param2)
                                                   {
                                                      continue loop18;
                                                   }
                                                   §§push(§=!O§.§;!U§);
                                                   if(_loc8_)
                                                   {
                                                      continue loop17;
                                                   }
                                                   if(§§pop() != §§pop())
                                                   {
                                                      if(_loc7_ || param2)
                                                      {
                                                         §§goto(addr64);
                                                         §§push(_loc6_);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr94);
                                                      }
                                                      §§goto(addr106);
                                                   }
                                                   §§goto(addr33);
                                                   §§goto(addr130);
                                                }
                                                addr42:
                                             }
                                             §§goto(addr164);
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr160);
                              }
                           }
                           §§goto(addr161);
                        }
                        while(true)
                        {
                           §§push(param5);
                           if(!_loc7_)
                           {
                              break;
                           }
                           if(_loc8_)
                           {
                              continue loop0;
                           }
                           if(§§pop())
                           {
                              §§goto(addr106);
                           }
                           §§goto(addr42);
                        }
                     }
                  }
               }
            }
            §§goto(addr113);
         }
         §§goto(addr20);
      }
      
      public function get §%a§() : int
      {
         return this.§'h§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§="<§)
            {
               while(true)
               {
                  this.§="<§.dispose();
                  addr103:
                  addr68:
                  while(true)
                  {
                  }
                  if(_loc1_ && this)
                  {
                     continue;
                  }
                  this.§^">§.dispose();
                  loop7:
                  while(true)
                  {
                     loop8:
                     for(; this.§?!U§; continue loop7)
                     {
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 this.§?!U§.dispose();
                                 addr40:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop8;
                                    }
                                    if(!_loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          break loop8;
                                       }
                                       §§goto(addr103);
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       if(!(_loc1_ && this))
                                       {
                                          §§goto(addr68);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             addr57:
                                             while(true)
                                             {
                                                if(this.§^">§)
                                                {
                                                   continue loop6;
                                                }
                                                continue loop8;
                                             }
                                             continue loop6;
                                          }
                                          addr96:
                                       }
                                    }
                                    addr42:
                                    §§goto(addr103);
                                 }
                              }
                              addr37:
                           }
                           while(true)
                           {
                              this.§[!n§.dispose();
                              §§goto(addr96);
                           }
                           addr83:
                        }
                        §§goto(addr40);
                     }
                     return;
                  }
               }
            }
            while(true)
            {
               if(this.§[!n§)
               {
                  §§goto(addr83);
               }
               §§goto(addr57);
               §§goto(addr103);
            }
         }
         §§goto(addr37);
      }
      
      private function §=M§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§8!m§.§!>§);
         if(_loc5_ || _loc1_)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc1_);
            if(_loc5_)
            {
               §§push(0);
               if(!_loc4_)
               {
                  if(§§pop() == §§pop())
                  {
                     addr41:
                     §§push(16);
                     if(_loc5_)
                     {
                        addr44:
                     }
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§goto(addr54);
                     }
                  }
                  §§goto(addr58);
               }
               addr54:
               §§push(int(§§pop() * 2));
               if(_loc5_)
               {
                  addr58:
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc5_)
               {
                  this.§8!m§.§!>§ = _loc2_ * 4;
               }
               §§push(_loc1_);
               if(!(_loc4_ && _loc2_))
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
                        if(_loc4_ && _loc3_)
                        {
                           continue;
                        }
                        if(!(_loc4_ && _loc2_))
                        {
                           if(_loc5_ || _loc3_)
                           {
                              this.§?O§ = true;
                              addr128:
                              if(_loc5_ || _loc2_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 this.§>!p§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
                                 addr217:
                                 while(true)
                                 {
                                    this.§>!p§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                                    addr200:
                                    while(true)
                                    {
                                       this.§>!p§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                                    }
                                 }
                              }
                              addr234:
                           }
                           loop1:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 this.§>!p§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       break;
                                    }
                                    addr258:
                                    while(true)
                                    {
                                       this.§>!p§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                                       §§goto(addr234);
                                    }
                                 }
                                 _loc3_++;
                                 continue loop0;
                                 addr155:
                              }
                              §§goto(addr217);
                           }
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr128);
                  }
                  else
                  {
                     this.§>!p§[int(_loc3_ * 6)] = _loc3_ * 4;
                  }
                  §§goto(addr258);
               }
               return;
            }
            §§goto(addr44);
         }
         §§goto(addr41);
      }
      
      private function §""&§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§?O§);
            if(!_loc4_)
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
                           if(this.§="<§)
                           {
                              if(_loc3_)
                              {
                                 while(true)
                                 {
                                    this.§="<§.dispose();
                                 }
                                 addr88:
                              }
                              while(true)
                              {
                              }
                              addr91:
                           }
                           while(true)
                           {
                              if(this.§[!n§)
                              {
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       this.§[!n§.dispose();
                                       while(!(_loc4_ && _loc3_))
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       addr96:
                                       if(_loc3_ || _loc3_)
                                       {
                                          throw new §0M§();
                                       }
                                       addr112:
                                       return false;
                                       addr72:
                                    }
                                    break;
                                    addr34:
                                    if(_loc4_ && this)
                                    {
                                       continue;
                                    }
                                    this.§?!U§.dispose();
                                    addr44:
                                    if(_loc3_ || param1)
                                    {
                                       if(false)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             if(this.§^">§)
                                             {
                                                if(!_loc4_)
                                                {
                                                   this.§^">§.dispose();
                                                }
                                                while(true)
                                                {
                                                }
                                                addr62:
                                             }
                                             while(this.§?!U§)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc3_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr34);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr72);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr62);
                                                }
                                             }
                                          }
                                          addr106:
                                          continue loop1;
                                          addr53:
                                       }
                                       §§push(this.§8!m§.§!>§);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(int(§§pop() / 4));
                                       }
                                       var _loc2_:* = §§pop();
                                       if(_loc3_ || param1)
                                       {
                                          this.§="<§ = param1.createVertexBuffer(_loc2_ * 4,§>!-§.§@d§);
                                          this.§="<§.uploadFromByteArray(this.§8!m§.§7L§,0,0,_loc2_ * 4);
                                          addr281:
                                       }
                                       this.§[!n§ = param1.createVertexBuffer(_loc2_ * 4,§>!-§.§6!S§);
                                       this.§[!n§.uploadFromVector(this.§8!m§.§[I§,0,_loc2_ * 4);
                                       addr261:
                                       if(_loc3_)
                                       {
                                          this.§^">§ = param1.createVertexBuffer(_loc2_ * 4,§>!-§.§[e§);
                                          addr221:
                                          if(_loc3_)
                                          {
                                             this.§^">§.uploadFromVector(this.§8!m§.§0!E§,0,_loc2_ * 4);
                                             addr203:
                                             if(_loc3_ || this)
                                             {
                                                this.§?!U§ = param1.createIndexBuffer(_loc2_ * 6);
                                                addr189:
                                                if(_loc3_)
                                                {
                                                   this.§?!U§.uploadFromVector(this.§>!p§,0,_loc2_ * 6);
                                                   addr171:
                                                   if(_loc3_)
                                                   {
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         this.§?O§ = false;
                                                         if(_loc3_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§goto(addr221);
                                                            }
                                                            return true;
                                                         }
                                                         §§goto(addr171);
                                                      }
                                                      §§goto(addr261);
                                                   }
                                                   §§goto(addr189);
                                                }
                                                §§goto(addr203);
                                             }
                                             §§goto(addr261);
                                          }
                                          §§goto(addr281);
                                       }
                                       addr248:
                                       §§goto(addr248);
                                    }
                                    §§goto(addr106);
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr53);
                           }
                        }
                     }
                     §§goto(addr96);
                  }
               }
            }
            §§goto(addr112);
         }
         §§goto(addr88);
      }
      
      private function §;"6§(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§""&§(param1));
            loop0:
            for(; !§§pop(); do
            {
               §§push(this.§@!E§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        if(!(_loc2_ && this))
                        {
                           this.§[!n§.uploadFromVector(this.§8!m§.§[I§,0,this.§'h§ * 4);
                           addr92:
                           while(true)
                           {
                           }
                           addr92:
                        }
                        else
                        {
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr92);
                  }
                  while(true)
                  {
                     this.§^">§.uploadFromVector(this.§8!m§.§0!E§,0,this.§'h§ * 4);
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                     §§goto(addr92);
                  }
                  continue;
               }
               continue loop0;
            }
            while(!(_loc3_ || param1));
            ,break)
            {
               while(true)
               {
                  this.§="<§.uploadFromByteArray(this.§8!m§.§7L§,0,0,this.§'h§ * 4);
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr92);
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            if(this.§'h§ == 0)
            {
               if(_loc8_ || param1)
               {
                  §§goto(addr29);
               }
            }
            §§push(this.§8!m§.premultipliedAlpha);
            if(!_loc9_)
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
            if(!(_loc9_ && this))
            {
               if(this.§2!X§)
               {
                  addr54:
                  §§push(§["3§(_loc5_,this.§2!X§.mipMapping,this.§2!X§.repeat,this.§>!V§,this.§@!E§));
                  if(_loc8_)
                  {
                     §§push(§§pop());
                     if(_loc9_)
                     {
                     }
                     addr82:
                     var _loc6_:* = §§pop();
                     if(_loc8_)
                     {
                        §5!W§.§3"?§(param1,_loc4_);
                        if(!_loc9_)
                        {
                           this.§;"6§(param1);
                           if(_loc8_ || this)
                           {
                              param1.setProgram(§?%§.§%b§.§!!t§(_loc6_));
                              if(!(_loc9_ && this))
                              {
                                 param1.setVertexBufferAt(0,this.§^">§,§>!-§.§[+§,Context3DVertexBufferFormat.FLOAT_3);
                                 if(!_loc9_)
                                 {
                                    §§push(this.§2!X§);
                                    if(_loc8_ || param2)
                                    {
                                       §§push(null);
                                       if(_loc8_ || param3)
                                       {
                                          §§push(§§pop() == §§pop());
                                          loop16:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc9_)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(this.§@!E§);
                                                            if(!(_loc9_ && param3))
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               if(!_loc8_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc8_ || this)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     addr128:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              param1.setVertexBufferAt(2,this.§[!n§,§>!-§.§!!^§,Context3DVertexBufferFormat.FLOAT_4);
                                                                              if(_loc8_ || param2)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
                                                                                    if(_loc8_ || param2)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          continue loop19;
                                                                                       }
                                                                                       if(false)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       §§push(_loc5_);
                                                                                       if(_loc8_ || param2)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr479:
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§;!@§,1);
                                                                                                addr474:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             addr479:
                                                                                          }
                                                                                          addr445:
                                                                                          §§push(this.§2!X§);
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                param1.setTextureAt(0,null);
                                                                                                loop26:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      addr432:
                                                                                                      loop2:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         param1.drawTriangles(this.§?!U§,0,this.§'h§ * 2);
                                                                                                         loop3:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§2!X§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_ || param1)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr448:
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        if(_loc9_ && param3)
                                                                                                                        {
                                                                                                                           continue loop26;
                                                                                                                        }
                                                                                                                        param1.setTextureAt(0,null);
                                                                                                                     }
                                                                                                                     loop5:
                                                                                                                     for(; !(_loc9_ && param1); while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ && param1))
                                                                                                                        {
                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                           {
                                                                                                                              break loop19;
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop5;
                                                                                                                     },continue loop3)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           param1.setVertexBufferAt(1,null);
                                                                                                                           addr379:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr346:
                                                                                                                              loop12:
                                                                                                                              while(!(_loc9_ && this))
                                                                                                                              {
                                                                                                                                 loop13:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    param1.setVertexBufferAt(0,null);
                                                                                                                                    if(_loc9_ && param1)
                                                                                                                                    {
                                                                                                                                       continue loop12;
                                                                                                                                    }
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       continue loop5;
                                                                                                                                    }
                                                                                                                                    if(!(_loc9_ && this))
                                                                                                                                    {
                                                                                                                                       if(_loc8_ || param1)
                                                                                                                                       {
                                                                                                                                          return;
                                                                                                                                       }
                                                                                                                                       break loop26;
                                                                                                                                    }
                                                                                                                                    addr455:
                                                                                                                                    addr455:
                                                                                                                                    loop10:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc8_ || param2)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(this.§@!E§);
                                                                                                                                          if(_loc8_ || param1)
                                                                                                                                          {
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                addr318:
                                                                                                                                                if(_loc8_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr325:
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr327:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            continue loop5;
                                                                                                                                                         }
                                                                                                                                                         continue loop13;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr326:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr361:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      break loop16;
                                                                                                                                                      §§goto(addr318);
                                                                                                                                                   }
                                                                                                                                                   addr361:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                continue loop10;
                                                                                                                                             }
                                                                                                                                             addr363:
                                                                                                                                          }
                                                                                                                                          §§goto(addr327);
                                                                                                                                       }
                                                                                                                                       addr443:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop2;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       param1.setVertexBufferAt(1,this.§="<§,§>!-§.§8A§,Context3DVertexBufferFormat.FLOAT_2);
                                                                                                                                       §§goto(addr443);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        param1.setTextureAt(0,this.§2!X§.getBase(param1));
                                                                                                                        §§goto(addr455);
                                                                                                                     }
                                                                                                                     addr448:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§2!X§);
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(null);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr361);
                                                                                                                     }
                                                                                                                     §§goto(addr379);
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr479);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr474);
                                                                                             }
                                                                                             §§goto(addr448);
                                                                                          }
                                                                                          addr447:
                                                                                       }
                                                                                       §§goto(addr325);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §;!@§[0] = §;!@§[1] = §;!@§[2] = !!_loc4_ ? Number(param3) : Number(1);
                                                                                 addr246:
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §;!@§[3] = param3;
                                                                                    §§goto(addr479);
                                                                                 }
                                                                                 §§goto(addr411);
                                                                                 addr86:
                                                                              }
                                                                              break;
                                                                           }
                                                                           param1.setVertexBufferAt(2,null);
                                                                           §§goto(addr346);
                                                                        }
                                                                        §§goto(addr86);
                                                                     }
                                                                  }
                                                                  addr127:
                                                               }
                                                               §§goto(addr361);
                                                            }
                                                            §§goto(addr128);
                                                         }
                                                         continue loop16;
                                                      }
                                                      §§goto(addr443);
                                                   }
                                                }
                                                §§goto(addr127);
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§goto(addr363);
                                             }
                                             §§goto(addr326);
                                          }
                                       }
                                       §§goto(addr360);
                                    }
                                    §§goto(addr447);
                                 }
                                 §§goto(addr448);
                              }
                           }
                           §§goto(addr246);
                           addr224:
                        }
                        §§goto(addr455);
                     }
                     §§goto(addr224);
                  }
                  addr81:
                  §§push(§§pop());
               }
               else
               {
                  §§push(§;Q§(_loc5_));
                  if(!_loc9_)
                  {
                     §§push(§§pop());
                     if(_loc8_)
                     {
                        §§goto(addr81);
                     }
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr54);
         }
         addr29:
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§'h§ = 0;
            while(true)
            {
               this.§@!E§ = false;
               while(_loc1_)
               {
                  this.§2!X§ = null;
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        this.§>!V§ = null;
                        if(!(_loc2_ && this))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §!"0§(param1:§^$§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_)
         {
            §§push(this.§'h§);
            loop0:
            while(true)
            {
               §§push(1);
               loop1:
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc10_ || param2)
                  {
                     if(§§pop() > this.§8!m§.§!>§ / 4)
                     {
                        while(true)
                        {
                           this.§=M§();
                           addr101:
                           while(true)
                           {
                           }
                        }
                        addr99:
                     }
                     while(true)
                     {
                        §§push(this.§'h§);
                        if(!(_loc10_ || this))
                        {
                           break;
                        }
                        if(!_loc9_)
                        {
                           §§push(0);
                           if(!_loc10_)
                           {
                              §§push(§§pop() * §§pop());
                           }
                           if(!_loc9_)
                           {
                              if(§§pop() != §§pop())
                              {
                                 §§push(this.§'h§);
                                 if(!_loc9_)
                                 {
                                    §§push(4);
                                 }
                              }
                              loop5:
                              while(_loc10_)
                              {
                                 this.§2!X§ = param3;
                                 loop6:
                                 while(!_loc9_)
                                 {
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          this.§>!V§ = param4;
                                          while(true)
                                          {
                                             §§push(this.§8!m§);
                                             if(!_loc9_)
                                             {
                                                if(param3)
                                                {
                                                   addr27:
                                                   §§push(param3.premultipliedAlpha);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!_loc10_)
                                                      {
                                                      }
                                                      addr36:
                                                      §§pop().§&B§(§§pop(),false);
                                                      if(_loc10_ || param2)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(true);
                                                }
                                                §§goto(addr36);
                                             }
                                             §§goto(addr27);
                                          }
                                          if(_loc9_)
                                          {
                                             break;
                                          }
                                          if(!_loc10_)
                                          {
                                             continue loop5;
                                          }
                                          if(false)
                                          {
                                             continue;
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                                 §§goto(addr99);
                              }
                              continue;
                              break;
                           }
                           continue loop1;
                           break loop1;
                        }
                        continue loop0;
                     }
                     addr109:
                     var _loc6_:* = §§pop();
                     if(!_loc9_)
                     {
                        §§push(param2);
                        if(!_loc9_)
                        {
                           §§push(§§pop() * param1.alpha);
                        }
                        loop10:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop11:
                           while(true)
                           {
                              param2 = §§pop();
                              while(true)
                              {
                                 param1.copyVertexDataTo(this.§8!m§,_loc6_,param2,param5);
                                 loop13:
                                 for(; _loc10_ || param3; for(; _loc10_ || param1; §§goto(addr179))
                                 {
                                    §§push(param1.useColor);
                                    if(_loc10_ || this)
                                    {
                                       if(_loc9_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr135);
                                    }
                                    §§goto(addr139);
                                 })
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       §§push(param2);
                                       if(_loc9_ && param2)
                                       {
                                          break;
                                       }
                                       if(!_loc10_)
                                       {
                                          continue loop10;
                                       }
                                       §§push(§§pop() == 1);
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          if(!(_loc9_ && param2))
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   addr139:
                                                   loop17:
                                                   while(§§pop())
                                                   {
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§@!E§ = true;
                                                               if(!_loc9_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break loop17;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  addr154:
                                                               }
                                                               break;
                                                            }
                                                            addr248:
                                                            return;
                                                            addr149:
                                                         }
                                                         continue loop13;
                                                      }
                                                      §§goto(addr154);
                                                   }
                                                   var _loc7_:*;
                                                   §§push((_loc7_ = this).§'h§);
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      §§push(§§pop() + 1);
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      _loc7_.§'h§ = _loc8_;
                                                   }
                                                   §§goto(addr248);
                                                   addr135:
                                                   if(!_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                }
                                                continue;
                                             }
                                          }
                                          addr179:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop13;
                                          }
                                       }
                                    }
                                    continue loop11;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr149);
                  }
                  break;
               }
               §§goto(addr109);
            }
         }
         §§goto(addr81);
      }
      
      public function §5'§(param1:§^$§, param2:Texture, param3:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §§push(this.§2!X§);
            loop0:
            while(true)
            {
               §§push(null);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc5_ && this))
                  {
                     §§push(!§§pop());
                  }
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
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
                                 addr323:
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
                           loop8:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(this.§2!X§);
                                    if(_loc4_)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(null);
                                          if(_loc5_ && param2)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() == §§pop());
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop11:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop12:
                                                   while(_loc4_)
                                                   {
                                                      §§pop();
                                                      loop13:
                                                      for(; !(_loc5_ && this); while(!(_loc5_ && param3))
                                                      {
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§goto(addr85);
                                                            }
                                                            §§goto(addr371);
                                                         }
                                                         §§goto(addr288);
                                                         §§goto(addr140);
                                                      })
                                                      {
                                                         §§push(param2 == null);
                                                         loop14:
                                                         while(!(_loc5_ && param1))
                                                         {
                                                            if(_loc4_ || param1)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        addr193:
                                                                        §§push(false);
                                                                        if(_loc4_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     addr326:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§2!X§);
                                                                        addr328:
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§push(§§pop().root == param2.root);
                                                                           while(true)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              addr335:
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop25:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_ && param3)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr345:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§2!X§);
                                                                                             break loop9;
                                                                                          }
                                                                                       }
                                                                                       addr344:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       addr315:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          addr316:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                loop35:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr318:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§>!V§ == param3);
                                                                                                      addr294:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                            break loop14;
                                                                                                         }
                                                                                                         continue loop24;
                                                                                                         addr269:
                                                                                                         if(!(_loc5_ && param3))
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                            break loop12;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop35;
                                                                                                   }
                                                                                                }
                                                                                                addr317:
                                                                                             }
                                                                                             addr299:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                addr301:
                                                                                                while(_loc4_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         break loop13;
                                                                                                      }
                                                                                                      addr304:
                                                                                                   }
                                                                                                   return §§pop() || this.§'h§ == 8192;
                                                                                                }
                                                                                                continue loop25;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§'h§);
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!(_loc5_ && param2))
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 addr310:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param2.repeat);
                                                                                    addr312:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       addr313:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr314);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop18:
                                                                                 while(!_loc5_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc5_ && param1))
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      while(!_loc5_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!(_loc4_ || param2))
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         if(!(_loc5_ && param2))
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(this.§@!E§);
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(_loc4_ || this)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        §§push(param1.useColor);
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        if(!(_loc5_ && param1))
                                                                                                                        {
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              if(_loc4_ || param1)
                                                                                                                              {
                                                                                                                                 addr63:
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    continue loop18;
                                                                                                                                 }
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    continue loop10;
                                                                                                                                 }
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    if(_loc4_ || param1)
                                                                                                                                    {
                                                                                                                                       addr77:
                                                                                                                                       §§push(!§§pop());
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          continue loop14;
                                                                                                                                       }
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr81);
                                                                                                                                       }
                                                                                                                                       §§goto(addr335);
                                                                                                                                    }
                                                                                                                                    §§goto(addr315);
                                                                                                                                 }
                                                                                                                                 §§goto(addr304);
                                                                                                                              }
                                                                                                                              §§goto(addr77);
                                                                                                                           }
                                                                                                                           §§goto(addr312);
                                                                                                                        }
                                                                                                                        while(!_loc5_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           if(_loc4_ || param1)
                                                                                                                           {
                                                                                                                              §§goto(addr269);
                                                                                                                           }
                                                                                                                           break loop12;
                                                                                                                        }
                                                                                                                        §§goto(addr316);
                                                                                                                     }
                                                                                                                     §§goto(addr287);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr193);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr63);
                                                                                                            }
                                                                                                            §§goto(addr345);
                                                                                                         }
                                                                                                         else if(_loc4_)
                                                                                                         {
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         §§goto(addr318);
                                                                                                      }
                                                                                                      §§goto(addr344);
                                                                                                   }
                                                                                                   addr81:
                                                                                                   return §§pop();
                                                                                                }
                                                                                                §§goto(addr301);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                       §§goto(addr286);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§goto(addr259);
                                                                                          §§push(param1.useColor);
                                                                                       }
                                                                                       §§goto(addr323);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr248);
                                                                                 addr121:
                                                                              }
                                                                              §§goto(addr294);
                                                                           }
                                                                           §§goto(addr287);
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr85:
                                                                  }
                                                                  §§goto(addr287);
                                                               }
                                                               return §§pop();
                                                               addr186:
                                                            }
                                                            §§goto(addr313);
                                                         }
                                                         while(!_loc5_)
                                                         {
                                                            §§goto(addr299);
                                                         }
                                                         §§goto(addr317);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr255);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         §§goto(addr248);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr370);
                                                      }
                                                   }
                                                }
                                                §§goto(addr186);
                                             }
                                          }
                                       }
                                       §§goto(addr328);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr310);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr326);
      }
   }
}
