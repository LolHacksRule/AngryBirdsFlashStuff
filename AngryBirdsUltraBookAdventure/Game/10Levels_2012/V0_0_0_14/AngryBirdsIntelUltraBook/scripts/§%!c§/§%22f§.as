package §%!c§
{
   import § D§.b2World;
   import §+&§.§-!7§;
   import §+&§.§3D§;
   import §,6§.§5z§;
   import §5i§.§4!]§;
   import §8>§.b2Vec2;
   import §9E§.§;!U§;
   import §9E§.Sprite;
   import §]![§.§4!H§;
   import §]![§.§[?§;
   import flash.geom.Point;
   
   public class §"f§ extends §4!H§
   {
       
      
      public var §98§:Boolean = false;
      
      public var §[j§:Boolean = false;
      
      private var §!!H§:§;!U§;
      
      private var §4E§:Point;
      
      private var §87§:Number = 0;
      
      public function §"f§(param1:§[?§, param2:Sprite, param3:b2World, param4:§-!7§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || param2)
         {
            super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         }
         do
         {
            this.§5"§();
         }
         while(!_loc11_);
         
      }
      
      private function §5"§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§5z§ = §4!]§.§8C§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         if(!_loc3_)
         {
            this.§!!H§ = new §;!U§(_loc1_.texture,true);
         }
         while(true)
         {
            this.§4E§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
            while(!_loc3_)
            {
               §4!]§.§8C§.objects.§;+§.addChild(this.§!!H§);
               if(_loc2_ || _loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function §[I§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         if(_loc7_ || this)
         {
            super.update(param1);
         }
         §§push(this.§87§);
         if(!_loc6_)
         {
            §§push(§§pop() / 1000);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() * Math.PI);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() * §3D§.§@Y§);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = Math.sin(_loc2_);
         if(_loc7_)
         {
            §§push(this.§!!H§);
            loop0:
            for(; §§pop(); while(true)
            {
               if(!(_loc7_ || _loc3_))
               {
                  continue loop0;
               }
               §§goto(addr215);
               §§push(this.§!!H§);
            })
            {
               loop1:
               while(true)
               {
                  §§push(this.§[j§);
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc7_ || _loc3_)
                     {
                        if(!§§pop())
                        {
                           loop13:
                           while(true)
                           {
                              §§pop();
                              addr267:
                              while(true)
                              {
                                 §§push(!§+$§());
                                 if(_loc7_ || this)
                                 {
                                    break;
                                 }
                                 continue loop13;
                              }
                           }
                           addr266:
                        }
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§push(this.§!!H§);
                              if(!_loc6_)
                              {
                                 §§push(Math.cos(_loc2_) * §3D§.§&!"§);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§pop().rotation = §§pop();
                                    if(_loc7_ || _loc3_)
                                    {
                                       if(_loc7_)
                                       {
                                          if(_loc6_)
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(this.§!!H§);
                                                loop4:
                                                while(true)
                                                {
                                                   if(_loc7_ || param1)
                                                   {
                                                      §§push(this.§!!H§);
                                                      if(_loc6_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(_loc6_ && _loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §§pop().rotation = §§pop().rotation + 0.01;
                                                      while(true)
                                                      {
                                                         §§push(this.§!!H§);
                                                         if(_loc7_ || _loc2_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            if(!(_loc7_ || this))
                                                            {
                                                               continue loop0;
                                                            }
                                                            if(§§pop().alpha <= 0)
                                                            {
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(this.§!!H§);
                                                                        break;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  addr243:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§!!H§);
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               §§goto(addr166);
                                                            }
                                                            §§goto(addr75);
                                                         }
                                                         break;
                                                      }
                                                      §§pop().dispose();
                                                      §§goto(addr166);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop().alpha - 0.025);
                                                   addr242:
                                                   while(true)
                                                   {
                                                      §§pop().alpha = §§pop();
                                                      §§goto(addr243);
                                                   }
                                                }
                                             }
                                             continue loop0;
                                          }
                                          if(!_loc6_)
                                          {
                                             if(false)
                                             {
                                                addr111:
                                                this.§!!H§ = null;
                                                if(_loc6_ && _loc3_)
                                                {
                                                   addr166:
                                                   §§goto(addr111);
                                                }
                                                addr75:
                                                break loop0;
                                                addr122:
                                             }
                                             _loc4_ = new Point(-this.§4E§.x,-this.§4E§.y);
                                             if(!(_loc6_ && this))
                                             {
                                                this.§!!H§.x = x + _loc4_.x * Math.cos(this.§!!H§.rotation) - _loc4_.y * Math.sin(this.§!!H§.rotation);
                                                addr416:
                                                §§push(this.§!!H§);
                                                if(!_loc6_)
                                                {
                                                   §§pop().y = y + _loc4_.x * Math.sin(this.§!!H§.rotation) + _loc4_.y * Math.cos(this.§!!H§.rotation);
                                                   addr312:
                                                   addr383:
                                                   §§push(Number(§+$§().GetLinearVelocity().y));
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(_loc7_ || param1)
                                                         {
                                                            addr343:
                                                            if(§§pop() > §3D§.§6K§)
                                                            {
                                                               addr344:
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§3D§.§6K§);
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     addr355:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  _loc5_ = §§pop();
                                                                  addr288:
                                                                  §+$§().SetLinearVelocity(new b2Vec2(_loc3_ * §3D§.§"!G§,_loc5_));
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           addr310:
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr312);
                                                                           }
                                                                           break loop0;
                                                                        }
                                                                        §§goto(addr383);
                                                                     }
                                                                     §§goto(addr344);
                                                                  }
                                                                  addr357:
                                                                  §§goto(addr357);
                                                               }
                                                               §§goto(addr416);
                                                            }
                                                            §§goto(addr288);
                                                         }
                                                         §§goto(addr355);
                                                      }
                                                   }
                                                   §§goto(addr343);
                                                }
                                                addr386:
                                                §§goto(addr386);
                                             }
                                             §§goto(addr310);
                                          }
                                          else
                                          {
                                             addr235:
                                             §§push(this.§!!H§);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr239);
                                          }
                                       }
                                       §§goto(addr111);
                                    }
                                    §§goto(addr425);
                                 }
                                 §§goto(addr242);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr235);
                        }
                     }
                  }
                  §§goto(addr266);
               }
            }
            §§push(this);
            §§push(this.§87§);
            if(_loc7_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§87§ = §§pop();
            addr425:
            return;
         }
         §§goto(addr122);
      }
      
      public function get §^!H§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(!§+$§());
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     addr29:
                     return this.§!!H§ == null;
                  }
               }
            }
         }
         §§goto(addr29);
      }
   }
}
