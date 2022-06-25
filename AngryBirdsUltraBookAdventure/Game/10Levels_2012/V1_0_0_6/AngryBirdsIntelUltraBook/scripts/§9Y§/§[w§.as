package §9Y§
{
   import §#V§.b2World;
   import §2_§.§'u§;
   import §2_§.§,L§;
   import §7!B§.§-§;
   import §7!B§.Sprite;
   import §;%§.b2Vec2;
   import §=b§.§>!e§;
   import §=b§.§`!_§;
   import §>! §.§^!c§;
   import §^!Y§.§1C§;
   import flash.geom.Point;
   
   public class §[w§ extends §`!_§
   {
       
      
      public var §4z§:Boolean = false;
      
      public var §!X§:Boolean = false;
      
      private var §&!,§:§-§;
      
      private var §]!`§:Point;
      
      private var §09§:Number = 0;
      
      public function §[w§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || param2)
         {
            super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
            do
            {
               this.§%q§();
            }
            while(_loc11_ && param1);
            
         }
      }
      
      private function §%q§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§1C§ = §^!c§.§5!Y§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         if(!_loc2_)
         {
            this.§&!,§ = new §-§(_loc1_.texture,true);
            while(true)
            {
               this.§]!`§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
               while(!_loc2_)
               {
                  §^!c§.§5!Y§.objects.§#!-§.addChild(this.§&!,§);
                  if(!_loc2_)
                  {
                     return;
                     addr63:
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §<A§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         if(_loc7_ || _loc2_)
         {
            super.update(param1);
         }
         §§push(this.§09§);
         if(_loc7_ || _loc2_)
         {
            §§push(§§pop() / 1000);
            if(_loc7_)
            {
               §§push(§§pop() * Math.PI);
               if(_loc7_ || param1)
               {
               }
               addr61:
               var _loc2_:Number = §§pop();
               var _loc3_:Number = Math.sin(_loc2_);
               addr60:
               if(!_loc6_)
               {
                  §§push(this.§&!,§);
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§push(this.§!X§);
                           loop2:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop3:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§pop();
                                       addr262:
                                       while(true)
                                       {
                                          §§push(!§3J§());
                                          if(_loc6_ && _loc2_)
                                          {
                                             continue loop4;
                                          }
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          if(_loc6_ && _loc2_)
                                          {
                                             continue loop2;
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(this.§&!,§);
                                       if(_loc7_ || _loc2_)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push(Math.cos(_loc2_) * §,L§.§2!C§);
                                                if(!_loc6_)
                                                {
                                                   §§pop().rotation = §§pop();
                                                   if(_loc7_)
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         if(!(_loc6_ && _loc2_))
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(false)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§&!,§ = null;
                                                                     addr124:
                                                                     §§goto(addr412);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc4_ = new Point(-this.§]!`§.x,-this.§]!`§.y);
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     this.§&!,§.x = x + _loc4_.x * Math.cos(this.§&!,§.rotation) - _loc4_.y * Math.sin(this.§&!,§.rotation);
                                                                     addr381:
                                                                  }
                                                                  addr411:
                                                                  §§push(this.§&!,§);
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     §§pop().y = y + _loc4_.x * Math.sin(this.§&!,§.rotation) + _loc4_.y * Math.cos(this.§&!,§.rotation);
                                                                     addr371:
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        addr300:
                                                                        §§push(Number(§3J§().GetLinearVelocity().y));
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr326:
                                                                                 if(§§pop() > §,L§.§1_§)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§,L§.§1_§);
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          addr339:
                                                                                          _loc5_ = Number(§§pop());
                                                                                       }
                                                                                       §§goto(addr339);
                                                                                    }
                                                                                    addr340:
                                                                                 }
                                                                                 §3J§().SetLinearVelocity(new b2Vec2(_loc3_ * §,L§.§=!S§,_loc5_));
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr300);
                                                                                       }
                                                                                       §§goto(addr412);
                                                                                    }
                                                                                    §§goto(addr371);
                                                                                 }
                                                                                 §§goto(addr340);
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                           §§goto(addr326);
                                                                        }
                                                                        §§goto(addr339);
                                                                     }
                                                                     §§goto(addr411);
                                                                  }
                                                                  §§goto(addr381);
                                                               }
                                                               addr412:
                                                               loop15:
                                                               while(_loc6_)
                                                               {
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§&!,§);
                                                                     addr130:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop().alpha > 0)
                                                                        {
                                                                           break loop15;
                                                                        }
                                                                        if(!(_loc7_ || this))
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        if(_loc7_ || _loc3_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§&!,§);
                                                                              addr149:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§pop().dispose();
                                                                                    continue loop7;
                                                                                 }
                                                                                 addr195:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§&!,§);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§pop().rotation = §§pop().rotation + 0.01;
                                                                                    continue loop10;
                                                                                 }
                                                                                 while(!(_loc7_ || _loc3_))
                                                                                 {
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().alpha - 0.025);
                                                                                       addr251:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().alpha = §§pop();
                                                                                       }
                                                                                       addr246:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr191:
                                                                                 §§pop().y = §§pop().y + 1;
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr156);
                                                                                       §§push(this.§&!,§);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(_loc7_ || _loc3_)
                                                                                       {
                                                                                          §§push(this.§&!,§);
                                                                                       }
                                                                                       §§goto(addr262);
                                                                                       addr237:
                                                                                    }
                                                                                    §§goto(addr246);
                                                                                    §§goto(addr191);
                                                                                 }
                                                                                 addr156:
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                           addr147:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§&!,§);
                                                                           addr168:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§goto(addr246);
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr412:
                                                               §§push(this);
                                                               §§push(this.§09§);
                                                               §§goto(addr420);
                                                            }
                                                            §§goto(addr195);
                                                         }
                                                         §§goto(addr152);
                                                      }
                                                      §§goto(addr124);
                                                   }
                                                   addr420:
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop() + param1);
                                                   }
                                                   §§pop().§09§ = §§pop();
                                                   return;
                                                }
                                                §§goto(addr251);
                                             }
                                             §§goto(addr168);
                                          }
                                          §§goto(addr130);
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr237);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr412);
                  }
               }
               §§goto(addr147);
            }
            §§push(§§pop() * §,L§.§<!2§);
            if(_loc7_)
            {
               §§goto(addr60);
            }
         }
         §§goto(addr61);
      }
      
      public function get §!W§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(!§3J§());
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     §§pop();
                     addr53:
                     return this.§&!,§ == null;
                  }
               }
            }
         }
         §§goto(addr53);
      }
   }
}
