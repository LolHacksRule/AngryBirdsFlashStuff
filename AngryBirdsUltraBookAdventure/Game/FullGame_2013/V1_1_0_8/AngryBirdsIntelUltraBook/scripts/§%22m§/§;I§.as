package §"m§
{
   import § var§.§ 4§;
   import § var§.§!u§;
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §40§.§2!y§;
   import §40§.§5G§;
   import §;!y§.§,!s§;
   import §=`§.§#`§;
   import §`g§.§"<§;
   import §`g§.Sprite;
   import flash.geom.Point;
   
   public class §;I§ extends §!u§
   {
       
      
      public var §&!;§:Boolean = false;
      
      public var §>y§:Boolean = false;
      
      private var §9!R§:§"<§;
      
      private var §3!#§:Point;
      
      private var §4!P§:Number = 0;
      
      public function §;I§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_ || param3)
         {
            super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         }
         do
         {
            this.§3=§();
         }
         while(!_loc10_);
         
      }
      
      private function §3=§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§#`§ = §,!s§.§=!I§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         if(!(_loc2_ && this))
         {
            this.§9!R§ = new §"<§(_loc1_.texture,true);
            while(true)
            {
               this.§3!#§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
               loop1:
               while(_loc3_ || this)
               {
                  while(true)
                  {
                     §,!s§.§=!I§.objects.§<f§.addChild(this.§9!R§);
                     if(_loc3_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr90);
      }
      
      public function §43§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         if(_loc6_ || _loc2_)
         {
            super.update(param1);
         }
         §§push(this.§4!P§);
         if(_loc6_ || _loc2_)
         {
            §§push(§§pop() / 1000);
            if(_loc6_ || this)
            {
               §§push(§§pop() * Math.PI);
               if(_loc6_ || _loc3_)
               {
                  addr59:
                  §§push(§§pop() * §2!y§.§4<§);
                  if(!(_loc7_ && param1))
                  {
                     addr69:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               var _loc3_:Number = Math.sin(_loc2_);
               if(_loc6_)
               {
                  §§push(this.§9!R§);
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§push(this.§>y§);
                           if(_loc6_ || param1)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           loop2:
                           while(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 if(_loc7_ && param1)
                                 {
                                    break;
                                 }
                                 §§push(!§63§());
                                 if(_loc6_ || _loc3_)
                                 {
                                    if(_loc6_)
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                    continue loop2;
                                 }
                              }
                              return;
                           }
                           if(!§§pop())
                           {
                              §§push(this.§9!R§);
                              if(_loc6_)
                              {
                                 §§push(Math.cos(_loc2_) * §2!y§.§+#§);
                                 if(_loc6_)
                                 {
                                    §§pop().rotation = §§pop();
                                    if(_loc6_)
                                    {
                                       if(!(_loc7_ && this))
                                       {
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             if(false)
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   this.§9!R§ = null;
                                                   addr117:
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ || this))
                                                      {
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§push(this.§9!R§);
                                                            addr142:
                                                            loop14:
                                                            while(true)
                                                            {
                                                               if(!(_loc7_ && _loc3_))
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§pop().dispose();
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     addr237:
                                                                     addr237:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§9!R§);
                                                                        addr239:
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§9!R§);
                                                                           addr241:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().alpha - 0.025);
                                                                              addr244:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().alpha = §§pop();
                                                                                 addr245:
                                                                                 while(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    §§push(this.§9!R§);
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr434);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     §§push(this.§9!R§);
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§pop().y = §§pop().y + 1;
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§9!R§);
                                                                           addr165:
                                                                           addr176:
                                                                           addr180:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§9!R§);
                                                                              if(!(_loc6_ || param1))
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              if(_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           §§pop().rotation = §§pop().rotation + 0.01;
                                                                           addr426:
                                                                           while(true)
                                                                           {
                                                                              if(_loc7_ && param1)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 §§push(this.§9!R§);
                                                                                 if(_loc7_ && param1)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(§§pop().alpha > 0)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 §§goto(addr165);
                                                                              }
                                                                              §§goto(addr245);
                                                                              §§goto(addr176);
                                                                           }
                                                                           addr79:
                                                                           §§push(this);
                                                                           §§push(this.§4!P§);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(§§pop() + param1);
                                                                           }
                                                                           §§pop().§4!P§ = §§pop();
                                                                           §§goto(addr434);
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr239);
                                                                  }
                                                                  §§goto(addr241);
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      §§goto(addr79);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                _loc4_ = new Point(-this.§3!#§.x,-this.§3!#§.y);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   this.§9!R§.x = x + _loc4_.x * Math.cos(this.§9!R§.rotation) - _loc4_.y * Math.sin(this.§9!R§.rotation);
                                                   addr425:
                                                   §§push(this.§9!R§);
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§pop().y = y + _loc4_.x * Math.sin(this.§9!R§.rotation) + _loc4_.y * Math.cos(this.§9!R§.rotation);
                                                      addr324:
                                                      addr392:
                                                      §§push(Number(§63§().GetLinearVelocity().y));
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc7_)
                                                         {
                                                            _loc5_ = §§pop();
                                                            addr358:
                                                            if(_loc6_)
                                                            {
                                                               §§push(§2!y§.§>8§);
                                                            }
                                                            _loc5_ = §§pop();
                                                            addr359:
                                                            if(!_loc7_)
                                                            {
                                                               addr297:
                                                               §63§().SetLinearVelocity(new b2Vec2(_loc3_ * §2!y§.§^!O§,_loc5_));
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr324);
                                                                     }
                                                                     §§goto(addr79);
                                                                  }
                                                                  §§goto(addr392);
                                                               }
                                                               §§goto(addr359);
                                                            }
                                                            §§goto(addr425);
                                                         }
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               §§push(§2!y§.§>8§);
                                                               if(!(_loc7_ && _loc3_))
                                                               {
                                                                  §§goto(addr358);
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            §§goto(addr358);
                                                         }
                                                         §§goto(addr297);
                                                      }
                                                      §§goto(addr358);
                                                   }
                                                   addr395:
                                                   §§goto(addr395);
                                                }
                                                §§goto(addr324);
                                             }
                                             §§goto(addr79);
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr117);
                                    }
                                    §§goto(addr434);
                                 }
                                 §§goto(addr244);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr237);
                        }
                     }
                     §§goto(addr426);
                  }
               }
               §§goto(addr237);
            }
            §§goto(addr59);
         }
         §§goto(addr69);
      }
      
      public function get §%" §() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(!§63§());
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     addr49:
                     return this.§9!R§ == null;
                  }
               }
            }
         }
         §§goto(addr49);
      }
   }
}
