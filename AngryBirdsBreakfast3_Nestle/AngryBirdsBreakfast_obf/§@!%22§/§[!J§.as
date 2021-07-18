package §@!"§
{
   import §%8§.§89§;
   import §%8§.§@-§;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §@!E§.b2Vec2;
   import §@V§.§&z§;
   import §`2§.§"w§;
   import §`2§.§`""§;
   import flash.geom.Point;
   
   public class §[!J§ extends §^"2§
   {
       
      
      private var §%!s§:Boolean;
      
      private var §4!h§:Boolean;
      
      private var §[a§:Boolean;
      
      private var §"!g§:int;
      
      public function §[!J§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      public static function §%o§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(_loc2_ || param1)
         {
            §§push(180);
            if(_loc2_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§push(§§pop() / Math.PI);
                  if(_loc2_ || _loc2_)
                  {
                     addr66:
                     §§push(§§pop() % 360);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc2_)
                  {
                     return §§pop() % 360;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public static function §[!4§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(!(_loc4_ && §[!J§))
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() + §§pop());
         if(!(_loc4_ && §[!J§))
         {
            §§push(360);
            if(_loc3_ || _loc3_)
            {
               §§goto(addr74);
            }
            §§push(§§pop() / (§§pop() / Math.PI));
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         addr74:
         §§push(§§pop() % §§pop());
         if(_loc3_)
         {
            return 180;
         }
      }
      
      public function get §&@§() : Boolean
      {
         return this.§4!h§;
      }
      
      public function set § !1§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§"!g§ = param1;
         }
      }
      
      override public function get destroysCollidingObjects() : Boolean
      {
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:§`!m§, param3:§@_§, param4:Boolean = true) : Number
      {
         return health;
      }
      
      protected function §+!C§(param1:§`!m§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§%!s§);
            if(!_loc3_)
            {
               §§push(!§§pop());
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        addr92:
                        while(true)
                        {
                           §§push(§#e§ > §&z§.§<!!§);
                           if(_loc2_ || _loc3_)
                           {
                              break;
                           }
                           continue loop4;
                        }
                     }
                     addr91:
                  }
                  loop0:
                  for(; §§pop(); §§goto(addr92))
                  {
                     loop1:
                     while(true)
                     {
                        this.§%!s§ = true;
                        loop2:
                        while(_loc2_)
                        {
                           while(true)
                           {
                              param1.§+!M§(true);
                              if(_loc2_ || _loc2_)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    break loop0;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                  }
                  return;
               }
            }
            §§goto(addr91);
         }
         §§goto(addr71);
      }
      
      protected function move(param1:Number, param2:§`!m§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 1;
         if(!(_loc5_ && param1))
         {
            §§push(this.§4!h§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     §§push(this);
                     §§push(§&z§.§=![§);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop() * param1);
                     }
                     §§pop().§"!e§(§§pop());
                  }
                  loop1:
                  while(true)
                  {
                     _loc3_ = -1;
                     loop2:
                     while(true)
                     {
                        §§push(§#e§ > §&z§.§[!k§);
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §?"&§(param1,new Point(1,_loc3_ * §&z§.§#!n§),§&z§.§1y§);
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             addr52:
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop1;
                                                }
                                                if(!_loc5_)
                                                {
                                                   continue loop8;
                                                }
                                             }
                                          }
                                          return;
                                          addr108:
                                       }
                                       addr46:
                                    }
                                    while(!(_loc5_ && _loc3_))
                                    {
                                       while(true)
                                       {
                                          this.§ z§(param2);
                                          continue loop1;
                                       }
                                    }
                                    addr117:
                                    while(_loc4_)
                                    {
                                       §§push(this.§[a§);
                                       if(!_loc4_)
                                       {
                                          continue loop10;
                                       }
                                       if(!(_loc5_ && param2))
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                              addr89:
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr117);
                           }
                        }
                     }
                  }
               }
               else
               {
                  this.§`"&§(param2);
               }
               §§goto(addr52);
            }
         }
         §§goto(addr98);
      }
      
      override public function update(param1:Number, param2:§`!m§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               if(!param2)
               {
                  if(_loc4_ || _loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr41:
                     if(_loc4_ || _loc3_)
                     {
                        return;
                        addr58:
                     }
                  }
                  addr104:
               }
               while(true)
               {
                  this.§+!C§(param2);
                  continue loop0;
                  §§goto(addr104);
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      protected function §-! §(param1:§`!m§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Number = 3;
         if(!(_loc4_ && _loc2_))
         {
            §§push(param1);
            §§push(§`""§.§-J§);
            §§push(§"w§.§,§);
            §§push(§`""§.§@b§);
            §§push(§!!I§().GetPosition().x - _loc2_);
            if(_loc3_)
            {
               §§push(Math.random() * (_loc2_ * 2));
               if(!_loc4_)
               {
                  addr60:
                  §§push(§§pop() + §§pop());
                  §§push(§!!I§().GetPosition().y - _loc2_);
                  if(_loc3_)
                  {
                     §§push(§§pop() + Math.random() * (_loc2_ * 2));
                  }
               }
               §§pop().§9!@§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),3500,"",§`""§.§6!X§(itemName),0,0,1,0,4);
               §§goto(addr96);
            }
            §§goto(addr60);
         }
         addr96:
      }
      
      private function §`"&§(param1:§`!m§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_)
         {
            if(§!!I§().GetPosition().y >= -5.5)
            {
               if(!(_loc6_ && param1))
               {
                  addr174:
                  this.§4!h§ = true;
               }
               loop0:
               while(true)
               {
                  §§push(§&z§.§?C§);
                  loop1:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§&z§.§#!Z§);
                           loop4:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop5:
                              while(!_loc6_)
                              {
                                 _loc3_ = §§pop();
                                 while(true)
                                 {
                                    §§push(§&z§.§ A§);
                                    if(!(_loc6_ && this))
                                    {
                                       if(_loc6_ && param1)
                                       {
                                          break;
                                       }
                                       §§push(Number(§§pop()));
                                    }
                                    if(!_loc6_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop5;
                                    addr49:
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       this.§<!3§(param1);
                                       addr56:
                                       if(_loc5_)
                                       {
                                          return;
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          if(_loc5_ || this)
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr49);
                                             }
                                             else
                                             {
                                                while(!(_loc6_ && param1))
                                                {
                                                   §8!U§(§89§.§&7§);
                                                }
                                                continue loop3;
                                                addr73:
                                             }
                                          }
                                          addr62:
                                          addr98:
                                          while(!(_loc6_ && this))
                                          {
                                             this.§7"7§(param1);
                                             continue loop11;
                                          }
                                          while(!_loc6_)
                                          {
                                             param1.§0!7§();
                                             §§goto(addr73);
                                             §§goto(addr62);
                                          }
                                          continue loop0;
                                       }
                                       addr25:
                                    }
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr25);
         }
         §§goto(addr174);
      }
      
      protected function §7"7§(param1:§`!m§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§>S§ = null;
         §§push(param1.objectCount);
         if(_loc5_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §>S§;
            if(_loc5_)
            {
               §§push(Boolean(_loc3_));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           do
                           {
                              §§push(_loc2_);
                              if(_loc5_ || this)
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc2_ = §§pop();
                           }
                           while(!_loc5_);
                           
                           if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 if(false)
                                 {
                                    §§goto(addr68);
                                 }
                                 continue loop0;
                              }
                              addr93:
                              while(true)
                              {
                                 param1.removeObject(_loc3_);
                              }
                              addr93:
                           }
                           while(true)
                           {
                              if(_loc5_ || this)
                              {
                                 break loop4;
                              }
                              addr119:
                              while(true)
                              {
                                 §§push(_loc3_.id == this.§"!g§);
                                 if(_loc4_ && _loc3_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        §§goto(addr93);
                     }
                     addr68:
                     return;
                     addr91:
                  }
                  while(true)
                  {
                     §§pop();
                     §§goto(addr119);
                  }
               }
            }
            §§goto(addr93);
         }
      }
      
      protected function §<!3§(param1:§`!m§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§7k§ = null;
         §§push(param1.objectCount);
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop() - 1));
         }
         var _loc2_:* = §§pop();
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §7k§;
            if(_loc5_)
            {
               if(_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     _loc3_.§!!I§().SetAwake(true);
                     addr110:
                     loop6:
                     while(true)
                     {
                        _loc3_.§!!I§().SetLinearVelocity(new b2Vec2(0,-18));
                        addr84:
                        addr93:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              continue loop1;
                           }
                           continue loop6;
                        }
                        loop3:
                        while(true)
                        {
                           _loc3_.§]!Q§ = true;
                           addr68:
                           addr75:
                           while(!(_loc5_ || this))
                           {
                              §§goto(addr84);
                              continue loop3;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(!_loc4_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr68);
                  §§goto(addr75);
               }
               continue;
            }
            §§goto(addr110);
         }
      }
      
      protected function § z§(param1:§`!m§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§7k§ = null;
         §§push(param1.objectCount);
         if(!_loc4_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc2_:* = §§pop();
         while(_loc2_ >= 0)
         {
            _loc3_ = param1.getObject(_loc2_) as §7k§;
            if(!_loc4_)
            {
               if(_loc3_)
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  addr52:
                  _loc3_.applyDamage(_loc3_.healthMax * 2,param1,null,true);
                  if(!(_loc5_ || _loc3_))
                  {
                     continue;
                  }
               }
               §§push(_loc2_);
               if(!_loc4_)
               {
                  §§push(§§pop() - 1);
               }
               _loc2_ = §§pop();
               continue;
            }
            §§goto(addr52);
         }
         if(!(_loc4_ && param1))
         {
            this.§[a§ = true;
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
      
      override protected function specialPower(param1:§`!m§, param2:Number = 0, param3:Number = 0) : void
      {
      }
      
      override protected function normalize() : void
      {
      }
      
      public function §"!e§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§%o§(§!!I§().GetAngle()));
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            §§push(_loc2_);
            while(true)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  §§push(360);
                  if(_loc3_)
                  {
                     addr107:
                     §§push(§§pop() * §§pop());
                     if(!_loc4_)
                     {
                        §§push(1000);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                     while(true)
                     {
                        _loc2_ = §§pop();
                        §§goto(addr112);
                     }
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr107);
            }
         }
         addr112:
         while(true)
         {
            §§push(§[!4§(_loc2_));
            if(!(_loc4_ && _loc3_))
            {
               if(_loc4_)
               {
                  continue loop0;
               }
               §§push(Number(§§pop()));
            }
            if(_loc3_)
            {
               _loc2_ = §§pop();
               do
               {
                  §!!I§().SetAngle(_loc2_);
               }
               while(!(_loc3_ || this));
               
               if(!(_loc4_ && param1))
               {
                  break;
               }
               continue;
            }
            continue loop1;
         }
      }
      
      public function get § var§() : Boolean
      {
         return this.§[a§;
      }
   }
}
