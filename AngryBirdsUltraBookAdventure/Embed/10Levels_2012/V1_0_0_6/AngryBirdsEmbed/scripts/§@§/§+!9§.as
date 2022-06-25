package §@§
{
   import §+!?§.§"h§;
   import §,_§.§4K§;
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §3G§.§&!"§;
   import §5`§.§%F§;
   import §8u§.§0r§;
   import §8u§.§6a§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §+!9§ extends §0r§
   {
       
      
      public var §7C§:Boolean = false;
      
      public var §8^§:Boolean = false;
      
      private var §=!§:§4K§;
      
      private var §?&§:Point;
      
      private var §='§:Number = 0;
      
      public function §+!9§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_)
         {
            super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
            if(_loc11_)
            {
               addr43:
               this.§8!§();
            }
            return;
         }
         §§goto(addr43);
      }
      
      private function §8!§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§%F§ = §"h§.§1C§.§ use§.§,!;§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         if(!(_loc3_ && _loc1_))
         {
            this.§=!§ = new §4K§(_loc1_.texture,true);
            if(!_loc3_)
            {
               this.§?&§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
               if(_loc2_)
               {
                  §"h§.§1C§.objects.§@?§.addChild(this.§=!§);
               }
            }
         }
      }
      
      public function §2!>§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         if(!(_loc7_ && _loc3_))
         {
            super.update(param1);
         }
         §§push(this.§='§);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop() / 1000);
            if(_loc6_ || _loc2_)
            {
               §§push(§§pop() * Math.PI);
               if(_loc6_ || _loc2_)
               {
                  §§push(§§pop() * §&!"§.§+!5§);
                  if(!_loc6_)
                  {
                  }
                  addr65:
                  var _loc2_:* = §§pop();
                  var _loc3_:Number = Math.sin(_loc2_);
                  if(_loc6_ || _loc3_)
                  {
                     if(this.§=!§)
                     {
                        if(!_loc7_)
                        {
                           §§push(this.§8^§);
                           if(!_loc7_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc6_ || _loc2_)
                              {
                                 addr95:
                                 if(!§§pop())
                                 {
                                    if(!(_loc7_ && param1))
                                    {
                                       §§goto(addr104);
                                    }
                                 }
                                 §§goto(addr110);
                              }
                              addr104:
                              §§pop();
                              if(_loc6_)
                              {
                                 addr110:
                                 if(!§?n§())
                                 {
                                    §§push(this.§=!§);
                                    if(_loc6_)
                                    {
                                       §§push(this.§=!§);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop().alpha - 0.025);
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§pop().alpha = §§pop();
                                             §§goto(addr132);
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr136);
                                    }
                                    addr132:
                                    §§push(this.§=!§);
                                    §§push(this.§=!§);
                                    if(_loc6_)
                                    {
                                       addr136:
                                       §§pop().y = §§pop().y + 1;
                                       §§push(this.§=!§);
                                       if(!_loc7_)
                                       {
                                          §§push(this.§=!§);
                                       }
                                       else
                                       {
                                          addr191:
                                          §§pop().rotation = Math.cos(_loc2_) * §&!"§.§>J§;
                                          if(_loc6_ || this)
                                          {
                                             addr199:
                                             _loc4_ = new Point(-this.§?&§.x,-this.§?&§.y);
                                             if(_loc6_)
                                             {
                                                §§push(this.§=!§);
                                                if(_loc6_)
                                                {
                                                   §§pop().x = x + _loc4_.x * Math.cos(this.§=!§.rotation) - _loc4_.y * Math.sin(this.§=!§.rotation);
                                                   if(_loc6_ || this)
                                                   {
                                                      addr246:
                                                      this.§=!§.y = y + _loc4_.x * Math.sin(this.§=!§.rotation) + _loc4_.y * Math.cos(this.§=!§.rotation);
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         addr273:
                                                         §§push(Number(§?n§().GetLinearVelocity().y));
                                                         if(!_loc7_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc7_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               if(_loc6_ || param1)
                                                               {
                                                                  addr293:
                                                                  if(§§pop() > §&!"§.§+!=§)
                                                                  {
                                                                     §§goto(addr334);
                                                                  }
                                                                  §§goto(addr324);
                                                               }
                                                               _loc5_ = §§pop();
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  addr324:
                                                                  §?n§().SetLinearVelocity(new b2Vec2(_loc3_ * §&!"§.§>!<§,_loc5_));
                                                               }
                                                               §§goto(addr334);
                                                            }
                                                            §§goto(addr293);
                                                         }
                                                         §§goto(addr305);
                                                      }
                                                      §§goto(addr293);
                                                   }
                                                   §§goto(addr273);
                                                }
                                             }
                                             §§goto(addr246);
                                          }
                                          §§goto(addr334);
                                       }
                                       §§goto(addr334);
                                    }
                                    §§pop().rotation = §§pop().rotation + 0.01;
                                    if(!(_loc7_ && param1))
                                    {
                                       addr157:
                                       if(this.§=!§.alpha <= 0)
                                       {
                                          if(!_loc7_)
                                          {
                                             this.§=!§.dispose();
                                             this.§=!§ = null;
                                             if(_loc7_)
                                             {
                                                §§goto(addr199);
                                             }
                                             §§goto(addr334);
                                          }
                                       }
                                    }
                                    §§goto(addr334);
                                 }
                                 else
                                 {
                                    §§push(this.§=!§);
                                 }
                                 §§goto(addr191);
                              }
                              §§goto(addr334);
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr110);
                     }
                     addr334:
                     if(_loc6_)
                     {
                        §§push(§&!"§.§+!=§);
                        if(!(_loc7_ && _loc3_))
                        {
                           addr305:
                           §§push(Number(§§pop()));
                        }
                     }
                     §§push(this);
                     §§push(this.§='§);
                     if(_loc6_ || _loc3_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§='§ = §§pop();
                     return;
                  }
                  §§goto(addr157);
               }
               §§goto(addr65);
            }
            §§push(Number(§§pop()));
         }
         §§goto(addr65);
      }
      
      public function get §>!$§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(!§?n§());
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr43:
                     §§pop();
                     §§push(this.§=!§ == null);
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr43);
      }
   }
}
