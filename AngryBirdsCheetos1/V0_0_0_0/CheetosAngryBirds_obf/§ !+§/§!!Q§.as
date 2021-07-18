package § !+§
{
   import §"! §.§@+§;
   import §2!-§.Texture;
   import §2!-§.§]!=§;
   import §<!M§.§;Z§;
   import §[!;§.§1@§;
   import §`a§.§>?§;
   import §`a§.§?!N§;
   import §`a§.DisplayObject;
   import §`a§.DisplayObjectContainer;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §!!Q§
   {
      
      private static var §5l§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §!!Q§)
         {
            §5l§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §]>§:int;
      
      private var §<X§:Texture;
      
      private var §6h§:String;
      
      private var §"T§:§;Z§;
      
      private var §+!>§:VertexBuffer3D;
      
      private var §[9§:VertexBuffer3D;
      
      private var §+N§:VertexBuffer3D;
      
      private var §9W§:Vector.<uint>;
      
      private var §',§:IndexBuffer3D;
      
      private var §3L§:Boolean = false;
      
      private var §!!C§:Boolean = false;
      
      public function §!!Q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               §]!L§();
               loop1:
               while(true)
               {
                  this.§"T§ = new §;Z§(0,true);
                  while(true)
                  {
                     this.§9W§ = new Vector.<uint>(0);
                     while(!_loc1_)
                     {
                        this.§]>§ = 0;
                        while(_loc2_)
                        {
                           if(!_loc1_)
                           {
                              if(_loc2_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§5!>§();
            if(_loc2_ || this)
            {
               break;
            }
            §§goto(addr49);
         }
      }
      
      public static function §>A§(param1:DisplayObjectContainer, param2:Vector.<§!!Q§>) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §6-§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §6-§(param1:DisplayObject, param2:Vector.<§!!Q§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§?!N§ = null;
         var _loc13_:§>?§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§!!Q§ = null;
         var _loc7_:* = false;
         if(_loc18_)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               if(§§pop() == -1)
               {
                  §§push(true);
                  if(_loc18_)
                  {
                     _loc7_ = §§pop();
                     addr165:
                     while(true)
                     {
                        continue loop0;
                     }
                     addr165:
                  }
                  else
                  {
                     addr169:
                     if(§§pop())
                     {
                        §§goto(addr170);
                     }
                     else
                     {
                        if(!(param1 is §?!N§))
                        {
                           throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                        }
                        if(_loc18_ || param1)
                        {
                           _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §?!N§) as §>?§) ? _loc13_.texture : null;
                           if(_loc18_ || param3)
                           {
                              if(_loc13_)
                              {
                                 if(!(_loc17_ && §!!Q§))
                                 {
                                    addr336:
                                    §§push(_loc13_.smoothing);
                                    if(_loc18_ || param3)
                                    {
                                       §§push(§§pop());
                                       if(!_loc18_)
                                       {
                                       }
                                    }
                                    addr359:
                                    _loc15_ = §§pop();
                                    addr358:
                                 }
                                 if((_loc16_ = param2[param3]).§56§(_loc12_,_loc14_,_loc15_))
                                 {
                                    if(!_loc17_)
                                    {
                                       param3++;
                                       if(_loc18_)
                                       {
                                          if(param2.length <= param3)
                                          {
                                             if(_loc18_ || param1)
                                             {
                                                addr387:
                                                param2.push(new §!!Q§());
                                                if(_loc18_ || param1)
                                                {
                                                }
                                                addr412:
                                                §§goto(addr421);
                                             }
                                             §§goto(addr412);
                                          }
                                          (_loc16_ = param2[param3]).reset();
                                          addr405:
                                          _loc16_.§!"§(_loc12_,param5,_loc14_,_loc15_,param4);
                                       }
                                       §§goto(addr412);
                                    }
                                    §§goto(addr387);
                                 }
                                 §§goto(addr405);
                              }
                              else
                              {
                                 §§push(null);
                                 if(_loc18_ || param3)
                                 {
                                    §§goto(addr358);
                                 }
                              }
                              §§goto(addr359);
                           }
                           §§goto(addr336);
                        }
                     }
                     §§goto(addr421);
                  }
               }
               else
               {
                  §§push(param1.alpha == 0);
                  if(!_loc17_)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           if(!_loc17_)
                           {
                              if(!(_loc17_ && param3))
                              {
                                 §§push(param1.visible);
                                 if(_loc18_ || param1)
                                 {
                                    continue;
                                 }
                              }
                              else
                              {
                                 addr166:
                                 §§push(param1 is DisplayObjectContainer);
                                 addr130:
                                 addr101:
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr170);
                        }
                        addr112:
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr112);
               }
               addr170:
               §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
               if(!_loc17_)
               {
                  §§push(int(§§pop()));
               }
               _loc9_ = §§pop();
               _loc10_ = new Matrix3D();
               if(_loc18_ || param2)
               {
                  §§push(param5);
                  if(_loc18_)
                  {
                     §§push(§§pop() * param1.alpha);
                     if(_loc18_)
                     {
                        addr200:
                        §§push(Number(§§pop()));
                     }
                     param5 = §§pop();
                     if(_loc18_)
                     {
                        _loc6_ = 0;
                     }
                     §§goto(addr206);
                  }
                  §§goto(addr200);
               }
               addr206:
               loop5:
               while(true)
               {
                  §§push(_loc6_);
                  if(_loc18_ || param3)
                  {
                     §§push(_loc9_);
                     if(!_loc17_)
                     {
                        if(§§pop() < §§pop())
                        {
                           _loc11_ = _loc8_.getChildAt(_loc6_);
                           if(!(_loc17_ && §!!Q§))
                           {
                              _loc10_.copyFrom(param4);
                              while(true)
                              {
                                 §%L§.§7!7§(_loc10_,_loc11_);
                                 addr264:
                                 loop7:
                                 while(true)
                                 {
                                    addr231:
                                    while(true)
                                    {
                                       §§push(§6-§(_loc11_,param2,param3,_loc10_,param5));
                                       if(!(_loc17_ && param1))
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       param3 = §§pop();
                                       continue loop7;
                                    }
                                 }
                              }
                              addr268:
                           }
                           while(true)
                           {
                              _loc6_++;
                              if(!_loc18_)
                              {
                                 continue;
                              }
                              if(!_loc17_)
                              {
                                 if(!_loc17_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr268);
                                 }
                                 §§goto(addr231);
                              }
                              §§goto(addr264);
                           }
                           continue;
                        }
                        if(!(_loc17_ && param1))
                        {
                           addr421:
                           §§push(_loc7_);
                           if(_loc18_)
                           {
                              if(§§pop())
                              {
                                 if(_loc18_ || param1)
                                 {
                                    §§push(int(param2.length - 1));
                                    if(!_loc17_)
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc18_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             if(!(_loc17_ && param1))
                                             {
                                                addr452:
                                                if(§§pop() <= param3)
                                                {
                                                   if(!(_loc17_ && param3))
                                                   {
                                                      if(!(_loc17_ && §!!Q§))
                                                      {
                                                         addr467:
                                                         while(true)
                                                         {
                                                            §§push(param3);
                                                            addr468:
                                                            while(true)
                                                            {
                                                               if(_loc18_)
                                                               {
                                                                  if(_loc18_)
                                                                  {
                                                                     break loop5;
                                                                  }
                                                                  addr477:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                  }
                                                               }
                                                               addr478:
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                               }
                                                            }
                                                         }
                                                         addr467:
                                                      }
                                                      else
                                                      {
                                                         §§push(delete param2[_loc6_]);
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr497:
                                                            while(true)
                                                            {
                                                               §§goto(addr477);
                                                            }
                                                         }
                                                         addr504:
                                                         addr496:
                                                      }
                                                      §§goto(addr497);
                                                   }
                                                   while(_loc17_)
                                                   {
                                                      §§goto(addr497);
                                                      §§goto(addr478);
                                                   }
                                                   continue;
                                                }
                                                param2[_loc6_].dispose();
                                                §§goto(addr504);
                                             }
                                             §§goto(addr468);
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr497);
                              }
                              §§goto(addr467);
                           }
                           §§goto(addr496);
                        }
                        §§goto(addr467);
                     }
                     §§goto(addr452);
                  }
                  break;
               }
               return §§pop();
            }
            return §§pop();
         }
         §§goto(addr157);
      }
      
      private static function §]!L§() : void
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
         var _loc1_:§0Z§ = §0Z§.§4J§;
         if(!_loc24_)
         {
            if(_loc1_.§6!=§(§82§(true)))
            {
               if(!_loc24_)
               {
                  return;
               }
            }
         }
         var _loc2_:§1@§ = new §1@§();
         var _loc3_:§1@§ = new §1@§();
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
                     addr153:
                     while(!_loc24_)
                     {
                        continue loop1;
                     }
                     addr131:
                     §§push("mul ft0, v0, fc0  \n" + "mov oc, ft0       \n");
                     continue loop2;
                     if(!(_loc23_ || §!!Q§))
                     {
                        continue;
                     }
                     _loc5_ = §§pop();
                     if(!_loc23_)
                     {
                        continue loop0;
                     }
                     _loc2_.§'v§(Context3DProgramType.VERTEX,_loc4_);
                     while(!(_loc24_ && _loc2_))
                     {
                        loop6:
                        while(true)
                        {
                           _loc3_.§'v§(Context3DProgramType.FRAGMENT,_loc5_);
                           while(true)
                           {
                              _loc1_.§"^§(§82§(_loc6_),_loc2_.§[!5§,_loc3_.§[!5§);
                              if(!_loc23_)
                              {
                                 break;
                              }
                              if(_loc23_ || _loc2_)
                              {
                                 continue loop6;
                              }
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr153);
                  }
               }
            }
         }
      }
      
      public static function §82§(param1:Boolean) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            return !!param1 ? "QB_q*" : "QB_q\'";
         }
         §§goto(addr30);
      }
      
      public static function §4=§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            var _loc6_:* = !!param1 ? "QB_i*" : "QB_i\'";
            if(!_loc8_)
            {
               §§push(param2);
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(_loc6_);
                        addr181:
                        while(true)
                        {
                           §§push(§§pop() + "N");
                           addr183:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              addr184:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr180:
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
                     }
                  }
               }
            }
            §§goto(addr156);
         }
         §§goto(addr25);
      }
      
      public function get §^s§() : int
      {
         return this.§]>§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§+!>§)
            {
               while(true)
               {
                  this.§+!>§.dispose();
                  addr107:
                  while(true)
                  {
                  }
               }
               addr104:
            }
            loop2:
            while(true)
            {
               if(this.§[9§)
               {
                  loop3:
                  while(true)
                  {
                     this.§[9§.dispose();
                     addr100:
                     while(true)
                     {
                        addr31:
                        if(!(_loc1_ || this))
                        {
                           continue;
                        }
                        if(_loc1_)
                        {
                           this.§',§.dispose();
                           addr43:
                           if(_loc1_ || _loc1_)
                           {
                              continue loop3;
                           }
                           addr72:
                           addr72:
                           while(true)
                           {
                              this.§+N§.dispose();
                              loop8:
                              while(true)
                              {
                                 if(_loc1_ || this)
                                 {
                                    while(true)
                                    {
                                       if(!this.§',§)
                                       {
                                          addr19:
                                          return;
                                       }
                                       if(_loc1_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop8;
                                          }
                                          §§goto(addr31);
                                       }
                                       §§goto(addr43);
                                       continue loop8;
                                    }
                                    addr23:
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        §§goto(addr104);
                     }
                  }
               }
               while(true)
               {
                  if(this.§+N§)
                  {
                     §§goto(addr72);
                  }
                  §§goto(addr23);
                  §§goto(addr100);
               }
            }
         }
         §§goto(addr72);
      }
      
      private function §5!>§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§"T§.§[O§);
         if(!_loc5_)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(!_loc5_)
         {
            §§push(_loc1_);
            if(_loc4_ || _loc3_)
            {
               §§push(0);
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop() == §§pop())
                  {
                     addr45:
                     §§push(16);
                     if(_loc5_ && this)
                     {
                     }
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(_loc4_)
                     {
                        §§goto(addr58);
                     }
                  }
                  §§goto(addr62);
               }
               addr58:
               §§goto(addr57);
            }
            addr57:
            §§push(int(§§pop() * 2));
            if(_loc4_)
            {
               addr62:
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!(_loc5_ && this))
            {
               this.§"T§.§[O§ = _loc2_ * 4;
            }
            §§push(_loc1_);
            if(!(_loc5_ && this))
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            loop0:
            while(true)
            {
               if(_loc3_ >= _loc2_)
               {
                  if(!(_loc5_ && this))
                  {
                     if(_loc4_ || this)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.§!!C§ = true;
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              this.§9W§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                              loop2:
                              while(true)
                              {
                                 _loc3_++;
                                 addr133:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    if(_loc4_ || _loc3_)
                                    {
                                       break;
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          this.§9W§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                                          while(_loc5_ && _loc1_)
                                          {
                                          }
                                          continue loop1;
                                          addr221:
                                          addr195:
                                       }
                                       else
                                       {
                                          addr262:
                                          while(true)
                                          {
                                             this.§9W§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                                          }
                                          addr262:
                                       }
                                       while(true)
                                       {
                                          this.§9W§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
                                          continue loop6;
                                          §§goto(addr262);
                                       }
                                       §§goto(addr221);
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr195);
                        }
                     }
                     §§goto(addr133);
                  }
                  break;
               }
               this.§9W§[int(_loc3_ * 6)] = _loc3_ * 4;
               §§goto(addr262);
            }
            return;
         }
         §§goto(addr45);
      }
      
      private function §6j§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§!!C§);
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
                           if(this.§+!>§)
                           {
                              while(true)
                              {
                                 this.§+!>§.dispose();
                                 addr103:
                                 while(true)
                                 {
                                 }
                              }
                              addr100:
                           }
                           while(true)
                           {
                              if(this.§[9§)
                              {
                                 while(true)
                                 {
                                    this.§[9§.dispose();
                                    addr88:
                                    addr108:
                                    while(!(_loc4_ && _loc2_))
                                    {
                                    }
                                    throw new §@+§();
                                    addr66:
                                    if(!(_loc3_ || this))
                                    {
                                       continue;
                                    }
                                    this.§+N§.dispose();
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          loop9:
                                          while(this.§',§)
                                          {
                                             if(!(_loc4_ && param1))
                                             {
                                                continue loop8;
                                             }
                                             addr40:
                                             if(!_loc3_)
                                             {
                                                break loop8;
                                             }
                                             if(_loc3_ || _loc3_)
                                             {
                                                addr49:
                                                if(_loc3_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!this.§+N§)
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         §§goto(addr66);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr88);
                                                      }
                                                   }
                                                   addr122:
                                                   §§push(false);
                                                }
                                                else
                                                {
                                                   §§goto(addr122);
                                                }
                                                §§goto(addr123);
                                             }
                                             continue loop0;
                                          }
                                          §§push(this.§"T§.§[O§);
                                          if(_loc3_)
                                          {
                                             §§push(int(§§pop() / 4));
                                          }
                                          var _loc2_:* = §§pop();
                                          if(_loc3_ || param1)
                                          {
                                             this.§+!>§ = param1.createVertexBuffer(_loc2_ * 4,§;Z§.§=!1§);
                                             this.§+!>§.uploadFromByteArray(this.§"T§.§3v§,0,0,_loc2_ * 4);
                                             this.§[9§ = param1.createVertexBuffer(_loc2_ * 4,§;Z§.§[3§);
                                             addr296:
                                             if(_loc3_ || _loc2_)
                                             {
                                                this.§[9§.uploadFromVector(this.§"T§.§@'§,0,_loc2_ * 4);
                                                addr238:
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   this.§+N§ = param1.createVertexBuffer(_loc2_ * 4,§;Z§.§"1§);
                                                   addr224:
                                                   if(!_loc4_)
                                                   {
                                                      this.§+N§.uploadFromVector(this.§"T§.§;!2§,0,_loc2_ * 4);
                                                      addr206:
                                                      if(!(_loc4_ && this))
                                                      {
                                                         this.§',§ = param1.createIndexBuffer(_loc2_ * 6);
                                                         addr192:
                                                         if(_loc3_)
                                                         {
                                                            this.§',§.uploadFromVector(this.§9W§,0,_loc2_ * 6);
                                                            addr181:
                                                            if(_loc3_)
                                                            {
                                                               this.§!!C§ = false;
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§goto(addr192);
                                                                  }
                                                                  return true;
                                                               }
                                                               §§goto(addr181);
                                                            }
                                                            §§goto(addr224);
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      §§goto(addr238);
                                                      addr226:
                                                   }
                                                }
                                                §§goto(addr296);
                                             }
                                             addr276:
                                             §§goto(addr276);
                                          }
                                          §§goto(addr226);
                                       }
                                       else
                                       {
                                          §§goto(addr100);
                                       }
                                    }
                                    §§goto(addr103);
                                 }
                              }
                              §§goto(addr53);
                           }
                        }
                     }
                     §§goto(addr108);
                  }
               }
               §§goto(addr122);
            }
            addr123:
            return §§pop();
         }
         §§goto(addr122);
      }
      
      private function §3+§(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§6j§(param1));
            loop0:
            while(!§§pop())
            {
               while(true)
               {
                  this.§+!>§.uploadFromByteArray(this.§"T§.§3v§,0,0,this.§]>§ * 4);
                  continue loop0;
               }
            }
            addr24:
            return;
            addr80:
         }
         while(true)
         {
            §§push(this.§3L§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     this.§[9§.uploadFromVector(this.§"T§.§@'§,0,this.§]>§ * 4);
                  }
                  while(_loc2_)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr81);
                     }
                  }
                  continue;
                  addr72:
               }
               while(true)
               {
                  this.§+N§.uploadFromVector(this.§"T§.§;!2§,0,this.§]>§ * 4);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr72);
               }
               §§goto(addr24);
            }
            else
            {
               §§goto(addr80);
            }
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            if(this.§]>§ == 0)
            {
               if(!(_loc9_ && param2))
               {
                  return;
               }
            }
         }
         §§push(this.§"T§.premultipliedAlpha);
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
         if(_loc8_ || param1)
         {
            if(this.§<X§)
            {
               addr54:
               §§push(§4=§(_loc5_,this.§<X§.mipMapping,this.§<X§.repeat,this.§6h§,this.§3L§));
               if(_loc8_)
               {
                  §§push(§§pop());
                  if(!_loc9_)
                  {
                     addr91:
                     §§push(§§pop());
                  }
                  else
                  {
                     addr83:
                     §§push(§§pop());
                     if(_loc8_ || param3)
                     {
                        §§goto(addr91);
                     }
                  }
                  var _loc6_:* = §§pop();
                  if(_loc8_ || param3)
                  {
                     §%L§.§ !;§(param1,_loc4_);
                     if(_loc8_ || param3)
                     {
                        this.§3+§(param1);
                        loop0:
                        while(true)
                        {
                           param1.setProgram(§0Z§.§4J§.§3!3§(_loc6_));
                           if(_loc8_ || param2)
                           {
                              param1.setVertexBufferAt(0,this.§+N§,§;Z§.§%E§,Context3DVertexBufferFormat.FLOAT_3);
                              loop1:
                              while(true)
                              {
                                 §§push(this.§<X§);
                                 if(_loc8_ || param1)
                                 {
                                    §§push(null);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc8_ || param2)
                                       {
                                          §§push(§§pop());
                                          if(!_loc9_)
                                          {
                                             if(!§§pop())
                                             {
                                                loop2:
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(_loc8_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§3L§);
                                                         if(_loc8_ || param1)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(!(_loc8_ || param2))
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         addr328:
                                                         while(true)
                                                         {
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  addr336:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 param1.setVertexBufferAt(2,null);
                                                                                 loop12:
                                                                                 while(!_loc9_)
                                                                                 {
                                                                                    if(_loc8_ || param1)
                                                                                    {
                                                                                       if(_loc8_ || param1)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             addr302:
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                param1.setVertexBufferAt(0,null);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                                if(_loc8_ || param2)
                                                                                                {
                                                                                                   break loop7;
                                                                                                }
                                                                                                addr463:
                                                                                                addr463:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr432:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.drawTriangles(this.§',§,0,this.§]>§ * 2);
                                                                                                      addr442:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§<X§);
                                                                                                         loop31:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr427:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  param1.setTextureAt(0,null);
                                                                                                                  addr431:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     param1.setVertexBufferAt(1,null);
                                                                                                                     addr420:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr364:
                                                                                                                              loop9:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§<X§);
                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                 {
                                                                                                                                    if(!(_loc9_ && param2))
                                                                                                                                    {
                                                                                                                                       §§push(null);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          if(_loc8_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   break loop9;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   break loop12;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr391:
                                                                                                                                          }
                                                                                                                                          §§goto(addr392);
                                                                                                                                       }
                                                                                                                                       addr382:
                                                                                                                                    }
                                                                                                                                    break loop1;
                                                                                                                                 }
                                                                                                                                 continue loop31;
                                                                                                                              }
                                                                                                                              continue loop7;
                                                                                                                           }
                                                                                                                           addr422:
                                                                                                                        }
                                                                                                                        addr468:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           param1.setTextureAt(0,this.§<X§.getBase(param1));
                                                                                                                           break loop19;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr427:
                                                                                                            }
                                                                                                            §§goto(addr364);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr475:
                                                                                             while(true)
                                                                                             {
                                                                                                param1.setVertexBufferAt(1,this.§+!>§,§;Z§.§`!5§,Context3DVertexBufferFormat.FLOAT_2);
                                                                                                §§goto(addr463);
                                                                                             }
                                                                                          }
                                                                                          addr363:
                                                                                       }
                                                                                       §§goto(addr431);
                                                                                    }
                                                                                    §§goto(addr420);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc9_ && param3))
                                                                                    {
                                                                                       if(_loc8_ || param2)
                                                                                       {
                                                                                          if(!(_loc9_ && param1))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          break loop0;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          addr465:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§<X§);
                                                                                             break loop1;
                                                                                          }
                                                                                       }
                                                                                       addr494:
                                                                                    }
                                                                                    addr450:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          break loop2;
                                                                                       }
                                                                                       §§goto(addr475);
                                                                                    }
                                                                                 }
                                                                                 continue loop5;
                                                                                 addr347:
                                                                              }
                                                                              §§goto(addr442);
                                                                           }
                                                                           §§goto(addr427);
                                                                        }
                                                                        §§goto(addr347);
                                                                     }
                                                                     §§goto(addr302);
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr392);
                                                         }
                                                      }
                                                      addr327:
                                                      addr132:
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr432);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc8_)
                                                   {
                                                      param1.setVertexBufferAt(2,this.§[9§,§;Z§.§>`§,Context3DVertexBufferFormat.FLOAT_4);
                                                      if(_loc8_ || param2)
                                                      {
                                                         addr101:
                                                         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
                                                         if(_loc9_ && this)
                                                         {
                                                            break;
                                                         }
                                                         continue loop1;
                                                      }
                                                      §§goto(addr363);
                                                   }
                                                   §§goto(addr468);
                                                }
                                                §§goto(addr101);
                                             }
                                             §§goto(addr427);
                                          }
                                          §§goto(addr391);
                                       }
                                       §§goto(addr327);
                                    }
                                    §§goto(addr382);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    param1.setTextureAt(0,null);
                                    §§goto(addr450);
                                 }
                                 §§goto(addr468);
                              }
                           }
                           break;
                           if(_loc9_ && this)
                           {
                              continue;
                           }
                           if(false)
                           {
                              §§goto(addr132);
                           }
                           §§push(_loc5_);
                           if(!(_loc9_ && param2))
                           {
                              if(§§pop())
                              {
                                 if(_loc8_)
                                 {
                                    §5l§[0] = §5l§[1] = §5l§[2] = !!_loc4_ ? Number(param3) : Number(1);
                                    if(_loc8_)
                                    {
                                       §5l§[3] = param3;
                                       break;
                                    }
                                    §§goto(addr422);
                                 }
                                 §§goto(addr427);
                              }
                              §§goto(addr465);
                           }
                           §§goto(addr336);
                        }
                        while(true)
                        {
                           param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§5l§,1);
                           §§goto(addr494);
                        }
                     }
                     §§goto(addr442);
                  }
                  §§goto(addr463);
               }
               §§goto(addr83);
            }
            else
            {
               §§push(§82§(_loc5_));
               if(_loc8_ || param2)
               {
                  §§goto(addr83);
               }
            }
            §§goto(addr91);
         }
         §§goto(addr54);
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§]>§ = 0;
            while(true)
            {
               this.§3L§ = false;
               loop1:
               while(!(_loc2_ && this))
               {
                  this.§<X§ = null;
                  while(true)
                  {
                     this.§6h§ = null;
                     if(_loc1_)
                     {
                        if(_loc1_)
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
         §§goto(addr51);
      }
      
      public function §!"§(param1:§?!N§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_)
         {
            §§push(this.§]>§);
            if(_loc9_)
            {
               §§push(1);
               loop0:
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc9_)
                  {
                     if(§§pop() > this.§"T§.§[O§ / 4)
                     {
                        loop1:
                        while(true)
                        {
                           this.§5!>§();
                           addr120:
                           while(true)
                           {
                           }
                           addr62:
                           addr49:
                           addr101:
                           while(true)
                           {
                              if(_loc10_ && param1)
                              {
                                 continue loop1;
                              }
                              §§push(this.§"T§);
                              if(!(_loc10_ && param1))
                              {
                                 if(param3)
                                 {
                                    addr31:
                                    §§push(param3.premultipliedAlpha);
                                    if(!_loc10_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc10_)
                                       {
                                       }
                                       addr40:
                                       §§pop().setPremultipliedAlpha(§§pop(),false);
                                       if(_loc9_ || param2)
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
                                 §§goto(addr40);
                              }
                              §§goto(addr31);
                           }
                           if(_loc9_ || param1)
                           {
                              addr56:
                              if(false)
                              {
                                 while(true)
                                 {
                                    this.§6h§ = param4;
                                    §§goto(addr62);
                                    §§goto(addr56);
                                 }
                                 addr58:
                              }
                              addr138:
                              §§push(this.§]>§);
                              if(!_loc10_)
                              {
                                 addr136:
                                 §§push(§§pop() * 4);
                                 break loop0;
                              }
                              var _loc6_:* = §§pop();
                              if(!(_loc10_ && param3))
                              {
                                 §§push(param2);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() * param1.alpha);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop8:
                                       while(true)
                                       {
                                          param2 = §§pop();
                                          if(_loc9_ || this)
                                          {
                                             param1.copyVertexDataTo(this.§"T§,_loc6_,param2,param5);
                                             loop9:
                                             while(true)
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   if(!(_loc9_ || param1))
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc9_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(_loc10_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§push(§§pop() == 1);
                                                   if(_loc9_ || this)
                                                   {
                                                      §§push(!§§pop());
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop12:
                                                            while(§§pop())
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     this.§3L§ = true;
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break loop12;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        addr183:
                                                                     }
                                                                     §§goto(addr272);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(param1.useColor);
                                                                        if(_loc10_ && param2)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           break;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr272);
                                                            }
                                                            var _loc7_:*;
                                                            §§push((_loc7_ = this).§]>§);
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               §§push(§§pop() + 1);
                                                            }
                                                            var _loc8_:* = §§pop();
                                                            if(!(_loc10_ && this))
                                                            {
                                                               _loc7_.§]>§ = _loc8_;
                                                            }
                                                            addr272:
                                                            return;
                                                            addr167:
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr210);
                                                }
                                                continue loop8;
                                             }
                                          }
                                          §§goto(addr272);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr183);
                           }
                           while(!_loc10_)
                           {
                              §§goto(addr58);
                              §§goto(addr49);
                           }
                           §§goto(addr120);
                        }
                     }
                     while(true)
                     {
                        §§push(this.§]>§);
                        if(!(_loc10_ && param1))
                        {
                           §§push(0);
                           if(_loc9_)
                           {
                              continue loop0;
                           }
                           §§goto(addr136);
                        }
                        break;
                        §§goto(addr120);
                     }
                     §§goto(addr138);
                  }
                  break;
               }
               §§push(int(§§pop()));
            }
            §§goto(addr138);
         }
         §§goto(addr120);
      }
      
      public function §56§(param1:§?!N§, param2:Texture, param3:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            §§push(this.§<X§);
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
                                 addr407:
                                 while(true)
                                 {
                                    §§push(param2 == null);
                                    addr359:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                    }
                                 }
                              }
                              addr406:
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
                                       §§push(this.§<X§);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       if(_loc5_)
                                       {
                                          §§push(null);
                                          if(_loc4_ && param1)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() == §§pop());
                                          loop11:
                                          for(; !(_loc4_ && param3); if(!(_loc5_ || param2))
                                          {
                                             continue;
                                          },if(_loc5_ || param1)
                                          {
                                             if(_loc5_)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr305);
                                          },§§goto(addr281))
                                          {
                                             §§push(§§pop());
                                             loop12:
                                             while(_loc5_ || param1)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop14:
                                                         while(!(_loc4_ && param2))
                                                         {
                                                            §§push(param2 == null);
                                                            while(true)
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§]>§);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc5_ || param2)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(_loc5_ || param2)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       loop18:
                                                                                       for(; _loc5_; if(!(_loc4_ && param1))
                                                                                       {
                                                                                          if(!(_loc4_ && param2))
                                                                                          {
                                                                                             if(_loc5_ || param2)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(!(_loc4_ && param1))
                                                                                                   {
                                                                                                      §§push(!§§pop());
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   §§goto(addr351);
                                                                                                }
                                                                                                addr283:
                                                                                                §§pop();
                                                                                                §§goto(addr284);
                                                                                             }
                                                                                             §§goto(addr253);
                                                                                          }
                                                                                          continue loop11;
                                                                                       })
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr96:
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                   for(; !(_loc4_ && this); if(!(_loc4_ && param2))
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   })
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      §§pop();
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               §§push(this.§3L§);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr325:
                                                                                                            }
                                                                                                            continue loop17;
                                                                                                            break loop18;
                                                                                                         }
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         break loop16;
                                                                                                      }
                                                                                                      if(_loc5_ || param2)
                                                                                                      {
                                                                                                         if(!(_loc4_ && param3))
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(this.§3L§);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            addr362:
                                                                                                            addr364:
                                                                                                            §§push(this.§<X§.root == param2.root);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               if(_loc5_ || param2)
                                                                                                               {
                                                                                                                  addr378:
                                                                                                                  §§push(!§§pop());
                                                                                                                  if(!(_loc4_ && param1))
                                                                                                                  {
                                                                                                                     addr386:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr352:
                                                                                                                        addr351:
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           break loop11;
                                                                                                                        }
                                                                                                                        addr314:
                                                                                                                        §§push(§§pop());
                                                                                                                        break loop19;
                                                                                                                        addr350:
                                                                                                                     }
                                                                                                                     §§pop();
                                                                                                                     break loop14;
                                                                                                                  }
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            §§goto(addr378);
                                                                                                         }
                                                                                                         addr284:
                                                                                                         if(!(_loc5_ || param3))
                                                                                                         {
                                                                                                            §§push(this.§6h§ == param3);
                                                                                                            break;
                                                                                                            addr354:
                                                                                                         }
                                                                                                         §§push(this.§]>§);
                                                                                                         break loop17;
                                                                                                      }
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      §§goto(addr407);
                                                                                                   }
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      addr305:
                                                                                                      §§push(!§§pop());
                                                                                                      if(_loc5_ || param1)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§goto(addr314);
                                                                                                         }
                                                                                                         §§goto(addr359);
                                                                                                      }
                                                                                                      addr349:
                                                                                                      §§goto(addr350);
                                                                                                      §§push(!§§pop());
                                                                                                   }
                                                                                                   §§push(param2.repeat);
                                                                                                   if(!(_loc4_ && param2))
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      §§goto(addr349);
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                   }
                                                                                                   §§goto(addr386);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§push(param1.useColor);
                                                                                             addr44:
                                                                                             continue loop12;
                                                                                             if(_loc4_ && this)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                continue loop13;
                                                                                             }
                                                                                             addr264:
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(_loc5_ || param1)
                                                                                             {
                                                                                                if(!(_loc4_ && param3))
                                                                                                {
                                                                                                   addr281:
                                                                                                   §§push(!§§pop());
                                                                                                   §§push(!§§pop());
                                                                                                   break loop12;
                                                                                                }
                                                                                                §§goto(addr406);
                                                                                             }
                                                                                             §§goto(addr281);
                                                                                          }
                                                                                          if(_loc5_ || param2)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                addr324:
                                                                                                §§pop();
                                                                                                §§goto(addr325);
                                                                                             }
                                                                                             §§goto(addr281);
                                                                                          }
                                                                                          §§goto(addr352);
                                                                                       }
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§goto(addr264);
                                                                                          §§push(param1.useColor);
                                                                                       }
                                                                                       §§goto(addr324);
                                                                                       addr126:
                                                                                    }
                                                                                    §§goto(addr378);
                                                                                 }
                                                                                 §§goto(addr386);
                                                                              }
                                                                              §§goto(addr126);
                                                                           }
                                                                           addr251:
                                                                           addr253:
                                                                           return §§pop();
                                                                           §§push(§§pop() == §§pop());
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr251);
                                                                     §§push(8192);
                                                                  }
                                                                  break;
                                                                  if(_loc4_ && this)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr44);
                                                               }
                                                               continue loop11;
                                                            }
                                                         }
                                                         break loop10;
                                                      }
                                                   }
                                                   §§goto(addr169);
                                                }
                                                §§goto(addr339);
                                             }
                                             if(!§§pop())
                                             {
                                                §§goto(addr283);
                                             }
                                             §§goto(addr251);
                                          }
                                          §§pop();
                                          §§goto(addr354);
                                       }
                                       §§goto(addr364);
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr362);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr284);
      }
   }
}
