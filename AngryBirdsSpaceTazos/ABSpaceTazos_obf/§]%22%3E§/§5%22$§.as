package §]">§
{
   import §"!&§.§8X§;
   import §"!&§.§=C§;
   import §'!&§.b2World;
   import §'4§.§4#§;
   import §1"H§.§0"@§;
   import §1"H§.§2!V§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   import flash.geom.Point;
   
   public class §5"$§ extends § 6§
   {
       
      
      private var §#!9§:Boolean;
      
      private var §while§:Boolean;
      
      private var §6V§:Boolean;
      
      private var §^!@§:int;
      
      public function §5"$§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
      }
      
      public static function §%!$§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(_loc2_ || §5"$§)
         {
            §§push(180);
            if(!(_loc3_ && §5"$§))
            {
               §§push(§§pop() * §§pop());
               if(_loc3_)
               {
               }
               §§goto(addr58);
            }
            §§push(§§pop() % §§pop());
         }
         addr58:
         §§push(§§pop() / Math.PI);
         if(!(_loc3_ && param1))
         {
            §§push(360);
         }
         §§push(§§pop() + §§pop());
         if(!(_loc3_ && _loc2_))
         {
            return §§pop() % 360;
         }
      }
      
      public static function §,"'§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(!(_loc4_ && param1))
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() + §§pop());
         if(_loc3_)
         {
            §§push(360);
            if(!_loc4_)
            {
               §§push(§§pop() % §§pop());
               if(_loc3_ || §5"$§)
               {
                  §§goto(addr52);
               }
               §§goto(addr73);
            }
            §§goto(addr52);
         }
         addr52:
         §§push(§§pop() / (180 / Math.PI));
         if(_loc3_ || _loc3_)
         {
            addr73:
            return Number(§§pop());
         }
      }
      
      public function get §>6§() : Boolean
      {
         return this.§while§;
      }
      
      public function set §<!<§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§^!@§ = param1;
         }
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §1!p§(param1:§;U§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§#!9§);
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(_loc2_ || param1)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr102:
                        while(true)
                        {
                           §§push(§=!c§ > §4#§.§7!E§);
                           if(_loc2_ || _loc3_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr101:
                  }
                  while(§§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        this.§#!9§ = true;
                     }
                     do
                     {
                        param1.§!N§(true);
                     }
                     while(!(_loc2_ || this));
                     
                     if(!(_loc3_ && param1))
                     {
                        addr41:
                        break;
                     }
                     §§goto(addr102);
                  }
                  return;
               }
            }
            §§goto(addr101);
         }
         §§goto(addr41);
      }
      
      protected function move(param1:Number, param2:§;U§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 1;
         if(_loc4_ || param2)
         {
            §§push(this.§while§);
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push(§4#§.§%"B§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * param1);
                     }
                     §§pop().§#"7§(§§pop());
                     while(true)
                     {
                        _loc3_ = -1;
                        loop3:
                        while(_loc4_)
                        {
                           §§push(§=!c§ > §4#§.§,!+§);
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          this.§3!y§(param2);
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          addr57:
                                          while(true)
                                          {
                                             if(!(_loc4_ || this))
                                             {
                                                continue loop8;
                                             }
                                             if(_loc5_ && param1)
                                             {
                                                loop6:
                                                while(!_loc5_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(this.§6V§);
                                                   if(_loc4_ || this)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   addr119:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop6;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr30);
                                             }
                                          }
                                       }
                                       addr111:
                                    }
                                    while(true)
                                    {
                                       addr30:
                                       while(true)
                                       {
                                          §@!F§(param1,new Point(1,_loc3_ * §4#§.§0W§),§4#§.§11§);
                                          if(!(_loc5_ && param1))
                                          {
                                             break;
                                          }
                                          continue loop11;
                                       }
                                       return;
                                       §§goto(addr111);
                                    }
                                 }
                                 addr104:
                              }
                              §§goto(addr119);
                           }
                        }
                     }
                  }
               }
               else
               {
                  this.§=f§(param2);
               }
               §§goto(addr57);
            }
         }
         §§goto(addr81);
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               if(!param2)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr64:
                     loop3:
                     while(!(_loc4_ && param1))
                     {
                        this.§%h§(param2);
                        while(true)
                        {
                           this.move(param1,param2);
                           if(_loc3_)
                           {
                              if(!(_loc4_ && param2))
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                  }
                  addr88:
               }
               while(true)
               {
                  this.§1!p§(param2);
                  §§goto(addr64);
                  §§goto(addr88);
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      protected function §%h§(param1:§;U§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Number = 3;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1);
            §§push(§2!V§.§^"9§);
            §§push(§0"@§.§3!W§);
            §§push(§2!V§.§#!N§);
            §§push(§^!z§().GetPosition().x - _loc2_);
            if(_loc3_ || _loc3_)
            {
               §§push(Math.random() * (_loc2_ * 2));
               if(_loc3_ || _loc3_)
               {
                  addr70:
                  §§push(§§pop() + §§pop());
                  §§push(§^!z§().GetPosition().y - _loc2_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + Math.random() * (_loc2_ * 2));
                  }
               }
               §§pop().§%!y§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§2!V§.§+9§(itemName),0,0,1,0,4);
               §§goto(addr106);
            }
            §§goto(addr70);
         }
         addr106:
      }
      
      private function §=f§(param1:§;U§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc5_)
         {
            if(§^!z§().GetPosition().y >= -5.5)
            {
               loop0:
               while(true)
               {
                  this.§while§ = true;
                  loop1:
                  while(true)
                  {
                     §§push(§4#§.§+"+§);
                     loop2:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop3:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr152:
                           while(true)
                           {
                              §§push(§4#§.§ a§);
                              loop5:
                              for(; _loc5_ || _loc3_; if(!(_loc6_ && param1))
                              {
                                 continue loop2;
                              })
                              {
                                 §§push(Number(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr144:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop6;
                                       }
                                       continue loop0;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop3;
                           }
                        }
                        if(_loc6_ && _loc3_)
                        {
                           continue;
                        }
                        _loc4_ = §§pop();
                        loop8:
                        for(; _loc5_ || this; if(!(_loc5_ || param1))
                        {
                           continue;
                        },§'!p§(§=C§.§+5§),do
                        {
                           this.§]V§(param1);
                           do
                           {
                              if(_loc5_)
                              {
                                 continue;
                              }
                              continue loop1;
                           }
                           while(this.§7"'§(param1), _loc6_);
                           
                        }
                        while(!_loc5_);
                        ,§§goto(addr37))
                        {
                           param1.§&c§(true,_loc2_,_loc3_,_loc4_);
                           loop9:
                           while(!(_loc6_ && _loc3_))
                           {
                              while(true)
                              {
                                 param1.§0!T§();
                                 while(_loc5_)
                                 {
                                    continue loop8;
                                    if(_loc5_ || param1)
                                    {
                                       §§goto(addr25);
                                    }
                                 }
                                 continue loop9;
                              }
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr144);
                     }
                  }
               }
            }
            addr25:
            return;
         }
         §§goto(addr95);
      }
      
      protected function §]V§(param1:§;U§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§<Y§ = null;
         §§push(param1.objectCount);
         if(_loc4_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §<Y§;
            if(_loc4_ || param1)
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
                        addr118:
                        do
                        {
                           §§push(_loc3_.id == this.§^!@§);
                           if(_loc5_)
                           {
                              continue loop2;
                           }
                        }
                        while(!_loc5_);
                        
                        continue loop1;
                     }
                  }
                  loop4:
                  while(!§§pop())
                  {
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!(_loc5_ && param1))
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc2_ = §§pop();
                        if(!(_loc5_ && _loc3_))
                        {
                           if(!_loc4_)
                           {
                              addr73:
                              break loop4;
                           }
                           if(false)
                           {
                              §§goto(addr75);
                           }
                           continue loop0;
                        }
                        if(_loc5_)
                        {
                           break;
                        }
                        if(_loc4_ || _loc3_)
                        {
                           continue;
                        }
                        §§goto(addr118);
                     }
                     addr75:
                     return;
                  }
                  param1.§!!m§(_loc3_);
                  §§goto(addr102);
               }
            }
            §§goto(addr73);
         }
      }
      
      protected function §7"'§(param1:§;U§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§50§ = null;
         §§push(param1.objectCount);
         if(_loc4_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc2_:* = §§pop();
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §50§;
            if(_loc4_)
            {
               if(_loc3_)
               {
                  if(_loc4_)
                  {
                     _loc3_.§^!z§().SetAwake(true);
                     addr104:
                     while(true)
                     {
                        _loc3_.§^!z§().SetLinearVelocity(new b2Vec2(0,-18));
                        addr85:
                        loop3:
                        while(true)
                        {
                           addr70:
                           while(true)
                           {
                              _loc3_.§,M§ = true;
                              addr74:
                              addr76:
                              while(_loc5_)
                              {
                                 continue loop3;
                              }
                              continue loop3;
                           }
                        }
                     }
                     addr104:
                  }
                  §§goto(addr104);
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc5_ && param1))
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(!(_loc5_ && _loc3_))
                  {
                     if(!_loc5_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr70);
                     }
                     else
                     {
                        §§goto(addr104);
                     }
                  }
                  §§goto(addr74);
                  §§goto(addr76);
               }
               continue;
            }
            §§goto(addr104);
         }
      }
      
      protected function §3!y§(param1:§;U§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§50§ = null;
         §§push(param1.objectCount);
         if(_loc5_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc2_:* = §§pop();
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §50§;
            if(_loc5_)
            {
               if(_loc3_)
               {
                  if(!_loc4_)
                  {
                     _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
                     if(!_loc5_)
                     {
                        continue;
                     }
                  }
               }
            }
            §§push(_loc2_);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop() - 1);
            }
            _loc2_ = §§pop();
         }
         if(!_loc4_)
         {
            this.§6V§ = true;
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
      
      override protected function specialPower(param1:§;U§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §#"7§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§%!$§(§^!z§().GetAngle()));
         if(_loc4_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc4_ || _loc3_)
               {
                  §§push(360);
                  if(_loc4_)
                  {
                     addr113:
                     §§push(§§pop() * §§pop());
                     if(_loc4_)
                     {
                        §§push(1000);
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                     loop1:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr118:
                        while(true)
                        {
                           §§push(§,"'§(_loc2_));
                           if(!(_loc3_ && param1))
                           {
                              §§push(Number(§§pop()));
                           }
                           if(!(_loc3_ && _loc2_))
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr113);
            }
         }
      }
   }
}
