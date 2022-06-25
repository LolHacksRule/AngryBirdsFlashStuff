package §6!@§
{
   import §"!5§.§,!!§;
   import §%x§.§#!;§;
   import §%x§.§#;§;
   import §-!0§.§9X§;
   import §?^§.§8!?§;
   import §?^§.Sprite;
   import §]!9§.§>2§;
   import §]!9§.§]!H§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §"N§ extends §>2§
   {
       
      
      public var §+g§:Boolean = false;
      
      public var §9z§:Boolean = false;
      
      private var §in §:§8!?§;
      
      private var §7o§:Point;
      
      private var §<R§:Number = 0;
      
      public function §"N§(param1:§]!H§, param2:Sprite, param3:b2World, param4:§#;§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!(_loc11_ && param2))
         {
            super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
            if(_loc10_)
            {
               addr47:
               this.§4!A§();
            }
            return;
         }
         §§goto(addr47);
      }
      
      private function §4!A§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§9X§ = §,!!§.§;4§.§+!!§.§,V§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         if(!_loc3_)
         {
            this.§in § = new §8!?§(_loc1_.texture,true);
            if(!_loc3_)
            {
               this.§7o§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
               if(_loc3_)
               {
               }
               §§goto(addr73);
            }
            §,!!§.§;4§.objects.§6N§.addChild(this.§in §);
         }
         addr73:
      }
      
      public function §5M§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         if(_loc6_ || param1)
         {
            super.update(param1);
         }
         §§push(this.§<R§);
         if(!_loc7_)
         {
            §§push(§§pop() / 1000);
            if(_loc6_ || this)
            {
               addr44:
               §§push(§§pop() * Math.PI);
               if(_loc6_ || _loc3_)
               {
                  addr54:
                  §§push(§§pop() * §#!;§.§]Z§);
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               var _loc3_:Number = Math.sin(_loc2_);
               if(_loc6_ || param1)
               {
                  §§push(this.§in §);
                  if(!_loc7_)
                  {
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           §§push(this.§9z§);
                           if(_loc6_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc6_ || this)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       addr101:
                                       §§pop();
                                       addr134:
                                       if(_loc6_)
                                       {
                                          §§push(!§%;§());
                                       }
                                       §§push(this.§in §);
                                       §§push(this.§in §);
                                       if(_loc6_)
                                       {
                                          §§pop().y = §§pop().y + 1;
                                          addr189:
                                          addr195:
                                          §§push(this.§in §);
                                          if(_loc6_)
                                          {
                                             §§push(this.§in §);
                                          }
                                          §§pop().rotation = Math.cos(_loc2_) * §#!;§.§'>§;
                                          _loc4_ = new Point(-this.§7o§.x,-this.§7o§.y);
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(this.§in §);
                                             if(!(_loc7_ && param1))
                                             {
                                                §§pop().x = x + _loc4_.x * Math.cos(this.§in §.rotation) - _loc4_.y * Math.sin(this.§in §.rotation);
                                                if(_loc6_)
                                                {
                                                   addr248:
                                                   this.§in §.y = y + _loc4_.x * Math.sin(this.§in §.rotation) + _loc4_.y * Math.cos(this.§in §.rotation);
                                                   if(_loc6_ || this)
                                                   {
                                                      §§push(Number(§%;§().GetLinearVelocity().y));
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc7_ && _loc3_))
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(!_loc7_)
                                                            {
                                                               addr295:
                                                               if(§§pop() > §#!;§.§3U§)
                                                               {
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     §§goto(addr303);
                                                                  }
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                            §§goto(addr322);
                                                         }
                                                      }
                                                      §§goto(addr295);
                                                   }
                                                   §§goto(addr326);
                                                }
                                                addr303:
                                                §§push(§#!;§.§3U§);
                                                if(_loc6_ || param1)
                                                {
                                                   addr322:
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc5_ = §§pop();
                                                if(_loc6_)
                                                {
                                                   addr326:
                                                   §%;§().SetLinearVelocity(new b2Vec2(_loc3_ * §#!;§.§,+§,_loc5_));
                                                   §§goto(addr336);
                                                }
                                                addr336:
                                                §§push(this);
                                                §§push(this.§<R§);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().§<R§ = §§pop();
                                                return;
                                             }
                                          }
                                          §§goto(addr248);
                                       }
                                       §§pop().rotation = §§pop().rotation + 0.01;
                                       if(this.§in §.alpha <= 0)
                                       {
                                          §§push(this.§in §);
                                          if(!_loc7_)
                                          {
                                             §§pop().dispose();
                                             if(!(_loc7_ && param1))
                                             {
                                                addr181:
                                                this.§in § = null;
                                                if(!_loc7_)
                                                {
                                                   addr186:
                                                }
                                                §§goto(addr326);
                                             }
                                             §§goto(addr186);
                                          }
                                          else
                                          {
                                             §§goto(addr189);
                                          }
                                       }
                                       §§goto(addr186);
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(this.§in §);
                                       if(_loc6_ || this)
                                       {
                                          §§push(this.§in §);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop().alpha - 0.025);
                                             if(_loc6_)
                                             {
                                                §§pop().alpha = §§pop();
                                                §§goto(addr134);
                                             }
                                             §§goto(addr195);
                                          }
                                          §§goto(addr134);
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr134);
                                 }
                                 else
                                 {
                                    §§goto(addr189);
                                    §§push(this.§in §);
                                 }
                                 §§goto(addr189);
                              }
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr326);
                  }
                  §§goto(addr189);
               }
               §§goto(addr101);
            }
            §§goto(addr54);
         }
         §§goto(addr44);
      }
      
      public function get §%7§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(!§%;§());
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     addr49:
                     §§push(this.§in § == null);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr49);
      }
   }
}
