package §2m§
{
   import §4!F§.AGALMiniAssembler;
   import §7H§.§'!w§;
   import §?]§.§7l§;
   import §?]§.Texture;
   import §[z§.§+"#§;
   import §`g§.§ O§;
   import §`g§.§"<§;
   import §`g§.DisplayObject;
   import §`g§.DisplayObjectContainer;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix3D;
   import flash.utils.getQualifiedClassName;
   
   public class §^[§
   {
      
      private static var §%=§:Vector.<Number>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%=§ = new <Number>[1,1,1,1];
         }
      }
      
      private var §`7§:int;
      
      private var §%6§:Texture;
      
      private var §8M§:String;
      
      private var §[!K§:§'!w§;
      
      private var §#-§:VertexBuffer3D;
      
      private var §1!&§:VertexBuffer3D;
      
      private var §^!p§:VertexBuffer3D;
      
      private var §@!y§:Vector.<uint>;
      
      private var §else§:IndexBuffer3D;
      
      private var §7!W§:Boolean = false;
      
      private var §+=§:Boolean = false;
      
      public function §^[§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         loop0:
         while(true)
         {
            §9!%§();
            loop1:
            do
            {
               this.§[!K§ = new §'!w§(0,true);
               while(!_loc2_)
               {
                  this.§@!y§ = new Vector.<uint>(0);
                  while(_loc1_ || _loc2_)
                  {
                     this.§`7§ = 0;
                     while(!_loc2_)
                     {
                        this.§'k§();
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               continue loop0;
            }
            while(_loc2_);
            
            return;
         }
      }
      
      public static function § l§(param1:DisplayObjectContainer, param2:Vector.<§^[§>) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §-§(param1,param2,-1,new Matrix3D());
         }
      }
      
      private static function §-§(param1:DisplayObject, param2:Vector.<§^[§>, param3:int, param4:Matrix3D, param5:Number = 1.0) : int
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc6_:* = 0;
         var _loc8_:DisplayObjectContainer = null;
         var _loc9_:* = 0;
         var _loc10_:Matrix3D = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:§ O§ = null;
         var _loc13_:§"<§ = null;
         var _loc14_:Texture = null;
         var _loc15_:* = null;
         var _loc16_:§^[§ = null;
         var _loc7_:* = false;
         if(!_loc18_)
         {
            §§push(param3);
            loop0:
            while(true)
            {
               if(§§pop() != -1)
               {
                  §§push(param1.alpha == 0);
                  if(!_loc18_)
                  {
                     if(!(_loc18_ && param3))
                     {
                        if(!§§pop())
                        {
                           if(!_loc18_)
                           {
                              §§pop();
                              if(_loc17_ || param3)
                              {
                                 if(_loc17_)
                                 {
                                    if(!(_loc18_ && param1))
                                    {
                                       if(!_loc18_)
                                       {
                                          §§push(param1.visible);
                                          if(!_loc18_)
                                          {
                                             §§push(!§§pop());
                                             if(_loc17_ || §^[§)
                                             {
                                                addr62:
                                             }
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc17_ || param1)
                                             {
                                                §§push(param3);
                                                if(_loc17_)
                                                {
                                                   return §§pop();
                                                }
                                                continue;
                                             }
                                             if(_loc17_)
                                             {
                                                if(false)
                                                {
                                                   addr86:
                                                }
                                             }
                                             else
                                             {
                                                addr169:
                                                while(true)
                                                {
                                                   continue loop0;
                                                }
                                                addr169:
                                             }
                                          }
                                          §§push(param1 is DisplayObjectContainer);
                                          break;
                                       }
                                       addr146:
                                       param2.push(new §^[§());
                                       addr150:
                                       §§goto(addr86);
                                    }
                                    §§goto(addr150);
                                 }
                                 else
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       if(_loc18_ && param1)
                                       {
                                          while(!_loc18_)
                                          {
                                             if(param2.length != 0)
                                             {
                                                param2[0].reset();
                                                continue loop4;
                                             }
                                             §§goto(addr146);
                                             continue loop4;
                                          }
                                          while(true)
                                          {
                                             §§push(true);
                                             addr168:
                                             while(true)
                                             {
                                                _loc7_ = §§pop();
                                                §§goto(addr169);
                                             }
                                          }
                                          addr167:
                                          addr161:
                                       }
                                       §§goto(addr86);
                                    }
                                 }
                                 §§goto(addr146);
                              }
                              addr174:
                              §§push((_loc8_ = param1 as DisplayObjectContainer).numChildren);
                              if(!(_loc18_ && param2))
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc9_ = §§pop();
                              _loc10_ = new Matrix3D();
                              if(_loc17_ || param3)
                              {
                                 §§push(param5);
                                 if(!(_loc18_ && param1))
                                 {
                                    §§push(param1.alpha);
                                    if(_loc17_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc17_ || param2)
                                       {
                                          addr221:
                                          §§push(Number(§§pop()));
                                          if(_loc17_)
                                          {
                                             §§push(§§pop());
                                             if(_loc17_)
                                             {
                                                param5 = §§pop();
                                             }
                                             addr229:
                                             if(§§pop() > §§pop())
                                             {
                                                if(!_loc18_)
                                                {
                                                   _loc6_ = 0;
                                                   addr234:
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc17_)
                                                      {
                                                         §§push(_loc9_);
                                                         if(_loc17_)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(_loc17_)
                                                               {
                                                                  addr429:
                                                                  §§push(_loc7_);
                                                                  if(_loc17_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc18_ && param1))
                                                                        {
                                                                           §§push(int(param2.length - 1));
                                                                           if(_loc17_ || §^[§)
                                                                           {
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                              while(true)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr460);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr525);
                                                                     }
                                                                     §§goto(addr504);
                                                                  }
                                                                  §§goto(addr524);
                                                                  addr300:
                                                               }
                                                               §§goto(addr532);
                                                            }
                                                            else
                                                            {
                                                               _loc11_ = _loc8_.getChildAt(_loc6_);
                                                               if(!_loc18_)
                                                               {
                                                                  _loc10_.copyFrom(param4);
                                                                  while(true)
                                                                  {
                                                                     _loc11_.§0!"§(_loc10_);
                                                                     loop17:
                                                                     while(!(_loc18_ && param1))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           loop19:
                                                                           do
                                                                           {
                                                                              §§push(§-§(_loc11_,param2,param3,_loc10_,param5));
                                                                              if(_loc17_)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                              param3 = §§pop();
                                                                              while(_loc17_)
                                                                              {
                                                                                 _loc6_++;
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           while(false);
                                                                           
                                                                           continue loop15;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr286);
                                                            }
                                                         }
                                                         §§goto(addr477);
                                                      }
                                                      break;
                                                   }
                                                   _loc6_ = §§pop();
                                                   if(_loc17_ || param3)
                                                   {
                                                      addr460:
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         if(!(_loc18_ && §^[§))
                                                         {
                                                            if(!(_loc17_ || param3))
                                                            {
                                                               continue loop9;
                                                            }
                                                            if(§§pop() <= param3)
                                                            {
                                                               if(_loc18_ && §^[§)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(_loc17_ || param2)
                                                               {
                                                                  if(!_loc18_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(param3);
                                                                     }
                                                                     addr504:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr532:
                                                                     §§push(delete param2[_loc6_]);
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr525:
                                                                        while(true)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                     addr532:
                                                                     addr524:
                                                                  }
                                                               }
                                                               §§goto(addr525);
                                                            }
                                                            else
                                                            {
                                                               param2[_loc6_].dispose();
                                                               §§goto(addr532);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc18_ && param3))
                                                            {
                                                               break loop7;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop10;
                                                      }
                                                      return §§pop();
                                                   }
                                                   §§goto(addr525);
                                                }
                                                §§goto(addr234);
                                             }
                                             §§goto(addr300);
                                          }
                                       }
                                       §§push(0);
                                    }
                                    §§goto(addr229);
                                 }
                                 §§goto(addr221);
                              }
                              §§goto(addr234);
                           }
                           break;
                        }
                        §§goto(addr62);
                     }
                     §§goto(addr168);
                  }
                  break;
               }
               §§goto(addr167);
            }
            if(§§pop())
            {
               §§goto(addr174);
            }
            else
            {
               if(!(param1 is § O§))
               {
                  throw new Error("Unsupported display object: " + getQualifiedClassName(param1));
               }
               if(_loc17_ || param2)
               {
                  _loc14_ = !!(_loc13_ = (_loc12_ = param1 as § O§) as §"<§) ? _loc13_.texture : null;
                  if(!_loc18_)
                  {
                     if(_loc13_)
                     {
                        if(!(_loc18_ && param3))
                        {
                           §§push(_loc13_.smoothing);
                           if(_loc17_)
                           {
                              §§push(§§pop());
                              if(_loc17_ || §^[§)
                              {
                              }
                              addr366:
                              _loc15_ = §§pop();
                              addr367:
                              if((_loc16_ = param2[param3]).get(_loc12_,_loc14_,_loc15_,param5))
                              {
                                 if(!(_loc18_ && param2))
                                 {
                                    param3++;
                                    if(_loc17_ || param2)
                                    {
                                       if(param2.length <= param3)
                                       {
                                          if(_loc17_)
                                          {
                                             addr400:
                                             param2.push(new §^[§());
                                             if(_loc17_)
                                             {
                                                addr406:
                                                (_loc16_ = param2[param3]).reset();
                                                _loc16_.§>$§(_loc12_,param5,_loc14_,_loc15_,param4);
                                             }
                                             §§goto(addr429);
                                          }
                                       }
                                    }
                                    §§goto(addr406);
                                 }
                                 §§goto(addr400);
                              }
                              §§goto(addr406);
                           }
                           addr365:
                           §§push(§§pop());
                        }
                        §§goto(addr367);
                     }
                     else
                     {
                        §§push(null);
                        if(_loc17_ || param3)
                        {
                           §§goto(addr365);
                        }
                     }
                  }
                  §§goto(addr366);
               }
            }
            §§goto(addr429);
         }
         §§goto(addr174);
      }
      
      private static function §9!%§() : void
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
         var _loc1_:§<!?§ = §<!?§.§,=§;
         if(!(_loc23_ && §^[§))
         {
            if(_loc1_.§3h§(§%L§(true)))
            {
               if(_loc24_ || _loc3_)
               {
                  return;
               }
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
               addr197:
               while(true)
               {
                  §§push("m44 op, va0, vc0  \n");
                  addr186:
                  while(true)
                  {
                     §§push("mov v0, va2       \n");
                     addr187:
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        addr188:
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
      }
      
      public static function §%L§(param1:Boolean) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1)
            {
               addr21:
               §§push("QB_q*");
               if(_loc2_ && _loc2_)
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
      
      public static function §,2§(param1:Boolean, param2:Boolean = true, param3:Boolean = false, param4:String = "bilinear", param5:Boolean = false) : String
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param3))
         {
            if(param1)
            {
               addr25:
               §§push("QB_i*");
               if(!_loc7_)
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
                     if(!(_loc8_ && param3))
                     {
                        addr217:
                        §§push(_loc6_);
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
                              }
                           }
                        }
                        addr217:
                     }
                     while(true)
                     {
                     }
                     addr220:
                  }
                  while(true)
                  {
                     §§push(param3);
                     loop6:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           continue;
                        }
                        if(!(_loc8_ && param3))
                        {
                           §§push(_loc6_);
                           loop7:
                           while(true)
                           {
                              §§push("R");
                              addr204:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr205:
                                 while(true)
                                 {
                                    _loc6_ = §§pop();
                                 }
                              }
                              loop13:
                              while(true)
                              {
                                 if(_loc8_ && param3)
                                 {
                                    continue loop7;
                                 }
                                 if(!_loc8_)
                                 {
                                    §§push("C");
                                    if(_loc8_ && param1)
                                    {
                                       break;
                                    }
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_ || param3)
                                       {
                                          if(!(_loc8_ && param1))
                                          {
                                             _loc6_ = §§pop();
                                             addr206:
                                             loop14:
                                             while(!(_loc8_ && param2))
                                             {
                                                if(!(_loc8_ && param2))
                                                {
                                                   while(true)
                                                   {
                                                      addr59:
                                                      while(true)
                                                      {
                                                         §§push(param4);
                                                         loop16:
                                                         do
                                                         {
                                                            §§push(§7l§.§6!%§);
                                                            if(!_loc8_)
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  if(!(_loc8_ && §^[§))
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     §§push(_loc6_);
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        if(!(_loc7_ || §^[§))
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        addr91:
                                                                        §§push(§§pop() + param4.charAt(0));
                                                                     }
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        addr40:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                     addr95:
                                                                  }
                                                                  while(_loc7_ || param3)
                                                                  {
                                                                     §§goto(addr95);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop13;
                                                                     §§goto(addr106);
                                                                  }
                                                                  addr106:
                                                                  §§goto(addr217);
                                                                  addr131:
                                                               }
                                                               §§goto(addr40);
                                                            }
                                                            §§goto(addr91);
                                                         }
                                                         while(!(_loc7_ || param1));
                                                         
                                                         return §§pop();
                                                      }
                                                   }
                                                   addr191:
                                                }
                                             }
                                             while(true)
                                             {
                                                continue loop6;
                                             }
                                             addr206:
                                          }
                                          else
                                          {
                                             §§goto(addr219);
                                          }
                                          §§goto(addr220);
                                       }
                                       else
                                       {
                                          §§goto(addr205);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr218);
                                    }
                                    §§goto(addr219);
                                 }
                                 else
                                 {
                                    §§goto(addr217);
                                 }
                              }
                              §§goto(addr204);
                           }
                        }
                        §§goto(addr206);
                     }
                  }
                  if(_loc8_ && param1)
                  {
                     continue;
                  }
                  if(§§pop())
                  {
                     §§goto(addr131);
                  }
                  §§goto(addr59);
               }
            }
            §§goto(addr191);
         }
         §§goto(addr25);
      }
      
      public function get §;!K§() : int
      {
         return this.§`7§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§#-§)
            {
               while(true)
               {
                  this.§#-§.dispose();
                  addr103:
                  addr79:
                  while(true)
                  {
                  }
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     loop8:
                     while(this.§else§)
                     {
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    this.§else§.dispose();
                                    addr54:
                                    break;
                                 }
                                 while(_loc2_)
                                 {
                                    while(true)
                                    {
                                       if(!this.§^!p§)
                                       {
                                          continue loop8;
                                       }
                                    }
                                 }
                                 §§goto(addr103);
                                 addr94:
                              }
                              while(true)
                              {
                                 this.§^!p§.dispose();
                                 §§goto(addr37);
                              }
                              addr37:
                           }
                           loop7:
                           while(true)
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 §§goto(addr79);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§1!&§.dispose();
                                    break loop7;
                                 }
                                 addr91:
                              }
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr54);
                     }
                     return;
                  }
                  addr86:
               }
            }
            while(true)
            {
               if(this.§1!&§)
               {
                  §§goto(addr91);
               }
               §§goto(addr55);
               §§goto(addr103);
            }
         }
         §§goto(addr86);
      }
      
      private function §'k§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§[!K§.§52§);
         if(_loc4_)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc1_:* = §§pop();
         if(!(_loc5_ && _loc1_))
         {
            §§push(_loc1_);
            if(!_loc5_)
            {
               §§push(0);
               if(!_loc5_)
               {
                  if(§§pop() == §§pop())
                  {
                     §§goto(addr58);
                  }
                  else
                  {
                     §§push(_loc1_);
                     if(_loc4_ || _loc1_)
                     {
                        §§goto(addr53);
                     }
                  }
                  §§goto(addr57);
               }
               §§goto(addr53);
            }
            addr53:
            §§push(int(§§pop() * 2));
            if(!_loc5_)
            {
               §§goto(addr57);
            }
            addr58:
            §§goto(addr40);
         }
         addr40:
         §§push(16);
         if(_loc4_)
         {
            addr57:
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc5_ && this))
         {
            this.§[!K§.§52§ = _loc2_ * 4;
         }
         §§push(_loc1_);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            if(_loc3_ >= _loc2_)
            {
               if(_loc4_ || this)
               {
                  if(_loc4_ || _loc1_)
                  {
                     if(!_loc5_)
                     {
                        this.§+=§ = true;
                        addr105:
                        if(_loc4_ || _loc2_)
                        {
                           break;
                        }
                        this.§@!y§[int(_loc3_ * 6 + 1)] = _loc3_ * 4 + 1;
                        addr252:
                     }
                     this.§@!y§[int(_loc3_ * 6 + 2)] = _loc3_ * 4 + 2;
                     while(true)
                     {
                        this.§@!y§[int(_loc3_ * 6 + 3)] = _loc3_ * 4 + 1;
                        loop2:
                        for(; _loc4_; if(!(_loc5_ && _loc2_))
                        {
                           continue loop0;
                        })
                        {
                           this.§@!y§[int(_loc3_ * 6 + 4)] = _loc3_ * 4 + 3;
                           while(true)
                           {
                              this.§@!y§[int(_loc3_ * 6 + 5)] = _loc3_ * 4 + 2;
                              addr158:
                              while(true)
                              {
                                 _loc3_++;
                              }
                              addr127:
                              if(_loc4_ || _loc2_)
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr127);
                     }
                     §§goto(addr158);
                  }
                  continue;
               }
               §§goto(addr105);
            }
            else
            {
               this.§@!y§[int(_loc3_ * 6)] = _loc3_ * 4;
            }
            §§goto(addr252);
         }
      }
      
      private function §`!u§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(this.§+=§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     if(param1 != null)
                     {
                        while(true)
                        {
                           if(this.§#-§)
                           {
                              while(!_loc3_)
                              {
                                 if(_loc3_ && _loc2_)
                                 {
                                    continue loop0;
                                 }
                                 this.§#-§.dispose();
                                 while(true)
                                 {
                                 }
                              }
                              continue;
                              addr97:
                           }
                           loop4:
                           while(true)
                           {
                              if(this.§1!&§)
                              {
                                 loop5:
                                 while(_loc4_ || this)
                                 {
                                    this.§1!&§.dispose();
                                    while(!_loc3_)
                                    {
                                       addr63:
                                       if(!(_loc4_ || param1))
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          this.§^!p§.dispose();
                                          loop8:
                                          for(; !_loc3_; if(_loc3_ && _loc3_)
                                          {
                                             continue;
                                          },if(!_loc4_)
                                          {
                                             continue loop5;
                                          },if(_loc4_)
                                          {
                                             this.§else§.dispose();
                                             §§goto(addr50);
                                          },§§goto(addr97))
                                          {
                                             loop9:
                                             while(this.§else§)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   continue loop8;
                                                }
                                                addr50:
                                                if(true)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(!this.§^!p§)
                                                   {
                                                      continue loop9;
                                                   }
                                                   if(!(_loc4_ || this))
                                                   {
                                                      continue loop8;
                                                   }
                                                   §§goto(addr63);
                                                }
                                             }
                                             §§push(this.§[!K§.§52§);
                                             if(!_loc3_)
                                             {
                                                §§push(int(§§pop() / 4));
                                             }
                                             var _loc2_:* = §§pop();
                                             if(_loc4_)
                                             {
                                                this.§#-§ = param1.createVertexBuffer(_loc2_ * 4,§'!w§.§#![§);
                                                this.§#-§.uploadFromByteArray(this.§[!K§.§%r§,0,0,_loc2_ * 4);
                                                this.§1!&§ = param1.createVertexBuffer(_loc2_ * 4,§'!w§.§%I§);
                                                addr257:
                                                addr282:
                                                if(!_loc3_)
                                                {
                                                   this.§1!&§.uploadFromVector(this.§[!K§.§<`§,0,_loc2_ * 4);
                                                   this.§^!p§ = param1.createVertexBuffer(_loc2_ * 4,§'!w§.§9>§);
                                                   addr215:
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         this.§^!p§.uploadFromVector(this.§[!K§.§1'§,0,_loc2_ * 4);
                                                         addr202:
                                                         if(_loc4_)
                                                         {
                                                            this.§else§ = param1.createIndexBuffer(_loc2_ * 6);
                                                            this.§else§.uploadFromVector(this.§@!y§,0,_loc2_ * 6);
                                                            addr172:
                                                            if(_loc4_)
                                                            {
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  this.§+=§ = false;
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§goto(addr202);
                                                                     }
                                                                     return true;
                                                                  }
                                                                  §§goto(addr172);
                                                               }
                                                               §§goto(addr257);
                                                            }
                                                            addr190:
                                                            §§goto(addr190);
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                      §§goto(addr282);
                                                   }
                                                   addr236:
                                                   §§goto(addr236);
                                                }
                                                addr272:
                                                §§goto(addr272);
                                             }
                                             §§goto(addr172);
                                          }
                                          continue loop4;
                                       }
                                    }
                                    throw new §+"#§();
                                 }
                                 addr124:
                                 return false;
                                 addr123:
                              }
                              §§goto(addr52);
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
         §§goto(addr70);
      }
      
      private function §%d§(param1:Context3D) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§`!u§(param1));
            loop0:
            for(; !§§pop(); loop1:
            while(true)
            {
               §§push(this.§7!W§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        if(_loc3_)
                        {
                           continue;
                        }
                        this.§1!&§.uploadFromVector(this.§[!K§.§<`§,0,this.§`7§ * 4);
                     }
                     while(true)
                     {
                        break loop1;
                     }
                     addr57:
                     break loop0;
                     addr89:
                  }
                  break;
               }
               continue loop0;
            },while(true)
            {
               this.§^!p§.uploadFromVector(this.§[!K§.§1'§,0,this.§`7§ * 4);
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr57);
            })
            {
               if(_loc3_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§#-§.uploadFromByteArray(this.§[!K§.§%r§,0,0,this.§`7§ * 4);
            §§goto(addr108);
         }
      }
      
      public function render(param1:Context3D, param2:Matrix3D, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param2)
         {
            if(this.§`7§ == 0)
            {
               if(_loc8_ || param3)
               {
                  §§goto(addr34);
               }
            }
            §§push(this.§[!K§.premultipliedAlpha);
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
               if(this.§%6§)
               {
                  addr54:
                  §§push(§,2§(_loc5_,this.§%6§.mipMapping,this.§%6§.repeat,this.§8M§,this.§7!W§));
                  if(!(_loc9_ && param3))
                  {
                     §§push(§§pop());
                     if(_loc9_ && param3)
                     {
                     }
                  }
                  addr91:
                  §§push(§§pop());
               }
               else
               {
                  §§push(§%L§(_loc5_));
                  if(!_loc9_)
                  {
                     §§push(§§pop());
                     if(!_loc9_)
                     {
                        §§goto(addr91);
                     }
                  }
               }
               var _loc6_:* = §§pop();
               if(!_loc9_)
               {
                  §@>§.§?!I§(param1,_loc4_);
                  if(!_loc9_)
                  {
                     this.§%d§(param1);
                     if(_loc8_)
                     {
                        param1.setProgram(§<!?§.§,=§.§"u§(_loc6_));
                        if(_loc8_)
                        {
                           param1.setVertexBufferAt(0,this.§^!p§,§'!w§.§9!C§,Context3DVertexBufferFormat.FLOAT_3);
                           if(!(_loc9_ && param1))
                           {
                              §§push(this.§%6§);
                              if(!_loc9_)
                              {
                                 §§push(null);
                                 if(_loc8_ || this)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc8_ || param3)
                                    {
                                       §§push(§§pop());
                                       if(_loc8_ || param2)
                                       {
                                          if(!§§pop())
                                          {
                                             if(!_loc9_)
                                             {
                                                §§pop();
                                                if(!(_loc9_ && param1))
                                                {
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(this.§7!W§);
                                                      if(_loc8_ || param2)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc8_ || param3)
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     param1.setVertexBufferAt(2,this.§1!&§,§'!w§.§2Q§,Context3DVertexBufferFormat.FLOAT_4);
                                                                     if(!_loc9_)
                                                                     {
                                                                        addr96:
                                                                        param1.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param2,true);
                                                                        if(_loc8_ || this)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§push(_loc5_);
                                                                           if(!(_loc9_ && param2))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §%=§[0] = §%=§[1] = §%=§[2] = !!_loc4_ ? Number(param3) : Number(1);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §%=§[3] = param3;
                                                                                       break;
                                                                                       addr282:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    param1.setVertexBufferAt(1,this.§#-§,§'!w§.§<h§,Context3DVertexBufferFormat.FLOAT_2);
                                                                                    loop11:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc8_ || this)
                                                                                       {
                                                                                          loop4:
                                                                                          while(true)
                                                                                          {
                                                                                             param1.drawTriangles(this.§else§,0,this.§`7§ * 2);
                                                                                             addr422:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§%6§);
                                                                                                loop6:
                                                                                                for(; _loc8_ || param2; while(true)
                                                                                                {
                                                                                                   §§push(this.§%6§);
                                                                                                   if(!(_loc8_ || param1))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(null);
                                                                                                      addr358:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            addr360:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr362:
                                                                                                                     §§goto(addr339);
                                                                                                                  }
                                                                                                                  addr361:
                                                                                                               }
                                                                                                               addr338:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr339);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr388);
                                                                                                })
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.setTextureAt(0,null);
                                                                                                      addr404:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_ && param2)
                                                                                                         {
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1.setVertexBufferAt(1,null);
                                                                                                            addr381:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_ || this)
                                                                                                               {
                                                                                                                  addr388:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  addr388:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     param1.setTextureAt(0,this.§%6§.getBase(param1));
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                                  addr463:
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                loop8:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§goto(addr463);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr425);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                }
                                                                                                continue loop4;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr479:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr460);
                                                                           }
                                                                           §§goto(addr339);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr342);
                                                                  }
                                                                  §§goto(addr422);
                                                               }
                                                               §§goto(addr96);
                                                            }
                                                            while(true)
                                                            {
                                                               param1.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,§%=§,1);
                                                               §§goto(addr479);
                                                            }
                                                            addr131:
                                                            addr484:
                                                         }
                                                         addr339:
                                                         while(true)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               if(_loc8_ || param2)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        break loop17;
                                                                     }
                                                                     §§push(this.§7!W§);
                                                                     if(_loc9_ && param1)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(!(_loc9_ && param2))
                                                                        {
                                                                           break loop0;
                                                                        }
                                                                        continue loop24;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               §§goto(addr404);
                                                            }
                                                            §§goto(addr381);
                                                            continue loop16;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     param1.setVertexBufferAt(2,null);
                                                                     addr346:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                                  addr342:
                                                               }
                                                               §§goto(addr346);
                                                            }
                                                            while(true)
                                                            {
                                                               param1.setVertexBufferAt(0,null);
                                                               if(_loc8_ || this)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr346);
                                                            }
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  if(!(_loc8_ || param2))
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop5;
                                                                     addr425:
                                                                     param1.setTextureAt(0,null);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr400);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr362);
                                                            }
                                                            §§goto(addr381);
                                                         }
                                                         return;
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr338);
                                                   }
                                                   addr337:
                                                }
                                                §§goto(addr346);
                                             }
                                             §§goto(addr361);
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr360);
                                    }
                                    §§goto(addr337);
                                 }
                                 §§goto(addr358);
                              }
                              §§goto(addr357);
                           }
                           §§goto(addr388);
                        }
                        §§goto(addr484);
                     }
                     §§goto(addr411);
                  }
                  §§goto(addr400);
               }
               §§goto(addr282);
            }
            §§goto(addr54);
         }
         addr34:
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§`7§ = 0;
            while(true)
            {
               this.§7!W§ = false;
               while(!_loc1_)
               {
                  this.§%6§ = null;
                  loop2:
                  while(!(_loc1_ && _loc1_))
                  {
                     while(true)
                     {
                        this.§8M§ = null;
                        if(_loc2_ || _loc2_)
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
         §§goto(addr72);
      }
      
      public function §>$§(param1:§ O§, param2:Number, param3:Texture, param4:String, param5:Matrix3D) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!_loc10_)
         {
            §§push(param2);
            if(!_loc10_)
            {
               §§push(§§pop() * param1.alpha);
            }
            loop0:
            while(true)
            {
               §§push(Number(§§pop()));
               if(!_loc10_)
               {
                  param2 = §§pop();
                  while(true)
                  {
                     §§push(param2);
                     while(_loc9_)
                     {
                        §§push(0);
                        loop3:
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§`7§);
                                 if(_loc9_)
                                 {
                                    §§push(1);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr201:
                                       while(true)
                                       {
                                          §§push(this.§[!K§.§52§);
                                          addr204:
                                          while(true)
                                          {
                                             §§push(§§pop() / 4);
                                             if(_loc10_)
                                             {
                                                break;
                                             }
                                             if(§§pop() > §§pop())
                                             {
                                                while(true)
                                                {
                                                   this.§'k§();
                                                   addr211:
                                                   while(_loc9_)
                                                   {
                                                   }
                                                   continue loop4;
                                                }
                                                addr209:
                                             }
                                             while(true)
                                             {
                                                §§push(this.§`7§);
                                                if(!(_loc9_ || param2))
                                                {
                                                   break;
                                                }
                                                §§push(0);
                                                if(_loc10_ && this)
                                                {
                                                   §§push(int(§§pop() * §§pop()));
                                                   break;
                                                }
                                                addr244:
                                                addr243:
                                                addr244:
                                                continue loop5;
                                             }
                                             var _loc6_:* = §§pop();
                                             if(_loc9_ || param1)
                                             {
                                                param1.copyVertexDataTo(this.§[!K§,_loc6_,param2,param5);
                                                if(!(_loc10_ && param3))
                                                {
                                                   addr277:
                                                   var _loc7_:*;
                                                   §§push((_loc7_ = this).§`7§);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      _loc7_.§`7§ = _loc8_;
                                                   }
                                                }
                                                return;
                                             }
                                             §§goto(addr277);
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr243);
                              §§push(4);
                           }
                           §§goto(addr220);
                        }
                     }
                     continue loop0;
                  }
               }
               §§goto(addr244);
            }
         }
         §§goto(addr62);
      }
      
      public function get(param1:§ O§, param2:Texture, param3:String, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§%6§);
            loop0:
            while(true)
            {
               §§push(null);
               addr436:
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
                                       addr399:
                                       while(!_loc6_)
                                       {
                                       }
                                       addr155:
                                       continue loop5;
                                       if(_loc6_ && param2)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop());
                                       loop20:
                                       for(; !(_loc6_ && param3); if(_loc6_ && param3)
                                       {
                                          continue;
                                       },if(!§§pop())
                                       {
                                          if(!(_loc6_ && param2))
                                          {
                                             §§pop();
                                             if(!(_loc6_ && param1))
                                             {
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§push(param4 == 1);
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§goto(addr96);
                                                      §§push(!§§pop());
                                                   }
                                                   §§goto(addr96);
                                                }
                                                §§goto(addr317);
                                             }
                                             §§goto(addr116);
                                          }
                                          §§goto(addr96);
                                       },§§goto(addr103))
                                       {
                                          if(!§§pop())
                                          {
                                             loop21:
                                             while(true)
                                             {
                                                §§pop();
                                                if(_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§7!W§);
                                                         if(_loc5_ || this)
                                                         {
                                                            continue loop21;
                                                         }
                                                         addr116:
                                                         addr116:
                                                         if(_loc6_)
                                                         {
                                                            while(!_loc5_)
                                                            {
                                                            }
                                                            return §§pop();
                                                            addr222:
                                                         }
                                                         if(_loc5_ || param3)
                                                         {
                                                            §§goto(addr125);
                                                         }
                                                         loop39:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(this.§`7§);
                                                                  addr295:
                                                                  while(true)
                                                                  {
                                                                     §§push(8192);
                                                                     addr296:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        addr297:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc5_ || param3))
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr342:
                                                            }
                                                            else
                                                            {
                                                               loop28:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr432:
                                                                  addr370:
                                                                  §§push(this.§%6§);
                                                                  loop29:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ && param3))
                                                                     {
                                                                        §§push(§§pop().repeat);
                                                                        loop30:
                                                                        while(true)
                                                                        {
                                                                           §§push(param2.repeat);
                                                                           loop31:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              loop32:
                                                                              while(true)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    addr383:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop25:
                                                                                       do
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(_loc5_ || param3)
                                                                                             {
                                                                                                §§pop();
                                                                                                §§push(this.§8M§ == param3);
                                                                                                if(!(_loc6_ && param2))
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(!§§pop());
                                                                                                }
                                                                                                §§push(§§pop());
                                                                                                loop27:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      addr361:
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         continue loop32;
                                                                                                      }
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         continue loop30;
                                                                                                      }
                                                                                                      §§pop();
                                                                                                      §§push(this.§7!W§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1.useColor);
                                                                                                         addr319:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               continue loop31;
                                                                                                            }
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  continue loop39;
                                                                                                               }
                                                                                                               §§push(!§§pop());
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     continue loop28;
                                                                                                                  }
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               addr430:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr328:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop25;
                                                                                             }
                                                                                             §§goto(addr399);
                                                                                          }
                                                                                          §§goto(addr358);
                                                                                       }
                                                                                       while(!(_loc5_ || param1));
                                                                                       
                                                                                       if(§§pop())
                                                                                       {
                                                                                          break loop24;
                                                                                       }
                                                                                       continue loop39;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr304);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr415:
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().root == param2.root);
                                                                        addr419:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              break loop22;
                                                                           }
                                                                           §§push(!§§pop());
                                                                           if(!(_loc5_ || this))
                                                                           {
                                                                              continue loop28;
                                                                           }
                                                                           §§goto(addr430);
                                                                           §§push(§§pop());
                                                                        }
                                                                        continue loop29;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                               }
                                                            }
                                                            addr304:
                                                            return §§pop();
                                                         }
                                                         §§goto(addr419);
                                                      }
                                                      addr176:
                                                   }
                                                   §§goto(addr432);
                                                }
                                                else
                                                {
                                                   loop17:
                                                   while(_loc5_ || param3)
                                                   {
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(this.§`7§);
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §§push(0);
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop21;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr155);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(!(_loc6_ && param2))
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop12:
                                                                           for(; _loc5_; if(_loc6_ && param1)
                                                                           {
                                                                              continue;
                                                                           },§§push(§§pop() == §§pop()),if(!(_loc6_ && param3))
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§goto(addr116);
                                                                                    §§push(!§§pop());
                                                                                 }
                                                                                 §§goto(addr383);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(_loc5_ || param1)
                                                                                 {
                                                                                    §§goto(addr188);
                                                                                 }
                                                                                 addr181:
                                                                              }
                                                                              §§goto(addr361);
                                                                           },§§goto(addr116))
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       §§pop();
                                                                                       break loop17;
                                                                                    }
                                                                                    break;
                                                                                    addr43:
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       §§push(param1.useColor);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr359);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 if(!(_loc5_ || this))
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       §§goto(addr222);
                                                                                       §§push(false);
                                                                                    }
                                                                                    §§goto(addr342);
                                                                                 }
                                                                                 else if(_loc5_ || param1)
                                                                                 {
                                                                                    addr313:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§%6§);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop0;
                                                                                       §§goto(addr313);
                                                                                    }
                                                                                    §§goto(addr370);
                                                                                    addr233:
                                                                                 }
                                                                                 §§goto(addr366);
                                                                              }
                                                                           }
                                                                           §§goto(addr319);
                                                                        }
                                                                        §§goto(addr328);
                                                                        addr254:
                                                                     }
                                                                  }
                                                                  break;
                                                                  addr36:
                                                                  if(_loc6_ && param1)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr43);
                                                               }
                                                               §§goto(addr297);
                                                            }
                                                            §§goto(addr296);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr295);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc6_ && this)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§goto(addr181);
                                                            §§push(param2 == null);
                                                         }
                                                         addr413:
                                                         §§goto(addr415);
                                                         §§push(this.§%6§);
                                                      }
                                                      break;
                                                      §§goto(addr225);
                                                   }
                                                   addr225:
                                                }
                                                §§goto(addr393);
                                             }
                                          }
                                          addr125:
                                          return §§pop();
                                       }
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§goto(addr331);
                                          }
                                          §§goto(addr360);
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 §§goto(addr413);
                              }
                              else
                              {
                                 §§goto(addr233);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr176);
      }
   }
}
