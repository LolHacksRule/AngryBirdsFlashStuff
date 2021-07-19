package §`!a§
{
   import §%q§.§+,§;
   import §%q§.Texture;
   import §'O§.§+!-§;
   import §+o§.§3C§;
   import §3!5§.§%!y§;
   import §6![§.§ !f§;
   import §6![§.§1!J§;
   import §6![§.DisplayObject;
   import §6![§.DisplayObjectContainer;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §4>§
   {
      
      private static var §-!K§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §-!K§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §!!p§:int;
      
      private var §5"&§:Texture;
      
      private var §^!T§:String;
      
      private var §1!&§:§3C§;
      
      private var §8"&§:VertexBuffer3D;
      
      private var §<!]§:VertexBuffer3D;
      
      private var §4H§:VertexBuffer3D;
      
      private var §=W§:Vector.<uint>;
      
      private var §&8§:IndexBuffer3D;
      
      private var §`s§:Boolean = false;
      
      private var §<!N§:Boolean = false;
      
      public function §4>§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
            while(true)
            {
               §1P§();
               loop1:
               while(!_loc1_)
               {
                  this.§1!&§ = new §3C§(0,true);
                  loop2:
                  while(true)
                  {
                     this.§=W§ = new Vector.<uint>(0);
                     loop3:
                     while(!_loc1_)
                     {
                        this.§!!p§ = 0;
                        while(true)
                        {
                           this.§[!S§();
                           if(!(_loc1_ && _loc2_))
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public static function §#2§(param1:DisplayObjectContainer, param2:Vector.<§4>§>) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §18§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §18§(param1:DisplayObject, param2:Vector.<§4>§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§ !f§ = null;
         var _loc13_:§1!J§ = null;
         var _loc14_:Texture = null;
         var _loc15_:* = null;
         var _loc16_:§4>§ = null;
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
                  loop1:
                  while(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        §§push(param1.visible);
                        if(_loc18_)
                        {
                           §§push(!§§pop());
                           if(_loc18_ || param2)
                           {
                              if(_loc17_)
                              {
                                 continue;
                              }
                              if(!_loc18_)
                              {
                                 continue loop1;
                              }
                              if(!_loc17_)
                              {
                                 break loop1;
                              }
                              loop6:
                              while(true)
                              {
                                 _loc7_ = §§pop();
                                 addr160:
                                 loop5:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr151:
                                    loop3:
                                    while(true)
                                    {
                                       if(_loc17_)
                                       {
                                          continue loop0;
                                       }
                                       param3 = §§pop();
                                       while(true)
                                       {
                                          if(param2.length == 0)
                                          {
                                             continue;
                                          }
                                          addr165:
                                          addr165:
                                          param2[0].reset();
                                          if(_loc18_)
                                          {
                                             if(_loc18_)
                                             {
                                                addr107:
                                                break loop0;
                                             }
                                             break;
                                          }
                                          §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                                          if(!(_loc17_ && param1))
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          _loc9_ = §§pop();
                                          _loc10_ = new Matrix3D();
                                          if(!_loc17_)
                                          {
                                             §§push(param5);
                                             if(!(_loc17_ && param3))
                                             {
                                                §§push(param1.alpha);
                                                if(!(_loc17_ && §4>§))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc17_ && §4>§))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc18_)
                                                      {
                                                         addr215:
                                                         §§push(§§pop());
                                                         if(_loc18_ || param3)
                                                         {
                                                            param5 = §§pop();
                                                         }
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(!_loc17_)
                                                            {
                                                               addr228:
                                                               _loc6_ = 0;
                                                            }
                                                            loop8:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_);
                                                               if(_loc18_)
                                                               {
                                                                  §§push(_loc9_);
                                                                  if(_loc18_ || param1)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        if(!_loc17_)
                                                                        {
                                                                           addr430:
                                                                           §§push(_loc7_);
                                                                           if(_loc18_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc18_ || param2)
                                                                                 {
                                                                                    §§push(int(param2.length - 1));
                                                                                    if(_loc18_ || §4>§)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                addr460:
                                                                                                if(_loc18_ || param2)
                                                                                                {
                                                                                                   break loop8;
                                                                                                }
                                                                                                loop18:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc6_ = §§pop();
                                                                                                   addr486:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc17_ && §4>§))
                                                                                                      {
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         addr518:
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
                                                                                                                  if(!(_loc18_ || param2))
                                                                                                                  {
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr511);
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr472);
                                                                                          }
                                                                                          addr455:
                                                                                       }
                                                                                       §§goto(addr511);
                                                                                    }
                                                                                    §§goto(addr484);
                                                                                 }
                                                                                 §§goto(addr511);
                                                                              }
                                                                              addr471:
                                                                              addr472:
                                                                              return §§pop();
                                                                              §§push(param3);
                                                                           }
                                                                           §§goto(addr510);
                                                                           addr301:
                                                                        }
                                                                        §§goto(addr455);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc11_ = _loc8_.getChildAt(_loc6_);
                                                                        if(!_loc18_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        _loc10_.copyFrom(param4);
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           _loc11_.§9K§(_loc10_);
                                                                           while(true)
                                                                           {
                                                                              addr263:
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§18§(_loc11_,param2,param3,_loc10_,param5));
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                 }
                                                                                 param3 = §§pop();
                                                                                 while(_loc18_)
                                                                                 {
                                                                                    _loc6_++;
                                                                                    if(!(_loc17_ && param1))
                                                                                    {
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          break loop11;
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr468:
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§goto(addr486);
                                                                     }
                                                                     §§goto(addr471);
                                                                  }
                                                                  param2[_loc6_].dispose();
                                                                  §§goto(addr518);
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr468);
                                                               §§goto(addr460);
                                                            }
                                                         }
                                                         §§goto(addr301);
                                                      }
                                                      §§push(0);
                                                   }
                                                }
                                             }
                                             §§goto(addr215);
                                          }
                                          §§goto(addr228);
                                       }
                                       while(true)
                                       {
                                          if(!_loc17_)
                                          {
                                             break loop3;
                                          }
                                          addr158:
                                          while(true)
                                          {
                                             continue loop6;
                                          }
                                       }
                                       continue loop5;
                                    }
                                    §§goto(addr107);
                                 }
                              }
                           }
                           break;
                        }
                        break;
                     }
                     if(§§pop())
                     {
                        §§goto(addr165);
                     }
                     else
                     {
                        if(!(param1 is § !f§))
                        {
                           throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                        }
                        if(_loc18_ || param2)
                        {
                           _loc14_ = !!(_loc13_ = (_loc12_ = param1 as § !f§) as §1!J§) ? _loc13_.texture : null;
                           if(_loc18_)
                           {
                              if(_loc13_)
                              {
                                 addr368:
                                 if(_loc18_ || param2)
                                 {
                                    §§push(_loc13_.smoothing);
                                    if(!(_loc17_ && §4>§))
                                    {
                                       §§push(§§pop());
                                       if(_loc17_)
                                       {
                                       }
                                    }
                                    addr366:
                                    §§push(§§pop());
                                 }
                                 if((_loc16_ = param2[param3]).§%@§(_loc12_,_loc14_,_loc15_,param5))
                                 {
                                    if(_loc18_ || §4>§)
                                    {
                                       param3++;
                                       if(_loc18_ || §4>§)
                                       {
                                          addr395:
                                          if(param2.length <= param3)
                                          {
                                             if(_loc18_)
                                             {
                                                param2.push(new §4>§());
                                                if(!_loc17_)
                                                {
                                                   addr407:
                                                   (_loc16_ = param2[param3]).reset();
                                                   _loc16_.§!Y§(_loc12_,param5,_loc14_,_loc15_,param4);
                                                }
                                                §§goto(addr430);
                                             }
                                          }
                                       }
                                       §§goto(addr407);
                                    }
                                    §§goto(addr395);
                                 }
                                 §§goto(addr407);
                              }
                              else
                              {
                                 §§push(null);
                                 if(_loc18_ || param1)
                                 {
                                    §§goto(addr366);
                                 }
                              }
                              _loc15_ = §§pop();
                           }
                           §§goto(addr368);
                        }
                     }
                     §§goto(addr430);
                  }
                  if(§§pop())
                  {
                     if(_loc18_ || §4>§)
                     {
                        if(!(_loc17_ && param2))
                        {
                           §§push(param3);
                           if(_loc18_)
                           {
                              return §§pop();
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr165);
                  }
                  break;
               }
               §§goto(addr158);
            }
            §§goto(addr164);
            §§push(param1 is DisplayObjectContainer);
         }
         §§goto(addr142);
      }
      
      private static function §1P§() : void
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
         var _loc1_:§1"&§ = §1"&§.§1i§;
         if(!_loc23_)
         {
            if(_loc1_.§^-§(§33§(true)))
            {
               if(_loc24_ || _loc1_)
               {
                  §§goto(addr59);
               }
            }
            var _loc2_:§%!y§ = new §%!y§();
            var _loc3_:§%!y§ = new §%!y§();
            var _loc13_:int = 0;
            var _loc14_:* = [true,false];
            while(§§hasnext(_loc14_,_loc13_))
            {
               §§push(Boolean(§§nextvalue(_loc13_,_loc14_)));
               loop1:
               while(true)
               {
                  _loc6_ = §§pop();
                  addr174:
                  while(true)
                  {
                     §§push("m44 op, va0, vc0  \n" + "mov v0, va2       \n");
                     addr165:
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
         addr59:
      }
      
      public static function §33§(param1:Boolean) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            return !!param1 ? "QB_q*" : "QB_q\'";
         }
         §§goto(addr31);
      }
      
      public static function §0!<§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            var _loc6_:* = !!param1 ? "QB_i*" : "QB_i\'";
            if(!_loc7_)
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
                        addr167:
                        while(true)
                        {
                           §§push(§§pop() + "N");
                           addr169:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              addr170:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr166:
                  }
                  while(true)
                  {
                     §§push(param3);
                     loop6:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(_loc6_);
                              loop18:
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() + "R");
                                    loop19:
                                    while(true)
                                    {
                                       if(_loc8_)
                                       {
                                          _loc6_ = §§pop();
                                          loop20:
                                          while(true)
                                          {
                                             addr112:
                                             while(true)
                                             {
                                                §§push(param5);
                                                if(!_loc8_)
                                                {
                                                   break;
                                                }
                                                if(!_loc7_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               if(_loc8_ || param1)
                                                               {
                                                                  §§push(_loc6_);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + "C");
                                                                     if(_loc7_ && param2)
                                                                     {
                                                                        continue loop19;
                                                                     }
                                                                     _loc6_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr45);
                                                                     }
                                                                  }
                                                                  continue loop19;
                                                               }
                                                               §§goto(addr166);
                                                               §§goto(addr169);
                                                            }
                                                            break;
                                                         }
                                                         continue loop20;
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                   addr45:
                                                }
                                                continue loop0;
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(param4);
                                                   if(!(_loc7_ && §4>§))
                                                   {
                                                      §§push(§+,§.§7q§);
                                                      if(!(_loc7_ && §4>§))
                                                      {
                                                         if(§§pop() != §§pop())
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            continue loop10;
                                                         }
                                                         addr29:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            if(!(_loc7_ && §4>§))
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     break loop11;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               addr91:
                                                               addr91:
                                                               while(true)
                                                               {
                                                                  if(!(_loc8_ || param2))
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  §§push(param4);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop().charAt(0));
                                                                  }
                                                               }
                                                            }
                                                            addr103:
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               continue loop10;
                                                            }
                                                         }
                                                         §§goto(addr169);
                                                      }
                                                      §§goto(addr99);
                                                   }
                                                   §§goto(addr91);
                                                   continue loop10;
                                                }
                                                return §§pop();
                                             }
                                             continue loop6;
                                          }
                                       }
                                       §§goto(addr169);
                                    }
                                 }
                                 §§goto(addr167);
                              }
                           }
                           addr145:
                        }
                        §§goto(addr112);
                     }
                  }
               }
            }
            §§goto(addr145);
         }
         §§goto(addr21);
      }
      
      public function get §%2§() : int
      {
         return this.§!!p§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§8"&§)
            {
               loop0:
               while(true)
               {
                  this.§8"&§.dispose();
                  addr118:
                  while(true)
                  {
                  }
                  loop6:
                  while(true)
                  {
                     if(!(_loc2_ || this))
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        loop7:
                        while(this.§&8§)
                        {
                           if(!(_loc1_ && this))
                           {
                              this.§&8§.dispose();
                           }
                           if(_loc1_)
                           {
                              continue loop6;
                           }
                           addr45:
                           if(_loc2_ || _loc1_)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              addr94:
                              while(!(_loc1_ && this))
                              {
                                 while(true)
                                 {
                                    if(!this.§4H§)
                                    {
                                       continue loop7;
                                    }
                                 }
                              }
                              §§goto(addr118);
                           }
                           while(true)
                           {
                              this.§4H§.dispose();
                              continue loop6;
                              §§goto(addr45);
                           }
                        }
                        return;
                     }
                  }
               }
            }
            while(true)
            {
               if(this.§<!]§)
               {
                  if(!(_loc1_ && this))
                  {
                     this.§<!]§.dispose();
                  }
                  §§goto(addr94);
               }
               §§goto(addr65);
               §§goto(addr118);
            }
         }
         §§goto(addr79);
      }
      
      private function §[!S§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§1!&§.§6<§);
         if(_loc5_ || this)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(_loc5_)
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
                        addr63:
                        §§push(int(§§pop()));
                        addr44:
                     }
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(!(_loc4_ && this))
                     {
                        addr54:
                        §§push(int(§§pop() * 2));
                        if(!(_loc4_ && _loc1_))
                        {
                           §§goto(addr63);
                        }
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc4_)
                  {
                     this.§1!&§.§6<§ = _loc2_ * 4;
                  }
                  §§push(_loc1_);
                  if(_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  loop0:
                  while(true)
                  {
                     if(_loc3_ >= _loc2_)
                     {
                        if(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              this.§<!N§ = true;
                              addr94:
                              if(_loc5_)
                              {
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    break;
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    if(_loc4_ && this)
                                    {
                                       continue;
                                    }
                                    this.§=W§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                                    loop4:
                                    while(true)
                                    {
                                       this.§=W§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                                       loop2:
                                       while(true)
                                       {
                                          this.§=W§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                                          addr147:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                break loop2;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       addr149:
                                       addr106:
                                       _loc3_++;
                                       while(true)
                                       {
                                          if(_loc4_ && _loc2_)
                                          {
                                             continue loop4;
                                          }
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             break;
                                          }
                                          addr248:
                                          while(true)
                                          {
                                             this.§=W§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                                             continue loop3;
                                          }
                                          §§goto(addr149);
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr94);
                     }
                     else
                     {
                        this.§=W§[int(_loc3_ * 6)] = _loc3_ * 4;
                     }
                     §§goto(addr248);
                  }
                  return;
               }
               §§goto(addr54);
            }
            §§goto(addr44);
         }
         §§goto(addr41);
      }
      
      private function §?!s§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.§<!N§);
            if(!_loc3_)
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
                           if(this.§8"&§)
                           {
                              while(true)
                              {
                                 this.§8"&§.dispose();
                                 addr102:
                                 while(_loc4_ || this)
                                 {
                                 }
                                 continue loop0;
                              }
                              addr99:
                           }
                           while(true)
                           {
                              if(this.§<!]§)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(_loc3_ && param1)
                                       {
                                          continue loop1;
                                       }
                                       this.§<!]§.dispose();
                                       while(true)
                                       {
                                          loop8:
                                          while(_loc4_ || param1)
                                          {
                                             this.§4H§.dispose();
                                             loop9:
                                             while(true)
                                             {
                                                if(_loc3_ && param1)
                                                {
                                                   break loop5;
                                                }
                                                loop10:
                                                while(this.§&8§)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      continue loop9;
                                                   }
                                                   addr47:
                                                   if(!_loc4_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      if(this.§4H§)
                                                      {
                                                         continue loop8;
                                                      }
                                                      continue loop10;
                                                   }
                                                }
                                                §§push(this.§1!&§.§6<§);
                                                if(_loc4_ || this)
                                                {
                                                   §§push(int(§§pop() / 4));
                                                }
                                                var _loc2_:* = §§pop();
                                                if(!_loc3_)
                                                {
                                                   this.§8"&§ = param1.createVertexBuffer(_loc2_ * 4,§3C§.§^!§);
                                                   this.§8"&§.uploadFromByteArray(this.§1!&§.§8!b§,0,0,_loc2_ * 4);
                                                   this.§<!]§ = param1.createVertexBuffer(_loc2_ * 4,§3C§.§!"&§);
                                                   this.§<!]§.uploadFromVector(this.§1!&§.§<!G§,0,_loc2_ * 4);
                                                   this.§4H§ = param1.createVertexBuffer(_loc2_ * 4,§3C§.§'!F§);
                                                   addr227:
                                                   addr287:
                                                   addr254:
                                                   addr267:
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         this.§4H§.uploadFromVector(this.§1!&§.§''§,0,_loc2_ * 4);
                                                         addr207:
                                                         if(!(_loc3_ && this))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               this.§&8§ = param1.createIndexBuffer(_loc2_ * 6);
                                                               this.§&8§.uploadFromVector(this.§=W§,0,_loc2_ * 6);
                                                               this.§<!N§ = false;
                                                               addr195:
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§goto(addr227);
                                                                        }
                                                                        return true;
                                                                     }
                                                                     §§goto(addr207);
                                                                  }
                                                                  §§goto(addr195);
                                                               }
                                                               addr186:
                                                               §§goto(addr186);
                                                               addr216:
                                                            }
                                                            §§goto(addr287);
                                                         }
                                                         §§goto(addr254);
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                   addr243:
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr216);
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr99);
                                    }
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr51);
                           }
                        }
                     }
                     §§goto(addr114);
                  }
               }
               §§goto(addr123);
            }
            §§goto(addr124);
         }
         §§goto(addr114);
      }
      
      private function §3!j§(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§?!s§(param1));
            loop0:
            while(!§§pop())
            {
               while(true)
               {
                  this.§8"&§.uploadFromByteArray(this.§1!&§.§8!b§,0,0,this.§!!p§ * 4);
                  continue loop0;
               }
            }
            addr24:
            return;
            addr85:
         }
         loop2:
         while(true)
         {
            §§push(this.§`s§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§<!]§.uploadFromVector(this.§1!&§.§<!G§,0,this.§!!p§ * 4);
                     addr79:
                     while(_loc2_)
                     {
                     }
                     continue loop2;
                  }
                  addr68:
               }
               while(true)
               {
                  this.§4H§.uploadFromVector(this.§1!&§.§''§,0,this.§!!p§ * 4);
                  if(_loc2_)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr79);
               }
               if(_loc2_)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr85);
            }
            §§goto(addr86);
         }
         §§goto(addr24);
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            if(this.§!!p§ == 0)
            {
               if(_loc9_)
               {
                  return;
               }
            }
         }
         §§push(this.§1!&§.premultipliedAlpha);
         if(_loc9_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param3 == 1);
         if(_loc9_ || this)
         {
            §§push(!§§pop());
         }
         var _loc5_:* = §§pop();
         if(_loc9_)
         {
            if(this.§5"&§)
            {
               addr50:
               §§push(§0!<§(_loc5_,this.§5"&§.mipMapping,this.§5"&§.repeat,this.§^!T§,this.§`s§));
               if(!_loc8_)
               {
                  §§push(§§pop());
                  if(!_loc9_)
                  {
                  }
               }
               addr82:
               §§push(§§pop());
            }
            else
            {
               §§push(§33§(_loc5_));
               if(_loc9_)
               {
                  §§push(§§pop());
                  if(_loc9_ || param2)
                  {
                     §§goto(addr82);
                  }
               }
            }
            var _loc6_:* = §§pop();
            if(_loc9_ || this)
            {
               §0L§.§@M§(param1,_loc4_);
               if(_loc9_ || this)
               {
                  this.§3!j§(param1);
                  if(!(_loc8_ && param1))
                  {
                     param1.setProgram(§1"&§.§1i§.§>p§(_loc6_));
                     if(_loc9_)
                     {
                        param1.setVertexBufferAt(0,this.§4H§,§3C§.§2!F§,Context3DVertexBufferFormat.FLOAT_3);
                        if(!_loc8_)
                        {
                           §§push(this.§5"&§);
                           if(_loc9_)
                           {
                              §§push(null);
                              if(_loc9_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!(_loc8_ && param3))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc8_ && param2))
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             §§pop();
                                             if(!(_loc8_ && param2))
                                             {
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(this.§`s§);
                                                   if(_loc9_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc9_ || param3)
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc9_ || this)
                                                               {
                                                                  param1.setVertexBufferAt(2,this.§<!]§,§3C§.§0!g§,Context3DVertexBufferFormat.FLOAT_4);
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     addr92:
                                                                     param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
                                                                     if(_loc9_ || param2)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§push(_loc5_);
                                                                        if(_loc9_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 §-!K§[0] = §-!K§[1] = §-!K§[2] = !!_loc4_ ? Number(param3) : Number(1);
                                                                                 addr252:
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §-!K§[3] = param3;
                                                                                    while(true)
                                                                                    {
                                                                                       param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§-!K§,1);
                                                                                    }
                                                                                    addr465:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr460:
                                                                              }
                                                                              loop28:
                                                                              while(true)
                                                                              {
                                                                                 loop4:
                                                                                 while(true)
                                                                                 {
                                                                                    param1.setVertexBufferAt(0,null);
                                                                                    if(_loc9_ || param2)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          return;
                                                                                          addr297:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr441:
                                                                                       }
                                                                                       loop2:
                                                                                       while(!(_loc8_ && param1))
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                param1.setVertexBufferAt(2,null);
                                                                                                addr328:
                                                                                                while(!_loc8_)
                                                                                                {
                                                                                                   if(_loc9_ || param1)
                                                                                                   {
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                   loop5:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(!(_loc8_ && param3))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               param1.setTextureAt(0,null);
                                                                                                               addr388:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  param1.setVertexBufferAt(1,null);
                                                                                                                  addr370:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop12:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§5"&§);
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           if(!(_loc9_ || param2))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(null);
                                                                                                                              addr351:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 addr352:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    addr353:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          break loop0;
                                                                                                                                       }
                                                                                                                                       addr313:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr314:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop2;
                                                                                                                                             }
                                                                                                                                             continue loop4;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr374:
                                                                                                                        while(!§§pop())
                                                                                                                        {
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     addr433:
                                                                                                                     addr434:
                                                                                                                     while(!§§pop())
                                                                                                                     {
                                                                                                                        param1.setTextureAt(0,null);
                                                                                                                        loop9:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr389:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              param1.drawTriangles(this.§&8§,0,this.§!!p§ * 2);
                                                                                                                              addr399:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    continue loop9;
                                                                                                                                 }
                                                                                                                                 §§goto(addr374);
                                                                                                                                 §§push(this.§5"&§);
                                                                                                                              }
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        param1.setTextureAt(0,this.§5"&§.getBase(param1));
                                                                                                                        break loop2;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr384:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc9_ || param2)
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  §§goto(addr389);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr465);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr460);
                                                                                                         }
                                                                                                         addr420:
                                                                                                      }
                                                                                                      §§goto(addr399);
                                                                                                   }
                                                                                                }
                                                                                                break loop4;
                                                                                             }
                                                                                             addr324:
                                                                                          }
                                                                                          §§goto(addr434);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          param1.setVertexBufferAt(1,this.§8"&§,§3C§.§null §,Context3DVertexBufferFormat.FLOAT_2);
                                                                                          §§goto(addr420);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr328);
                                                                                 }
                                                                                 addr355:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(!(_loc8_ && param1))
                                                                                       {
                                                                                          §§push(this.§`s§);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(_loc8_ && param3)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr313);
                                                                                                }
                                                                                                addr312:
                                                                                             }
                                                                                             §§goto(addr352);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr388);
                                                                                    }
                                                                                    §§goto(addr370);
                                                                                 }
                                                                                 §§goto(addr314);
                                                                              }
                                                                              addr337:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr433);
                                                                           }
                                                                        }
                                                                        §§goto(addr314);
                                                                     }
                                                                     §§goto(addr297);
                                                                  }
                                                                  §§goto(addr388);
                                                               }
                                                               §§goto(addr409);
                                                            }
                                                            §§goto(addr92);
                                                         }
                                                         addr122:
                                                      }
                                                      §§goto(addr314);
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   §§goto(addr355);
                                                }
                                             }
                                             §§goto(addr252);
                                          }
                                          §§goto(addr312);
                                       }
                                       §§goto(addr122);
                                    }
                                    §§goto(addr353);
                                 }
                                 §§goto(addr352);
                              }
                              §§goto(addr351);
                           }
                           §§goto(addr350);
                        }
                        §§goto(addr384);
                     }
                     §§goto(addr388);
                  }
                  §§goto(addr337);
               }
               §§goto(addr324);
            }
            §§goto(addr441);
         }
         §§goto(addr50);
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§!!p§ = 0;
         }
         do
         {
            this.§`s§ = false;
            do
            {
               this.§5"&§ = null;
               do
               {
                  this.§^!T§ = null;
               }
               while(_loc1_ && this);
               
            }
            while(!(_loc2_ || this));
            
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function §!Y§(param1:§ !f§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_)
         {
            §§push(param2);
            while(true)
            {
               §§push(§§pop() * param1.alpha);
               addr246:
               addr231:
               while(true)
               {
                  §§push(Number(§§pop()));
                  addr247:
                  while(true)
                  {
                     param2 = §§pop();
                  }
               }
               if(_loc9_ && param2)
               {
                  continue;
               }
               §§push(0);
               loop5:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§push(this.§!!p§);
                        if(_loc10_)
                        {
                           §§push(1);
                           if(!(_loc9_ && this))
                           {
                              §§push(§§pop() + §§pop());
                              loop7:
                              while(!(_loc9_ && param2))
                              {
                                 §§push(this.§1!&§.§6<§);
                                 while(true)
                                 {
                                    §§push(§§pop() / 4);
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       if(!_loc9_)
                                       {
                                          this.§[!S§();
                                       }
                                       while(true)
                                       {
                                          addr65:
                                          if(_loc9_ && param2)
                                          {
                                             continue;
                                          }
                                          if(_loc9_)
                                          {
                                             continue loop6;
                                          }
                                          this.§`s§ = true;
                                          addr77:
                                          if(_loc10_ || param3)
                                          {
                                             addr84:
                                             if(!(_loc9_ && this))
                                             {
                                                if(false)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      if(_loc10_)
                                                      {
                                                         if(!(_loc10_ || param2))
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(!_loc9_)
                                                         {
                                                            §§push(1);
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr110);
                                                               §§push(§§pop() == §§pop());
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                         §§goto(addr246);
                                                         continue loop7;
                                                      }
                                                      addr255:
                                                      §§push(int(§§pop()));
                                                   }
                                                   §§goto(addr246);
                                                   addr93:
                                                }
                                                else
                                                {
                                                   addr249:
                                                   §§push(this.§!!p§);
                                                   if(!_loc9_)
                                                   {
                                                      addr254:
                                                      §§goto(addr255);
                                                      §§push(§§pop() * 4);
                                                   }
                                                }
                                                §§goto(addr256);
                                             }
                                             while(true)
                                             {
                                                this.§5"&§ = param3;
                                                while(true)
                                                {
                                                   this.§^!T§ = param4;
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr84);
                                             }
                                             addr189:
                                             §§goto(addr248);
                                          }
                                          addr167:
                                          §§goto(addr240);
                                       }
                                       addr226:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§!!p§);
                                       if(!(_loc9_ && this))
                                       {
                                          §§push(0);
                                          if(!_loc9_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                §§goto(addr189);
                                             }
                                             else
                                             {
                                                §§goto(addr249);
                                             }
                                             if(_loc10_)
                                             {
                                                param1.copyVertexDataTo(this.§1!&§,_loc6_,param2,param5);
                                                if(_loc10_)
                                                {
                                                   var _loc7_:*;
                                                   §§push((_loc7_ = this).§!!p§);
                                                   if(_loc10_ || param2)
                                                   {
                                                      §§push(§§pop() + 1);
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(!_loc9_)
                                                   {
                                                      _loc7_.§!!p§ = _loc8_;
                                                   }
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr254);
                                       }
                                       break;
                                       §§goto(addr226);
                                    }
                                    §§goto(addr254);
                                 }
                                 continue loop5;
                              }
                              while(!_loc9_)
                              {
                                 §§goto(addr231);
                                 §§goto(addr207);
                              }
                              addr207:
                              §§goto(addr247);
                           }
                        }
                        §§goto(addr254);
                     }
                  }
                  addr240:
                  loop13:
                  for(; _loc10_ || param3; §§goto(addr77))
                  {
                     §§push(this.§1!&§);
                     if(!(_loc9_ && param2))
                     {
                        if(param3)
                        {
                           addr134:
                           §§push(param3.premultipliedAlpha);
                           if(_loc10_ || this)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc9_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(true);
                        }
                        §§pop().§!'§(§§pop(),false);
                        while(true)
                        {
                           if(_loc10_)
                           {
                              §§goto(addr93);
                           }
                           else
                           {
                              addr248:
                              while(true)
                              {
                              }
                              addr248:
                           }
                           §§push(param2);
                           break loop7;
                           loop19:
                           while(!(_loc9_ && param2))
                           {
                              §§push(param1.useColor);
                              if(_loc10_ || param2)
                              {
                                 if(!_loc9_)
                                 {
                                    addr33:
                                    §§push(Boolean(§§pop()));
                                    if(_loc10_ || this)
                                    {
                                       addr40:
                                       if(_loc9_ && param2)
                                       {
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             addr111:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop19;
                                                   }
                                                   addr113:
                                                }
                                             }
                                             §§goto(addr40);
                                          }
                                          addr110:
                                       }
                                       while(§§pop())
                                       {
                                          if(_loc9_ && param2)
                                          {
                                             continue loop13;
                                          }
                                          if(_loc9_ && this)
                                          {
                                             continue loop19;
                                          }
                                          if(!_loc10_)
                                          {
                                             continue loop12;
                                          }
                                          §§goto(addr65);
                                       }
                                       §§goto(addr249);
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr111);
                              }
                              §§goto(addr33);
                           }
                        }
                     }
                     §§goto(addr134);
                  }
                  return;
               }
            }
         }
         §§goto(addr248);
      }
      
      public function §%@§(param1:§ !f§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            §§push(this.§5"&§);
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
                                    if(_loc6_ || this)
                                    {
                                       §§push(!§§pop());
                                       if(!_loc5_)
                                       {
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(this.§5"&§);
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§push(null);
                                                         if(!(_loc6_ || param2))
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§push(§§pop() == §§pop());
                                                         loop15:
                                                         while(!_loc5_)
                                                         {
                                                            §§push(§§pop());
                                                            loop16:
                                                            while(!(_loc5_ && param3))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop17:
                                                                  for(; _loc6_ || this; loop25:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ || param1))
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§pop();
                                                                           if(!(_loc6_ || param3))
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc6_ || param3)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§`s§);
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          if(!(_loc5_ && param2))
                                                                                          {
                                                                                             §§push(param1.useColor);
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(!(_loc5_ && param3))
                                                                                                            {
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            addr114:
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(_loc6_ || this)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        §§goto(addr129);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr367);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr306);
                                                                                                               }
                                                                                                               §§goto(addr290);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr157);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr280);
                                                                                                      }
                                                                                                      §§goto(addr114);
                                                                                                   }
                                                                                                   addr104:
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§goto(addr114);
                                                                                                               §§push(!§§pop());
                                                                                                            }
                                                                                                            §§goto(addr331);
                                                                                                         }
                                                                                                         §§goto(addr268);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr147);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr114);
                                                                                                }
                                                                                                §§goto(addr158);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr92:
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(_loc6_ || param1)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§goto(addr104);
                                                                                                         §§push(!§§pop());
                                                                                                      }
                                                                                                      §§goto(addr329);
                                                                                                   }
                                                                                                   §§goto(addr335);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr291);
                                                                                          }
                                                                                          §§goto(addr330);
                                                                                       }
                                                                                       §§goto(addr308);
                                                                                    }
                                                                                    §§goto(addr114);
                                                                                 }
                                                                                 addr223:
                                                                                 return false;
                                                                                 addr199:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr262);
                                                                              }
                                                                              §§goto(addr204);
                                                                           }
                                                                           §§goto(addr213);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           §§goto(addr311);
                                                                        }
                                                                        addr310:
                                                                     }
                                                                     §§goto(addr288);
                                                                  },§§goto(addr224))
                                                                  {
                                                                     §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(param2 == null);
                                                                        addr204:
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ || param3))
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr213:
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(_loc6_ || param2)
                                                                                    {
                                                                                       §§goto(addr223);
                                                                                    }
                                                                                    addr311:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr313:
                                                                                          if(_loc6_ || param3)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             §§push(this.§`s§);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§push(param1.useColor);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc5_ && param2)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                }
                                                                                                addr280:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                addr289:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr290:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      addr291:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            break loop15;
                                                                                                         }
                                                                                                         §§goto(addr268);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§5"&§);
                                                                                             break loop14;
                                                                                             §§goto(addr313);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             break loop17;
                                                                                          }
                                                                                          continue loop2;
                                                                                          addr362:
                                                                                          addr368:
                                                                                       }
                                                                                       addr337:
                                                                                       addr356:
                                                                                       while(_loc6_)
                                                                                       {
                                                                                          §§push(this.§^!T§ == param3);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(!§§pop());
                                                                                             addr307:
                                                                                             while(true)
                                                                                             {
                                                                                                addr308:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   break loop16;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          addr358:
                                                                                          §§goto(addr362);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    addr300:
                                                                                    addr267:
                                                                                    §§push(this.§!!p§ == 8192);
                                                                                 }
                                                                                 §§goto(addr268);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§!!p§);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          while(_loc6_)
                                                                                          {
                                                                                             if(!(_loc5_ && param3))
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   addr158:
                                                                                                   addr366:
                                                                                                   while(_loc6_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                      addr129:
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§goto(addr368);
                                                                                                      }
                                                                                                      addr367:
                                                                                                   }
                                                                                                   addr333:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      addr335:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               §§goto(addr337);
                                                                                                               break loop15;
                                                                                                            }
                                                                                                            addr336:
                                                                                                         }
                                                                                                         §§goto(addr307);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr157:
                                                                                             }
                                                                                             §§push(param2.repeat);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                addr330:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(!§§pop());
                                                                                                   addr331:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§goto(addr333);
                                                                                                      }
                                                                                                      §§goto(addr313);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop19;
                                                                                          addr147:
                                                                                       }
                                                                                       §§goto(addr267);
                                                                                    }
                                                                                    break;
                                                                                    addr224:
                                                                                 }
                                                                                 §§goto(addr267);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§goto(addr366);
                                                                  §§push(§§pop());
                                                               }
                                                               §§goto(addr211);
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§goto(addr310);
                                                               }
                                                               §§goto(addr289);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc6_ || param2)
                                                            {
                                                               §§pop();
                                                               §§goto(addr300);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr336);
                                                            }
                                                            return §§pop();
                                                         }
                                                      }
                                                      §§goto(addr358);
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr327);
                                                }
                                             }
                                             §§goto(addr356);
                                          }
                                          addr354:
                                       }
                                    }
                                    §§goto(addr313);
                                 }
                              }
                           }
                           §§goto(addr354);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr199);
      }
   }
}
