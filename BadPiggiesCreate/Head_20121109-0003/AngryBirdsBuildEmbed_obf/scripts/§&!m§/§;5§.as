package §&!m§
{
   import § !t§.b2Body;
   import §#b§.b2Shape;
   import §+]§.§"^§;
   import §-!`§.§7!J§;
   import §<!<§.§7E§;
   import §<!<§.§;§;
   import §<!<§.§]K§;
   import §<!B§.b2Mat22;
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §>!'§.§<!3§;
   import §?!6§.§1!!§;
   import §?!6§.§3>§;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §;5§
   {
      
      private static var §"z§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §"z§ = new Dictionary();
         }
      }
      
      private var §]e§:Object;
      
      public function §;5§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §9!6§(param1:*) : §;5§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;5§ = null;
         if(_loc4_ || param1)
         {
            if(param1 == null)
            {
               if(_loc4_ || param1)
               {
                  return null;
               }
            }
         }
         if(§"z§[param1] == undefined)
         {
            _loc2_ = new §;5§();
            if(!(_loc3_ && §;5§))
            {
               _loc2_.§]e§ = param1;
               if(!(_loc3_ && _loc3_))
               {
                  §"z§[param1] = _loc2_;
               }
            }
         }
         return §"z§[param1];
      }
      
      public function setPosition(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§]e§ is §<!3§);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  (this.§]e§ as §<!3§).getBody().§&!%§(param1);
               }
               else
               {
                  §§push(this.§]e§ is §]K§);
                  if(_loc3_ || param1)
                  {
                     addr65:
                     if(§§pop())
                     {
                        (this.§]e§ as §]K§).setPosition(param1.x,param1.y);
                        addr66:
                        if(!(_loc3_ || this))
                        {
                           addr98:
                           (this.§]e§ as §;§).setPosition(param1.x,param1.y,true);
                        }
                        §§goto(addr108);
                     }
                     else
                     {
                        §§push(this.§]e§ is §;§);
                     }
                     §§goto(addr108);
                  }
                  if(§§pop())
                  {
                     §§goto(addr98);
                  }
               }
               addr108:
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr66);
      }
      
      public function isGround() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§]e§ is §<!3§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr43:
                     §§pop();
                     §§push((this.§]e§ as §<!3§).isGround());
                     if(_loc1_ || _loc1_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr43);
      }
      
      public function §;!Z§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§]e§ is §<!3§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop());
               if(_loc2_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(!(_loc1_ && this))
                     {
                        §§pop();
                        §§goto(addr83);
                     }
                     addr81:
                     §§push(Boolean(§§pop()));
                     if(!Boolean(§§pop()))
                     {
                        addr82:
                        §§pop();
                        addr83:
                        if(_loc2_)
                        {
                           §§push((this.§]e§ as §<!3§).§;!Z§());
                        }
                        §§push((this.§]e§ as §<!3§).§`T§());
                        if(_loc1_ && _loc2_)
                        {
                        }
                        §§goto(addr96);
                     }
                  }
                  addr96:
                  return Boolean(§§pop());
               }
               §§goto(addr81);
            }
            §§goto(addr82);
         }
         §§goto(addr83);
      }
      
      public function §%P§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§]e§ is §<!3§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     addr40:
                     §§push((this.§]e§ as §<!3§).§%P§());
                     if(_loc2_ || _loc1_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr40);
      }
      
      public function §;L§() : Boolean
      {
         return this.§]e§ is §]K§;
      }
      
      public function §<P§() : Boolean
      {
         return this.§]e§ is §;§;
      }
      
      public function isTexture() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§]e§ is §<!3§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     addr40:
                     §§push((this.§]e§ as §<!3§).isTexture());
                     if(!(_loc1_ && _loc1_))
                     {
                        addr52:
                        §§push(Boolean(§§pop()));
                     }
                  }
               }
               return §§pop();
            }
            §§goto(addr52);
         }
         §§goto(addr40);
      }
      
      public function §]!5§() : Rectangle
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc1_:§<!3§ = null;
         var _loc2_:§]K§ = null;
         var _loc3_:b2Shape = null;
         var _loc4_:b2Transform = null;
         var _loc5_:§;§ = null;
         var _loc6_:b2Shape = null;
         var _loc7_:b2Transform = null;
         if(_loc9_ || _loc2_)
         {
            §§push(this.§]e§ is §<!3§);
            if(!_loc8_)
            {
               if(§§pop())
               {
                  if(!(_loc8_ && _loc3_))
                  {
                     _loc1_ = this.§]e§ as §<!3§;
                     if(_loc9_)
                     {
                        return §"^§.§3Q§(_loc1_.getBody().§7!Y§().GetShape(),_loc1_.getBody().§>!H§());
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr101);
               }
               addr87:
               §§push(this.§]e§ is §]K§);
               if(!_loc8_)
               {
                  addr93:
                  if(§§pop())
                  {
                     if(!(_loc8_ && _loc2_))
                     {
                        addr101:
                        _loc2_ = this.§]e§ as §]K§;
                        _loc3_ = §1!!§.§#P§(_loc2_.name).shape.§8!8§();
                        _loc4_ = new b2Transform(new b2Vec2(_loc2_.mX,_loc2_.mY),new b2Mat22());
                        if(!_loc8_)
                        {
                           return §"^§.§3Q§(_loc3_,_loc4_);
                        }
                     }
                     _loc5_ = this.§]e§ as §;§;
                     _loc6_ = §3>§.§?p§("SLINGSHOT_SHAPE").§8!8§();
                     _loc7_ = new b2Transform(new b2Vec2(_loc5_.mX,_loc5_.mY),new b2Mat22());
                     addr139:
                     if(_loc9_)
                     {
                        return §"^§.§3Q§(_loc6_,_loc7_);
                     }
                     §§goto(addr180);
                  }
                  §§push(this.§]e§ is §;§);
               }
               if(§§pop())
               {
                  §§goto(addr139);
               }
               addr180:
               return null;
            }
            §§goto(addr93);
         }
         §§goto(addr139);
      }
      
      public function getCenter() : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§<!3§ = null;
         var _loc2_:b2Vec2 = null;
         var _loc3_:Rectangle = null;
         if(!_loc5_)
         {
            if(this.§]e§ is §<!3§)
            {
               addr42:
               _loc1_ = this.§]e§ as §<!3§;
               _loc2_ = _loc1_.getBody().§>!H§().position;
               if(!_loc5_)
               {
                  return new Point(_loc2_.x,_loc2_.y);
               }
            }
            _loc3_ = this.§]!5§();
            return new Point(_loc3_.x + _loc3_.width / 2,_loc3_.y + _loc3_.height / 2);
         }
         §§goto(addr42);
      }
      
      public function clone(param1:§7E§, param2:Number = 0, param3:Number = 0) : §;5§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§<!3§ = null;
         var _loc5_:§]K§ = null;
         if(_loc6_)
         {
            §§push(this.§]e§ is §<!3§);
            if(!(_loc7_ && param2))
            {
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     addr38:
                     _loc4_ = this.§]e§ as §<!3§;
                     if(!(_loc7_ && param1))
                     {
                        §§push(§§findproperty(§9!6§));
                        §§push(param1.objects);
                        §§push(_loc4_.§>p§);
                        §§push(_loc4_.§1!M§);
                        if(!_loc7_)
                        {
                           §§push(param2);
                           if(!(_loc7_ && param1))
                           {
                              addr79:
                              §§push(§§pop() + §§pop());
                              §§push(_loc4_.§7"§);
                              if(_loc6_)
                              {
                                 §§push(param3);
                                 if(_loc6_)
                                 {
                                    addr87:
                                    §§push(§§pop() + §§pop());
                                    §§push(_loc4_.§;x§());
                                 }
                                 return §§pop().§9!6§(§§pop().addObject(§§pop(),§§pop(),§§pop(),§§pop(),false,false));
                              }
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr79);
                     }
                     else
                     {
                        §§goto(addr94);
                     }
                  }
                  §§goto(addr99);
               }
               addr94:
               §§goto(addr98);
            }
            addr98:
            if(this.§]e§ is §]K§)
            {
               addr99:
               _loc5_ = this.§]e§ as §]K§;
               if(!(_loc7_ && param1))
               {
                  §§push(§§findproperty(§9!6§));
                  §§push(param1.slingshot);
                  §§push(_loc5_.name);
                  §§push(_loc5_.mX);
                  if(_loc6_ || this)
                  {
                     §§push(param2);
                     if(_loc6_)
                     {
                        addr140:
                        §§push(§§pop() + §§pop());
                        §§push(_loc5_.mY);
                        if(!_loc7_)
                        {
                           §§push(§§pop() + param3);
                        }
                     }
                     return §§pop().§9!6§(§§pop().addNewBirdToEndOfList(§§pop(),§§pop(),§§pop()));
                  }
                  §§goto(addr140);
               }
            }
            return null;
         }
         §§goto(addr38);
      }
      
      public function getObject() : Object
      {
         return this.§]e§;
      }
      
      public function getPosition() : b2Vec2
      {
         var _loc1_:b2Transform = this.§!0§();
         return _loc1_.position.Copy();
      }
      
      public function §!0§() : b2Transform
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§]e§ is §<!3§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     return new b2Transform((this.§]e§ as §<!3§).getBody().§>!H§().position.Copy(),(this.§]e§ as §<!3§).getBody().§>!H§().R.Copy());
                  }
                  addr106:
                  §§push(this.§]e§ is §;§);
               }
               else
               {
                  §§push(this.§]e§ is §]K§);
                  if(_loc1_)
                  {
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           return new b2Transform(new b2Vec2((this.§]e§ as §]K§).mX,(this.§]e§ as §]K§).mY),new b2Mat22());
                        }
                        §§goto(addr128);
                     }
                     else
                     {
                        §§goto(addr106);
                     }
                     §§goto(addr128);
                  }
               }
            }
            if(§§pop())
            {
               return new b2Transform(new b2Vec2((this.§]e§ as §;§).mX,(this.§]e§ as §;§).mY),new b2Mat22());
            }
         }
         addr128:
         return null;
      }
      
      public function getBody() : b2Body
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§]e§ is §<!3§)
            {
               if(!(_loc1_ && this))
               {
                  return (this.§]e§ as §<!3§).getBody();
               }
            }
         }
         return null;
      }
      
      public function §+!D§(param1:Boolean) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         §§push(this.§]e§ is §<!3§);
         if(_loc5_)
         {
            if(§§pop())
            {
               if(!_loc4_)
               {
                  §§pop();
                  §§push((this.§]e§ as §<!3§).isGround());
                  if(_loc4_)
                  {
                  }
                  §§goto(addr48);
               }
               §§push(!§§pop());
               if(_loc4_ && _loc2_)
               {
               }
               §§goto(addr98);
            }
            addr48:
            if(§§pop())
            {
               this.§8!h§(param1,(this.§]e§ as §<!3§).§0!E§.§+!V§());
               if(!_loc5_)
               {
                  addr93:
               }
            }
            else
            {
               §§push(this.§]e§ is §]K§);
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        this.§8!h§(param1,(this.§]e§ as §]K§).§+!V§());
                     }
                     §§goto(addr93);
                  }
                  else
                  {
                     addr98:
                     if(this.§]e§ is §;§)
                     {
                        _loc2_ = (this.§]e§ as §;§).§try §();
                        if(!_loc4_)
                        {
                           _loc3_ = 0;
                        }
                        while(_loc3_ < _loc2_.length)
                        {
                           this.§8!h§(param1,_loc2_[_loc3_]);
                           if(_loc5_ || _loc3_)
                           {
                              _loc3_++;
                              if(_loc4_)
                              {
                                 break;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr98);
            }
            return;
         }
         §§goto(addr98);
      }
      
      public function §8!h§(param1:Boolean, param2:§7!J§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param1)
            {
               if(!_loc4_)
               {
                  addr22:
                  param2.color = 11206570;
                  if(!_loc3_)
                  {
                  }
               }
            }
            else
            {
               param2.color = 16777215;
            }
            return;
         }
         §§goto(addr22);
      }
      
      public function § !-§(param1:Number, param2:Point) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(this.§]e§ is §<!3§)
            {
               if(!_loc3_)
               {
                  (this.§]e§ as §<!3§).§ !-§(param1,param2);
               }
            }
         }
      }
   }
}
