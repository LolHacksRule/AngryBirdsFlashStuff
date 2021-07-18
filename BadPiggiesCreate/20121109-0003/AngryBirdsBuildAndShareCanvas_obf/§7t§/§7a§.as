package §7t§
{
   import §"J§.b2Body;
   import §%!0§.§%Q§;
   import §%!0§.§,4§;
   import §%!0§.§3"!§;
   import §&!P§.§^!!§;
   import §&!P§.§``§;
   import §+!-§.§7"#§;
   import §+!-§.DisplayObject;
   import §+!-§.DisplayObjectContainer;
   import §+!-§.Sprite;
   import §2k§.b2Shape;
   import §6!A§.§%l§;
   import §;"7§.§="<§;
   import §<!a§.b2Mat22;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §]";§.§!<§;
   import §]";§.§`!o§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §7a§
   {
      
      private static var §4D§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §7a§))
         {
            §4D§ = new Dictionary(true);
         }
      }
      
      private var §,E§:Object;
      
      public function §7a§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §3!G§(param1:§^!!§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§7a§ = null;
         var _loc2_:Dictionary = new Dictionary();
         var _loc3_:int = 0;
         for each(_loc4_ in §4D§)
         {
            _loc4_.§'"+§(param1);
            if(!(_loc8_ && param1))
            {
               if(_loc4_.§,E§)
               {
                  if(_loc7_)
                  {
                     _loc2_[_loc4_.§,E§] = _loc4_;
                     if(_loc7_)
                     {
                        addr69:
                        if(!_loc4_.isGround())
                        {
                           continue;
                        }
                        if(_loc8_)
                        {
                           continue;
                        }
                     }
                     _loc3_++;
                  }
               }
               continue;
            }
            §§goto(addr69);
         }
         if(_loc7_)
         {
            §4D§ = _loc2_;
         }
      }
      
      public static function §^!g§(param1:*) : §7a§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§7a§ = null;
         if(_loc3_ || param1)
         {
            if(param1 == null)
            {
               if(_loc3_)
               {
                  return null;
               }
               addr50:
               _loc2_ = new §7a§();
               if(_loc3_ || _loc3_)
               {
                  _loc2_.§,E§ = param1;
                  if(_loc4_ && §7a§)
                  {
                  }
                  §§goto(addr85);
               }
               §4D§[param1] = _loc2_;
            }
            else
            {
               addr45:
               if(§4D§[param1] == undefined)
               {
                  §§goto(addr50);
               }
            }
            addr85:
            return §4D§[param1];
         }
         §§goto(addr45);
      }
      
      public function setPosition(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§,E§ is §``§);
            loop0:
            while(!§§pop())
            {
               §§push(this.§,E§ is §%Q§);
               while(true)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               if(!(_loc3_ || this))
               {
                  break;
               }
               (this.§,E§ as §%Q§).setPosition(param1.x,param1.y);
               §§goto(addr102);
            }
         }
         (this.§,E§ as §``§).getBody().§8" §(param1);
         §§goto(addr132);
      }
      
      public function isGround() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§,E§ is §``§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§pop();
                     addr44:
                     §§push((this.§,E§ as §``§).isGround());
                     if(_loc1_ || _loc1_)
                     {
                     }
                     §§goto(addr67);
                  }
                  §§push(Boolean(§§pop()));
               }
            }
            addr67:
            return §§pop();
         }
         §§goto(addr44);
      }
      
      public function §^_§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§,E§ is §``§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push((this.§,E§ as §``§).§^_§());
                           if(_loc1_)
                           {
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§push(§§pop());
                                    if(_loc1_ || this)
                                    {
                                       if(§§pop())
                                       {
                                       }
                                       §§goto(addr62);
                                    }
                                    break;
                                 }
                                 continue loop2;
                                 addr37:
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    continue;
                                 }
                                 addr45:
                                 §§push(Boolean(§§pop()));
                                 if(_loc2_ && _loc1_)
                                 {
                                    loop5:
                                    for(; !_loc2_; §§goto(addr45))
                                    {
                                       §§pop();
                                       if(_loc2_ && _loc1_)
                                       {
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                          §§push((this.§,E§ as §``§).isMiscBlock());
                                          if(!(_loc1_ || _loc1_))
                                          {
                                             continue loop5;
                                          }
                                          §§goto(addr37);
                                       }
                                    }
                                    continue loop0;
                                    addr91:
                                 }
                                 §§goto(addr62);
                              }
                              continue loop1;
                           }
                           §§goto(addr91);
                        }
                     }
                  }
                  addr62:
                  return §§pop();
               }
            }
         }
         §§goto(addr111);
      }
      
      public function §>!r§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§,E§ is §``§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§pop();
                     addr60:
                     §§push((this.§,E§ as §``§).§>!r§());
                     if(!_loc1_)
                     {
                        return Boolean(§§pop());
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §'5§() : Boolean
      {
         return this.§,E§ is §%Q§;
      }
      
      public function §"!C§() : Boolean
      {
         return this.§,E§ is §3"!§;
      }
      
      public function isTexture() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§,E§ is §``§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     addr50:
                     §§push((this.§,E§ as §``§).isTexture());
                     if(!_loc1_)
                     {
                        return Boolean(§§pop());
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §&8§(param1:Boolean = false) : Rectangle
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:b2Transform = null;
         var _loc4_:b2Shape = null;
         var _loc5_:§``§ = null;
         var _loc6_:b2Body = null;
         var _loc7_:§%Q§ = null;
         var _loc8_:§3"!§ = null;
         var _loc2_:Rectangle = new Rectangle();
         if(_loc9_)
         {
            §§push(this.§,E§ is §``§);
            if(!_loc10_)
            {
               if(§§pop())
               {
                  if(_loc9_ || _loc3_)
                  {
                     if(_loc6_ = (_loc5_ = this.§,E§ as §``§).getBody())
                     {
                        if(_loc9_ || this)
                        {
                           _loc4_ = _loc6_.GetFixtureList().GetShape();
                           _loc3_ = _loc5_.getBody().§60§();
                           _loc2_ = §%l§.§4!'§(_loc4_,_loc3_);
                           addr177:
                           if(!param1)
                           {
                              if(_loc9_)
                              {
                                 _loc2_.x -= _loc3_.position.x;
                                 if(_loc9_ || param1)
                                 {
                                    _loc2_.y -= _loc3_.position.y;
                                 }
                              }
                           }
                           addr89:
                        }
                        return _loc2_;
                     }
                     §§goto(addr89);
                  }
                  else
                  {
                     addr109:
                     _loc7_ = this.§,E§ as §%Q§;
                     _loc4_ = §!<§.§[!@§(_loc7_.name).shape.§!Q§();
                     _loc3_ = new b2Transform(new b2Vec2(_loc7_.x,_loc7_.y),new b2Mat22());
                     _loc2_ = §%l§.§4!'§(_loc4_,_loc3_);
                  }
               }
               else
               {
                  §§push(this.§,E§ is §%Q§);
                  if(!_loc10_)
                  {
                     addr96:
                     if(§§pop())
                     {
                        if(!_loc10_)
                        {
                           §§goto(addr109);
                        }
                        else
                        {
                           addr147:
                           _loc8_ = this.§,E§ as §3"!§;
                           _loc4_ = §`!o§.§0! §("SLINGSHOT_SHAPE").§!Q§();
                           _loc3_ = new b2Transform(new b2Vec2(_loc8_.mX,_loc8_.mY),new b2Mat22());
                           _loc2_ = §%l§.§4!'§(_loc4_,_loc3_);
                           §§goto(addr177);
                        }
                     }
                     else
                     {
                        §§push(this.§,E§ is §3"!§);
                     }
                     §§goto(addr177);
                  }
                  if(§§pop())
                  {
                     §§goto(addr147);
                  }
               }
               §§goto(addr177);
            }
            §§goto(addr96);
         }
         §§goto(addr109);
      }
      
      public function getCenter() : b2Vec2
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§``§ = null;
         var _loc2_:Rectangle = null;
         if(!(_loc3_ && this))
         {
            if(this.§,E§ is §``§)
            {
               _loc1_ = this.§,E§ as §``§;
               addr35:
               if(_loc4_ || _loc1_)
               {
                  return §%l§.§]!^§(_loc1_.getBody().GetFixtureList().GetShape(),_loc1_.getBody().§60§());
               }
            }
            _loc2_ = this.§&8§(true);
            return new b2Vec2(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
         }
         §§goto(addr35);
      }
      
      public function §[t§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§``§ = null;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§,E§ is §``§)
            {
               addr42:
               _loc1_ = this.§,E§ as §``§;
               if(_loc3_)
               {
                  return §%l§.§[t§(_loc1_.getBody().GetFixtureList().GetShape(),_loc1_.getBody().§60§());
               }
            }
            return new b2Vec2();
         }
         §§goto(addr42);
      }
      
      public function clone(param1:§,4§, param2:Number = 0, param3:Number = 0) : §7a§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§``§ = null;
         var _loc5_:§7a§ = null;
         var _loc6_:§%Q§ = null;
         if(!(_loc7_ && param1))
         {
            §§push(this.§,E§ is §``§);
            if(!_loc7_)
            {
               if(§§pop())
               {
                  if(_loc8_)
                  {
                     _loc4_ = this.§,E§ as §``§;
                     §§push(§§findproperty(§^!g§));
                     §§push(param1.objects);
                     §§push(_loc4_.§+!A§);
                     §§push(_loc4_.§#n§);
                     if(_loc8_)
                     {
                        §§push(param2);
                        if(!(_loc7_ && param1))
                        {
                           addr66:
                           §§push(§§pop() + §§pop());
                           §§push(_loc4_.§?y§);
                           if(_loc8_)
                           {
                              §§push(param3);
                              if(!_loc7_)
                              {
                                 addr84:
                                 §§push(§§pop() + §§pop());
                                 §§push(_loc4_.§?"1§());
                              }
                              return §§pop().§^!g§(§§pop().addObject(§§pop(),§§pop(),§§pop(),§§pop(),false,false,true,1,false));
                           }
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr66);
                  }
                  else
                  {
                     addr102:
                     _loc6_ = this.§,E§ as §%Q§;
                     if(_loc8_)
                     {
                        §§push(§§findproperty(§^!g§));
                        §§push(param1.slingshot);
                        §§push(_loc6_.name);
                        §§push(_loc6_.x);
                        if(_loc8_ || param1)
                        {
                           §§push(param2);
                           if(!_loc7_)
                           {
                              §§goto(addr128);
                           }
                           §§goto(addr147);
                        }
                        addr128:
                        §§push(§§pop() + §§pop());
                        §§push(_loc6_.y);
                        if(!(_loc7_ && param2))
                        {
                           addr147:
                           §§push(§§pop() + param3);
                        }
                        return §§pop().§^!g§(§§pop().addNewBirdToEndOfList(§§pop(),§§pop(),§§pop()));
                     }
                  }
               }
               else
               {
                  addr101:
                  if(this.§,E§ is §%Q§)
                  {
                     §§goto(addr102);
                  }
               }
               return null;
            }
            §§goto(addr101);
         }
         §§goto(addr102);
      }
      
      public function getObject() : Object
      {
         return this.§,E§;
      }
      
      public function §?"1§() : Number
      {
         return this.§3z§().GetAngle();
      }
      
      public function §]5§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Transform = this.§3z§();
         if(_loc3_ || _loc1_)
         {
            if(!_loc1_)
            {
               if(_loc3_ || this)
               {
                  §§goto(addr57);
               }
            }
            return _loc1_.position.Copy();
         }
         addr57:
         return null;
      }
      
      public function §3z§() : b2Transform
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§,E§ is §``§);
            loop0:
            while(!§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§,E§ is §%Q§);
                  loop2:
                  while(!§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§,E§ is §3"!§);
                        if(!_loc1_)
                        {
                           continue loop2;
                        }
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              if(_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    return new b2Transform(new b2Vec2((this.§,E§ as §3"!§).mX,(this.§,E§ as §3"!§).mY),new b2Mat22());
                                 }
                                 break loop0;
                              }
                              break loop2;
                           }
                           if(_loc1_)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(!_loc2_)
                                 {
                                    addr24:
                                    §§push(null);
                                    if(!(_loc2_ && this))
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr158:
                                    return null;
                                 }
                                 return §§pop();
                              }
                              break;
                           }
                           if(_loc1_)
                           {
                              continue;
                           }
                           continue loop1;
                        }
                        §§goto(addr24);
                     }
                     return new b2Transform((this.§,E§ as §``§).getBody().§60§().position.Copy(),(this.§,E§ as §``§).getBody().§60§().R.Copy());
                  }
                  return new b2Transform(new b2Vec2((this.§,E§ as §%Q§).x,(this.§,E§ as §%Q§).y),new b2Mat22());
               }
            }
            if(this.getBody() != null)
            {
               §§goto(addr118);
            }
         }
         §§goto(addr158);
      }
      
      public function §9!c§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§,E§ is §``§);
            loop0:
            while(!§§pop())
            {
               §§push(this.§,E§ is §%Q§);
               while(!§§pop())
               {
                  §§push(this.§,E§ is §3"!§);
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     continue loop0;
                  }
                  if(§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        if(_loc2_ && param1)
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           if(_loc2_ && _loc3_)
                           {
                              break loop0;
                           }
                           (this.§,E§ as §3"!§).setPosition(param1.position.x,param1.position.y,true);
                           addr81:
                           if(!(_loc2_ && _loc3_))
                           {
                              addr20:
                              return;
                              addr88:
                           }
                           addr108:
                           §§goto(addr20);
                        }
                        §§goto(addr20);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr20);
               }
               (this.§,E§ as §%Q§).setPosition(param1.position.x,param1.position.y);
               §§goto(addr108);
            }
            (this.§,E§ as §``§).getBody().§4!D§(new b2Transform(param1.position.Copy(),param1.R.Copy()));
            §§goto(addr138);
         }
         §§goto(addr88);
      }
      
      public function getBody() : b2Body
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§,E§ is §``§)
            {
               if(!_loc2_)
               {
                  return (this.§,E§ as §``§).getBody();
               }
            }
         }
         return null;
      }
      
      public function §,"=§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(_loc5_)
         {
            §§push(this.§,E§ is §``§);
            if(_loc5_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     addr133:
                     §§pop();
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           §§push((this.§,E§ as §``§).isGround());
                           loop6:
                           while(true)
                           {
                              §§push(!§§pop());
                              addr97:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop4;
                                          }
                                          this.§>!Q§(param1,(this.§,E§ as §``§).§8C§.§-W§());
                                       }
                                       addr117:
                                    }
                                    else
                                    {
                                       §§push(this.§,E§ is §%Q§);
                                       if(!(_loc4_ && param1))
                                       {
                                          if(_loc4_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc5_ || this))
                                          {
                                             continue loop6;
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc5_ || _loc2_)
                                             {
                                                this.§>!Q§(param1,(this.§,E§ as §%Q§).§-W§());
                                                if(!(_loc5_ || this))
                                                {
                                                   addr141:
                                                   _loc2_ = (this.§,E§ as §3"!§).§=B§();
                                                   if(_loc5_)
                                                   {
                                                      _loc3_ = 0;
                                                   }
                                                   loop0:
                                                   while(true)
                                                   {
                                                      while(_loc3_ < _loc2_.length)
                                                      {
                                                         this.§>!Q§(param1,_loc2_[_loc3_]);
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         _loc3_++;
                                                         if(!(_loc5_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         if(false)
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                }
                                                §§goto(addr191);
                                             }
                                             if(_loc5_ || this)
                                             {
                                                if(false)
                                                {
                                                   continue loop5;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr117);
                                             }
                                          }
                                          else
                                          {
                                             addr140:
                                             if(this.§,E§ is §3"!§)
                                             {
                                                §§goto(addr141);
                                             }
                                          }
                                       }
                                       §§goto(addr140);
                                    }
                                    addr191:
                                    return;
                                 }
                                 continue loop6;
                              }
                           }
                        }
                     }
                     addr134:
                  }
                  §§goto(addr140);
               }
               §§goto(addr97);
            }
            §§goto(addr133);
         }
         §§goto(addr134);
      }
      
      public function §>!Q§(param1:Boolean, param2:§7"#§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(!param1)
            {
               param2.color = 16777215;
               if(!(_loc4_ || this))
               {
                  addr75:
               }
               return;
            }
            if(!(_loc3_ && this))
            {
               addr72:
               param2.color = 11206570;
            }
            §§goto(addr75);
         }
         §§goto(addr72);
      }
      
      public function §>"?§(param1:Number, param2:Point) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            if(this.§,E§ is §``§)
            {
               if(!_loc3_)
               {
                  (this.§,E§ as §``§).§>"?§(param1,param2);
               }
            }
         }
      }
      
      public function §!!;§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§,E§ is §``§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  return (this.§,E§ as §``§).§4";§.shape.mName;
                  addr41:
               }
            }
            return null;
         }
         §§goto(addr41);
      }
      
      public function §6x§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§,E§ is §``§)
            {
               if(_loc1_)
               {
                  return (this.§,E§ as §``§).§4";§.material.mName;
                  addr35:
               }
            }
            return null;
         }
         §§goto(addr35);
      }
      
      public function §<!H§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§,E§ is §``§)
            {
               loop0:
               while(true)
               {
                  (this.§,E§ as §``§).§;E§(param1);
                  addr77:
                  while(true)
                  {
                     (this.§,E§ as §``§).getBody().SetAwake(true);
                     if(_loc2_)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr24);
               }
            }
            addr24:
            return;
         }
         §§goto(addr77);
      }
      
      public function §=J§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§,E§ is §``§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  §§push((this.§,E§ as §``§).getBody());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().IsAwake());
                     addr120:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop1:
                        while(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr124:
                              while(true)
                              {
                                 §§push((this.§,E§ as §``§).getBody());
                                 if(_loc1_ && _loc2_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(§§pop().§0!9§());
                                 if(!(_loc1_ && this))
                                 {
                                    continue loop4;
                                 }
                                 addr73:
                                 addr73:
                                 while(true)
                                 {
                                    if(!(_loc1_ && this))
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        return §§pop();
                        continue loop2;
                     }
                  }
               }
               else
               {
                  §§push(true);
                  if(!_loc1_)
                  {
                     if(!_loc1_)
                     {
                        return §§pop();
                     }
                     §§goto(addr120);
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr123);
         }
         §§goto(addr124);
      }
      
      public function §!9§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§,E§ is §``§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  do
                  {
                     §§push(true);
                  }
                  while(!_loc2_);
                  
                  return §§pop();
                  addr20:
               }
               §§push(Boolean(this.§,E§.getBody()));
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§pop();
                        §§push((this.§,E§ as §``§).getBody().§0!9§());
                        if(_loc2_ || this)
                        {
                           continue loop0;
                        }
                        addr59:
                        while(true)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr66);
                           }
                           continue loop1;
                        }
                     }
                     continue;
                     addr106:
                  }
                  addr66:
                  return §§pop();
               }
               §§goto(addr106);
               §§goto(addr59);
            }
         }
         §§goto(addr20);
      }
      
      public function §0">§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§,E§ is §``§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr83:
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(this.§,E§.getBody()));
                        if(!_loc3_)
                        {
                           while(§§pop())
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 (this.§,E§ as §``§).getBody().§=T§(param1);
                              }
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           return;
                           addr45:
                        }
                     }
                  }
                  addr82:
               }
               §§goto(addr45);
            }
            §§goto(addr82);
         }
         §§goto(addr83);
      }
      
      public function getName() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§,E§ is §``§);
            loop0:
            while(!§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§,E§ is §%Q§);
                  loop2:
                  while(true)
                  {
                     if(_loc2_)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§,E§ is §3"!§);
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break loop2;
                                       }
                                       if(!(_loc1_ && this))
                                       {
                                          break loop1;
                                       }
                                       continue loop1;
                                    }
                                    if(!_loc2_)
                                    {
                                       if(!(_loc2_ || this))
                                       {
                                          break loop0;
                                       }
                                       continue;
                                    }
                                 }
                                 return "";
                              }
                              continue loop2;
                           }
                           §§goto(addr113);
                        }
                        break;
                     }
                     continue loop0;
                  }
                  §§push((this.§,E§ as §%Q§).name);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
                  §§goto(addr113);
               }
               return "SLINGSHOT";
            }
         }
         addr113:
         (this.§,E§ as §``§).§+!A§;
         return §§pop();
      }
      
      public function §#!1§(param1:int, param2:Boolean = false) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:DisplayObject = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(!_loc9_)
         {
            §§push(this.§,E§ is §``§);
            if(_loc10_ || param2)
            {
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     _loc3_ = (this.§,E§ as §``§).sprite.parent;
                     _loc4_ = (this.§,E§ as §``§).sprite;
                     if(!_loc9_)
                     {
                        addr84:
                        if(!_loc3_)
                        {
                           if(!_loc9_)
                           {
                              §§goto(addr88);
                           }
                           else
                           {
                              addr111:
                           }
                        }
                        else
                        {
                           §§push(param1);
                           if(_loc10_)
                           {
                              §§push(1);
                              if(_loc10_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       §§push(1);
                                       if(_loc10_)
                                       {
                                          param1 = §§pop();
                                          if(_loc10_)
                                          {
                                             §§goto(addr111);
                                          }
                                          addr138:
                                          §§push(0);
                                       }
                                       else
                                       {
                                          addr137:
                                          param1 = §§pop();
                                          §§goto(addr138);
                                       }
                                    }
                                    §§goto(addr138);
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    if(_loc10_)
                                    {
                                       addr116:
                                       if(§§pop() < -1)
                                       {
                                          if(_loc10_)
                                          {
                                             §§push(-1);
                                             if(_loc10_ || _loc3_)
                                             {
                                                §§goto(addr137);
                                             }
                                          }
                                       }
                                       §§goto(addr138);
                                    }
                                 }
                                 var _loc5_:* = §§pop();
                                 while(_loc5_ < _loc3_.numChildren)
                                 {
                                    if((_loc6_ = _loc3_.getChildAt(_loc5_)) == _loc4_)
                                    {
                                       if(_loc10_ || param2)
                                       {
                                          §§push(_loc3_.getChildIndex(_loc6_));
                                          if(_loc10_)
                                          {
                                             §§push(int(§§pop()));
                                             if(_loc10_ || this)
                                             {
                                                _loc7_ = §§pop();
                                                if(!_loc9_)
                                                {
                                                   if(param2)
                                                   {
                                                      §§push(param1);
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         if(§§pop() != 1)
                                                         {
                                                            §§push(0);
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(int(§§pop()));
                                                               }
                                                               addr231:
                                                            }
                                                            loop2:
                                                            while(true)
                                                            {
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     addr240:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(_loc10_ || _loc3_)
                                                                           {
                                                                              addr193:
                                                                              while(true)
                                                                              {
                                                                                 _loc3_.setChildIndex(_loc6_,_loc8_);
                                                                                 addr198:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    addr214:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_.numChildren);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(int(§§pop() - 1));
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr193:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(int(Math.min(_loc3_.numChildren - 1,_loc5_ + param1)));
                                                                                 addr271:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                 }
                                                                              }
                                                                              addr252:
                                                                           }
                                                                           §§goto(addr193);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr193);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr239:
                                                               }
                                                               §§goto(addr271);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                }
                                                §§goto(addr252);
                                             }
                                             §§goto(addr239);
                                          }
                                          §§goto(addr222);
                                       }
                                       else
                                       {
                                          addr191:
                                          if(true)
                                          {
                                             continue;
                                          }
                                       }
                                       §§goto(addr193);
                                    }
                                    else
                                    {
                                       _loc5_++;
                                       if(_loc10_ || this)
                                       {
                                          if(!(_loc9_ && param1))
                                          {
                                             §§goto(addr191);
                                          }
                                          §§goto(addr240);
                                       }
                                    }
                                    §§goto(addr198);
                                 }
                                 return;
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr138);
                     }
                     addr88:
                     return;
                  }
                  addr69:
                  _loc3_ = (this.§,E§ as §%Q§).sprite.parent;
                  _loc4_ = (this.§,E§ as §%Q§).sprite;
               }
               else
               {
                  addr68:
                  if(this.§,E§ is §%Q§)
                  {
                     §§goto(addr69);
                  }
               }
               §§goto(addr84);
            }
            §§goto(addr68);
         }
         §§goto(addr69);
      }
      
      public function get uniqueID() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§,E§ is §``§)
            {
               if(_loc2_)
               {
                  return (this.§,E§ as §``§).uniqueID;
               }
            }
         }
         return "";
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§,E§ is §``§)
            {
               if(!_loc2_)
               {
                  addr46:
                  (this.§,E§ as §``§).uniqueID = param1;
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §#!Q§() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§,E§ is §``§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr106:
               }
               while(true)
               {
                  §§push(this.§,E§ is §%Q§);
                  loop3:
                  while(!§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§,E§ is §3"!§);
                        if(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    return (this.§,E§ as §3"!§).sprite;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    break loop3;
                                 }
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 §§goto(addr106);
                              }
                              break;
                           }
                           continue loop0;
                        }
                        continue loop3;
                     }
                     return null;
                  }
               }
            }
            return (this.§,E§ as §``§).sprite;
         }
         return (this.§,E§ as §%Q§).sprite;
      }
      
      public function §!3§() : Point
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = null;
         if(_loc3_ || this)
         {
            if(this.§,E§ is §``§)
            {
               addr42:
               _loc1_ = this.§]5§();
               if(!_loc2_)
               {
                  return (this.§,E§ as §``§).container.§`!G§.§4!5§(_loc1_.x,_loc1_.y);
               }
            }
            return null;
         }
         §§goto(addr42);
      }
      
      public function §;,§() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = this.§#!Q§().rotation;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§#!Q§());
            if(!_loc3_)
            {
               §§pop().rotation = 0;
               addr45:
               §§push(this.§#!Q§());
            }
            var _loc2_:Number = §§pop().width;
            if(_loc4_ || this)
            {
               this.§#!Q§().rotation = _loc1_;
            }
            return _loc2_;
         }
         §§goto(addr45);
      }
      
      public function §=7§() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = this.§#!Q§().rotation;
         if(_loc4_ || this)
         {
            §§push(this.§#!Q§());
            if(!(_loc3_ && this))
            {
               §§pop().rotation = 0;
               addr50:
               §§push(this.§#!Q§());
            }
            var _loc2_:Number = §§pop().height;
            if(!(_loc3_ && _loc2_))
            {
               this.§#!Q§().rotation = _loc1_;
            }
            return _loc2_;
         }
         §§goto(addr50);
      }
      
      public function §8!b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§,E§ is §``§)
            {
            }
         }
      }
      
      public function §+!0§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§,E§ is §``§)
            {
               if(!_loc3_)
               {
                  (this.§,E§ as §``§).§8W§ = param1;
               }
            }
         }
      }
      
      public function §2_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§,E§ is §``§)
            {
               if(!_loc1_)
               {
                  (this.§,E§ as §``§).§8W§ = (this.§,E§ as §``§).§%5§;
               }
            }
         }
      }
      
      public function §-W§() : Bitmap
      {
         var _loc1_:BitmapData = §="<§.§[E§.§`d§(this.getName());
         return new Bitmap(_loc1_,"auto",true);
      }
      
      public function §!!Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§,E§ is §``§)
            {
               if(_loc2_ || _loc1_)
               {
                  (this.§,E§ as §``§).dispose();
               }
            }
         }
      }
      
      public function §0"&§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§,E§ is §``§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§pop();
                     addr60:
                     §§push((this.§,E§ as §``§).isMiscBlock());
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr68);
                  }
                  §§push(Boolean(§§pop()));
               }
            }
            addr68:
            return §§pop();
         }
         §§goto(addr60);
      }
      
      public function §;!>§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:int = 100;
         var _loc2_:b2Vec2 = this.§]5§();
         if(_loc4_ || _loc1_)
         {
            _loc2_.x = Math.round(_loc2_.x * _loc1_) / _loc1_;
            if(_loc4_)
            {
               _loc2_.y = Math.round(_loc2_.y * _loc1_) / _loc1_;
               addr41:
            }
            §§push(this.getBody().GetAngle());
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && this))
            {
               §§push(Math.round(_loc3_ * _loc1_) / _loc1_);
               if(!(_loc5_ && _loc1_))
               {
                  §§push(Number(§§pop()));
               }
               _loc3_ = §§pop();
            }
            do
            {
               this.getBody().§8" §(_loc2_);
            }
            while(_loc5_ && _loc1_);
            
            return;
         }
         §§goto(addr41);
      }
      
      public function §@Z§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§,E§ is §``§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push((this.§,E§ as §``§).getBody() == null);
                     if(!_loc1_)
                     {
                        §§goto(addr67);
                     }
                  }
                  else
                  {
                     addr68:
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr68);
            }
            addr67:
            return §§pop();
         }
         §§goto(addr68);
      }
      
      private function §'"+§(param1:§^!!§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§,E§ is §``§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr87:
                     if(this.isGround())
                     {
                        if(!_loc3_)
                        {
                           this.§,E§ = param1.getObject(0);
                        }
                     }
                     else
                     {
                        if(this.uniqueID != null)
                        {
                           if(!_loc3_)
                           {
                              this.§,E§ = param1.getObjectWithID(this.uniqueID);
                              addr37:
                           }
                           if(!_loc2_)
                           {
                           }
                        }
                        §§goto(addr24);
                     }
                     §§goto(addr24);
                  }
               }
               addr24:
               return;
            }
            §§goto(addr87);
         }
         §§goto(addr37);
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§,E§ is §``§)
            {
               if(!(_loc2_ && this))
               {
                  addr51:
                  (this.§,E§ as §``§).sprite.visible = param1;
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function get visible() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§@Z§());
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§,E§ is §``§);
                     while(!_loc1_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 return (this.§,E§ as §``§).sprite.visible;
                              }
                              addr84:
                              §§push(false);
                              break;
                           }
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                        }
                        §§push(true);
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                     }
                     §§goto(addr85);
                  }
               }
               §§goto(addr84);
            }
            addr85:
            return §§pop();
         }
         §§goto(addr86);
      }
   }
}
