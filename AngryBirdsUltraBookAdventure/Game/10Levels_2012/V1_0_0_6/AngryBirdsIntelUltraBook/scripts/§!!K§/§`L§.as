package §!!K§
{
   import §2!I§.AGALMiniAssembler;
   import §4!S§.§<!f§;
   import §4>§.§#i§;
   import §4>§.Texture;
   import §7!B§.§-§;
   import §7!B§.§;R§;
   import §7!B§.DisplayObject;
   import §7!B§.DisplayObjectContainer;
   import §9!k§.§=A§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §`L§
   {
      
      private static var §6`§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §6`§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §4!6§:int;
      
      private var §+x§:Texture;
      
      private var §4!z§:String;
      
      private var § !3§:§=A§;
      
      private var §5!g§:VertexBuffer3D;
      
      private var §2!N§:VertexBuffer3D;
      
      private var §[P§:VertexBuffer3D;
      
      private var §7I§:Vector.<uint>;
      
      private var §6T§:IndexBuffer3D;
      
      private var §#!%§:Boolean = false;
      
      private var §'i§:Boolean = false;
      
      public function §`L§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            loop0:
            while(true)
            {
               §-+§();
               loop1:
               while(true)
               {
                  this.§ !3§ = new §=A§(0,true);
                  loop2:
                  while(true)
                  {
                     this.§7I§ = new Vector.<uint>(0);
                     while(!_loc2_)
                     {
                        while(_loc1_ || _loc1_)
                        {
                           continue loop2;
                           this.§?!Q§();
                           if(_loc1_ || _loc2_)
                           {
                              continue loop1;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§4!6§ = 0;
            §§goto(addr55);
         }
         §§goto(addr50);
      }
      
      public static function §+!&§(param1:DisplayObjectContainer, param2:Vector.<§`L§>) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §;!§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §;!§(param1:DisplayObject, param2:Vector.<§`L§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§;R§ = null;
         var _loc13_:§-§ = null;
         var _loc14_:Texture = null;
         var _loc15_:* = null;
         var _loc16_:§`L§ = null;
         var _loc7_:Boolean = false;
         if(_loc18_ || §`L§)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               if(§§pop() == -1)
               {
                  if(!(_loc17_ && param1))
                  {
                     addr184:
                     _loc7_ = true;
                  }
                  loop5:
                  while(true)
                  {
                     addr171:
                     param3 = 0;
                     addr105:
                     do
                     {
                        if(param2.length != 0)
                        {
                           param2[0].reset();
                           continue loop5;
                        }
                        if(!(_loc17_ && param3))
                        {
                           param2.push(new §`L§());
                           continue;
                        }
                        addr190:
                        §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                        if(!_loc17_)
                        {
                           §§push(int(§§pop()));
                        }
                        _loc9_ = §§pop();
                        _loc10_ = new Matrix3D();
                        if(!(_loc17_ && param1))
                        {
                           §§push(param5);
                           if(_loc18_)
                           {
                              §§push(§§pop() * param1.alpha);
                              if(!_loc17_)
                              {
                                 addr220:
                                 §§push(Number(§§pop()));
                              }
                              param5 = §§pop();
                              if(_loc18_ || param2)
                              {
                                 addr229:
                                 _loc6_ = 0;
                              }
                              loop7:
                              while(true)
                              {
                                 §§push(_loc6_);
                                 if(_loc18_)
                                 {
                                    §§push(_loc9_);
                                    if(_loc18_)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!(_loc17_ && param2))
                                          {
                                             addr425:
                                             §§push(_loc7_);
                                             if(!(_loc17_ && param2))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc17_ && §`L§))
                                                   {
                                                      §§push(int(param2.length - 1));
                                                      if(!_loc17_)
                                                      {
                                                         break;
                                                      }
                                                      loop14:
                                                      while(true)
                                                      {
                                                         addr463:
                                                         if(§§pop() <= param3)
                                                         {
                                                            if(_loc18_)
                                                            {
                                                               if(_loc18_)
                                                               {
                                                                  if(!(_loc17_ && param3))
                                                                  {
                                                                     addr485:
                                                                     return param3;
                                                                  }
                                                                  else
                                                                  {
                                                                     addr508:
                                                                     §§push(delete param2[_loc6_]);
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr501:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                           }
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              addr495:
                                                                              while(true)
                                                                              {
                                                                                 addr456:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr508:
                                                                     addr500:
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr501);
                                                            }
                                                            §§goto(addr495);
                                                         }
                                                         else
                                                         {
                                                            param2[_loc6_].dispose();
                                                            §§goto(addr508);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr485);
                                             }
                                             §§goto(addr500);
                                          }
                                          §§goto(addr508);
                                       }
                                       else
                                       {
                                          _loc11_ = _loc8_.getChildAt(_loc6_);
                                          if(!_loc17_)
                                          {
                                             _loc10_.copyFrom(param4);
                                          }
                                          while(true)
                                          {
                                             _loc11_.§5U§(_loc10_);
                                             loop9:
                                             while(!_loc17_)
                                             {
                                                do
                                                {
                                                   §§push(§;!§(_loc11_,param2,param3,_loc10_,param5));
                                                   if(_loc18_)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   param3 = §§pop();
                                                   do
                                                   {
                                                      _loc6_++;
                                                   }
                                                   while(_loc17_ && param3);
                                                   
                                                   if(!_loc17_)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop9;
                                                }
                                                while(false);
                                                
                                                continue loop7;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr463);
                                 }
                                 break;
                              }
                              _loc6_ = §§pop();
                              if(!(_loc17_ && param3))
                              {
                                 §§goto(addr456);
                              }
                              §§goto(addr495);
                           }
                           §§goto(addr220);
                        }
                        §§goto(addr229);
                     }
                     while(!(_loc18_ || param2));
                     
                     addr105:
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
                           while(_loc18_ || param2)
                           {
                              if(!(_loc17_ && param3))
                              {
                                 §§push(param1.visible);
                                 if(!_loc17_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc17_)
                                    {
                                       if(!(_loc18_ || param1))
                                       {
                                          continue loop2;
                                       }
                                       if(_loc17_)
                                       {
                                          continue loop1;
                                       }
                                       if(!(_loc17_ && param1))
                                       {
                                          while(§§pop())
                                          {
                                             if(_loc17_)
                                             {
                                                if(false)
                                                {
                                                }
                                                break;
                                             }
                                             if(!_loc18_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(param3);
                                             if(!_loc17_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr171);
                                             §§goto(addr105);
                                          }
                                          addr189:
                                          if(param1 is DisplayObjectContainer)
                                          {
                                             §§goto(addr190);
                                          }
                                          else
                                          {
                                             if(!(param1 is §;R§))
                                             {
                                                throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                                             }
                                             if(!(_loc17_ && param3))
                                             {
                                                _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §;R§) as §-§) ? _loc13_.texture : null;
                                                if(_loc18_)
                                                {
                                                   if(_loc13_)
                                                   {
                                                      addr369:
                                                      if(!(_loc17_ && §`L§))
                                                      {
                                                         §§push(_loc13_.smoothing);
                                                         if(_loc18_ || param1)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc17_ && param2)
                                                            {
                                                            }
                                                         }
                                                         addr367:
                                                         §§push(§§pop());
                                                      }
                                                      if((_loc16_ = param2[param3]).§;!Z§(_loc12_,_loc14_,_loc15_))
                                                      {
                                                         if(_loc18_)
                                                         {
                                                            param3++;
                                                            if(_loc18_)
                                                            {
                                                               if(param2.length <= param3)
                                                               {
                                                                  if(!(_loc17_ && param2))
                                                                  {
                                                                     param2.push(new §`L§());
                                                                     if(_loc17_)
                                                                     {
                                                                     }
                                                                     addr416:
                                                                     §§goto(addr425);
                                                                  }
                                                               }
                                                               (_loc16_ = param2[param3]).reset();
                                                               addr409:
                                                               _loc16_.§'!i§(_loc12_,param5,_loc14_,_loc15_,param4);
                                                            }
                                                         }
                                                         §§goto(addr416);
                                                      }
                                                      §§goto(addr409);
                                                   }
                                                   else
                                                   {
                                                      §§push(null);
                                                      if(!_loc17_)
                                                      {
                                                         §§goto(addr367);
                                                      }
                                                   }
                                                   _loc15_ = §§pop();
                                                }
                                                §§goto(addr369);
                                             }
                                          }
                                          §§goto(addr425);
                                          addr79:
                                       }
                                       else
                                       {
                                          §§goto(addr184);
                                       }
                                       §§goto(addr171);
                                    }
                                 }
                                 §§goto(addr189);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr137);
                        }
                     }
                     §§goto(addr79);
                  }
               }
               §§goto(addr189);
            }
         }
         §§goto(addr184);
      }
      
      private static function §-+§() : void
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
         var _loc1_:§else§ = §else§.§^!A§;
         if(!_loc23_)
         {
            if(_loc1_.§%c§(§7!p§(true)))
            {
               if(!_loc23_)
               {
                  §§goto(addr54);
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
                  addr177:
                  while(true)
                  {
                     §§push("m44 op, va0, vc0  \n");
                     if(_loc24_ || §`L§)
                     {
                        §§push("mov v0, va2       \n");
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                        }
                        addr167:
                     }
                     addr168:
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
         addr54:
      }
      
      public static function §7!p§(param1:Boolean) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1)
            {
               addr20:
               §§push("QB_q*");
               if(!_loc2_)
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
      
      public static function §;<§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param3))
         {
            if(param1)
            {
               addr25:
               §§push("QB_i*");
               if(_loc8_ && param1)
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
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(_loc6_);
                        addr187:
                        while(true)
                        {
                           §§push("N");
                           addr188:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr189:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 addr190:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                     }
                     addr186:
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
                           addr180:
                           while(true)
                           {
                              §§push("R");
                              addr181:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr182:
                                 while(true)
                                 {
                                    _loc6_ = §§pop();
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr183);
         }
         §§goto(addr25);
      }
      
      public function get §%,§() : int
      {
         return this.§4!6§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§5!g§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  this.§5!g§.dispose();
               }
               while(true)
               {
                  addr76:
                  if(_loc1_ && this)
                  {
                     continue;
                  }
                  §§goto(addr25);
               }
               addr123:
            }
            while(true)
            {
               if(this.§2!N§)
               {
                  while(true)
                  {
                     this.§2!N§.dispose();
                     addr109:
                     while(true)
                     {
                     }
                     addr69:
                     if(_loc1_ && this)
                     {
                        continue;
                     }
                     §§goto(addr76);
                  }
               }
               loop3:
               while(true)
               {
                  if(this.§[P§)
                  {
                     while(true)
                     {
                        this.§[P§.dispose();
                        addr101:
                        while(true)
                        {
                        }
                     }
                     addr98:
                  }
                  while(this.§6T§)
                  {
                     if(!(_loc1_ && this))
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           if(_loc2_ || _loc1_)
                           {
                              this.§6T§.dispose();
                              addr67:
                              if(!_loc2_)
                              {
                                 continue loop3;
                              }
                              §§goto(addr69);
                           }
                           else
                           {
                              §§goto(addr98);
                           }
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr67);
                  }
                  addr25:
                  return;
               }
               §§goto(addr123);
            }
         }
         §§goto(addr109);
      }
      
      private function §?!Q§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§ !3§.§7?§);
         if(!(_loc5_ && _loc1_))
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc1_);
            if(_loc4_ || this)
            {
               §§push(0);
               if(_loc4_)
               {
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr68);
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(!_loc5_)
                     {
                        §§push(2);
                     }
                     §§goto(addr67);
                  }
               }
               §§push(int(§§pop() * §§pop()));
               if(!(_loc5_ && _loc2_))
               {
                  §§goto(addr67);
               }
               addr68:
               §§goto(addr45);
            }
            §§goto(addr67);
         }
         addr45:
         §§push(16);
         if(_loc4_ || _loc2_)
         {
            addr67:
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            this.§ !3§.§7?§ = _loc2_ * 4;
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
               if(_loc4_ || _loc1_)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     if(_loc4_ || _loc3_)
                     {
                        this.§'i§ = true;
                        addr135:
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           this.§7I§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                           loop6:
                           while(true)
                           {
                              this.§7I§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
                              addr231:
                              while(true)
                              {
                                 this.§7I§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                                 addr207:
                                 while(_loc5_ && _loc2_)
                                 {
                                    continue loop6;
                                 }
                                 addr214:
                                 this.§7I§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                                 while(true)
                                 {
                                    this.§7I§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                                    §§goto(addr214);
                                 }
                              }
                           }
                           addr272:
                        }
                        while(true)
                        {
                           if(_loc4_ || _loc1_)
                           {
                              _loc3_++;
                              while(_loc5_ && _loc2_)
                              {
                                 §§goto(addr231);
                              }
                              continue loop0;
                              addr142:
                           }
                           §§goto(addr207);
                        }
                     }
                     §§goto(addr214);
                  }
                  §§goto(addr142);
               }
               §§goto(addr135);
            }
            else
            {
               this.§7I§[int(_loc3_ * 6)] = _loc3_ * 4;
            }
            §§goto(addr272);
         }
      }
      
      private function §+v§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.§'i§);
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
                           if(this.§5!g§)
                           {
                              while(true)
                              {
                                 this.§5!g§.dispose();
                                 addr99:
                                 while(true)
                                 {
                                 }
                              }
                              addr96:
                           }
                           while(true)
                           {
                              if(this.§2!N§)
                              {
                                 loop5:
                                 while(!(_loc3_ && this))
                                 {
                                    this.§2!N§.dispose();
                                    loop6:
                                    while(true)
                                    {
                                       addr56:
                                       loop7:
                                       while(true)
                                       {
                                          if(this.§[P§)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop6;
                                             }
                                             addr113:
                                             addr74:
                                             while(!_loc3_)
                                             {
                                             }
                                             return false;
                                             addr74:
                                          }
                                          while(this.§6T§)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc3_ && _loc2_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      this.§6T§.dispose();
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr96);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr74);
                                                }
                                             }
                                             if(!_loc3_)
                                             {
                                                if(!(_loc4_ || _loc2_))
                                                {
                                                   break loop7;
                                                }
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                             continue loop5;
                                          }
                                          §§push(this.§ !3§.§7?§);
                                          if(!_loc3_)
                                          {
                                             §§push(int(§§pop() / 4));
                                          }
                                          var _loc2_:* = §§pop();
                                          if(_loc4_ || _loc3_)
                                          {
                                             this.§5!g§ = param1.createVertexBuffer(_loc2_ * 4,§=A§.§'%§);
                                             this.§5!g§.uploadFromByteArray(this.§ !3§.§>L§,0,0,_loc2_ * 4);
                                             this.§2!N§ = param1.createVertexBuffer(_loc2_ * 4,§=A§.§1X§);
                                             addr272:
                                             if(_loc4_)
                                             {
                                                this.§2!N§.uploadFromVector(this.§ !3§.§8q§,0,_loc2_ * 4);
                                                this.§[P§ = param1.createVertexBuffer(_loc2_ * 4,§=A§.§8=§);
                                                addr222:
                                                if(!_loc3_)
                                                {
                                                   this.§[P§.uploadFromVector(this.§ !3§.§3!+§,0,_loc2_ * 4);
                                                   this.§6T§ = param1.createIndexBuffer(_loc2_ * 6);
                                                   addr185:
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         this.§6T§.uploadFromVector(this.§7I§,0,_loc2_ * 6);
                                                         addr172:
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               this.§'i§ = false;
                                                               if(!_loc3_)
                                                               {
                                                                  if(!(_loc4_ || _loc3_))
                                                                  {
                                                                     §§goto(addr272);
                                                                  }
                                                                  return true;
                                                               }
                                                               §§goto(addr172);
                                                               addr176:
                                                            }
                                                            §§goto(addr272);
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                   addr211:
                                                   §§goto(addr211);
                                                }
                                                addr236:
                                                §§goto(addr236);
                                             }
                                             addr282:
                                             §§goto(addr282);
                                          }
                                          §§goto(addr176);
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr99);
                              }
                              §§goto(addr56);
                           }
                        }
                     }
                     §§goto(addr104);
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      private function §@j§(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§+v§(param1));
            loop0:
            while(!§§pop())
            {
               while(true)
               {
                  this.§5!g§.uploadFromByteArray(this.§ !3§.§>L§,0,0,this.§4!6§ * 4);
                  continue loop0;
               }
            }
            addr24:
            return;
            addr105:
         }
         loop2:
         while(true)
         {
            §§push(this.§#!%§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§2!N§.uploadFromVector(this.§ !3§.§8q§,0,this.§4!6§ * 4);
                     addr94:
                     while(!(_loc3_ && this))
                     {
                     }
                     §§goto(addr106);
                     addr42:
                     if(_loc2_ || _loc2_)
                     {
                        addr59:
                        if(!_loc3_)
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                  }
               }
               while(true)
               {
                  this.§[P§.uploadFromVector(this.§ !3§.§3!+§,0,this.§4!6§ * 4);
                  if(!_loc3_)
                  {
                     §§goto(addr42);
                  }
                  §§goto(addr94);
               }
               §§goto(addr59);
            }
            else
            {
               §§goto(addr105);
            }
         }
         §§goto(addr24);
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            if(this.§4!6§ == 0)
            {
               if(_loc8_)
               {
                  §§goto(addr24);
               }
            }
            §§push(this.§ !3§.premultipliedAlpha);
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
            if(_loc8_)
            {
               if(this.§+x§)
               {
                  addr44:
                  §§push(§;<§(_loc5_,this.§+x§.mipMapping,this.§+x§.repeat,this.§4!z§,this.§#!%§));
                  if(_loc8_ || this)
                  {
                     §§push(§§pop());
                     if(_loc8_)
                     {
                        addr76:
                        §§push(§§pop());
                     }
                  }
               }
               else
               {
                  §§push(§7!p§(_loc5_));
                  if(_loc8_)
                  {
                     §§push(§§pop());
                     if(_loc8_)
                     {
                        §§goto(addr76);
                     }
                  }
               }
               var _loc6_:* = §§pop();
               if(_loc8_ || param2)
               {
                  §?%§.§4!s§(param1,_loc4_);
                  if(_loc8_)
                  {
                     this.§@j§(param1);
                     if(_loc8_)
                     {
                        param1.setProgram(§else§.§^!A§.§6"§(_loc6_));
                        if(!(_loc9_ && param3))
                        {
                           param1.setVertexBufferAt(0,this.§[P§,§=A§.§%F§,Context3DVertexBufferFormat.FLOAT_3);
                           if(_loc8_ || this)
                           {
                              §§push(this.§+x§);
                              if(_loc8_)
                              {
                                 §§push(null);
                                 if(_loc8_ || param2)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc8_)
                                    {
                                       §§push(§§pop());
                                       if(_loc8_ || this)
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc9_ && param2))
                                             {
                                                §§pop();
                                                if(!(_loc9_ && param3))
                                                {
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(this.§#!%§);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc8_ || this)
                                                         {
                                                            while(true)
                                                            {
                                                               addr117:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  if(_loc8_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        param1.setVertexBufferAt(2,this.§2!N§,§=A§.§!"§,Context3DVertexBufferFormat.FLOAT_4);
                                                                        if(!(_loc9_ && param3))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        addr450:
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           param1.setVertexBufferAt(1,this.§5!g§,§=A§.§<!?§,Context3DVertexBufferFormat.FLOAT_2);
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              addr381:
                                                                              loop5:
                                                                              while(true)
                                                                              {
                                                                                 param1.drawTriangles(this.§6T§,0,this.§4!6§ * 2);
                                                                                 loop6:
                                                                                 for(; !_loc9_; continue loop5)
                                                                                 {
                                                                                    §§push(this.§+x§);
                                                                                    loop7:
                                                                                    while(!_loc9_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop8:
                                                                                          while(true)
                                                                                          {
                                                                                             param1.setTextureAt(0,null);
                                                                                             addr378:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   param1.setVertexBufferAt(1,null);
                                                                                                   continue loop8;
                                                                                                }
                                                                                                addr459:
                                                                                                addr401:
                                                                                                loop22:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   if(!(_loc9_ && param2))
                                                                                                   {
                                                                                                      break loop0;
                                                                                                   }
                                                                                                   addr464:
                                                                                                   addr464:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§6`§,1);
                                                                                                      break loop22;
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   addr423:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§+x§);
                                                                                                      break loop7;
                                                                                                   }
                                                                                                   §§goto(addr464);
                                                                                                }
                                                                                                continue loop15;
                                                                                             }
                                                                                             continue loop16;
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§+x§);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(null);
                                                                                             addr343:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(_loc8_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         addr353:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            loop2:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§#!%§);
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  if(_loc9_ && this)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                               }
                                                                                                               addr309:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr336:
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        if(!(_loc8_ || param1))
                                                                                                                        {
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           param1.setVertexBufferAt(2,null);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              addr329:
                                                                                                                              if(_loc8_ || param2)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                           §§goto(addr378);
                                                                                                                        }
                                                                                                                        §§goto(addr360);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr329);
                                                                                                                     }
                                                                                                                     addr325:
                                                                                                                     addr336:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     param1.setVertexBufferAt(0,null);
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr325);
                                                                                                                     §§goto(addr336);
                                                                                                                  }
                                                                                                                  return;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr353:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr309);
                                                                                                      }
                                                                                                   }
                                                                                                   addr352:
                                                                                                }
                                                                                                §§goto(addr353);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          break loop6;
                                                                                       }
                                                                                       param1.setTextureAt(0,null);
                                                                                       §§goto(addr401);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc8_ || param2)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          param1.setTextureAt(0,this.§+x§.getBase(param1));
                                                                                          continue loop15;
                                                                                       }
                                                                                       addr443:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr459);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr120:
                                                                  }
                                                                  §§goto(addr321);
                                                               }
                                                            }
                                                            addr116:
                                                         }
                                                         §§goto(addr353);
                                                      }
                                                      §§goto(addr117);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr381);
                                                      §§goto(addr403);
                                                   }
                                                }
                                                §§goto(addr321);
                                             }
                                             §§goto(addr243);
                                          }
                                          §§goto(addr116);
                                       }
                                       §§goto(addr352);
                                    }
                                    §§goto(addr309);
                                 }
                                 §§goto(addr343);
                              }
                              §§goto(addr342);
                           }
                           §§goto(addr321);
                        }
                        §§goto(addr443);
                     }
                     §§goto(addr321);
                  }
                  §§goto(addr367);
               }
               §§goto(addr120);
            }
            §§goto(addr44);
         }
         addr24:
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§4!6§ = 0;
            loop0:
            while(true)
            {
               this.§#!%§ = false;
               while(true)
               {
                  this.§+x§ = null;
                  loop2:
                  while(_loc1_ || _loc2_)
                  {
                     while(true)
                     {
                        this.§4!z§ = null;
                        if(!(_loc2_ && _loc1_))
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §'!i§(param1:§;R§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!_loc9_)
         {
            §§push(this.§4!6§);
            loop0:
            while(true)
            {
               §§push(1);
               if(_loc10_ || param2)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc10_)
                  {
                     if(§§pop() > this.§ !3§.§7?§ / 4)
                     {
                        while(true)
                        {
                           this.§?!Q§();
                           addr121:
                           addr89:
                           while(true)
                           {
                           }
                           if(_loc9_ && param1)
                           {
                              continue;
                           }
                           this.§+x§ = param3;
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 this.§4!z§ = param4;
                                 while(true)
                                 {
                                    if(_loc9_)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc10_)
                                    {
                                       §§push(this.§ !3§);
                                       if(!_loc9_)
                                       {
                                          if(param3)
                                          {
                                             addr27:
                                             §§push(param3.premultipliedAlpha);
                                             if(!(_loc9_ && this))
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc9_ && param3)
                                                {
                                                }
                                                addr46:
                                                §§pop().setPremultipliedAlpha(§§pop(),false);
                                                if(!(_loc9_ && param1))
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
                                          §§goto(addr46);
                                       }
                                       §§goto(addr27);
                                    }
                                    else
                                    {
                                       §§goto(addr121);
                                    }
                                 }
                                 addr55:
                                 while(true)
                                 {
                                    if(false)
                                    {
                                       continue loop5;
                                    }
                                    addr122:
                                    §§push(this.§4!6§);
                                    if(!(_loc9_ && param2))
                                    {
                                       addr141:
                                       §§push(int(§§pop() * 4));
                                    }
                                    var _loc6_:* = §§pop();
                                    if(!_loc9_)
                                    {
                                       §§push(param2);
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() * param1.alpha);
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr202:
                                             if(_loc9_ && param1)
                                             {
                                                continue;
                                             }
                                             §§push(§§pop() == 1);
                                             loop13:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                if(!_loc9_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      for(; §§pop(); continue loop13)
                                                      {
                                                         if(!(_loc9_ && this))
                                                         {
                                                            if(_loc9_ && param3)
                                                            {
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(param1.useColor);
                                                                  if(!(_loc9_ && param3))
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  if(_loc10_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr216:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop15;
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            if(_loc10_)
                                                            {
                                                               this.§#!%§ = true;
                                                               if(_loc10_)
                                                               {
                                                                  addr191:
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(param2);
                                                                     if(_loc9_ && param2)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr202);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     param2 = §§pop();
                                                                     if(!(_loc10_ || param2))
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        param1.copyVertexDataTo(this.§ !3§,_loc6_,param2,param5);
                                                                        addr226:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr193);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr193:
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                            §§goto(addr226);
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                      var _loc7_:*;
                                                      §§push((_loc7_ = this).§4!6§);
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §§push(§§pop() + 1);
                                                      }
                                                      var _loc8_:* = §§pop();
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         _loc7_.§4!6§ = _loc8_;
                                                      }
                                                      addr278:
                                                      return;
                                                      addr168:
                                                   }
                                                }
                                                §§goto(addr216);
                                                if(!(_loc10_ || param1))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr168);
                                             }
                                          }
                                       }
                                       §§goto(addr234);
                                    }
                                    §§goto(addr252);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(this.§4!6§);
                        if(!_loc10_)
                        {
                           break;
                        }
                        continue loop0;
                        §§goto(addr121);
                     }
                  }
               }
               §§goto(addr141);
            }
         }
         §§goto(addr55);
      }
      
      public function §;!Z§(param1:§;R§, param2:Texture, param3:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§+x§);
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
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param2 == null);
                                    while(_loc5_ || this)
                                    {
                                       §§push(!§§pop());
                                       addr320:
                                       if(_loc4_ && param1)
                                       {
                                          continue;
                                       }
                                       §§push(param2.repeat);
                                       if(!_loc5_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(§§pop() != §§pop());
                                       if(_loc5_ || this)
                                       {
                                          addr340:
                                          if(!§§pop())
                                          {
                                             addr343:
                                             §§pop();
                                             addr344:
                                             §§push(this.§4!z§ != param3);
                                             if(_loc5_ || param1)
                                             {
                                                if(!(_loc5_ || this))
                                                {
                                                   continue loop3;
                                                }
                                                §§goto(addr297);
                                             }
                                             addr313:
                                             if(_loc5_ || this)
                                             {
                                                §§goto(addr320);
                                             }
                                             addr384:
                                             addr383:
                                             if(§§pop())
                                             {
                                                §§goto(addr340);
                                             }
                                             addr385:
                                             §§pop();
                                             if(!_loc4_)
                                             {
                                                §§push(this.§+x§);
                                                continue loop0;
                                             }
                                             continue loop6;
                                          }
                                          §§goto(addr297);
                                       }
                                       §§goto(addr385);
                                    }
                                    continue loop2;
                                 }
                              }
                              addr396:
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
                                       §§push(this.§+x§);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       if(_loc5_)
                                       {
                                          §§push(null);
                                          if(_loc4_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() == §§pop());
                                          if(_loc5_ || param1)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop());
                                                loop11:
                                                for(; _loc5_; loop17:
                                                while(true)
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      if(!(_loc4_ && param2))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     §§pop();
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(this.§#!%§);
                                                                           if(_loc5_)
                                                                           {
                                                                              if(!(_loc4_ && param3))
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    §§goto(addr343);
                                                                                 }
                                                                                 §§goto(addr273);
                                                                              }
                                                                              §§goto(addr240);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr60:
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§goto(addr65);
                                                                                 §§push(!§§pop());
                                                                              }
                                                                           }
                                                                           §§goto(addr332);
                                                                        }
                                                                        §§goto(addr162);
                                                                     }
                                                                     §§goto(addr92);
                                                                  }
                                                                  §§goto(addr343);
                                                               }
                                                               addr88:
                                                               return §§pop();
                                                            }
                                                            §§goto(addr384);
                                                         }
                                                         addr297:
                                                         if(!§§pop())
                                                         {
                                                            addr300:
                                                            §§pop();
                                                            §§push(this.§#!%§);
                                                            if(_loc5_)
                                                            {
                                                               addr260:
                                                               §§push(§§pop() == param1.useColor);
                                                               if(!(_loc4_ && param2))
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr270);
                                                                  }
                                                                  §§goto(addr273);
                                                               }
                                                               §§goto(addr300);
                                                            }
                                                            §§goto(addr344);
                                                            addr301:
                                                         }
                                                         §§goto(addr270);
                                                      }
                                                      break;
                                                   }
                                                   continue loop11;
                                                },§§goto(addr260))
                                                {
                                                   if(!(_loc4_ && param2))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop19:
                                                         while(true)
                                                         {
                                                            if(_loc5_ || param1)
                                                            {
                                                               §§pop();
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc5_ || param3)
                                                                     {
                                                                        §§push(param2 == null);
                                                                        while(true)
                                                                        {
                                                                           loop13:
                                                                           while(!§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§4!6§);
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!(_loc4_ && param3))
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       loop15:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          §§push(!§§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc5_ || this))
                                                                                             {
                                                                                                return §§pop();
                                                                                             }
                                                                                             addr174:
                                                                                             if(!(_loc5_ || param3))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(§§pop());
                                                                                             addr65:
                                                                                             continue loop11;
                                                                                             if(_loc4_ && param3)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             if(!(_loc5_ || this))
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             if(!(_loc4_ && param2))
                                                                                             {
                                                                                                §§goto(addr88);
                                                                                             }
                                                                                             §§goto(addr396);
                                                                                          }
                                                                                          §§goto(addr300);
                                                                                       }
                                                                                       §§goto(addr332);
                                                                                    }
                                                                                    §§goto(addr239);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr238);
                                                                           }
                                                                           addr162:
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           if(_loc5_ || param3)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr173:
                                                                                 §§goto(addr174);
                                                                                 §§push(false);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr301);
                                                                              }
                                                                           }
                                                                           §§goto(addr273);
                                                                           §§goto(addr234);
                                                                        }
                                                                        addr234:
                                                                        addr160:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr369);
                                                                     }
                                                                     §§goto(addr385);
                                                                  }
                                                                  else if(!(_loc4_ && param1))
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr385);
                                                               }
                                                            }
                                                            §§goto(addr332);
                                                         }
                                                         addr217:
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                   §§goto(addr329);
                                                }
                                                addr270:
                                                if(!§§pop())
                                                {
                                                   addr273:
                                                   §§pop();
                                                   if(!_loc4_)
                                                   {
                                                      addr239:
                                                      addr238:
                                                      addr240:
                                                      §§push(this.§4!6§ == 8192);
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr260);
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   §§goto(addr344);
                                                }
                                                addr242:
                                                return §§pop();
                                             }
                                             §§goto(addr344);
                                          }
                                          §§goto(addr217);
                                       }
                                    }
                                    continue loop0;
                                 }
                                 addr369:
                                 §§push(this.§+x§);
                                 §§push(§§pop().root == param2.root);
                                 if(!(_loc4_ && param1))
                                 {
                                    §§goto(addr383);
                                    §§push(!§§pop());
                                 }
                                 §§goto(addr343);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr173);
      }
   }
}
