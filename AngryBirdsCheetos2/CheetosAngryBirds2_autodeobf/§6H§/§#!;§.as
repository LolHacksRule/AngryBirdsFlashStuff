package §6H§
{
   import § o§.b2FilterData;
   import § o§.b2World;
   import §&!8§.§+!6§;
   import §&!8§.§[g§;
   import §&!8§.§]V§;
   import §,§.§ p§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §6!H§.b2Vec2;
   import §^a§.Sprite;
   import §`h§.§@!Z§;
   
   public class §#!;§ extends §]V§
   {
      
      public static const CHEETOS_EXPLOSION:String = "CHEETOS_EXPLOSION";
      
      public static const CHEESE_PARTICLE:String = "CHEESE_PARTICLE";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §#!;§))
         {
            CHEETOS_EXPLOSION = "CHEETOS_EXPLOSION";
         }
         do
         {
            CHEESE_PARTICLE = "CHEESE_PARTICLE";
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public var §5E§:Boolean = true;
      
      public function §#!;§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(!_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override public function activateSpecialPower(param1:§+!6§) : Boolean
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc17_:§[g§ = null;
         if(!_loc19_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc18_ || this)
            {
               if(!§§pop())
               {
                  if(_loc18_ || _loc3_)
                  {
                     §§goto(addr40);
                  }
               }
               var _loc2_:Number = §`e§().GetPosition().x;
               var _loc3_:Number = §`e§().GetPosition().y;
               var _loc4_:Number = §`e§().GetLinearVelocity().x;
               var _loc5_:Number = §`e§().GetLinearVelocity().y;
               var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               §§push(_loc4_);
               if(_loc18_ || param1)
               {
                  §§push(-§§pop());
                  if(!(_loc19_ && this))
                  {
                     §§push(§§pop() / _loc6_);
                     if(!_loc19_)
                     {
                        addr96:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc5_);
                  if(!(_loc19_ && _loc3_))
                  {
                     §§push(§§pop() / _loc6_);
                     if(_loc18_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc8_:* = §§pop();
                  var _loc9_:b2FilterData;
                  (_loc9_ = new b2FilterData()).§5!G§ = §?]§;
                  if(_loc18_)
                  {
                     §§push(_loc9_);
                     §§push(65535);
                     if(_loc18_ || param1)
                     {
                        §§push(~§%!P§);
                        if(_loc18_ || param1)
                        {
                           §§push(§§pop() & §§pop());
                           if(!_loc19_)
                           {
                              addr149:
                              §§push(§§pop() & ~§?]§);
                           }
                           §§pop().§&!6§ = §§pop();
                           addr151:
                           var _loc10_:Number = 2;
                           var _loc11_:Number = 75;
                           var _loc12_:Number = 10;
                           var _loc13_:Number = -7;
                           var _loc14_:Number = 3;
                           var _loc15_:Number = -17;
                           var _loc16_:Number = 0;
                           if(!(_loc19_ && param1))
                           {
                              if(this.§5E§)
                              {
                                 if(_loc18_)
                                 {
                                    addr184:
                                    §§push(param1);
                                    §§push("CHEESE_STICKS");
                                    §§push(_loc2_);
                                    if(_loc18_)
                                    {
                                       §§push(_loc8_);
                                       if(_loc18_ || param1)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc18_ || this)
                                          {
                                             addr205:
                                             §§push(_loc10_);
                                             if(_loc18_ || _loc3_)
                                             {
                                                addr214:
                                                §§push(§§pop() + §§pop());
                                                §§push(_loc3_);
                                                if(!_loc18_)
                                                {
                                                }
                                                addr219:
                                                (_loc17_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false)).§3!]§ = true;
                                                if(!(_loc19_ && this))
                                                {
                                                   §§push(_loc17_);
                                                   §§push(§§findproperty(b2Vec2));
                                                   §§push(_loc12_);
                                                   if(_loc18_ || _loc3_)
                                                   {
                                                      §§push(_loc16_);
                                                      if(_loc18_ || param1)
                                                      {
                                                         addr275:
                                                         §§push(§§pop() + §§pop());
                                                         §§push(_loc13_);
                                                      }
                                                      §§pop().§5! §(new §§pop().b2Vec2(§§pop(),§§pop()));
                                                      loop0:
                                                      while(true)
                                                      {
                                                         addr251:
                                                         while(true)
                                                         {
                                                            _loc17_.§0Q§(_loc11_);
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr275);
                                                }
                                                §§goto(addr255);
                                             }
                                             §§goto(addr219);
                                             §§push(§§pop() - _loc7_);
                                          }
                                       }
                                       §§goto(addr214);
                                    }
                                    §§goto(addr205);
                                 }
                              }
                              else
                              {
                                 §@!Z§.§;!,§.§7!h§.addExplosions(§1b§.§4J§,_loc2_,_loc3_);
                              }
                              §§goto(addr631);
                           }
                           §§goto(addr184);
                        }
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr151);
               }
               §§goto(addr96);
            }
            §§goto(addr40);
         }
         addr40:
         return false;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(super.isReadyToBeRemoved(param1));
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
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
                        while(true)
                        {
                           §§push(Boolean(§,B§));
                           if(!_loc3_)
                           {
                              break;
                              addr59:
                           }
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(true);
                                       break loop3;
                                    }
                                    continue loop3;
                                 }
                                 addr86:
                                 while(true)
                                 {
                                 }
                              }
                              while(true)
                              {
                                 §§push(false);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    break loop4;
                                 }
                                 break loop3;
                              }
                           }
                           if(!(_loc2_ && this))
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                        while(true)
                        {
                           if(_loc3_)
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                     }
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                     continue loop0;
                  }
                  §§goto(addr59);
               }
               return §§pop();
            }
         }
         §§goto(addr86);
      }
      
      override public function addDestructionParticles(param1:§do§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Number = 5;
         var _loc3_:int = §>!+§(false) + 1;
         var _loc4_:Number;
         §§push(_loc4_ = 90);
         if(_loc7_ || _loc2_)
         {
            §§push(§§pop() / (180 / Math.PI));
            if(!_loc6_)
            {
               addr55:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc6_)
            {
               param1.addParticle(§#!;§.CHEETOS_EXPLOSION,§do§.§+!c§,§7!?§.§22§,§`e§().GetPosition().x,§`e§().GetPosition().y,1500,"",§7!?§.§=2§,0,0,0,0,2,20,true);
               do
               {
                  this.§=!U§(param1);
               }
               while(_loc6_);
               
            }
            return;
         }
         §§goto(addr55);
      }
      
      private function §=!U§(param1:§do§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 25;
         var _loc3_:* = 100;
         var _loc4_:* = Number(90);
         if(!(_loc10_ && param1))
         {
            §§push(_loc3_);
            if(_loc9_ || this)
            {
               §§push(int(§§pop() * 1));
               if(_loc9_)
               {
                  addr50:
                  _loc3_ = §§pop();
                  §§push(0);
               }
               var _loc5_:* = §§pop();
               loop0:
               while(true)
               {
                  if(_loc5_ >= _loc3_)
                  {
                     if(!(_loc10_ && _loc3_))
                     {
                        if(_loc9_)
                        {
                           break;
                        }
                        loop12:
                        while(true)
                        {
                           if(_loc9_ || _loc2_)
                           {
                              if(!_loc10_)
                              {
                                 break;
                              }
                              loop6:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() * Math.cos(_loc6_));
                                    loop8:
                                    while(true)
                                    {
                                       if(!_loc10_)
                                       {
                                          if(_loc9_)
                                          {
                                             §§push(§§pop() * Math.random());
                                             loop9:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop10:
                                                while(!(_loc10_ && _loc2_))
                                                {
                                                   _loc7_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc10_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(_loc9_)
                                                      {
                                                         §§push(-§§pop());
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               §§push(§§pop() * Math.sin(_loc6_));
                                                               if(!_loc10_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               addr176:
                                                               addr176:
                                                               _loc8_ = §§pop();
                                                               continue loop12;
                                                            }
                                                            continue loop10;
                                                         }
                                                         continue loop7;
                                                      }
                                                      addr229:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         break loop8;
                                                      }
                                                      continue loop12;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(180 / Math.PI);
                                                      addr248:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         break loop10;
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   addr250:
                                                   while(true)
                                                   {
                                                      _loc6_ = §§pop();
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr250);
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc9_)
                                       {
                                          _loc4_ = §§pop();
                                          §§goto(addr244);
                                       }
                                       §§goto(addr248);
                                    }
                                 }
                              }
                           }
                           §§goto(addr209);
                        }
                        param1.addParticle(§#!;§.CHEESE_PARTICLE,§do§.§+!c§,§7!?§.§22§,§`e§().GetPosition().x,§`e§().GetPosition().y,400 + 700 * Math.random(),"",§7!?§.§7R§(§>p§),_loc7_,_loc8_,5,_loc8_ * 20,0.5 + Math.random() * 2);
                        loop13:
                        while(true)
                        {
                           _loc5_++;
                           addr72:
                           while(_loc10_ && _loc3_)
                           {
                              continue loop13;
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr72);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(_loc9_ || param1)
                     {
                        §§push(Math.random() * (720 / _loc3_));
                        if(_loc9_)
                        {
                           §§goto(addr229);
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr248);
                     }
                  }
                  §§goto(addr244);
               }
               return;
            }
         }
         §§goto(addr50);
      }
   }
}
