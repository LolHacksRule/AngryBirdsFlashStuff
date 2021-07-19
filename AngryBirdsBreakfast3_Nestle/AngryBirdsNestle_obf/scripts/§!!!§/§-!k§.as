package §!!!§
{
   import §3!J§.§4!2§;
   import §3!J§.§8!l§;
   import §3!J§.DisplayObject;
   import §3!J§.DisplayObjectContainer;
   import §90§.§"!z§;
   import §=!4§.Texture;
   import §=!4§.§`'§;
   import §^!^§.§#!_§;
   import §^!w§.§2s§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §-!k§
   {
      
      private static var §4e§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §4e§ = new <Number>[1,1,1,1];
         }
      }
      
      private var § !j§:int;
      
      private var §4>§:Texture;
      
      private var §?!z§:String;
      
      private var §2!^§:§#!_§;
      
      private var §3%§:VertexBuffer3D;
      
      private var §17§:VertexBuffer3D;
      
      private var §>7§:VertexBuffer3D;
      
      private var §4!;§:Vector.<uint>;
      
      private var §@X§:IndexBuffer3D;
      
      private var §;J§:Boolean = false;
      
      private var §?!5§:Boolean = false;
      
      public function §-!k§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               §"!'§();
               while(true)
               {
                  this.§2!^§ = new §#!_§(0,true);
                  while(!_loc1_)
                  {
                     this.§4!;§ = new Vector.<uint>(0);
                     continue loop0;
                     addr41:
                     if(_loc2_ || _loc1_)
                     {
                        loop5:
                        while(true)
                        {
                           this.§>!+§();
                           if(!(_loc1_ && this))
                           {
                              break;
                           }
                           addr39:
                           while(!_loc1_)
                           {
                              §§goto(addr41);
                              continue loop5;
                           }
                           continue loop0;
                        }
                        return;
                        addr58:
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public static function §=!A§(param1:DisplayObjectContainer, param2:Vector.<§-!k§>) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §[!§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §[!§(param1:DisplayObject, param2:Vector.<§-!k§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§8!l§ = null;
         var _loc13_:§4!2§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§-!k§ = null;
         var _loc7_:* = false;
         if(_loc17_ || param1)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               if(§§pop() == -1)
               {
                  if(_loc17_ || param1)
                  {
                     §§push(true);
                     if(_loc17_ || §-!k§)
                     {
                        _loc7_ = §§pop();
                        addr164:
                        param3 = 0;
                        §§goto(addr189);
                     }
                     §§goto(addr193);
                  }
                  addr189:
                  if(_loc17_)
                  {
                     if(_loc18_)
                     {
                        §§goto(addr189);
                     }
                     if(param2.length == 0)
                     {
                        addr157:
                        param2.push(new §-!k§());
                        addr161:
                     }
                     else
                     {
                        param2[0].reset();
                        addr151:
                     }
                     addr193:
                     if(param1 is DisplayObjectContainer)
                     {
                        §§goto(addr194);
                     }
                     else
                     {
                        if(!(param1 is §8!l§))
                        {
                           throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                        }
                        if(_loc17_)
                        {
                           _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §8!l§) as §4!2§) ? _loc13_.texture : null;
                           if(_loc17_ || §-!k§)
                           {
                              if(_loc13_)
                              {
                                 if(_loc17_)
                                 {
                                    addr368:
                                    §§push(_loc13_.smoothing);
                                    if(_loc17_)
                                    {
                                       §§push(§§pop());
                                       if(_loc17_)
                                       {
                                          addr375:
                                       }
                                       addr386:
                                       _loc15_ = §§pop();
                                       addr387:
                                       if((_loc16_ = param2[param3]).§-!F§(_loc12_,_loc14_,_loc15_,param5))
                                       {
                                          if(_loc17_)
                                          {
                                             param3++;
                                             if(_loc17_ || param3)
                                             {
                                                if(param2.length <= param3)
                                                {
                                                   if(!_loc18_)
                                                   {
                                                      param2.push(new §-!k§());
                                                      if(!_loc17_)
                                                      {
                                                      }
                                                      addr435:
                                                      §§goto(addr444);
                                                   }
                                                }
                                                (_loc16_ = param2[param3]).reset();
                                                addr428:
                                                _loc16_.§ !z§(_loc12_,param5,_loc14_,_loc15_,param4);
                                             }
                                          }
                                          §§goto(addr435);
                                       }
                                       §§goto(addr428);
                                       addr385:
                                    }
                                    §§goto(addr375);
                                 }
                                 §§goto(addr387);
                              }
                              else
                              {
                                 §§push(null);
                                 if(_loc17_ || param3)
                                 {
                                    §§goto(addr385);
                                 }
                              }
                              §§goto(addr386);
                           }
                           §§goto(addr368);
                        }
                     }
                     §§goto(addr444);
                     addr103:
                  }
                  addr194:
                  §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                  if(_loc17_)
                  {
                     §§push(int(§§pop()));
                  }
                  _loc9_ = §§pop();
                  _loc10_ = new Matrix3D();
                  if(_loc17_)
                  {
                     §§push(param5);
                     if(_loc17_)
                     {
                        §§push(param1.alpha);
                        if(!_loc18_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc18_ && param2))
                           {
                              addr226:
                              §§push(Number(§§pop()));
                              if(!(_loc18_ && param2))
                              {
                                 addr234:
                                 §§push(§§pop());
                                 if(_loc17_)
                                 {
                                    addr237:
                                    param5 = §§pop();
                                    addr238:
                                    §§push(0);
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    if(!_loc18_)
                                    {
                                       _loc6_ = 0;
                                    }
                                    §§goto(addr244);
                                 }
                                 §§goto(addr330);
                              }
                              §§goto(addr238);
                           }
                           §§goto(addr234);
                        }
                        §§goto(addr237);
                     }
                     §§goto(addr226);
                  }
                  addr244:
                  loop4:
                  while(true)
                  {
                     §§push(_loc6_);
                     if(!(_loc18_ && param3))
                     {
                        §§push(_loc9_);
                        if(!(_loc18_ && param3))
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc17_ || param3)
                              {
                                 addr444:
                                 §§push(_loc7_);
                                 if(_loc17_ || param3)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc17_ || param1)
                                       {
                                          §§push(int(param2.length - 1));
                                          if(!(_loc18_ && param2))
                                          {
                                             _loc6_ = §§pop();
                                             if(_loc17_ || param2)
                                             {
                                                addr479:
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc17_ || param1)
                                                   {
                                                      if(_loc17_ || param1)
                                                      {
                                                         addr497:
                                                         if(§§pop() <= param3)
                                                         {
                                                            if(_loc17_ || param1)
                                                            {
                                                               if(!(_loc18_ && param2))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(param3);
                                                                     addr513:
                                                                     while(true)
                                                                     {
                                                                        if(_loc17_)
                                                                        {
                                                                           break loop4;
                                                                        }
                                                                        addr521:
                                                                        while(true)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           addr522:
                                                                           addr547:
                                                                           while(_loc17_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(delete param2[_loc6_]);
                                                                              addr539:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr512:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  addr520:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr521);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr522);
                                                         }
                                                         else
                                                         {
                                                            param2[_loc6_].dispose();
                                                            §§goto(addr547);
                                                         }
                                                      }
                                                      §§goto(addr520);
                                                   }
                                                   §§goto(addr513);
                                                }
                                                addr479:
                                             }
                                             §§goto(addr547);
                                          }
                                          §§goto(addr520);
                                       }
                                       §§goto(addr479);
                                    }
                                    §§goto(addr512);
                                 }
                                 §§goto(addr539);
                                 addr330:
                              }
                              §§goto(addr479);
                           }
                           else
                           {
                              _loc11_ = _loc8_.getChildAt(_loc6_);
                              if(_loc17_)
                              {
                                 _loc10_.copyFrom(param4);
                              }
                              loop5:
                              while(true)
                              {
                                 _loc11_.§3'§(_loc10_);
                                 while(true)
                                 {
                                    addr277:
                                    while(true)
                                    {
                                       §§push(§[!§(_loc11_,param2,param3,_loc10_,param5));
                                       if(!_loc18_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       param3 = §§pop();
                                       continue loop5;
                                    }
                                    continue loop4;
                                    addr258:
                                    if(_loc17_ || param3)
                                    {
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr497);
                     }
                     break;
                  }
                  return §§pop();
               }
               §§push(param1.alpha == 0);
               if(_loc17_ || param2)
               {
                  if(!§§pop())
                  {
                     if(_loc17_ || param3)
                     {
                        addr126:
                        §§pop();
                        loop3:
                        while(true)
                        {
                           if(!_loc18_)
                           {
                              if(_loc17_ || param3)
                              {
                                 if(_loc17_ || param2)
                                 {
                                    §§push(param1.visible);
                                    if(!(_loc18_ && param2))
                                    {
                                       §§push(!§§pop());
                                       if(_loc17_)
                                       {
                                          while(true)
                                          {
                                          }
                                          addr67:
                                       }
                                       §§goto(addr193);
                                    }
                                    while(§§pop())
                                    {
                                       if(!_loc17_)
                                       {
                                          break loop0;
                                       }
                                       if(_loc18_ && param2)
                                       {
                                          continue loop3;
                                       }
                                       §§push(param3);
                                       if(!(_loc18_ && param1))
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr193);
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr151);
                        }
                     }
                     §§goto(addr193);
                  }
                  §§goto(addr67);
               }
               §§goto(addr126);
               §§goto(addr151);
            }
         }
         if(false)
         {
            §§goto(addr103);
         }
         §§goto(addr193);
      }
      
      private static function §"!'§() : void
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
         var _loc1_:§6!l§ = §6!l§.§+J§;
         if(!(_loc23_ && _loc2_))
         {
            if(_loc1_.§?R§(§<-§(true)))
            {
               if(!_loc23_)
               {
                  return;
               }
            }
         }
         var _loc2_:§2s§ = new §2s§();
         var _loc3_:§2s§ = new §2s§();
         var _loc13_:int = 0;
         var _loc14_:* = [true,false];
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
                  addr158:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr159:
                     while(_loc24_ || §-!k§)
                     {
                        continue loop1;
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      public static function §<-§(param1:Boolean) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            return !!param1 ? "QB_q*" : "QB_q\'";
         }
         §§goto(addr30);
      }
      
      public static function §20§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            var _loc6_:* = !!param1 ? "QB_i*" : "QB_i\'";
            if(_loc8_ || param3)
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
                        addr172:
                        while(true)
                        {
                           §§push(§§pop() + "N");
                           addr174:
                           while(true)
                           {
                              _loc6_ = §§pop();
                              addr175:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr171:
                  }
                  while(true)
                  {
                     §§push(param3);
                     continue loop0;
                  }
               }
            }
            §§goto(addr113);
         }
         §§goto(addr21);
      }
      
      public function get §0=§() : int
      {
         return this.§ !j§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§3%§)
            {
               loop0:
               while(true)
               {
                  this.§3%§.dispose();
                  addr102:
                  while(true)
                  {
                  }
                  loop4:
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        if(this.§>7§)
                        {
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    break loop4;
                                 }
                                 this.§>7§.dispose();
                                 while(_loc1_ || this)
                                 {
                                    while(true)
                                    {
                                       §§goto(addr28);
                                    }
                                 }
                                 continue loop4;
                              }
                              addr80:
                              while(true)
                              {
                                 this.§17§.dispose();
                                 continue loop4;
                              }
                           }
                        }
                        addr28:
                        while(this.§@X§)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           addr56:
                           if(_loc1_)
                           {
                              continue loop6;
                           }
                           continue loop7;
                        }
                        return;
                     }
                  }
                  §§goto(addr102);
               }
            }
            while(true)
            {
               if(this.§17§)
               {
                  §§goto(addr80);
               }
               §§goto(addr57);
               §§goto(addr102);
            }
         }
         §§goto(addr75);
      }
      
      private function §>!+§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§2!^§.§-!n§);
         if(_loc4_)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc1_);
            if(!(_loc5_ && _loc1_))
            {
               §§push(0);
               if(!(_loc5_ && _loc2_))
               {
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr45);
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(_loc4_ || _loc3_)
                     {
                        §§goto(addr57);
                     }
                  }
                  §§goto(addr57);
                  §§push(int(§§pop()));
               }
               §§goto(addr58);
            }
            §§goto(addr57);
         }
         addr45:
         §§push(16);
         if(_loc5_)
         {
            addr57:
            addr58:
            §§push(int(§§pop() * 2));
            if(_loc5_)
            {
            }
            §§goto(addr63);
         }
         addr63:
         var _loc2_:* = §§pop();
         if(!_loc5_)
         {
            this.§2!^§.§-!n§ = _loc2_ * 4;
         }
         §§push(_loc1_);
         if(!(_loc5_ && _loc1_))
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
                  if(_loc5_ && _loc1_)
                  {
                     continue;
                  }
                  if(_loc4_ || this)
                  {
                     if(!(_loc5_ && _loc1_))
                     {
                        this.§?!5§ = true;
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           this.§4!;§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                           while(true)
                           {
                              if(_loc4_ || _loc1_)
                              {
                                 if(!(_loc5_ && _loc1_))
                                 {
                                    break;
                                 }
                                 addr262:
                                 while(true)
                                 {
                                    this.§4!;§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                                    addr238:
                                    while(true)
                                    {
                                       this.§4!;§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
                                       addr221:
                                       while(true)
                                       {
                                          this.§4!;§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr238);
                              }
                           }
                           _loc3_++;
                           continue loop0;
                           addr152:
                        }
                        §§goto(addr221);
                     }
                  }
                  §§goto(addr152);
               }
               break;
            }
            this.§4!;§[int(_loc3_ * 6)] = _loc3_ * 4;
            §§goto(addr262);
         }
      }
      
      private function §#!s§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§?!5§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  loop0:
                  do
                  {
                     if(param1 == null)
                     {
                        continue;
                     }
                     loop1:
                     while(true)
                     {
                        if(this.§3%§)
                        {
                           while(true)
                           {
                              this.§3%§.dispose();
                              addr106:
                              while(true)
                              {
                              }
                           }
                           addr103:
                        }
                        while(true)
                        {
                           if(this.§17§)
                           {
                              loop5:
                              while(!(_loc4_ && this))
                              {
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 this.§17§.dispose();
                                 loop6:
                                 while(_loc3_)
                                 {
                                    while(true)
                                    {
                                       addr54:
                                       loop7:
                                       while(true)
                                       {
                                          if(this.§>7§)
                                          {
                                             while(_loc3_ || _loc3_)
                                             {
                                                this.§>7§.dispose();
                                                while(_loc3_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(!(_loc3_ || _loc3_))
                                                   {
                                                      addr128:
                                                      return false;
                                                      addr127:
                                                   }
                                                   if(_loc4_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   if(false)
                                                   {
                                                      continue loop7;
                                                   }
                                                   addr130:
                                                   §§push(this.§2!^§.§-!n§);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(int(§§pop() / 4));
                                                   }
                                                   var _loc2_:* = §§pop();
                                                   if(_loc3_)
                                                   {
                                                      this.§3%§ = param1.createVertexBuffer(_loc2_ * 4,§#!_§.each);
                                                      this.§3%§.uploadFromByteArray(this.§2!^§.§^%§,0,0,_loc2_ * 4);
                                                      this.§17§ = param1.createVertexBuffer(_loc2_ * 4,§#!_§.§1+§);
                                                      this.§17§.uploadFromVector(this.§2!^§.§?c§,0,_loc2_ * 4);
                                                      this.§>7§ = param1.createVertexBuffer(_loc2_ * 4,§#!_§.§+!;§);
                                                      addr234:
                                                      addr268:
                                                      addr301:
                                                      addr281:
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               this.§>7§.uploadFromVector(this.§2!^§.§%!0§,0,_loc2_ * 4);
                                                               addr221:
                                                               if(_loc3_)
                                                               {
                                                                  this.§@X§ = param1.createIndexBuffer(_loc2_ * 6);
                                                                  addr195:
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        this.§@X§.uploadFromVector(this.§4!;§,0,_loc2_ * 6);
                                                                        addr179:
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           this.§?!5§ = false;
                                                                           if(_loc4_ && _loc2_)
                                                                           {
                                                                              §§goto(addr179);
                                                                           }
                                                                           return true;
                                                                        }
                                                                        §§goto(addr195);
                                                                        addr209:
                                                                     }
                                                                     §§goto(addr234);
                                                                  }
                                                                  §§goto(addr221);
                                                               }
                                                               §§goto(addr268);
                                                            }
                                                            §§goto(addr301);
                                                         }
                                                         §§goto(addr281);
                                                      }
                                                      addr257:
                                                      §§goto(addr257);
                                                   }
                                                   §§goto(addr209);
                                                }
                                                continue loop6;
                                             }
                                             continue loop0;
                                             addr58:
                                          }
                                          while(this.§@X§)
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   this.§@X§.dispose();
                                                   §§goto(addr45);
                                                }
                                                else
                                                {
                                                   §§goto(addr58);
                                                }
                                             }
                                             §§goto(addr45);
                                          }
                                          §§goto(addr130);
                                       }
                                    }
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr54);
                        }
                     }
                  }
                  while(!(_loc3_ || _loc2_));
                  
                  throw new §"!z§();
               }
               §§goto(addr127);
            }
            §§goto(addr128);
         }
         §§goto(addr98);
      }
      
      private function §^!S§(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§#!s§(param1));
            loop0:
            while(!§§pop())
            {
               if(!_loc3_)
               {
                  this.§3%§.uploadFromByteArray(this.§2!^§.§^%§,0,0,this.§ !j§ * 4);
               }
               loop1:
               while(true)
               {
                  §§push(this.§;J§);
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           this.§>7§.uploadFromVector(this.§2!^§.§%!0§,0,this.§ !j§ * 4);
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                     }
                     else
                     {
                        addr28:
                     }
                     if(!(_loc3_ && this))
                     {
                        this.§17§.uploadFromVector(this.§2!^§.§?c§,0,this.§ !j§ * 4);
                     }
                     continue;
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr113);
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param3)
         {
            if(this.§ !j§ == 0)
            {
               if(_loc9_ || param1)
               {
                  §§goto(addr35);
               }
            }
            §§push(this.§2!^§.premultipliedAlpha);
            if(_loc9_ || param2)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param3 == 1);
            if(!_loc8_)
            {
               §§push(!§§pop());
            }
            var _loc5_:* = §§pop();
            if(!(_loc8_ && this))
            {
               if(this.§4>§)
               {
                  addr65:
                  §§push(§20§(_loc5_,this.§4>§.mipMapping,this.§4>§.repeat,this.§?!z§,this.§;J§));
                  if(_loc9_ || param1)
                  {
                     §§push(§§pop());
                     if(_loc8_ && param3)
                     {
                        addr104:
                        §§push(§§pop());
                        if(_loc9_ || param2)
                        {
                           addr113:
                           var _loc6_:String = §§pop();
                           if(_loc9_ || param3)
                           {
                              §<@§.§03§(param1,_loc4_);
                              if(!_loc8_)
                              {
                                 this.§^!S§(param1);
                                 if(_loc9_ || this)
                                 {
                                    param1.setProgram(§6!l§.§+J§.§=H§(_loc6_));
                                    if(_loc9_ || param2)
                                    {
                                       param1.setVertexBufferAt(0,this.§>7§,§#!_§.§<U§,Context3DVertexBufferFormat.FLOAT_3);
                                       if(_loc9_)
                                       {
                                          §§push(this.§4>§);
                                          if(!_loc8_)
                                          {
                                             §§push(null);
                                             if(_loc9_ || param3)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!_loc8_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc8_ && param2))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            if(_loc9_)
                                                            {
                                                               addr203:
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  §§push(this.§;J§);
                                                                  if(_loc9_)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc9_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc8_ && param3))
                                                                                 {
                                                                                    param1.setVertexBufferAt(2,this.§17§,§#!_§.§>!1§,Context3DVertexBufferFormat.FLOAT_4);
                                                                                    if(!(_loc8_ && param3))
                                                                                    {
                                                                                       addr122:
                                                                                       param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
                                                                                       if(!(_loc8_ && param3))
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          §§push(_loc5_);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             addr264:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc8_ && param3))
                                                                                                {
                                                                                                   §4e§[0] = §4e§[1] = §4e§[2] = !!_loc4_ ? Number(param3) : Number(1);
                                                                                                   addr272:
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   loop16:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§4e§,1);
                                                                                                      addr478:
                                                                                                      addr495:
                                                                                                      while(!(_loc9_ || param3))
                                                                                                      {
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         break loop1;
                                                                                                      }
                                                                                                   }
                                                                                                   addr500:
                                                                                                }
                                                                                                loop11:
                                                                                                while(true)
                                                                                                {
                                                                                                   param1.setVertexBufferAt(1,null);
                                                                                                   loop12:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc8_ && param2))
                                                                                                      {
                                                                                                         addr416:
                                                                                                         loop8:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§4>§);
                                                                                                            if(!(_loc8_ && this))
                                                                                                            {
                                                                                                               §§push(null);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  if(_loc9_ || param2)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           addr379:
                                                                                                                           loop18:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc8_ && param3)
                                                                                                                                 {
                                                                                                                                    continue loop12;
                                                                                                                                 }
                                                                                                                                 if(_loc8_ && this)
                                                                                                                                 {
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                                 if(_loc9_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§;J§);
                                                                                                                                          if(_loc9_ || param2)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                          }
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             continue loop18;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr343);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr403:
                                                                                                                                    }
                                                                                                                                    §§goto(addr462);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§4>§);
                                                                                                                                    break loop8;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr379:
                                                                                                                        }
                                                                                                                        §§goto(addr342);
                                                                                                                     }
                                                                                                                     addr378:
                                                                                                                  }
                                                                                                                  §§goto(addr379);
                                                                                                               }
                                                                                                               addr369:
                                                                                                            }
                                                                                                            break;
                                                                                                            §§goto(addr416);
                                                                                                         }
                                                                                                         loop7:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§goto(addr423);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr461:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     break loop7;
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr446:
                                                                                                                  }
                                                                                                                  addr446:
                                                                                                                  param1.setTextureAt(0,null);
                                                                                                                  loop24:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr428:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        param1.drawTriangles(this.§@X§,0,this.§ !j§ * 2);
                                                                                                                        §§goto(addr438);
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr461:
                                                                                                            }
                                                                                                         }
                                                                                                         addr358:
                                                                                                         §§goto(addr462);
                                                                                                      }
                                                                                                      §§goto(addr446);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             break loop1;
                                                                                          }
                                                                                          §§goto(addr379);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr272);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr122);
                                                                           }
                                                                           §4e§[3] = param3;
                                                                           §§goto(addr500);
                                                                           addr149:
                                                                        }
                                                                        addr343:
                                                                     }
                                                                     continue loop21;
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc9_ || param3))
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              if(!_loc8_)
                                                                              {
                                                                                 param1.setVertexBufferAt(2,null);
                                                                                 loop28:
                                                                                 while(true)
                                                                                 {
                                                                                    addr303:
                                                                                    while(true)
                                                                                    {
                                                                                       param1.setVertexBufferAt(0,null);
                                                                                       if(!(_loc9_ || param2))
                                                                                       {
                                                                                          continue loop28;
                                                                                       }
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                break loop2;
                                                                                             }
                                                                                             §§goto(addr478);
                                                                                          }
                                                                                          break loop21;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          param1.setTextureAt(0,null);
                                                                                          continue loop11;
                                                                                       }
                                                                                       continue loop28;
                                                                                    }
                                                                                 }
                                                                                 addr357:
                                                                              }
                                                                              loop4:
                                                                              while(true)
                                                                              {
                                                                                 param1.setVertexBufferAt(1,this.§3%§,§#!_§.§[!^§,Context3DVertexBufferFormat.FLOAT_2);
                                                                                 break loop21;
                                                                                 addr462:
                                                                                 while(true)
                                                                                 {
                                                                                    param1.setTextureAt(0,this.§4>§.getBase(param1));
                                                                                    continue loop4;
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        §§goto(addr303);
                                                                        continue loop20;
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr264);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr461);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr428);
                                                         }
                                                         addr200:
                                                      }
                                                      §§goto(addr149);
                                                   }
                                                   §§goto(addr378);
                                                }
                                                §§goto(addr200);
                                             }
                                             §§goto(addr369);
                                          }
                                          §§goto(addr461);
                                       }
                                       §§goto(addr446);
                                    }
                                    §§goto(addr495);
                                 }
                                 §§goto(addr423);
                              }
                              §§goto(addr403);
                           }
                           §§goto(addr357);
                        }
                     }
                  }
                  §§goto(addr113);
               }
               else
               {
                  §§push(§<-§(_loc5_));
                  if(_loc9_ || this)
                  {
                     §§goto(addr104);
                  }
               }
               §§goto(addr113);
            }
            §§goto(addr65);
         }
         addr35:
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§ !j§ = 0;
            loop0:
            while(true)
            {
               this.§;J§ = false;
               while(true)
               {
                  this.§4>§ = null;
                  addr49:
                  while(_loc1_)
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§?!z§ = null;
            if(!_loc2_)
            {
               break;
            }
            §§goto(addr49);
         }
      }
      
      public function § !z§(param1:§8!l§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && param1))
         {
            §§push(param2);
            while(true)
            {
               §§push(§§pop() * param1.alpha);
               addr236:
               while(true)
               {
                  §§push(Number(§§pop()));
                  addr237:
                  while(true)
                  {
                     param2 = §§pop();
                  }
               }
               addr190:
               if(_loc10_ || param3)
               {
                  §§push(this.§2!^§.§-!n§);
                  loop9:
                  while(true)
                  {
                     §§push(§§pop() / 4);
                     if(!_loc9_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!(_loc9_ && param3))
                           {
                              addr212:
                              if(_loc10_ || param2)
                              {
                                 this.§>!+§();
                                 loop10:
                                 while(true)
                                 {
                                    addr149:
                                    loop11:
                                    while(true)
                                    {
                                       §§push(this.§ !j§);
                                       if(!(_loc9_ && param1))
                                       {
                                          §§push(0);
                                          if(!_loc9_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   this.§4>§ = param3;
                                                   loop13:
                                                   while(!(_loc9_ && param1))
                                                   {
                                                      this.§?!z§ = param4;
                                                      while(true)
                                                      {
                                                         §§push(this.§2!^§);
                                                         if(_loc10_)
                                                         {
                                                            if(param3)
                                                            {
                                                               addr113:
                                                               §§push(param3.premultipliedAlpha);
                                                               if(!_loc9_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!_loc10_)
                                                                  {
                                                                  }
                                                                  addr122:
                                                                  §§pop().§3!A§(§§pop(),false);
                                                                  while(_loc10_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  continue loop12;
                                                                  addr124:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(true);
                                                            }
                                                            §§goto(addr122);
                                                         }
                                                         §§goto(addr113);
                                                         addr63:
                                                         if(!(_loc10_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc10_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         this.§;J§ = true;
                                                         if(false)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(param2);
                                                               if(_loc10_)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     if(!(_loc10_ || param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  while(_loc10_)
                                                                  {
                                                                     §§goto(addr190);
                                                                  }
                                                                  while(_loc10_)
                                                                  {
                                                                     §§push(0);
                                                                     break loop9;
                                                                  }
                                                                  §§goto(addr236);
                                                                  addr224:
                                                                  addr188:
                                                               }
                                                               addr245:
                                                            }
                                                            §§goto(addr237);
                                                            addr77:
                                                         }
                                                         else
                                                         {
                                                            addr239:
                                                            §§push(this.§ !j§);
                                                            if(_loc10_)
                                                            {
                                                               break loop11;
                                                            }
                                                         }
                                                         var _loc6_:* = §§pop();
                                                         if(!(_loc9_ && this))
                                                         {
                                                            param1.copyVertexDataTo(this.§2!^§,_loc6_,param2,param5);
                                                            if(!_loc9_)
                                                            {
                                                               addr263:
                                                               var _loc7_:*;
                                                               §§push((_loc7_ = this).§ !j§);
                                                               if(_loc10_)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                               }
                                                               var _loc8_:* = §§pop();
                                                               if(_loc10_ || param2)
                                                               {
                                                                  _loc7_.§ !j§ = _loc8_;
                                                               }
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr263);
                                                      }
                                                   }
                                                   addr238:
                                                   while(true)
                                                   {
                                                      §§goto(addr224);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr239);
                                             }
                                          }
                                          addr244:
                                          §§goto(addr245);
                                          §§push(§§pop() * §§pop());
                                       }
                                       break;
                                    }
                                    §§goto(addr244);
                                 }
                                 addr221:
                              }
                              while(true)
                              {
                                 addr174:
                                 while(true)
                                 {
                                    §§push(this.§ !j§);
                                    if(!(_loc9_ && param1))
                                    {
                                       §§push(1);
                                       if(!_loc9_)
                                       {
                                          §§goto(addr188);
                                          §§push(§§pop() + §§pop());
                                       }
                                       else
                                       {
                                          §§goto(addr244);
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr246);
                                 §§goto(addr212);
                              }
                              addr231:
                           }
                           §§goto(addr221);
                        }
                        §§goto(addr149);
                     }
                     break;
                  }
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc9_)
                        {
                           break;
                        }
                        §§goto(addr231);
                     }
                     §§goto(addr174);
                  }
                  return;
               }
            }
         }
         §§goto(addr238);
      }
      
      public function §-!F§(param1:§8!l§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            §§push(this.§4>§);
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
                     if(!(_loc6_ && param3))
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr440:
                              while(true)
                              {
                                 §§pop();
                                 addr441:
                                 while(true)
                                 {
                                    §§push(param2 == null);
                                    addr395:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                    }
                                 }
                              }
                              addr440:
                           }
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§4>§);
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(null);
                                          if(_loc6_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() == §§pop());
                                          loop7:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop8:
                                             while(!(_loc6_ && param2))
                                             {
                                                if(!(_loc6_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc5_ || this))
                                                               {
                                                                  break;
                                                               }
                                                               continue loop6;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push(param2 == null);
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              loop12:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§ !j§);
                                                                                 if(!(_loc6_ && param3))
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       loop13:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          loop14:
                                                                                          while(!_loc6_)
                                                                                          {
                                                                                             if(!(_loc6_ && this))
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc6_ && param1)
                                                                                                   {
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   loop16:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc5_ || this)
                                                                                                      {
                                                                                                         if(!(_loc6_ && param3))
                                                                                                         {
                                                                                                            if(_loc5_ || param2)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!(_loc6_ && param3))
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && param3))
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           if(_loc6_ && param2)
                                                                                                                           {
                                                                                                                              addr398:
                                                                                                                              §§push(this.§4>§);
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§;J§);
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       continue loop7;
                                                                                                                                    }
                                                                                                                                    continue loop9;
                                                                                                                                 }
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                              addr93:
                                                                                                                              addr93:
                                                                                                                              if(!(_loc5_ || param2))
                                                                                                                              {
                                                                                                                                 continue loop14;
                                                                                                                              }
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(!§§pop());
                                                                                                                                 continue loop13;
                                                                                                                              }
                                                                                                                              addr363:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc5_ || param2)
                                                                                                                                 {
                                                                                                                                    if(_loc6_ && this)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr412:
                                                                                                                                          §§push(!§§pop());
                                                                                                                                          §§push(!§§pop());
                                                                                                                                          addr413:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                }
                                                                                                                                                addr414:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   addr379:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            addr383:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_ || this)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§?!z§ == param3);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                  }
                                                                                                                                                                  addr347:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr415:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§4>§);
                                                                                                                                                                     break loop6;
                                                                                                                                                                  }
                                                                                                                                                                  addr415:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr382:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr349:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            addr350:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     break loop8;
                                                                                                                                                                  }
                                                                                                                                                                  addr291:
                                                                                                                                                                  return §§pop();
                                                                                                                                                                  addr335:
                                                                                                                                                               }
                                                                                                                                                               addr351:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  break loop10;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr395);
                                                                                                                                                            }
                                                                                                                                                            break loop14;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr377:
                                                                                                                                             }
                                                                                                                                             §§goto(addr415);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr411:
                                                                                                                                    }
                                                                                                                                    §§goto(addr377);
                                                                                                                                 }
                                                                                                                                 §§goto(addr414);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§push(this.§ !j§);
                                                                                                                        break loop12;
                                                                                                                        addr341:
                                                                                                                     }
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                                  addr235:
                                                                                                                  addr234:
                                                                                                                  addr235:
                                                                                                                  §§push(false);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     return §§pop();
                                                                                                                  }
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            §§goto(addr382);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr235);
                                                                                                   }
                                                                                                   if(!(_loc5_ || this))
                                                                                                   {
                                                                                                      §§goto(addr351);
                                                                                                   }
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§goto(addr291);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr440);
                                                                                                   }
                                                                                                   if(_loc5_ || param3)
                                                                                                   {
                                                                                                      addr85:
                                                                                                      §§push(§§pop() == !§§pop());
                                                                                                      if(!(_loc5_ || param1))
                                                                                                      {
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      §§goto(addr93);
                                                                                                   }
                                                                                                   §§goto(addr413);
                                                                                                }
                                                                                                addr119:
                                                                                                return §§pop();
                                                                                             }
                                                                                             §§goto(addr412);
                                                                                          }
                                                                                          addr325:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc5_ || param2)
                                                                                             {
                                                                                                addr338:
                                                                                                §§push(!§§pop());
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§goto(addr335);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   §§pop();
                                                                                                   §§goto(addr341);
                                                                                                }
                                                                                                addr338:
                                                                                             }
                                                                                             §§goto(addr349);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr281:
                                                                                    §§goto(addr282);
                                                                                    §§push(§§pop() == §§pop());
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr281);
                                                                              §§push(8192);
                                                                           }
                                                                           §§goto(addr234);
                                                                        }
                                                                        addr232:
                                                                     }
                                                                     §§goto(addr362);
                                                                  }
                                                                  §§goto(addr235);
                                                               }
                                                               §§goto(addr441);
                                                            }
                                                            §§goto(addr383);
                                                         }
                                                         §§push(this.§;J§);
                                                         if(_loc5_ || param2)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(param1.useColor);
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        §§goto(addr325);
                                                                        §§push(§§pop() == §§pop());
                                                                     }
                                                                     §§goto(addr350);
                                                                  }
                                                                  addr317:
                                                               }
                                                               §§goto(addr395);
                                                            }
                                                            §§goto(addr347);
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                   }
                                                   §§goto(addr232);
                                                }
                                                §§goto(addr361);
                                             }
                                             if(!§§pop())
                                             {
                                                §§goto(addr338);
                                             }
                                             §§goto(addr291);
                                          }
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr359);
                                       §§push(§§pop().repeat);
                                       §§goto(addr415);
                                    }
                                    §§goto(addr348);
                                 }
                                 §§goto(addr398);
                              }
                           }
                        }
                     }
                     §§goto(addr440);
                  }
               }
            }
         }
         §§goto(addr203);
      }
   }
}
