package §"a§
{
   import §!=§.§`b§;
   import §'!6§.§ "E§;
   import §'!6§.§5T§;
   import §'!6§.DisplayObject;
   import §'!6§.DisplayObjectContainer;
   import §4!y§.AGALMiniAssembler;
   import §<5§.Texture;
   import §<5§.§^M§;
   import §`#§.§#f§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §0!B§
   {
      
      private static var §,!J§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §0!B§)
         {
            §,!J§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §^1§:int;
      
      private var §1"Q§:Texture;
      
      private var §!!@§:String;
      
      private var §^!S§:§`b§;
      
      private var §+c§:VertexBuffer3D;
      
      private var §[!'§:VertexBuffer3D;
      
      private var §1!2§:VertexBuffer3D;
      
      private var §`"O§:Vector.<uint>;
      
      private var §8C§:IndexBuffer3D;
      
      private var §6#§:Boolean = false;
      
      private var §;3§:Boolean = false;
      
      public function §0!B§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               §,o§();
               addr99:
               while(true)
               {
                  this.§^!S§ = new §`b§(0,true);
                  addr34:
                  if(!(_loc1_ && _loc1_))
                  {
                     return;
                     addr51:
                  }
               }
               loop3:
               while(true)
               {
                  if(!(_loc2_ || _loc2_))
                  {
                     continue loop0;
                  }
                  this.§^1§ = 0;
                  while(true)
                  {
                     if(_loc2_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop3;
                  }
                  while(true)
                  {
                     this.§`"O§ = new Vector.<uint>(0);
                     continue loop3;
                  }
                  §§goto(addr51);
               }
               §§goto(addr99);
            }
         }
         §§goto(addr95);
      }
      
      public static function §4!t§(param1:DisplayObjectContainer, param2:Vector.<§0!B§>) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §6!&§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §6!&§(param1:DisplayObject, param2:Vector.<§0!B§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§5T§ = null;
         var _loc13_:§ "E§ = null;
         var _loc14_:Texture = null;
         var _loc15_:String = null;
         var _loc16_:§0!B§ = null;
         var _loc7_:* = false;
         if(_loc18_ || param1)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               if(§§pop() != -1)
               {
                  §§push(param1.alpha == 0);
                  if(_loc18_)
                  {
                     if(!§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§pop();
                           loop2:
                           while(true)
                           {
                              §§push(param1.visible);
                              if(!_loc17_)
                              {
                                 if(_loc18_ || param1)
                                 {
                                    §§push(!§§pop());
                                    if(_loc18_)
                                    {
                                       addr70:
                                       if(_loc17_ && param2)
                                       {
                                          continue loop7;
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc17_)
                                             {
                                                §§push(param3);
                                                if(!(_loc17_ && §0!B§))
                                                {
                                                   break loop0;
                                                }
                                                continue loop0;
                                             }
                                             if(_loc17_)
                                             {
                                                continue loop2;
                                             }
                                             if(!_loc17_)
                                             {
                                                if(!_loc17_)
                                                {
                                                   if(_loc18_)
                                                   {
                                                      if(false)
                                                      {
                                                         addr107:
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                   addr158:
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
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      param2.push(new §0!B§());
                                                      addr139:
                                                      while(true)
                                                      {
                                                         if(_loc18_)
                                                         {
                                                            §§goto(addr107);
                                                         }
                                                      }
                                                   }
                                                   addr135:
                                                }
                                                while(true)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr139);
                                          }
                                          break;
                                          §§goto(addr70);
                                       }
                                       §§push(param1 is DisplayObjectContainer);
                                    }
                                    if(§§pop())
                                    {
                                       break;
                                    }
                                    if(!(param1 is §5T§))
                                    {
                                       throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
                                    }
                                    if(_loc18_)
                                    {
                                       _loc14_ = !!(_loc13_ = (_loc12_ = param1 as §5T§) as § "E§) ? _loc13_.texture : null;
                                       if(_loc18_)
                                       {
                                          if(_loc13_)
                                          {
                                             if(_loc18_ || param2)
                                             {
                                                addr344:
                                                §§push(_loc13_.smoothing);
                                                if(!_loc17_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc17_)
                                                   {
                                                   }
                                                }
                                                addr357:
                                                _loc15_ = §§pop();
                                                addr356:
                                             }
                                             if((_loc16_ = param2[param3]).§+!U§(_loc12_,_loc14_,_loc15_,param5))
                                             {
                                                if(!(_loc17_ && param3))
                                                {
                                                   param3++;
                                                   if(!_loc17_)
                                                   {
                                                      if(param2.length <= param3)
                                                      {
                                                         if(!(_loc17_ && param2))
                                                         {
                                                            param2.push(new §0!B§());
                                                            if(!_loc17_)
                                                            {
                                                               addr397:
                                                               (_loc16_ = param2[param3]).reset();
                                                               _loc16_.§;!T§(_loc12_,param5,_loc14_,_loc15_,param4);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr397);
                                                   }
                                                   addr420:
                                                   §§push(_loc7_);
                                                   if(!_loc17_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc18_ || param3)
                                                         {
                                                            addr431:
                                                            §§push(int(param2.length - 1));
                                                            if(!(_loc17_ && param1))
                                                            {
                                                               addr442:
                                                               _loc6_ = §§pop();
                                                               if(_loc18_)
                                                               {
                                                                  addr446:
                                                                  §§push(_loc6_);
                                                                  if(_loc18_ || param2)
                                                                  {
                                                                     if(_loc18_)
                                                                     {
                                                                        addr458:
                                                                        if(§§pop() <= param3)
                                                                        {
                                                                           if(!(_loc17_ && §0!B§))
                                                                           {
                                                                              if(!(_loc17_ && param2))
                                                                              {
                                                                                 §§goto(addr484);
                                                                              }
                                                                              addr505:
                                                                              delete param2[_loc6_];
                                                                              §§goto(addr506);
                                                                              addr513:
                                                                           }
                                                                           §§goto(addr498);
                                                                        }
                                                                        param2[_loc6_].dispose();
                                                                        §§goto(addr513);
                                                                     }
                                                                     §§goto(addr497);
                                                                  }
                                                                  §§goto(addr484);
                                                               }
                                                               §§goto(addr500);
                                                            }
                                                            §§goto(addr484);
                                                         }
                                                      }
                                                      addr484:
                                                      §§push(param3);
                                                      if(_loc17_ && param3)
                                                      {
                                                         addr497:
                                                         _loc6_ = §§pop();
                                                         addr498:
                                                         if(_loc18_)
                                                         {
                                                            addr500:
                                                            §§goto(addr446);
                                                         }
                                                         §§goto(addr497);
                                                         §§push(_loc6_ - 1);
                                                         addr506:
                                                      }
                                                      return §§pop();
                                                   }
                                                   §§goto(addr505);
                                                }
                                             }
                                             §§goto(addr397);
                                          }
                                          else
                                          {
                                             §§push(null);
                                             if(!_loc17_)
                                             {
                                                §§goto(addr356);
                                             }
                                          }
                                          §§goto(addr357);
                                       }
                                       §§goto(addr344);
                                    }
                                    §§goto(addr420);
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr70);
                           }
                           addr165:
                           §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                           if(!(_loc17_ && param3))
                           {
                              §§push(int(§§pop()));
                           }
                           _loc9_ = §§pop();
                           _loc10_ = new Matrix3D();
                           if(!_loc17_)
                           {
                              §§push(param5);
                              if(_loc18_)
                              {
                                 §§push(param1.alpha);
                                 if(_loc18_ || param3)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc18_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc17_ && param2))
                                       {
                                          §§push(§§pop());
                                          if(_loc18_ || param1)
                                          {
                                             param5 = §§pop();
                                             addr219:
                                             §§push(0);
                                          }
                                       }
                                    }
                                    §§goto(addr219);
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    if(!_loc17_)
                                    {
                                       _loc6_ = 0;
                                       addr287:
                                       §§push(_loc6_);
                                       if(!(_loc17_ && param3))
                                       {
                                          §§push(_loc9_);
                                          if(!_loc17_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                _loc11_ = _loc8_.getChildAt(_loc6_);
                                                if(_loc18_ || §0!B§)
                                                {
                                                   _loc10_.copyFrom(param4);
                                                   _loc11_.§#,§(_loc10_);
                                                   addr275:
                                                   if(!(_loc17_ && §0!B§))
                                                   {
                                                      addr258:
                                                      §§push(§6!&§(_loc11_,param2,param3,_loc10_,param5));
                                                      if(_loc18_)
                                                      {
                                                         §§push(int(§§pop()));
                                                      }
                                                      param3 = §§pop();
                                                      _loc6_++;
                                                      if(_loc18_)
                                                      {
                                                         if(_loc18_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr258);
                                                            }
                                                            §§goto(addr287);
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      addr270:
                                                      §§goto(addr270);
                                                   }
                                                   addr286:
                                                   §§goto(addr286);
                                                }
                                                §§goto(addr258);
                                             }
                                             if(!(_loc17_ && param3))
                                             {
                                                addr306:
                                                §§goto(addr420);
                                             }
                                             §§goto(addr431);
                                          }
                                          §§goto(addr458);
                                       }
                                       §§goto(addr442);
                                       addr225:
                                    }
                                    §§goto(addr225);
                                 }
                                 §§goto(addr306);
                              }
                              §§goto(addr219);
                           }
                           §§goto(addr287);
                        }
                        addr118:
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr118);
               }
            }
            return §§pop();
         }
         §§goto(addr158);
      }
      
      private static function §,o§() : void
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
         var _loc1_:§!"J§ = §!"J§.§1&§;
         if(_loc24_ || §0!B§)
         {
            if(_loc1_.§6"6§(§;w§(true)))
            {
               if(_loc24_)
               {
                  §§goto(addr59);
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
                  if(_loc23_)
                  {
                     continue loop0;
                  }
                  §§push("m44 op, va0, vc0  \n");
                  while(true)
                  {
                     §§push("mov v0, va2       \n");
                     addr180:
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        addr181:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           continue loop1;
                        }
                     }
                     addr149:
                     if(_loc23_ && _loc1_)
                     {
                        continue;
                     }
                     §§push("mov oc, ft0       \n");
                     if(_loc24_ || _loc1_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc24_ || _loc2_)
                        {
                           addr172:
                        }
                        while(true)
                        {
                           _loc5_ = §§pop();
                           loop7:
                           while(true)
                           {
                              _loc2_.§?!i§(Context3DProgramType.VERTEX,_loc4_);
                              if(_loc24_ || _loc1_)
                              {
                                 if(_loc23_ && _loc3_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    _loc3_.§?!i§(Context3DProgramType.FRAGMENT,_loc5_);
                                    if(!_loc23_)
                                    {
                                       if(!(_loc23_ && _loc2_))
                                       {
                                          _loc1_.§'!Q§(§;w§(_loc6_),_loc2_.§,"T§,_loc3_.§,"T§);
                                          if(_loc24_)
                                          {
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                       continue loop7;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                           addr139:
                           while(true)
                           {
                              §§push("mul ft0, v0, fc0  \n");
                              if(_loc24_)
                              {
                                 if(!(_loc23_ && §0!B§))
                                 {
                                    §§goto(addr149);
                                 }
                                 break;
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr181);
                        }
                        addr174:
                     }
                     §§goto(addr180);
                  }
               }
            }
            return;
         }
         addr59:
      }
      
      public static function §;w§(param1:Boolean) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §0!B§)
         {
            if(param1)
            {
               addr36:
               §§push("QB_q*");
               if(_loc2_ && §0!B§)
               {
               }
            }
            else
            {
               return "QB_q\'";
            }
            return §§pop();
         }
         §§goto(addr36);
      }
      
      public static function §[!P§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && §0!B§))
         {
            if(param1)
            {
               addr25:
               §§push("QB_i*");
               if(_loc8_)
               {
               }
            }
            else
            {
               §§push("QB_i\'");
            }
            var _loc6_:* = §§pop();
            if(!(_loc8_ && param2))
            {
               §§push(param2);
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(_loc6_);
                        addr217:
                        while(true)
                        {
                           §§push("N");
                           addr218:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr219:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 addr220:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                     }
                     addr216:
                  }
                  while(true)
                  {
                     §§push(param3);
                     loop7:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(_loc6_);
                           addr210:
                           while(true)
                           {
                              §§push("R");
                              addr211:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr212:
                                 while(true)
                                 {
                                    _loc6_ = §§pop();
                                    addr213:
                                    while(true)
                                    {
                                       continue loop7;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(_loc8_ && param3)
                  {
                     continue;
                  }
                  if(§§pop())
                  {
                     loop14:
                     for(; _loc7_; while(true)
                     {
                        if(_loc8_ && §0!B§)
                        {
                           continue loop14;
                        }
                        if(!(_loc8_ && param3))
                        {
                           if(!(_loc8_ && §0!B§))
                           {
                              §§goto(addr40);
                           }
                           else
                           {
                              §§goto(addr216);
                           }
                        }
                        §§goto(addr209);
                        §§goto(addr126);
                     },§§goto(addr169))
                     {
                        §§push(_loc6_);
                        loop15:
                        while(true)
                        {
                           §§push("C");
                           if(!(_loc8_ && param3))
                           {
                              if(_loc7_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc8_ && param1))
                                 {
                                    if(!(_loc8_ && param3))
                                    {
                                       _loc6_ = §§pop();
                                       loop16:
                                       while(true)
                                       {
                                          addr61:
                                          loop17:
                                          while(true)
                                          {
                                             §§push(param4);
                                             if(_loc7_ || §0!B§)
                                             {
                                                addr126:
                                                §§push(§^M§.§#§);
                                                if(!(_loc8_ && param2))
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      if(_loc7_ || param1)
                                                      {
                                                         continue loop16;
                                                      }
                                                      continue loop14;
                                                   }
                                                   addr40:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc7_ || param2)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue loop15;
                                                         }
                                                         if(_loc7_ || param2)
                                                         {
                                                            return §§pop();
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop().charAt(0));
                                                   }
                                                   addr122:
                                                }
                                                while(true)
                                                {
                                                   _loc6_ = §§pop();
                                                   continue loop14;
                                                }
                                                addr126:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      break loop17;
                                                   }
                                                   §§push(param4);
                                                }
                                                addr119:
                                             }
                                             §§goto(addr122);
                                             continue loop16;
                                          }
                                          §§goto(addr217);
                                       }
                                    }
                                    §§goto(addr219);
                                 }
                                 §§goto(addr212);
                              }
                              break;
                           }
                           §§goto(addr211);
                        }
                        §§goto(addr218);
                     }
                     §§goto(addr220);
                  }
                  §§goto(addr61);
               }
            }
            §§goto(addr111);
         }
         §§goto(addr25);
      }
      
      public function get §>"G§() : int
      {
         return this.§^1§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§+c§)
            {
               while(true)
               {
                  this.§+c§.dispose();
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
               if(this.§[!'§)
               {
                  loop3:
                  while(true)
                  {
                     this.§[!'§.dispose();
                     addr92:
                     while(!(_loc1_ && _loc1_))
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr105);
                        }
                     }
                     addr64:
                     continue loop2;
                     while(true)
                     {
                        if(!(_loc2_ || this))
                        {
                           continue loop3;
                        }
                        while(true)
                        {
                           this.§1!2§.dispose();
                           while(true)
                           {
                              §§goto(addr29);
                           }
                        }
                     }
                     §§goto(addr92);
                  }
               }
               while(true)
               {
                  if(this.§1!2§)
                  {
                     §§goto(addr64);
                  }
                  addr29:
                  while(this.§8C§)
                  {
                     if(_loc2_)
                     {
                        if(_loc1_)
                        {
                           continue loop9;
                        }
                        if(_loc1_)
                        {
                           continue loop6;
                        }
                        if(_loc1_ && this)
                        {
                           break loop6;
                        }
                        this.§8C§.dispose();
                     }
                     break;
                  }
                  return;
               }
            }
         }
         §§goto(addr81);
      }
      
      private function §9"D§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§^!S§.§2"M§);
         if(_loc4_)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(!(_loc5_ && this))
         {
            §§push(_loc1_);
            if(_loc4_ || this)
            {
               §§push(0);
               if(_loc4_)
               {
                  if(§§pop() == §§pop())
                  {
                     addr45:
                     §§push(16);
                     if(_loc4_ || this)
                     {
                        addr72:
                        §§push(int(§§pop()));
                     }
                     else
                     {
                        addr62:
                        §§push(int(§§pop() * 2));
                        if(_loc4_ || this)
                        {
                           §§goto(addr72);
                        }
                     }
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§goto(addr62);
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_ || _loc1_)
                  {
                     this.§^!S§.§2"M§ = _loc2_ * 4;
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
                        if(!_loc5_)
                        {
                           if(_loc4_ || _loc2_)
                           {
                              if(_loc4_)
                              {
                                 if(!_loc5_)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       this.§;3§ = true;
                                       addr139:
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          this.§`"O§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                                          addr192:
                                          while(true)
                                          {
                                             this.§`"O§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                                             addr168:
                                             while(true)
                                             {
                                                if(!(_loc5_ && this))
                                                {
                                                   _loc3_++;
                                                   while(_loc5_ && _loc2_)
                                                   {
                                                   }
                                                   continue loop0;
                                                   addr144:
                                                }
                                                else
                                                {
                                                   addr267:
                                                }
                                                addr253:
                                                while(true)
                                                {
                                                   this.§`"O§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                                                }
                                                while(true)
                                                {
                                                   this.§`"O§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
                                                }
                                             }
                                          }
                                       }
                                       addr209:
                                    }
                                    while(true)
                                    {
                                       this.§`"O§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                                       §§goto(addr209);
                                       §§goto(addr253);
                                    }
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr139);
                     }
                     else
                     {
                        this.§`"O§[int(_loc3_ * 6)] = _loc3_ * 4;
                     }
                     §§goto(addr267);
                  }
                  return;
               }
               §§goto(addr62);
            }
            §§goto(addr72);
         }
         §§goto(addr45);
      }
      
      private function §#!T§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§;3§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     if(param1 != null)
                     {
                        loop1:
                        while(true)
                        {
                           if(this.§+c§)
                           {
                              while(true)
                              {
                                 this.§+c§.dispose();
                                 addr94:
                                 while(_loc3_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                    }
                                 }
                                 if(!_loc3_)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                              addr91:
                           }
                           while(true)
                           {
                              if(this.§[!'§)
                              {
                                 loop5:
                                 for(; !_loc4_; while(true)
                                 {
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue loop5;
                                    }
                                    this.§1!2§.dispose();
                                    §§goto(addr67);
                                 },§§goto(addr79))
                                 {
                                    this.§[!'§.dispose();
                                    while(_loc3_ || _loc3_)
                                    {
                                       addr37:
                                       if(!(_loc3_ || param1))
                                       {
                                          continue;
                                       }
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                if(this.§1!2§)
                                                {
                                                   continue loop5;
                                                }
                                                loop10:
                                                while(this.§8C§)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc4_ && _loc2_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      this.§8C§.dispose();
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr37);
                                                   }
                                                   else
                                                   {
                                                      while(!_loc4_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      addr67:
                                                   }
                                                   §§goto(addr94);
                                                }
                                             }
                                             addr53:
                                          }
                                          §§push(this.§^!S§.§2"M§);
                                          if(_loc3_)
                                          {
                                             §§push(int(§§pop() / 4));
                                          }
                                          var _loc2_:* = §§pop();
                                          if(!_loc4_)
                                          {
                                             this.§+c§ = param1.createVertexBuffer(_loc2_ * 4,§`b§.§5!O§);
                                             this.§+c§.uploadFromByteArray(this.§^!S§.§@T§,0,0,_loc2_ * 4);
                                             this.§[!'§ = param1.createVertexBuffer(_loc2_ * 4,§`b§.§""U§);
                                             addr241:
                                             addr281:
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                this.§[!'§.uploadFromVector(this.§^!S§.§,e§,0,_loc2_ * 4);
                                                this.§1!2§ = param1.createVertexBuffer(_loc2_ * 4,§`b§.§1!-§);
                                                addr216:
                                                if(!_loc4_)
                                                {
                                                   this.§1!2§.uploadFromVector(this.§^!S§.§['§,0,_loc2_ * 4);
                                                   addr203:
                                                   if(!_loc4_)
                                                   {
                                                      this.§8C§ = param1.createIndexBuffer(_loc2_ * 6);
                                                      addr184:
                                                      if(_loc3_ || param1)
                                                      {
                                                         this.§8C§.uploadFromVector(this.§`"O§,0,_loc2_ * 6);
                                                         addr173:
                                                         if(_loc3_)
                                                         {
                                                            this.§;3§ = false;
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§goto(addr203);
                                                                  }
                                                                  return true;
                                                               }
                                                               §§goto(addr184);
                                                            }
                                                            §§goto(addr173);
                                                            addr175:
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   §§goto(addr281);
                                                }
                                                addr230:
                                                §§goto(addr230);
                                             }
                                             addr271:
                                             §§goto(addr271);
                                          }
                                          §§goto(addr175);
                                       }
                                       §§goto(addr91);
                                    }
                                    throw new §#f§();
                                 }
                                 addr118:
                                 return false;
                                 addr117:
                              }
                              §§goto(addr53);
                           }
                        }
                        continue;
                     }
                     §§goto(addr106);
                  }
               }
               §§goto(addr117);
            }
            §§goto(addr118);
         }
         §§goto(addr101);
      }
      
      private function §9"#§(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§#!T§(param1));
            loop0:
            while(!§§pop())
            {
               while(true)
               {
                  this.§+c§.uploadFromByteArray(this.§^!S§.§@T§,0,0,this.§^1§ * 4);
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
            §§push(this.§6#§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§[!'§.uploadFromVector(this.§^!S§.§,e§,0,this.§^1§ * 4);
                     addr87:
                     while(_loc2_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           continue;
                        }
                        §§goto(addr101);
                     }
                     continue loop2;
                  }
                  addr66:
               }
               while(true)
               {
                  this.§1!2§.uploadFromVector(this.§^!S§.§['§,0,this.§^1§ * 4);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr87);
               }
               §§goto(addr24);
            }
            else
            {
               §§goto(addr100);
            }
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || this)
         {
            if(this.§^1§ == 0)
            {
               if(_loc8_)
               {
                  return;
               }
            }
         }
         §§push(this.§^!S§.premultipliedAlpha);
         if(_loc8_)
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
         if(!_loc9_)
         {
            if(this.§1"Q§)
            {
               addr49:
               §§push(§[!P§(_loc5_,this.§1"Q§.mipMapping,this.§1"Q§.repeat,this.§!!@§,this.§6#§));
               if(!_loc9_)
               {
                  §§push(§§pop());
                  if(_loc9_ && param2)
                  {
                  }
                  addr86:
                  §§push(§§pop());
               }
               else
               {
                  addr78:
                  §§push(§§pop());
                  if(_loc8_ || this)
                  {
                     §§goto(addr86);
                  }
               }
            }
            else
            {
               §§push(§;w§(_loc5_));
               if(_loc8_)
               {
                  §§goto(addr78);
               }
            }
            var _loc6_:* = §§pop();
            if(!_loc9_)
            {
               §>w§.§+!p§(param1,_loc4_);
               loop0:
               while(true)
               {
                  this.§9"#§(param1);
                  if(!(_loc9_ && param3))
                  {
                     param1.setProgram(§!"J§.§1&§.§ z§(_loc6_));
                     loop1:
                     while(true)
                     {
                        param1.setVertexBufferAt(0,this.§1!2§,§`b§.§%!V§,Context3DVertexBufferFormat.FLOAT_3);
                        if(!_loc8_)
                        {
                           break;
                        }
                        if(!(_loc8_ || param3))
                        {
                           continue;
                        }
                        §§push(this.§1"Q§);
                        if(_loc8_ || param3)
                        {
                           §§push(null);
                           if(_loc8_ || param3)
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc8_ || param1)
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
                                          loop3:
                                          while(true)
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                §§push(this.§6#§);
                                                if(_loc8_ || param2)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc9_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      loop5:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            addr91:
                                                            param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
                                                            if(!_loc9_)
                                                            {
                                                               if(!(_loc8_ || param1))
                                                               {
                                                                  continue loop3;
                                                               }
                                                               if(false)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§push(_loc5_);
                                                               if(_loc8_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc9_ && param3))
                                                                     {
                                                                        §,!J§[0] = §,!J§[1] = §,!J§[2] = !!_loc4_ ? Number(param3) : Number(1);
                                                                        if(!_loc9_)
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           param1.setVertexBufferAt(1,this.§+c§,§`b§.§&"I§,Context3DVertexBufferFormat.FLOAT_2);
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 param1.drawTriangles(this.§8C§,0,this.§^1§ * 2);
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§1"Q§);
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             param1.setTextureAt(0,null);
                                                                                             addr387:
                                                                                             addr363:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc9_ && param1)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                             }
                                                                                             if(!(_loc8_ || this))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(this.§6#§);
                                                                                             if(_loc8_ || param1)
                                                                                             {
                                                                                                addr308:
                                                                                                if(_loc8_ || param3)
                                                                                                {
                                                                                                   addr316:
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(!(_loc9_ && this))
                                                                                                   {
                                                                                                      while(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc9_ && this)
                                                                                                            {
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               addr334:
                                                                                                               if(!(_loc9_ && this))
                                                                                                               {
                                                                                                                  break loop0;
                                                                                                               }
                                                                                                               break loop5;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr445:
                                                                                                               addr447:
                                                                                                               §§push(this.§1"Q§);
                                                                                                               addr447:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     param1.setTextureAt(0,null);
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     param1.setTextureAt(0,this.§1"Q§.getBase(param1));
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         param1.setVertexBufferAt(0,null);
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            if(_loc8_ || param3)
                                                                                                            {
                                                                                                               addr376:
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        return;
                                                                                                                     }
                                                                                                                     §§goto(addr448);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr387);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  loop22:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        §§goto(addr363);
                                                                                                                     }
                                                                                                                     addr360:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        continue loop22;
                                                                                                                        §§goto(addr308);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               addr376:
                                                                                                            }
                                                                                                            §§goto(addr325);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr277);
                                                                                                      }
                                                                                                      addr277:
                                                                                                      addr323:
                                                                                                      addr345:
                                                                                                   }
                                                                                                   break loop4;
                                                                                                }
                                                                                                §§goto(addr360);
                                                                                             }
                                                                                             §§goto(addr316);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr447);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr422:
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     param1.setVertexBufferAt(1,null);
                                                                     §§goto(addr376);
                                                                  }
                                                                  §§goto(addr445);
                                                               }
                                                               §§goto(addr360);
                                                            }
                                                            break;
                                                         }
                                                         if(_loc8_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr376);
                                                      }
                                                      param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§,!J§,1);
                                                      §§goto(addr464);
                                                   }
                                                   §§goto(addr360);
                                                }
                                                break;
                                             }
                                             while(!§§pop())
                                             {
                                                §§goto(addr360);
                                                §§goto(addr316);
                                             }
                                             §§goto(addr323);
                                          }
                                       }
                                    }
                                    §§goto(addr125);
                                 }
                                 §§goto(addr359);
                              }
                              §§goto(addr316);
                           }
                           §§goto(addr357);
                        }
                        §§goto(addr447);
                     }
                     §,!J§[3] = param3;
                     §§goto(addr469);
                  }
                  break;
               }
               while(true)
               {
                  param1.setVertexBufferAt(2,null);
                  §§goto(addr345);
                  §§goto(addr334);
               }
            }
            §§goto(addr464);
         }
         §§goto(addr49);
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§^1§ = 0;
         }
         while(true)
         {
            this.§6#§ = false;
            while(_loc1_)
            {
               this.§1"Q§ = null;
               do
               {
                  this.§!!@§ = null;
               }
               while(_loc2_);
               
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §;!T§(param1:§5T§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!_loc9_)
         {
            §§push(param2);
            if(_loc10_)
            {
               §§push(§§pop() * param1.alpha);
            }
            loop0:
            while(true)
            {
               §§push(Number(§§pop()));
               if(!(_loc9_ && this))
               {
                  param2 = §§pop();
                  while(true)
                  {
                     §§push(param2);
                     if(_loc10_ || param2)
                     {
                        §§push(0);
                        loop2:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              addr231:
                              return;
                           }
                           addr258:
                           addr174:
                           while(true)
                           {
                              §§push(this.§^1§);
                              if(_loc9_ && param3)
                              {
                                 break;
                              }
                              §§push(1);
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc9_)
                                 {
                                    break;
                                 }
                                 if(!_loc9_)
                                 {
                                    §§push(this.§^!S§.§2"M§);
                                    continue loop2;
                                 }
                                 continue loop0;
                              }
                           }
                           §§push(§§pop() * 4);
                        }
                     }
                     if(!(_loc10_ || param1))
                     {
                        continue;
                     }
                     this.§9"D§();
                     §§goto(addr219);
                  }
               }
               §§goto(addr260);
            }
         }
         §§goto(addr132);
      }
      
      public function §+!U§(param1:§5T§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            §§push(this.§1"Q§);
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
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       loop13:
                                       for(; _loc5_ || this; while(true)
                                       {
                                          if(_loc5_ || param2)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                §§goto(addr223);
                                             }
                                             break;
                                          }
                                          continue loop13;
                                          §§goto(addr120);
                                       },§§goto(addr451))
                                       {
                                          §§pop();
                                          loop14:
                                          while(true)
                                          {
                                             §§push(param2 == null);
                                             if(_loc5_)
                                             {
                                                loop15:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§push(false);
                                                               break loop14;
                                                            }
                                                            continue loop6;
                                                         }
                                                         §§push(this.§!!@§ == param3);
                                                         loop26:
                                                         while(true)
                                                         {
                                                            §§push(!§§pop());
                                                            loop27:
                                                            while(true)
                                                            {
                                                               addr397:
                                                               if(!§§pop())
                                                               {
                                                                  addr399:
                                                                  §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§6#§);
                                                                     loop32:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr433:
                                                                                 §§push(this.§1"Q§);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop().root == param2.root);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    while(_loc5_ || param2)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          addr451:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr452:
                                                                                             addr404:
                                                                                             §§push(this.§1"Q§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().repeat);
                                                                                                addr405:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr408:
                                                                                                   §§push(§§pop() != param2.repeat);
                                                                                                }
                                                                                                §§goto(addr452);
                                                                                             }
                                                                                          }
                                                                                          addr451:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          addr410:
                                                                                          §§goto(addr411);
                                                                                       }
                                                                                    }
                                                                                    continue loop3;
                                                                                    addr442:
                                                                                 }
                                                                                 §§goto(addr451);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§1"Q§);
                                                                                    if(!(_loc6_ && param3))
                                                                                    {
                                                                                       if(!(_loc6_ && param3))
                                                                                       {
                                                                                          §§push(null);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          §§push(§§pop() == §§pop());
                                                                                          loop11:
                                                                                          while(_loc5_ || param2)
                                                                                          {
                                                                                             if(!(_loc6_ && param3))
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                while(_loc5_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                   loop20:
                                                                                                   while(!(_loc6_ && param2))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         return §§pop();
                                                                                                      }
                                                                                                      addr151:
                                                                                                      continue loop13;
                                                                                                      if(_loc6_ && this)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(!(_loc6_ && param2))
                                                                                                         {
                                                                                                            if(!(_loc6_ && param2))
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(_loc5_ || param3)
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§push(param4 == 1);
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                        {
                                                                                                                           if(_loc5_ || param3)
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 addr112:
                                                                                                                                 §§push(§§pop() == !§§pop());
                                                                                                                                 if(_loc5_ || param3)
                                                                                                                                 {
                                                                                                                                    addr120:
                                                                                                                                    if(_loc6_ && this)
                                                                                                                                    {
                                                                                                                                       continue loop13;
                                                                                                                                    }
                                                                                                                                    addr127:
                                                                                                                                    if(_loc5_ || param1)
                                                                                                                                    {
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          addr137:
                                                                                                                                          §§push(!§§pop());
                                                                                                                                          if(!(_loc6_ && param1))
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ && param1))
                                                                                                                                             {
                                                                                                                                                §§goto(addr151);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr368);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ || param2))
                                                                                                                                                {
                                                                                                                                                   continue loop32;
                                                                                                                                                }
                                                                                                                                                if(_loc5_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   continue loop20;
                                                                                                                                                }
                                                                                                                                                §§goto(addr399);
                                                                                                                                                §§goto(addr137);
                                                                                                                                             }
                                                                                                                                             continue loop32;
                                                                                                                                             addr176:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr408);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             continue loop11;
                                                                                                                                          }
                                                                                                                                          if(_loc6_ && param1)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr176);
                                                                                                                                             §§push(!§§pop());
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr410);
                                                                                                                                          }
                                                                                                                                          §§goto(addr127);
                                                                                                                                       }
                                                                                                                                       §§goto(addr397);
                                                                                                                                       addr164:
                                                                                                                                    }
                                                                                                                                    §§goto(addr369);
                                                                                                                                 }
                                                                                                                                 §§goto(addr137);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr450);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr408);
                                                                                                                        }
                                                                                                                        §§goto(addr397);
                                                                                                                     }
                                                                                                                     §§goto(addr112);
                                                                                                                  }
                                                                                                                  §§goto(addr412);
                                                                                                               }
                                                                                                               §§goto(addr137);
                                                                                                            }
                                                                                                            §§goto(addr371);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr112);
                                                                                                   }
                                                                                                }
                                                                                                continue loop4;
                                                                                             }
                                                                                             continue loop26;
                                                                                          }
                                                                                          §§goto(addr334);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr433);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 addr281:
                                                                              }
                                                                              §§goto(addr404);
                                                                           }
                                                                           continue loop0;
                                                                           addr420:
                                                                        }
                                                                        §§push(param1.useColor);
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           addr360:
                                                                           if(_loc5_ || param2)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 addr369:
                                                                                 while(true)
                                                                                 {
                                                                                    addr370:
                                                                                    do
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                    while(!_loc5_);
                                                                                    
                                                                                    §§goto(addr336);
                                                                                 }
                                                                              }
                                                                              addr368:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr411:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    continue loop27;
                                                                                 }
                                                                                 §§pop();
                                                                                 §§goto(addr413);
                                                                                 §§goto(addr360);
                                                                              }
                                                                              addr411:
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop26;
                                                                           }
                                                                           addr336:
                                                                           return §§pop();
                                                                           §§goto(addr370);
                                                                        }
                                                                        addr371:
                                                                        §§goto(addr411);
                                                                     }
                                                                  }
                                                                  addr400:
                                                               }
                                                               §§goto(addr369);
                                                            }
                                                         }
                                                         addr413:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop14;
                                                            }
                                                            if(!(_loc5_ || param2))
                                                            {
                                                               if(_loc5_ || param3)
                                                               {
                                                               }
                                                               break;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§^1§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§goto(addr164);
                                                                        §§push(§§pop() == §§pop());
                                                                     }
                                                                     §§goto(addr333);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr333);
                                                               addr155:
                                                            }
                                                            §§goto(addr400);
                                                            §§goto(addr281);
                                                            addr223:
                                                            §§pop();
                                                            if(!(_loc5_ || param3))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc5_ || param3)
                                                            {
                                                               if(!(_loc6_ && param3))
                                                               {
                                                                  §§push(this.§6#§);
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     if(_loc6_ && param2)
                                                                     {
                                                                        break loop14;
                                                                     }
                                                                     if(!(_loc5_ || param1))
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push(param1.useColor);
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        §§goto(addr57);
                                                                     }
                                                                     §§goto(addr112);
                                                                  }
                                                                  §§goto(addr137);
                                                               }
                                                               §§goto(addr433);
                                                            }
                                                            §§goto(addr389);
                                                         }
                                                      }
                                                      §§goto(addr452);
                                                   }
                                                   §§goto(addr155);
                                                }
                                             }
                                             break;
                                          }
                                          if(!(_loc6_ && param2))
                                          {
                                             return §§pop();
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr420);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr399);
      }
   }
}
