package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§,4§;
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §>!Z§.§!u§;
   import §>!Z§.§2_§;
   import §?s§.§8K§;
   import §@L§.§=b§;
   import flash.geom.Point;
   
   public class §+f§ extends §?!z§
   {
       
      
      private var §!!§:Boolean;
      
      private var §6!]§:Boolean;
      
      private var §<!w§:Boolean;
      
      private var §1" §:int;
      
      public function §+f§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public static function §"""§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(!_loc3_)
         {
            §§push(180);
            if(!(_loc3_ && §+f§))
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§push(§§pop() / Math.PI);
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr48);
               }
               §§push(360);
            }
            §§push(§§pop() % §§pop());
         }
         addr48:
         §§push(§§pop() + §§pop());
         if(_loc2_ || param1)
         {
            return §§pop() % 360;
         }
      }
      
      public static function §8t§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(!(_loc3_ && param1))
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() + §§pop());
         if(!_loc3_)
         {
            §§push(360);
            if(!_loc3_)
            {
               §§goto(addr64);
            }
            §§push(§§pop() / (§§pop() / Math.PI));
            if(_loc3_)
            {
            }
            §§goto(addr64);
         }
         addr64:
         §§push(§§pop() % §§pop());
         if(_loc4_)
         {
            §§push(180);
         }
         return Number(§§pop());
      }
      
      public function get § ![§() : Boolean
      {
         return this.§6!]§;
      }
      
      public function set §`!0§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1" § = param1;
         }
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§3!#§, param3:§"_§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §[!c§(param1:§3!#§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§!!§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(_loc2_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     loop1:
                     for(; §§pop(); continue loop0)
                     {
                        do
                        {
                           this.§!!§ = true;
                           do
                           {
                              param1.§#!j§(true);
                           }
                           while(_loc3_);
                           
                        }
                        while(_loc3_ && this);
                        
                        if(_loc2_ || _loc3_)
                        {
                           break;
                        }
                        addr97:
                        loop5:
                        while(true)
                        {
                           §§push(§<E§ > §=b§.§]%§);
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           addr96:
                           while(true)
                           {
                              §§pop();
                              continue loop5;
                           }
                        }
                     }
                     return;
                     addr68:
                  }
               }
               §§goto(addr96);
               if(_loc3_ && this)
               {
                  continue;
               }
               §§goto(addr68);
            }
         }
         §§goto(addr97);
      }
      
      protected function move(param1:Number, param2:§3!#§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 1;
         if(_loc5_ || this)
         {
            §§push(this.§6!]§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc5_ || this)
                  {
                     §§push(this);
                     §§push(§=b§.§>i§);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop() * param1);
                     }
                     §§pop().§@%§(§§pop());
                  }
                  loop1:
                  while(true)
                  {
                     _loc3_ = -1;
                     addr129:
                     loop8:
                     while(true)
                     {
                        §§push(§<E§ > §=b§.§,!W§);
                        if(!_loc4_)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       if(_loc4_ && param2)
                                       {
                                          continue loop8;
                                       }
                                       this.§]!R§(param2);
                                    }
                                    while(true)
                                    {
                                    }
                                    addr114:
                                 }
                                 while(true)
                                 {
                                    addr31:
                                    addr60:
                                    while(true)
                                    {
                                       §^s§(param1,new Point(1,_loc3_ * §=b§.§7!p§),§=b§.§<O§);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc4_ && param1)
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                §§push(this.§<!w§);
                                                if(_loc5_)
                                                {
                                                   §§push(!§§pop());
                                                }
                                                if(!(_loc4_ && param2))
                                                {
                                                   continue loop0;
                                                }
                                                addr124:
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop4;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr31);
                                       }
                                       else
                                       {
                                          §§goto(addr114);
                                       }
                                    }
                                 }
                              }
                              addr100:
                           }
                        }
                        §§goto(addr124);
                     }
                  }
               }
               else
               {
                  this.§%!z§(param2);
               }
               §§goto(addr60);
            }
         }
         §§goto(addr129);
      }
      
      override public function update(param1:Number, param2:§3!#§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               if(!param2)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr70:
                     loop3:
                     while(_loc4_ || this)
                     {
                        this.§8!#§(param2);
                        while(true)
                        {
                           if(!(_loc3_ && param2))
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                  }
                  addr94:
               }
               while(true)
               {
                  this.§[!c§(param2);
                  §§goto(addr70);
                  §§goto(addr94);
               }
            }
         }
      }
      
      protected function §8!#§(param1:§3!#§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Number = 3;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            §§push(§2_§.§0!2§);
            §§push(§!u§.§54§);
            §§push(§2_§.§4d§);
            §§push(§^`§().GetPosition().x - _loc2_);
            if(_loc4_ || _loc2_)
            {
               §§push(Math.random() * (_loc2_ * 2));
               if(_loc4_)
               {
                  addr66:
                  §§push(§§pop() + §§pop());
                  §§push(§^`§().GetPosition().y - _loc2_);
                  if(_loc4_)
                  {
                     §§push(§§pop() + Math.random() * (_loc2_ * 2));
                  }
               }
               §§pop().§-!,§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§2_§.§%j§(itemName),0,0,1,0,4);
               §§goto(addr102);
            }
            §§goto(addr66);
         }
         addr102:
      }
      
      private function §%!z§(param1:§3!#§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(!_loc6_)
         {
            if(§^`§().GetPosition().y >= -5.5)
            {
               loop0:
               while(true)
               {
                  this.§6!]§ = true;
                  while(true)
                  {
                     §§push(§=b§.§,D§);
                     loop2:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        while(true)
                        {
                           _loc2_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(§=b§.§>v§);
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(Number(§§pop()));
                              }
                              loop5:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr132:
                                 while(!(_loc6_ && _loc2_))
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop0;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr25);
      }
      
      protected function §0"!§(param1:§3!#§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§!t§ = null;
         §§push(param1.objectCount);
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §!t§;
            if(_loc4_)
            {
               §§push(Boolean(_loc3_));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr123:
                        do
                        {
                           §§push(_loc3_.id == this.§1" §);
                           if(!(_loc4_ || this))
                           {
                              continue loop2;
                           }
                        }
                        while(_loc4_);
                        
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        do
                        {
                           §§push(_loc2_);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc2_ = §§pop();
                           if(_loc5_)
                           {
                              continue;
                           }
                           if(!(_loc5_ && _loc3_))
                           {
                              if(false)
                              {
                                 §§goto(addr75);
                              }
                              continue loop0;
                           }
                        }
                        while(!_loc5_);
                        
                        §§goto(addr107);
                     }
                     if(_loc4_ || param1)
                     {
                        break;
                     }
                     §§goto(addr123);
                  }
                  param1.removeObject(_loc3_);
               }
            }
            addr107:
            addr75:
            return;
         }
      }
      
      protected function §]!T§(param1:§3!#§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§[!=§ = null;
         §§push(param1.objectCount);
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop() - 1));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §[!=§;
            if(!_loc4_)
            {
               if(_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     _loc3_.§^`§().SetAwake(true);
                     while(true)
                     {
                        _loc3_.§^`§().SetLinearVelocity(new b2Vec2(0,-18));
                        while(_loc5_)
                        {
                           continue loop1;
                           loop5:
                           while(!(_loc4_ && this))
                           {
                              while(true)
                              {
                                 addr44:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc2_ = §§pop();
                                    if(!_loc5_)
                                    {
                                       continue loop5;
                                    }
                                    if(true)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       _loc3_.§%!,§ = true;
                                       continue loop5;
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr44);
            }
            §§goto(addr75);
         }
      }
      
      protected function §]!R§(param1:§3!#§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§[!=§ = null;
         §§push(param1.objectCount);
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop() - 1));
         }
         var _loc2_:* = §§pop();
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §[!=§;
            if(!(_loc4_ && _loc2_))
            {
               if(_loc3_)
               {
                  if(!(_loc4_ && param1))
                  {
                     addr67:
                     _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
                     if(!_loc5_)
                     {
                        continue;
                     }
                  }
               }
               §§push(_loc2_);
               if(_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               _loc2_ = §§pop();
               continue;
            }
            §§goto(addr67);
         }
         if(_loc5_ || _loc3_)
         {
            this.§<!w§ = true;
         }
      }
      
      override protected function updateFlying() : void
      {
      }
      
      override public function scream() : void
      {
      }
      
      override public function blink() : void
      {
      }
      
      override protected function fly() : void
      {
      }
      
      override protected function specialPower(param1:§3!#§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §@%§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§"""§(§^`§().GetAngle()));
         if(!(_loc4_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               §§push(param1);
               if(_loc3_ || _loc3_)
               {
                  §§push(360);
                  if(!_loc4_)
                  {
                     addr119:
                     §§push(§§pop() * §§pop());
                     if(_loc3_)
                     {
                        §§push(1000);
                     }
                     §§push(§§pop() + §§pop());
                     loop0:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr121:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           while(true)
                           {
                              §§push(§8t§(_loc2_));
                              if(_loc3_ || param1)
                              {
                                 if(_loc4_ && this)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr81:
                              _loc2_ = §§pop();
                              loop3:
                              while(!(_loc4_ && _loc3_))
                              {
                                 while(true)
                                 {
                                    §^`§().SetAngle(_loc2_);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 return;
                              }
                           }
                        }
                     }
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr119);
            }
            §§goto(addr121);
         }
         §§goto(addr89);
      }
   }
}
