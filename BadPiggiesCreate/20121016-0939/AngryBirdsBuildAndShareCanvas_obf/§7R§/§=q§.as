package §7r§
{
   import §"!9§.b2Shape;
   import §&"5§.§7!P§;
   import §+!o§.§?"-§;
   import §+!o§.§]"5§;
   import §+S§.b2Body;
   import §,a§.§3g§;
   import §,a§.§<!m§;
   import §2"=§.b2Mat22;
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §5!V§.§!w§;
   import §5!V§.§>n§;
   import §5!V§.§[!6§;
   import §6" §.§&l§;
   import §default§.§=!Z§;
   import §default§.DisplayObject;
   import §default§.DisplayObjectContainer;
   import §default§.Sprite;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §=q§
   {
      
      private static var §@!p§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §@!p§ = new Dictionary(true);
         }
      }
      
      private var §;6§:Object;
      
      public function §=q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §+!2§(param1:§?"-§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§=q§ = null;
         var _loc2_:Dictionary = new Dictionary();
         var _loc3_:int = 0;
         for each(_loc4_ in §@!p§)
         {
            _loc4_.§]!#§(param1);
            if(_loc7_ || _loc2_)
            {
               if(_loc4_.§;6§)
               {
                  if(_loc7_ || _loc3_)
                  {
                     addr67:
                     _loc2_[_loc4_.§;6§] = _loc4_;
                     if(_loc7_ || §=q§)
                     {
                        if(!_loc4_.isGround())
                        {
                           continue;
                        }
                        if(_loc8_)
                        {
                           continue;
                        }
                     }
                  }
                  _loc3_++;
               }
               continue;
            }
            §§goto(addr67);
         }
         if(!_loc8_)
         {
            §@!p§ = _loc2_;
         }
      }
      
      public static function §0"§(param1:*) : §=q§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§=q§ = null;
         if(_loc3_ || _loc2_)
         {
            if(param1 == null)
            {
               if(_loc3_)
               {
                  return null;
               }
            }
         }
         if(§@!p§[param1] == undefined)
         {
            _loc2_ = new §=q§();
            if(!(_loc4_ && _loc3_))
            {
               _loc2_.§;6§ = param1;
               if(_loc3_ || §=q§)
               {
               }
               §§goto(addr90);
            }
            §@!p§[param1] = _loc2_;
         }
         addr90:
         return §@!p§[param1];
      }
      
      public function setPosition(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§;6§ is §]"5§);
            loop0:
            while(!§§pop())
            {
               §§push(this.§;6§ is §>n§);
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        (this.§;6§ as §>n§).setPosition(param1.x,param1.y);
                     }
                     addr96:
                     if(!_loc3_)
                     {
                        break;
                     }
                     addr121:
                     break;
                  }
                  §§push(this.§;6§ is §[!6§);
                  if(!(_loc3_ && this))
                  {
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 addr64:
                                 (this.§;6§ as §[!6§).setPosition(param1.x,param1.y,true);
                              }
                              else
                              {
                                 §§goto(addr96);
                              }
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           break loop0;
                        }
                        break;
                     }
                     continue loop0;
                  }
               }
               return;
            }
            (this.§;6§ as §]"5§).getBody().§>!W§(param1);
            §§goto(addr121);
         }
         §§goto(addr64);
      }
      
      public function isGround() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§;6§ is §]"5§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     addr49:
                     §§push((this.§;6§ as §]"5§).isGround());
                     if(_loc1_)
                     {
                        return Boolean(§§pop());
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §@!i§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§;6§ is §]"5§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr109:
                     while(true)
                     {
                        §§push((this.§;6§ as §]"5§).§@!i§());
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr65:
                           while(!(_loc2_ && _loc2_))
                           {
                              §§push(§§pop());
                              if(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    break loop1;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue loop2;
                           addr37:
                           if(!(_loc2_ && this))
                           {
                              break loop1;
                           }
                        }
                     }
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr109);
      }
      
      public function §]F§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§;6§ is §]"5§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr44:
                     §§pop();
                     §§push((this.§;6§ as §]"5§).§]F§());
                     if(!_loc1_)
                     {
                        return Boolean(§§pop());
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §9!^§() : Boolean
      {
         return this.§;6§ is §>n§;
      }
      
      public function § j§() : Boolean
      {
         return this.§;6§ is §[!6§;
      }
      
      public function isTexture() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§;6§ is §]"5§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     addr50:
                     §§push((this.§;6§ as §]"5§).isTexture());
                     if(_loc1_)
                     {
                     }
                     §§goto(addr58);
                  }
                  §§push(Boolean(§§pop()));
               }
            }
            addr58:
            return §§pop();
         }
         §§goto(addr50);
      }
      
      public function §]!&§(param1:Boolean = false) : Rectangle
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:b2Transform = null;
         var _loc4_:b2Shape = null;
         var _loc5_:§]"5§ = null;
         var _loc6_:b2Body = null;
         var _loc7_:§>n§ = null;
         var _loc8_:§[!6§ = null;
         var _loc2_:Rectangle = new Rectangle();
         if(_loc9_ || _loc3_)
         {
            §§push(this.§;6§ is §]"5§);
            if(_loc9_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc10_ && this))
                  {
                     if(_loc6_ = (_loc5_ = this.§;6§ as §]"5§).getBody())
                     {
                        if(!(_loc10_ && _loc3_))
                        {
                           _loc4_ = _loc6_.GetFixtureList().GetShape();
                           _loc3_ = _loc5_.getBody().§?^§();
                           _loc2_ = §&l§.§5!4§(_loc4_,_loc3_);
                           addr197:
                           if(!param1)
                           {
                              if(!(_loc10_ && _loc3_))
                              {
                                 _loc2_.x -= _loc3_.position.x;
                                 if(_loc9_ || _loc3_)
                                 {
                                    _loc2_.y -= _loc3_.position.y;
                                    addr221:
                                 }
                              }
                              §§goto(addr221);
                           }
                           return _loc2_;
                           addr99:
                        }
                        §§goto(addr221);
                     }
                     §§goto(addr99);
                  }
                  else
                  {
                     addr129:
                     _loc7_ = this.§;6§ as §>n§;
                     _loc4_ = §<!m§.§"!F§(_loc7_.name).shape.§#!o§();
                     _loc3_ = new b2Transform(new b2Vec2(_loc7_.x,_loc7_.y),new b2Mat22());
                     _loc2_ = §&l§.§5!4§(_loc4_,_loc3_);
                  }
               }
               else
               {
                  §§push(this.§;6§ is §>n§);
                  if(_loc9_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc10_ && _loc2_))
                        {
                           §§goto(addr129);
                        }
                        else
                        {
                           addr167:
                           _loc8_ = this.§;6§ as §[!6§;
                           _loc4_ = §3g§.§7!U§("SLINGSHOT_SHAPE").§#!o§();
                           _loc3_ = new b2Transform(new b2Vec2(_loc8_.mX,_loc8_.mY),new b2Mat22());
                           _loc2_ = §&l§.§5!4§(_loc4_,_loc3_);
                        }
                     }
                     else
                     {
                        addr166:
                        if(this.§;6§ is §[!6§)
                        {
                           §§goto(addr167);
                        }
                     }
                  }
                  §§goto(addr166);
               }
               §§goto(addr197);
            }
            §§goto(addr166);
         }
         §§goto(addr167);
      }
      
      public function getCenter() : b2Vec2
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§]"5§ = null;
         var _loc2_:Rectangle = null;
         if(_loc4_)
         {
            if(this.§;6§ is §]"5§)
            {
               addr30:
               _loc1_ = this.§;6§ as §]"5§;
               if(_loc4_ || _loc2_)
               {
                  return §&l§.§2i§(_loc1_.getBody().GetFixtureList().GetShape(),_loc1_.getBody().§?^§());
               }
            }
            _loc2_ = this.§]!&§(true);
            return new b2Vec2(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.height / 2);
         }
         §§goto(addr30);
      }
      
      public function §;j§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§]"5§ = null;
         if(_loc3_)
         {
            if(this.§;6§ is §]"5§)
            {
               addr37:
               _loc1_ = this.§;6§ as §]"5§;
               if(_loc3_)
               {
                  return §&l§.§;j§(_loc1_.getBody().GetFixtureList().GetShape(),_loc1_.getBody().§?^§());
               }
            }
            return new b2Vec2();
         }
         §§goto(addr37);
      }
      
      public function clone(param1:§!w§, param2:Number = 0, param3:Number = 0) : §=q§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§]"5§ = null;
         var _loc5_:§=q§ = null;
         var _loc6_:§>n§ = null;
         if(_loc7_ || param1)
         {
            §§push(this.§;6§ is §]"5§);
            if(!_loc8_)
            {
               if(§§pop())
               {
                  if(!_loc8_)
                  {
                     addr41:
                     _loc4_ = this.§;6§ as §]"5§;
                     §§push(§§findproperty(§0"§));
                     §§push(param1.objects);
                     §§push(_loc4_.§!F§);
                     §§push(_loc4_.§?k§);
                     if(!_loc8_)
                     {
                        §§push(param2);
                        if(_loc7_)
                        {
                           addr60:
                           §§push(§§pop() + §§pop());
                           §§push(_loc4_.§2!V§);
                           if(!(_loc8_ && param2))
                           {
                              §§goto(addr79);
                           }
                           §§goto(addr88);
                        }
                        addr79:
                        §§push(param3);
                        if(_loc7_ || param2)
                        {
                           addr88:
                           §§push(§§pop() + §§pop());
                           §§push(_loc4_.§+!1§());
                        }
                        return §§pop().§0"§(§§pop().addObject(§§pop(),§§pop(),§§pop(),§§pop(),false,false,true,1,false));
                     }
                     §§goto(addr60);
                  }
                  else
                  {
                     addr106:
                     _loc6_ = this.§;6§ as §>n§;
                     if(!(_loc8_ && param2))
                     {
                        §§push(§§findproperty(§0"§));
                        §§push(param1.slingshot);
                        §§push(_loc6_.name);
                        §§push(_loc6_.x);
                        if(!(_loc8_ && this))
                        {
                           §§push(param2);
                           if(_loc7_)
                           {
                              §§goto(addr137);
                           }
                           §§goto(addr151);
                        }
                        addr137:
                        §§push(§§pop() + §§pop());
                        §§push(_loc6_.y);
                        if(!_loc8_)
                        {
                           addr151:
                           §§push(§§pop() + param3);
                        }
                        return §§pop().§0"§(§§pop().addNewBirdToEndOfList(§§pop(),§§pop(),§§pop()));
                     }
                  }
               }
               else
               {
                  addr105:
                  if(this.§;6§ is §>n§)
                  {
                     §§goto(addr106);
                  }
               }
               return null;
            }
            §§goto(addr105);
         }
         §§goto(addr41);
      }
      
      public function getObject() : Object
      {
         return this.§;6§;
      }
      
      public function §+!1§() : Number
      {
         return this.§[!M§().GetAngle();
      }
      
      public function §9!l§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Transform = this.§[!M§();
         if(!_loc3_)
         {
            if(!_loc1_)
            {
               if(_loc2_ || _loc1_)
               {
                  return null;
               }
            }
         }
         return _loc1_.position.Copy();
      }
      
      public function §[!M§() : b2Transform
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§;6§ is §]"5§);
            loop0:
            while(!§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§;6§ is §>n§);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 return new b2Transform(new b2Vec2((this.§;6§ as §>n§).x,(this.§;6§ as §>n§).y),new b2Mat22());
                              }
                              addr175:
                              break;
                           }
                           continue loop1;
                        }
                        while(true)
                        {
                        }
                        addr125:
                     }
                     while(true)
                     {
                        §§push(this.§;6§ is §[!6§);
                        if(_loc1_ || _loc2_)
                        {
                           if(_loc1_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       return new b2Transform(new b2Vec2((this.§;6§ as §[!6§).mX,(this.§;6§ as §[!6§).mY),new b2Mat22());
                                    }
                                    break loop0;
                                 }
                                 §§goto(addr125);
                              }
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     §§push(null);
                     if(_loc1_ || this)
                     {
                        return §§pop();
                     }
                     addr174:
                     return §§pop();
                  }
                  §§goto(addr126);
               }
            }
            if(this.getBody() == null)
            {
               if(!(_loc2_ && _loc1_))
               {
                  addr173:
                  §§goto(addr174);
                  §§push(null);
               }
               else
               {
                  §§goto(addr175);
               }
            }
            addr126:
            return new b2Transform((this.§;6§ as §]"5§).getBody().§?^§().position.Copy(),(this.§;6§ as §]"5§).getBody().§?^§().R.Copy());
         }
         §§goto(addr173);
      }
      
      public function §=!J§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§;6§ is §]"5§);
            loop0:
            while(!§§pop())
            {
               §§push(this.§;6§ is §>n§);
               while(true)
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  continue loop0;
               }
               (this.§;6§ as §>n§).setPosition(param1.position.x,param1.position.y);
               §§goto(addr93);
            }
            (this.§;6§ as §]"5§).getBody().§0">§(new b2Transform(param1.position.Copy(),param1.R.Copy()));
            §§goto(addr123);
         }
         §§goto(addr82);
      }
      
      public function getBody() : b2Body
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§;6§ is §]"5§)
            {
               if(!(_loc1_ && this))
               {
                  §§goto(addr56);
               }
            }
            return null;
         }
         addr56:
         return (this.§;6§ as §]"5§).getBody();
      }
      
      public function §&!c§(param1:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            §§push(this.§;6§ is §]"5§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§pop();
                     addr128:
                     while(true)
                     {
                        addr76:
                        while(true)
                        {
                           §§push((this.§;6§ as §]"5§).isGround());
                           addr92:
                           while(true)
                           {
                              §§push(!§§pop());
                              if(!(_loc4_ || param1))
                              {
                                 if(§§pop())
                                 {
                                    addr135:
                                    _loc2_ = (this.§;6§ as §[!6§).§ &§();
                                    if(!_loc5_)
                                    {
                                       _loc3_ = 0;
                                    }
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(_loc3_ < _loc2_.length)
                                          {
                                             this.§7?§(param1,_loc2_[_loc3_]);
                                             if(!_loc5_)
                                             {
                                                _loc3_++;
                                                if(_loc4_)
                                                {
                                                   if(false)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 addr180:
                                 addr134:
                              }
                              continue loop0;
                              return;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     §§push(this.§;6§ is §>n§);
                     if(!(_loc5_ && _loc2_))
                     {
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 this.§7?§(param1,(this.§;6§ as §>n§).§'!x§());
                                 if(!(_loc5_ && this))
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr76);
                                          }
                                          §§goto(addr180);
                                       }
                                       else
                                       {
                                          §§goto(addr128);
                                       }
                                    }
                                    §§goto(addr180);
                                    addr118:
                                 }
                              }
                              §§goto(addr135);
                           }
                           else
                           {
                              §§goto(addr134);
                              §§push(this.§;6§ is §[!6§);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr180);
                  }
                  break;
                  §§goto(addr100);
               }
               this.§7?§(param1,(this.§;6§ as §]"5§).§[!g§.§'!x§());
               §§goto(addr118);
            }
            §§goto(addr180);
         }
         §§goto(addr128);
      }
      
      public function §7?§(param1:Boolean, param2:§=!Z§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!param1)
            {
               param2.color = 16777215;
               if(!_loc3_)
               {
                  if(_loc3_ && param1)
                  {
                     addr62:
                     param2.color = 11206570;
                     addr65:
                  }
                  return;
               }
               §§goto(addr65);
            }
         }
         §§goto(addr62);
      }
      
      public function §;"+§(param1:Number, param2:Point) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(this.§;6§ is §]"5§)
            {
               if(_loc3_)
               {
                  addr50:
                  (this.§;6§ as §]"5§).§;"+§(param1,param2);
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §#v§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§;6§ is §]"5§)
            {
               if(_loc1_ || _loc1_)
               {
                  return (this.§;6§ as §]"5§).§+!y§.shape.mName;
                  addr45:
               }
            }
            return null;
         }
         §§goto(addr45);
      }
      
      public function §>!O§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§;6§ is §]"5§)
            {
               if(_loc2_)
               {
                  return (this.§;6§ as §]"5§).§+!y§.material.mName;
                  addr36:
               }
            }
            return null;
         }
         §§goto(addr36);
      }
      
      public function §use§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§;6§ is §]"5§)
            {
               if(_loc3_ || param1)
               {
                  (this.§;6§ as §]"5§).§ !K§(param1);
                  do
                  {
                     (this.§;6§ as §]"5§).getBody().SetAwake(true);
                  }
                  while(_loc2_);
                  
                  addr78:
               }
               §§goto(addr78);
            }
            return;
         }
         §§goto(addr78);
      }
      
      public function §?I§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§;6§ is §]"5§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  addr83:
                  §§push((this.§;6§ as §]"5§).getBody());
                  loop5:
                  while(true)
                  {
                     §§push(§§pop().IsAwake());
                     loop1:
                     while(true)
                     {
                        §§push(!§§pop());
                        addr100:
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§pop();
                                 §§push((this.§;6§ as §]"5§).getBody());
                                 if(!(_loc1_ || this))
                                 {
                                    continue loop5;
                                 }
                                 addr41:
                                 §§push(§§pop().§9!9§());
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(_loc1_ || _loc2_)
                                          {
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr41);
                                 }
                              }
                           }
                           return §§pop();
                        }
                     }
                  }
               }
               else
               {
                  §§push(true);
                  if(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr42);
                  }
               }
               §§goto(addr55);
            }
            §§goto(addr100);
         }
         §§goto(addr83);
      }
      
      public function §%!0§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§;6§ is §]"5§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(true);
                  if(_loc1_ && _loc2_)
                  {
                     break;
                  }
                  continue;
               }
               if(!(_loc1_ && _loc2_))
               {
                  addr100:
                  §§push(Boolean(this.§;6§.getBody()));
                  loop2:
                  while(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr107:
                        while(true)
                        {
                           §§push((this.§;6§ as §]"5§).getBody().§9!9§());
                           if(_loc1_)
                           {
                              break loop0;
                           }
                           if(!(_loc1_ && this))
                           {
                              if(_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                                 break loop2;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                  }
                  break;
               }
               §§goto(addr107);
            }
            return §§pop();
         }
         §§goto(addr100);
      }
      
      public function §9"'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§;6§ is §]"5§);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr84:
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(this.§;6§.getBody()));
                        if(_loc3_ || param1)
                        {
                           while(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 (this.§;6§ as §]"5§).getBody().§2!%§(param1);
                              }
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           return;
                           addr46:
                        }
                     }
                  }
                  addr83:
               }
               §§goto(addr46);
            }
            §§goto(addr83);
         }
         §§goto(addr84);
      }
      
      public function getName() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§;6§ is §]"5§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§;6§ is §>n§);
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc1_)
                           {
                              break loop0;
                           }
                           addr103:
                           while(_loc2_ || this)
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(!_loc1_)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                           }
                           §§push((this.§;6§ as §]"5§).§!F§);
                           break;
                        }
                        while(true)
                        {
                           §§push(this.§;6§ is §[!6§);
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr42);
                                 }
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        return "";
                     }
                     §§goto(addr108);
                  }
                  return "SLINGSHOT";
               }
               §§goto(addr103);
            }
         }
         §§push((this.§;6§ as §>n§).name);
         if(!_loc1_)
         {
            return §§pop();
         }
         addr108:
         return §§pop();
      }
      
      public function §0q§(param1:int, param2:Boolean = false) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:DisplayObject = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(_loc9_ || param1)
         {
            §§push(this.§;6§ is §]"5§);
            if(_loc9_)
            {
               if(§§pop())
               {
                  if(!(_loc10_ && param1))
                  {
                     addr50:
                     _loc3_ = (this.§;6§ as §]"5§).sprite.parent;
                     _loc4_ = (this.§;6§ as §]"5§).sprite;
                     if(_loc9_)
                     {
                        addr88:
                        if(!_loc3_)
                        {
                           if(!(_loc10_ && _loc3_))
                           {
                              return;
                           }
                           addr162:
                           §§push(0);
                           addr130:
                        }
                        else
                        {
                           addr100:
                           §§push(param1);
                           if(!(_loc10_ && param2))
                           {
                              §§push(1);
                              if(!(_loc10_ && param1))
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(!(_loc10_ && param1))
                                    {
                                       §§push(1);
                                       if(!_loc10_)
                                       {
                                          param1 = §§pop();
                                          if(_loc9_)
                                          {
                                             §§goto(addr130);
                                          }
                                          else
                                          {
                                             addr153:
                                             §§push(-1);
                                             if(_loc9_ || param2)
                                             {
                                                addr161:
                                                param1 = §§pop();
                                             }
                                             §§goto(addr163);
                                          }
                                       }
                                       addr163:
                                       var _loc5_:* = §§pop();
                                       while(_loc5_ < _loc3_.numChildren)
                                       {
                                          if((_loc6_ = _loc3_.getChildAt(_loc5_)) == _loc4_)
                                          {
                                             if(!_loc10_)
                                             {
                                                §§push(_loc3_.getChildIndex(_loc6_));
                                                if(_loc9_ || param2)
                                                {
                                                   §§push(int(§§pop()));
                                                   if(_loc9_)
                                                   {
                                                      _loc7_ = §§pop();
                                                      if(!(_loc10_ && this))
                                                      {
                                                         if(param2)
                                                         {
                                                            §§push(param1);
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               if(§§pop() == 1)
                                                               {
                                                                  addr238:
                                                                  §§push(_loc3_.numChildren);
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr242:
                                                                     §§push(int(§§pop() - 1));
                                                                     if(_loc9_)
                                                                     {
                                                                        addr250:
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     §§goto(addr250);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§goto(addr250);
                                                                  }
                                                               }
                                                               if(!_loc10_)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  addr254:
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        addr219:
                                                                        _loc3_.setChildIndex(_loc6_,_loc8_);
                                                                        break;
                                                                        addr224:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr280:
                                                                        _loc8_ = int(Math.min(_loc3_.numChildren - 1,_loc5_ + param1));
                                                                     }
                                                                  }
                                                                  §§goto(addr219);
                                                               }
                                                               §§goto(addr280);
                                                            }
                                                            §§goto(addr242);
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                }
                                                §§goto(addr250);
                                             }
                                             else
                                             {
                                                addr217:
                                                if(true)
                                                {
                                                   continue;
                                                }
                                             }
                                             §§goto(addr219);
                                          }
                                          else
                                          {
                                             _loc5_++;
                                             if(_loc9_)
                                             {
                                                if(_loc9_ || param2)
                                                {
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      §§goto(addr217);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr238);
                                                   }
                                                }
                                                §§goto(addr254);
                                             }
                                          }
                                          §§goto(addr224);
                                       }
                                       return;
                                    }
                                    §§goto(addr162);
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    if(!_loc10_)
                                    {
                                       addr145:
                                       if(§§pop() < -1)
                                       {
                                          if(!(_loc10_ && this))
                                          {
                                             §§goto(addr153);
                                          }
                                       }
                                       §§goto(addr162);
                                    }
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr145);
                           }
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr100);
                  }
                  else
                  {
                     addr73:
                     _loc3_ = (this.§;6§ as §>n§).sprite.parent;
                     _loc4_ = (this.§;6§ as §>n§).sprite;
                  }
               }
               else
               {
                  addr72:
                  if(this.§;6§ is §>n§)
                  {
                     §§goto(addr73);
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr72);
         }
         §§goto(addr50);
      }
      
      public function get uniqueID() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§;6§ is §]"5§)
            {
               if(!_loc1_)
               {
                  §§goto(addr46);
               }
            }
            return "";
         }
         addr46:
         return (this.§;6§ as §]"5§).uniqueID;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§;6§ is §]"5§)
            {
               if(_loc2_)
               {
                  addr45:
                  (this.§;6§ as §]"5§).uniqueID = param1;
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §7M§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§;6§ is §]"5§);
            loop0:
            while(!§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§;6§ is §>n§);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        addr98:
                        while(true)
                        {
                        }
                        addr98:
                     }
                     while(true)
                     {
                        §§push(this.§;6§ is §[!6§);
                        if(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(_loc1_ || _loc2_)
                                       {
                                          break;
                                       }
                                       break loop0;
                                    }
                                    continue loop1;
                                 }
                                 if(_loc1_ || this)
                                 {
                                    return (this.§;6§ as §[!6§).sprite;
                                 }
                                 §§goto(addr98);
                              }
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return null;
                  }
                  return (this.§;6§ as §>n§).sprite;
               }
            }
            return (this.§;6§ as §]"5§).sprite;
         }
         §§goto(addr98);
      }
      
      public function § Q§() : Point
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = null;
         if(_loc3_)
         {
            if(this.§;6§ is §]"5§)
            {
               addr37:
               _loc1_ = this.§9!l§();
               if(_loc3_)
               {
                  return (this.§;6§ as §]"5§).container.§9q§.§&g§(_loc1_.x,_loc1_.y);
               }
            }
            return null;
         }
         §§goto(addr37);
      }
      
      public function §=y§() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = this.§7M§().rotation;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§7M§());
            if(!_loc3_)
            {
               §§pop().rotation = 0;
               addr45:
               §§push(this.§7M§());
            }
            var _loc2_:Number = §§pop().width;
            if(_loc4_)
            {
               this.§7M§().rotation = _loc1_;
            }
            return _loc2_;
         }
         §§goto(addr45);
      }
      
      public function §-p§() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Number = this.§7M§().rotation;
         if(_loc4_ || _loc1_)
         {
            §§push(this.§7M§());
            if(_loc4_ || _loc2_)
            {
               §§pop().rotation = 0;
               addr50:
               §§push(this.§7M§());
            }
            var _loc2_:Number = §§pop().height;
            if(_loc4_)
            {
               this.§7M§().rotation = _loc1_;
            }
            return _loc2_;
         }
         §§goto(addr50);
      }
      
      public function §21§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§;6§ is §]"5§)
            {
            }
         }
      }
      
      public function §'!^§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§;6§ is §]"5§)
            {
               if(!(_loc2_ && this))
               {
                  addr51:
                  (this.§;6§ as §]"5§).§@!P§ = param1;
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §1!Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§;6§ is §]"5§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  (this.§;6§ as §]"5§).§@!P§ = (this.§;6§ as §]"5§).§'">§;
               }
            }
         }
      }
      
      public function §'!x§() : Bitmap
      {
         var _loc1_:BitmapData = §7!P§.§2=§.§"k§(this.getName());
         return new Bitmap(_loc1_,"auto",true);
      }
      
      public function §'!@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§;6§ is §]"5§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  addr55:
                  (this.§;6§ as §]"5§).dispose();
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §8!w§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§;6§ is §]"5§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr49:
                     §§pop();
                     §§push((this.§;6§ as §]"5§).isMiscBlock());
                     if(!(_loc1_ && _loc2_))
                     {
                        return Boolean(§§pop());
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §]<§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:int = 100;
         var _loc2_:b2Vec2 = this.§9!l§();
         if(!(_loc5_ && _loc2_))
         {
            _loc2_.x = Math.round(_loc2_.x * _loc1_) / _loc1_;
            if(!(_loc5_ && _loc1_))
            {
               _loc2_.y = Math.round(_loc2_.y * _loc1_) / _loc1_;
               addr46:
            }
            §§push(this.getBody().GetAngle());
            if(_loc4_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || _loc2_)
            {
               §§push(Math.round(_loc3_ * _loc1_) / _loc1_);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
               _loc3_ = §§pop();
            }
            do
            {
               this.getBody().§>!W§(_loc2_);
            }
            while(!_loc4_);
            
            return;
         }
         §§goto(addr46);
      }
      
      public function §&!5§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§;6§ is §]"5§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push((this.§;6§ as §]"5§).getBody() == null);
                     if(!(_loc1_ && this))
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
      
      private function §]!#§(param1:§?"-§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§;6§ is §]"5§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.isGround());
                     addr73:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(this.uniqueID != null)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 this.§;6§ = param1.getObjectWithID(this.uniqueID);
                              }
                              if(_loc3_ || _loc2_)
                              {
                                 break;
                              }
                           }
                           break;
                        }
                        if(!(_loc2_ && this))
                        {
                           this.§;6§ = param1.getObject(0);
                        }
                        break;
                     }
                  }
                  addr71:
               }
               return;
            }
            §§goto(addr73);
         }
         §§goto(addr71);
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§;6§ is §]"5§)
            {
               if(!(_loc3_ && this))
               {
                  addr55:
                  (this.§;6§ as §]"5§).sprite.visible = param1;
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function get visible() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§&!5§());
            loop0:
            while(!§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§;6§ is §]"5§);
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    return (this.§;6§ as §]"5§).sprite.visible;
                                 }
                                 break loop0;
                              }
                              continue loop1;
                           }
                        }
                        §§push(true);
                        if(!(_loc1_ && _loc2_))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  if(_loc2_ || _loc2_)
                  {
                     return §§pop();
                  }
                  addr95:
                  return §§pop();
               }
            }
         }
         §§goto(addr95);
         §§push(false);
      }
   }
}
