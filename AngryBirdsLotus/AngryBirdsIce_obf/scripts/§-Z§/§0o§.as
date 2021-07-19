package §-Z§
{
   import §#a§.AGALMiniAssembler;
   import §3!$§.§+^§;
   import §5d§.§=i§;
   import §[P§.§@!$§;
   import §[P§.Texture;
   import §^V§.§09§;
   import §^V§.§1!,§;
   import §^V§.DisplayObject;
   import §^V§.DisplayObjectContainer;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §0o§
   {
      
      private static var §"L§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §"L§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §;-§:int;
      
      private var §0W§:Texture;
      
      private var §3E§:String;
      
      private var §;#§:§+^§;
      
      private var §]#§:VertexBuffer3D;
      
      private var §]8§:VertexBuffer3D;
      
      private var §25§:VertexBuffer3D;
      
      private var §0g§:Vector.<uint>;
      
      private var §'5§:IndexBuffer3D;
      
      private var §&4§:Boolean = false;
      
      private var §<S§:Boolean = false;
      
      public function §0o§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super();
         § b§();
         this.§;#§ = new §+^§(0,true);
         do
         {
            this.§0g§ = new Vector.<uint>(0);
         }
         while(_loc1_ && this);
         
         this.§;-§ = 0;
         this.§3!F§();
      }
      
      public static function §,!#§(param1:DisplayObjectContainer, param2:Vector.<§0o§>) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            § t§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function § t§(param1:DisplayObject, param2:Vector.<§0o§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§09§ = null;
         var _loc13_:§1!,§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§0o§ = null;
         var _loc7_:* = false;
         §§push(param3);
         loop0:
         while(true)
         {
            if(§§pop() != -1)
            {
               §§push(param1.alpha == 0);
               for(; !§§pop(); if(!_loc17_)
               {
                  break;
               })
               {
                  if(_loc18_)
                  {
                     if(_loc17_)
                     {
                        addr146:
                        _loc7_ = §§pop();
                        addr140:
                        param3 = 0;
                        if(param2.length == 0)
                        {
                           addr133:
                           param2.push(new §0o§());
                        }
                        else
                        {
                           param2[0].reset();
                           addr127:
                        }
                        break loop0;
                     }
                     §§pop();
                     if(!_loc17_)
                     {
                        §§push(param1.visible);
                        if(!_loc18_)
                        {
                           continue;
                        }
                        §§push(!§§pop());
                        if(!(_loc17_ && param2))
                        {
                           continue;
                        }
                        addr151:
                        addr151:
                        if(§§pop())
                        {
                           addr152:
                           §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                           if(_loc18_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc9_ = §§pop();
                           _loc10_ = new Matrix3D();
                           if(_loc18_)
                           {
                              §§push(param5);
                              if(!_loc17_)
                              {
                                 §§push(§§pop() * param1.alpha);
                                 if(!_loc17_)
                                 {
                                    addr177:
                                    §§push(Number(§§pop()));
                                 }
                                 param5 = §§pop();
                                 if(!_loc17_)
                                 {
                                    _loc6_ = 0;
                                    addr183:
                                    loop2:
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
                                                addr396:
                                                §§push(_loc7_);
                                                if(_loc18_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§push(int(param2.length - 1));
                                                      if(!(_loc17_ && param3))
                                                      {
                                                         _loc6_ = §§pop();
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc18_ || param2)
                                                            {
                                                               addr422:
                                                               if(!(_loc17_ && §0o§))
                                                               {
                                                                  break loop2;
                                                               }
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                                  addr457:
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     if(_loc18_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     addr473:
                                                                     while(true)
                                                                     {
                                                                        §§push(delete param2[_loc6_]);
                                                                        addr465:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr466:
                                                                           while(true)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr444);
                                                         }
                                                      }
                                                      §§goto(addr457);
                                                   }
                                                   while(true)
                                                   {
                                                      addr444:
                                                      while(_loc17_ && param3)
                                                      {
                                                         continue loop13;
                                                      }
                                                      return §§pop();
                                                   }
                                                   addr443:
                                                }
                                                §§goto(addr465);
                                             }
                                             else
                                             {
                                                _loc11_ = _loc8_.getChildAt(_loc6_);
                                                if(_loc18_ || param3)
                                                {
                                                   _loc10_.copyFrom(param4);
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   § G§.§3T§(_loc10_,_loc11_);
                                                   addr251:
                                                   while(true)
                                                   {
                                                      addr211:
                                                      while(true)
                                                      {
                                                         §§push(§ t§(_loc11_,param2,param3,_loc10_,param5));
                                                         if(!(_loc17_ && param3))
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                         param3 = §§pop();
                                                         continue loop3;
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                             }
                                          }
                                          addr430:
                                          if(§§pop() <= §§pop())
                                          {
                                             if(_loc18_)
                                             {
                                                §§goto(addr443);
                                             }
                                             §§goto(addr466);
                                          }
                                          param2[_loc6_].dispose();
                                          §§goto(addr473);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr430);
                                       §§goto(addr422);
                                    }
                                 }
                                 §§goto(addr183);
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr183);
                        }
                        else
                        {
                           if(!(param1 is §09§))
                           {
                              throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                           }
                           if(_loc18_ || §0o§)
                           {
                              _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §09§) as §1!,§) ? _loc13_.texture : null;
                              if(!(_loc17_ && param2))
                              {
                                 if(_loc13_)
                                 {
                                    if(!_loc17_)
                                    {
                                       addr311:
                                       §§push(_loc13_.smoothing);
                                       if(!_loc17_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc17_ && param2))
                                          {
                                             addr334:
                                             _loc15_ = §§pop();
                                          }
                                       }
                                       §§goto(addr334);
                                    }
                                    if((_loc16_ = param2[param3]).§9J§(_loc12_,_loc14_,_loc15_))
                                    {
                                       if(!_loc17_)
                                       {
                                          param3++;
                                          if(_loc18_ || param1)
                                          {
                                             if(param2.length <= param3)
                                             {
                                                if(!_loc17_)
                                                {
                                                   addr362:
                                                   param2.push(new §0o§());
                                                   if(_loc18_ || param1)
                                                   {
                                                      addr373:
                                                      (_loc16_ = param2[param3]).reset();
                                                      _loc16_.§-h§(_loc12_,param5,_loc14_,_loc15_,param4);
                                                   }
                                                   §§goto(addr396);
                                                }
                                             }
                                             §§goto(addr373);
                                          }
                                       }
                                       §§goto(addr362);
                                    }
                                    §§goto(addr373);
                                 }
                                 else
                                 {
                                    §§push(null);
                                    if(_loc18_ || param2)
                                    {
                                       §§goto(addr334);
                                    }
                                 }
                                 §§goto(addr334);
                              }
                              §§goto(addr311);
                           }
                        }
                        §§goto(addr396);
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr151);
               }
               if(§§pop())
               {
                  if(_loc18_ || param3)
                  {
                     if(!_loc17_)
                     {
                        §§push(param3);
                        if(!(_loc17_ && §0o§))
                        {
                           if(_loc18_)
                           {
                              return §§pop();
                           }
                           continue;
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr152);
               }
               break;
            }
            §§push(true);
            §§goto(addr146);
         }
         §§goto(addr151);
         §§push(param1 is DisplayObjectContainer);
      }
      
      private static function § b§() : void
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
         var _loc1_:§?h§ = §?h§.§ n§;
         if(_loc23_ || §0o§)
         {
            if(_loc1_.§7g§(§'W§(true)))
            {
               if(_loc23_ || §0o§)
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
               loop1:
               while(true)
               {
                  _loc6_ = §§pop();
                  addr180:
                  while(true)
                  {
                     §§push("m44 op, va0, vc0  \n");
                     addr169:
                     while(true)
                     {
                        §§push("mov v0, va2       \n");
                        addr170:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr171:
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
         addr63:
      }
      
      public static function §'W§(param1:Boolean) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1)
            {
               addr21:
               §§push("QB_q*");
               if(_loc3_ || §0o§)
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
      
      public static function §4I§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param3))
         {
            if(param1)
            {
               addr25:
               §§push("QB_i*");
               if(_loc7_ || param2)
               {
               }
            }
            else
            {
               §§push("QB_i\'");
            }
            var _loc6_:* = §§pop();
            if(!_loc8_)
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
                        addr158:
                        while(true)
                        {
                           §§push("N");
                           addr159:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr160:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 addr161:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                     }
                     addr157:
                  }
                  while(true)
                  {
                     §§push(param3);
                     continue loop0;
                  }
               }
            }
            §§goto(addr80);
         }
         §§goto(addr25);
      }
      
      public function get §%!,§() : int
      {
         return this.§;-§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§]#§)
            {
               addr105:
               while(true)
               {
                  this.§]#§.dispose();
                  addr108:
                  while(true)
                  {
                  }
               }
               addr105:
            }
            while(true)
            {
               if(this.§]8§)
               {
                  while(!(_loc2_ && this))
                  {
                     this.§]8§.dispose();
                  }
                  continue;
                  addr91:
               }
               while(true)
               {
                  if(this.§25§)
                  {
                     this.§25§.dispose();
                     while(true)
                     {
                        addr39:
                        if(_loc2_ && _loc1_)
                        {
                           continue;
                        }
                        if(!(_loc2_ && this))
                        {
                           this.§'5§.dispose();
                           addr66:
                           if(!_loc2_)
                           {
                              §§goto(addr24);
                           }
                           §§goto(addr91);
                        }
                        else
                        {
                           §§goto(addr105);
                        }
                     }
                     addr86:
                  }
                  while(true)
                  {
                     if(this.§'5§)
                     {
                        if(_loc1_ || this)
                        {
                           §§goto(addr39);
                        }
                        §§goto(addr66);
                     }
                     break;
                     §§goto(addr86);
                  }
                  addr24:
                  return;
               }
            }
         }
         §§goto(addr105);
      }
      
      private function §3!F§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§;#§.§7U§);
         if(!_loc4_)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(_loc5_ || _loc3_)
         {
            §§push(_loc1_);
            if(_loc5_ || _loc2_)
            {
               §§push(0);
               if(_loc5_ || _loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr51);
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(!_loc4_)
                     {
                        §§goto(addr58);
                     }
                  }
                  §§goto(addr58);
                  §§push(int(§§pop()));
               }
               §§goto(addr59);
            }
            §§goto(addr58);
         }
         addr51:
         §§push(16);
         if(!_loc5_)
         {
            addr58:
            addr59:
            §§push(int(§§pop() * 2));
            if(_loc4_)
            {
            }
            §§goto(addr64);
         }
         addr64:
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.§;#§.§7U§ = _loc2_ * 4;
         }
         §§push(_loc1_);
         if(!_loc4_)
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
                  this.§<S§ = true;
               }
               if(!_loc4_)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     _loc3_++;
                     addr232:
                     while(true)
                     {
                        this.§0g§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                        this.§0g§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
                        do
                        {
                           this.§0g§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                           this.§0g§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                        }
                        while(!(_loc5_ || this));
                        
                        this.§0g§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                        continue loop1;
                     }
                  }
               }
               while(_loc4_ && _loc2_)
               {
               }
               continue;
            }
            this.§0g§[int(_loc3_ * 6)] = _loc3_ * 4;
            §§goto(addr232);
         }
      }
      
      private function §1+§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§<S§);
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
                     throw new §=i§();
                  }
                  if(this.§]#§)
                  {
                     addr75:
                     while(true)
                     {
                        this.§]#§.dispose();
                     }
                     addr75:
                  }
                  while(true)
                  {
                     if(this.§]8§)
                     {
                        while(true)
                        {
                           this.§]8§.dispose();
                        }
                        addr67:
                     }
                     loop2:
                     while(true)
                     {
                        if(this.§25§)
                        {
                           this.§25§.dispose();
                           while(true)
                           {
                              addr29:
                              if(_loc3_ && param1)
                              {
                                 continue;
                              }
                              if(!(_loc3_ && this))
                              {
                                 if(_loc3_ && _loc2_)
                                 {
                                    break loop2;
                                 }
                                 this.§'5§.dispose();
                                 if(false)
                                 {
                                    continue loop2;
                                 }
                                 addr100:
                                 §§push(this.§;#§.§7U§);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(int(§§pop() / 4));
                                 }
                                 var _loc2_:* = §§pop();
                                 if(!(_loc3_ && param1))
                                 {
                                    this.§]#§ = param1.createVertexBuffer(_loc2_ * 4,§+^§.§6!4§);
                                    this.§]#§.uploadFromByteArray(this.§;#§.§]!E§,0,0,_loc2_ * 4);
                                    this.§]8§ = param1.createVertexBuffer(_loc2_ * 4,§+^§.§"!%§);
                                    this.§]8§.uploadFromVector(this.§;#§.§3!?§,0,_loc2_ * 4);
                                    this.§25§ = param1.createVertexBuffer(_loc2_ * 4,§+^§.§>!E§);
                                    this.§25§.uploadFromVector(this.§;#§.§[&§,0,_loc2_ * 4);
                                    this.§'5§ = param1.createIndexBuffer(_loc2_ * 6);
                                    this.§'5§.uploadFromVector(this.§0g§,0,_loc2_ * 6);
                                    addr246:
                                    addr190:
                                    addr179:
                                 }
                                 this.§<S§ = false;
                                 if(!_loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr246);
                                       }
                                       return true;
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr179);
                              }
                              else
                              {
                                 §§goto(addr67);
                              }
                           }
                        }
                        while(this.§'5§)
                        {
                           §§goto(addr29);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr75);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr75);
      }
      
      private function §&c§(param1:Context3D) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§1+§(param1));
            loop0:
            for(; !§§pop(); while(true)
            {
               §§push(this.§&4§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        this.§]8§.uploadFromVector(this.§;#§.§3!?§,0,this.§;-§ * 4);
                     }
                     loop3:
                     while(_loc3_)
                     {
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                     §§goto(addr92);
                     addr85:
                  }
                  while(true)
                  {
                     this.§25§.uploadFromVector(this.§;#§.§[&§,0,this.§;-§ * 4);
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                     §§goto(addr85);
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            },break)
            {
               while(true)
               {
                  this.§]#§.uploadFromByteArray(this.§;#§.§]!E§,0,0,this.§;-§ * 4);
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr87);
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param3))
         {
            if(this.§;-§ == 0)
            {
               if(!(_loc8_ && param3))
               {
                  §§goto(addr35);
               }
            }
            §§push(this.§;#§.premultipliedAlpha);
            if(_loc9_)
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
            if(_loc9_ || this)
            {
               if(this.§0W§)
               {
                  addr65:
                  §§push(§4I§(_loc5_,this.§0W§.mipMapping,this.§0W§.repeat,this.§3E§,this.§&4§));
                  if(!_loc8_)
                  {
                     §§push(§§pop());
                     if(_loc9_)
                     {
                        addr97:
                        §§push(§§pop());
                     }
                     else
                     {
                        addr89:
                        §§push(§§pop());
                        if(!(_loc8_ && param1))
                        {
                           §§goto(addr97);
                        }
                     }
                     var _loc6_:* = §§pop();
                     § G§.§0r§(param1,_loc4_);
                     this.§&c§(param1);
                     if(_loc9_)
                     {
                        param1.setProgram(§?h§.§ n§.§;?§(_loc6_));
                        param1.setVertexBufferAt(0,this.§25§,§+^§.§;u§,Context3DVertexBufferFormat.FLOAT_3);
                        §§push(this.§0W§);
                        if(_loc9_)
                        {
                           §§push(null);
                           if(_loc9_ || param3)
                           {
                              §§push(§§pop() == §§pop());
                              §§push(§§pop() == §§pop());
                              if(!_loc8_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc9_)
                                    {
                                       §§pop();
                                       if(_loc9_ || param3)
                                       {
                                          loop0:
                                          while(true)
                                          {
                                             §§push(Boolean(this.§&4§));
                                             if(!(_loc8_ && param2))
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         param1.setVertexBufferAt(2,this.§]8§,§+^§.§;F§,Context3DVertexBufferFormat.FLOAT_4);
                                                         addr100:
                                                         param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
                                                         if(_loc9_ || param1)
                                                         {
                                                            if(false)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§push(_loc5_);
                                                            if(!_loc8_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     §"L§[0] = §"L§[1] = §"L§[2] = !!_loc4_ ? Number(param3) : Number(1);
                                                                     if(_loc9_ || param3)
                                                                     {
                                                                        §"L§[3] = param3;
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§"L§,1);
                                                                           addr380:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§0W§);
                                                                              addr382:
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    addr343:
                                                                                    param1.setTextureAt(0,null);
                                                                                    loop8:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc8_ && param2))
                                                                                       {
                                                                                          loop9:
                                                                                          while(true)
                                                                                          {
                                                                                             param1.drawTriangles(this.§'5§,0,this.§;-§ * 2);
                                                                                             loop10:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   continue loop20;
                                                                                                }
                                                                                                §§push(this.§0W§);
                                                                                                loop5:
                                                                                                while(§§pop())
                                                                                                {
                                                                                                   param1.setTextureAt(0,null);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         addr327:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1.setVertexBufferAt(1,null);
                                                                                                            addr312:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     break loop5;
                                                                                                                  }
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                         }
                                                                                                         addr327:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop6:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1.setVertexBufferAt(1,this.§]#§,§+^§.§!^§,Context3DVertexBufferFormat.FLOAT_2);
                                                                                                            addr376:
                                                                                                            addr383:
                                                                                                            while(_loc9_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               param1.setTextureAt(0,this.§0W§.getBase(param1));
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§0W§);
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      if(!(_loc9_ || this))
                                                                                                      {
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                      §§push(null);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         addr297:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               loop13:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(!(_loc8_ && this))
                                                                                                                  {
                                                                                                                     §§push(this.§&4§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr265:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr325);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr298:
                                                                                                            }
                                                                                                            addr268:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               break loop0;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr320);
                                                                                                   }
                                                                                                   §§goto(addr325);
                                                                                                }
                                                                                                addr320:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr376);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr383);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        param1.setVertexBufferAt(2,null);
                                                                        if(_loc8_ && this)
                                                                        {
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr254);
                                                                        }
                                                                     }
                                                                     §§goto(addr312);
                                                                     addr270:
                                                                  }
                                                                  §§goto(addr327);
                                                               }
                                                               §§goto(addr380);
                                                            }
                                                            §§goto(addr265);
                                                         }
                                                         §§goto(addr383);
                                                      }
                                                      §§goto(addr327);
                                                   }
                                                   §§goto(addr100);
                                                }
                                                addr128:
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr270);
                                             }
                                             addr254:
                                             while(true)
                                             {
                                                param1.setVertexBufferAt(0,null);
                                                if(_loc9_)
                                                {
                                                   break;
                                                }
                                                continue loop2;
                                             }
                                             return;
                                             §§goto(addr268);
                                          }
                                       }
                                       §§goto(addr378);
                                    }
                                    §§goto(addr298);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr297);
                           }
                           §§goto(addr295);
                        }
                        §§goto(addr382);
                     }
                     §§goto(addr281);
                  }
               }
               else
               {
                  §§push(§'W§(_loc5_));
                  if(!_loc8_)
                  {
                     §§goto(addr89);
                  }
               }
               §§goto(addr97);
            }
            §§goto(addr65);
         }
         addr35:
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§;-§ = 0;
            while(true)
            {
               this.§&4§ = false;
               while(!_loc1_)
               {
                  this.§0W§ = null;
                  do
                  {
                     this.§3E§ = null;
                  }
                  while(_loc1_);
                  
                  if(!(_loc1_ && this))
                  {
                     return;
                     addr57:
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §-h§(param1:§09§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         §§push(this.§;-§);
         loop0:
         while(true)
         {
            §§push(1);
            loop1:
            while(true)
            {
               §§push(§§pop() + §§pop());
               if(_loc9_ || this)
               {
                  if(§§pop() > this.§;#§.§7U§ / 4)
                  {
                     this.§3!F§();
                     while(true)
                     {
                     }
                     addr96:
                  }
                  while(true)
                  {
                     §§push(this.§;-§);
                     if(_loc10_)
                     {
                        break;
                     }
                     if(!_loc10_)
                     {
                        §§push(0);
                        if(!(_loc10_ && param2))
                        {
                           if(!(_loc9_ || this))
                           {
                              continue loop1;
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!_loc10_)
                              {
                                 this.§0W§ = param3;
                              }
                              loop4:
                              while(_loc9_)
                              {
                                 do
                                 {
                                    this.§3E§ = param4;
                                    while(true)
                                    {
                                       §§push(this.§;#§);
                                       if(_loc9_)
                                       {
                                          if(param3)
                                          {
                                             addr24:
                                             §§push(param3.premultipliedAlpha);
                                             if(!_loc10_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc10_)
                                                {
                                                }
                                                addr33:
                                                §§pop().setPremultipliedAlpha(§§pop(),false);
                                                if(_loc9_)
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
                                          §§goto(addr33);
                                       }
                                       §§goto(addr24);
                                    }
                                    if(!_loc10_)
                                    {
                                       continue;
                                    }
                                    continue loop4;
                                 }
                                 while(false);
                                 
                              }
                              continue;
                           }
                           §§push(this.§;-§);
                           if(!_loc10_)
                           {
                              break;
                           }
                           var _loc6_:* = §§pop();
                           addr214:
                           addr215:
                           §§push(param2);
                           if(!(_loc10_ && this))
                           {
                              §§push(§§pop() * param1.alpha);
                           }
                           param2 = §§pop();
                           param1.copyVertexDataTo(this.§;#§,_loc6_,param2,param5);
                           addr159:
                           addr192:
                           addr216:
                           §§push(param2);
                           if(!(_loc10_ && param2))
                           {
                              if(_loc9_ || param2)
                              {
                                 addr177:
                                 §§push(§§pop() != 1);
                                 if(!(§§pop() != 1))
                                 {
                                    addr180:
                                    §§pop();
                                    if(_loc9_)
                                    {
                                       §§push(param1.useColor);
                                       if(!(_loc10_ && param2))
                                       {
                                          if(!_loc10_)
                                          {
                                             if(!(_loc10_ && param3))
                                             {
                                                addr136:
                                                §§push(Boolean(§§pop()));
                                                if(_loc9_)
                                                {
                                                   §§goto(addr138);
                                                }
                                                §§goto(addr180);
                                             }
                                          }
                                          §§goto(addr177);
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr216);
                                 }
                                 addr138:
                                 if(§§pop())
                                 {
                                    if(!(_loc10_ && param3))
                                    {
                                       this.§&4§ = true;
                                    }
                                    if(_loc9_ || param3)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr159);
                                       }
                                       §§goto(addr217);
                                    }
                                    §§goto(addr192);
                                 }
                                 addr217:
                                 var _loc7_:*;
                                 §§push((_loc7_ = this).§;-§);
                                 if(!(_loc10_ && param3))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc8_:* = §§pop();
                                 if(_loc9_)
                                 {
                                    _loc7_.§;-§ = _loc8_;
                                 }
                                 return;
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr215);
                        }
                        addr102:
                        §§push(§§pop() * §§pop());
                        break loop1;
                     }
                     continue loop0;
                  }
                  §§goto(addr102);
                  §§push(4);
               }
               break;
            }
            §§goto(addr114);
         }
      }
      
      public function §9J§(param1:§09§, param2:Texture, param3:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§0W§);
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
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(param2 == null);
                           while(true)
                           {
                              §§push(!§§pop());
                              loop25:
                              while(!(_loc5_ && this))
                              {
                                 §§pop();
                                 if(_loc4_ || param3)
                                 {
                                    §§push(param2 == null);
                                    loop26:
                                    while(_loc4_ || param1)
                                    {
                                       addr91:
                                       if(!(_loc5_ && param2))
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc5_ && this)
                                                {
                                                   addr55:
                                                   §§push(this.§;-§);
                                                   if(_loc4_)
                                                   {
                                                      §§push(0);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc4_)
                                                         {
                                                            if(_loc4_ || param2)
                                                            {
                                                               addr74:
                                                               §§push(!§§pop());
                                                               §§push(!§§pop());
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        do
                                                                        {
                                                                           §§pop();
                                                                           §§push(this.§&4§);
                                                                        }
                                                                        while(_loc5_);
                                                                        
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop26;
                                                                        }
                                                                        if(!(_loc4_ || param2))
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        §§push(param1.useColor);
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(§§pop() == §§pop());
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           if(_loc5_ && this)
                                                                           {
                                                                              §§goto(addr110);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr187);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr141);
                                                               }
                                                               continue loop26;
                                                            }
                                                            §§goto(addr189);
                                                         }
                                                         §§goto(addr74);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc5_ && param3)
                                                         {
                                                            addr187:
                                                            §§goto(addr172);
                                                         }
                                                         addr172:
                                                         loop14:
                                                         while(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§pop();
                                                                  §§push(this.§;-§);
                                                                  break loop9;
                                                               }
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  if(!(_loc5_ && param3))
                                                                  {
                                                                     §§push(!§§pop());
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr208:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           if(_loc4_)
                                                                           {
                                                                              addr211:
                                                                              if(_loc5_ && param2)
                                                                              {
                                                                                 break loop16;
                                                                              }
                                                                              §§pop();
                                                                              §§push(this.§&4§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              §§push(param1.useColor);
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              §§goto(addr233);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§pop();
                                                                                 §§goto(addr269);
                                                                              }
                                                                              break;
                                                                              §§goto(addr265);
                                                                           }
                                                                           §§goto(addr235);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§goto(addr259);
                                                                           §§push(this.§0W§);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this.§0W§);
                                                                           if(!(_loc5_ && param2))
                                                                           {
                                                                              §§push(null);
                                                                              if(_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop25;
                                                                              }
                                                                              §§push(§§pop());
                                                                              while(_loc4_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    continue loop25;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              §§goto(addr208);
                                                                           }
                                                                        }
                                                                        §§goto(addr223);
                                                                        §§goto(addr211);
                                                                     }
                                                                     continue loop1;
                                                                     addr206:
                                                                     addr256:
                                                                  }
                                                                  continue loop3;
                                                                  addr239:
                                                                  while(true)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         return §§pop();
                                                      }
                                                      addr164:
                                                   }
                                                   break;
                                                }
                                                if(!_loc5_)
                                                {
                                                   addr110:
                                                   §§push(false);
                                                   if(!_loc5_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   continue loop25;
                                                }
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§push(this.§0W§);
                                                   while(true)
                                                   {
                                                      if(_loc4_ || param3)
                                                      {
                                                         §§push(§§pop().repeat);
                                                         §§push(param2.repeat);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() != §§pop());
                                                            addr235:
                                                            while(true)
                                                            {
                                                               break loop26;
                                                            }
                                                         }
                                                         addr233:
                                                      }
                                                      addr259:
                                                      while(_loc4_)
                                                      {
                                                         §§push(§§pop().root == param2.root);
                                                         while(true)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                addr269:
                                                §§goto(addr266);
                                             }
                                             §§goto(addr55);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr164);
                                          }
                                       }
                                       §§goto(addr265);
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§pop();
                                          §§goto(addr239);
                                       }
                                       §§goto(addr206);
                                    }
                                 }
                                 §§goto(addr239);
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr256);
                  }
               }
            }
         }
      }
   }
}
