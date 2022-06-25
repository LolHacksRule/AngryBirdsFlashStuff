package §!j§
{
   import §&o§.§?T§;
   import §&o§.Sprite;
   import §5!L§.§=w§;
   import §6A§.§ !§;
   import §6A§.§#!E§;
   import §9K§.§,z§;
   import §^!A§.§;!%§;
   import §^!A§.§@H§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §+m§ extends §;!%§
   {
       
      
      public var §'V§:Boolean = false;
      
      public var §[5§:Boolean = false;
      
      private var §3Q§:§?T§;
      
      private var §?z§:Point;
      
      private var §"8§:Number = 0;
      
      public function §+m§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || param1)
         {
            super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
            if(_loc11_ || this)
            {
               addr53:
               this.§'H§();
            }
            return;
         }
         §§goto(addr53);
      }
      
      private function §'H§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§,z§ = §=w§.§ o§.§;!L§.§8!0§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         if(_loc3_ || _loc1_)
         {
            this.§3Q§ = new §?T§(_loc1_.texture,true);
            if(_loc3_ || this)
            {
               this.§?z§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
               if(_loc3_)
               {
                  addr77:
                  §=w§.§ o§.objects.§`$§.addChild(this.§3Q§);
               }
               return;
            }
         }
         §§goto(addr77);
      }
      
      public function §@3§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         if(_loc7_ || this)
         {
            super.update(param1);
         }
         §§push(this.§"8§);
         if(!_loc6_)
         {
            §§push(§§pop() / 1000);
            if(_loc7_ || _loc3_)
            {
               §§push(§§pop() * Math.PI);
               if(_loc7_)
               {
                  addr50:
                  §§push(§§pop() * §#!E§.§ !A§);
                  if(_loc7_)
                  {
                     addr55:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               var _loc3_:Number = Math.sin(_loc2_);
               §§push(this.§3Q§);
               if(_loc7_)
               {
                  if(§§pop())
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(this.§[5§);
                        if(!(_loc6_ && this))
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc6_ && _loc3_))
                           {
                              if(!§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§pop();
                                    if(_loc7_ || this)
                                    {
                                       addr106:
                                       if(!§'[§())
                                       {
                                          §§push(this.§3Q§);
                                          if(!_loc6_)
                                          {
                                             §§push(this.§3Q§);
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push(§§pop().alpha - 0.025);
                                                if(_loc7_)
                                                {
                                                   §§pop().alpha = §§pop();
                                                   addr128:
                                                   §§push(this.§3Q§);
                                                   §§push(this.§3Q§);
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      §§pop().y = §§pop().y + 1;
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         addr152:
                                                         this.§3Q§.rotation += 0.01;
                                                         if(!(_loc6_ && this))
                                                         {
                                                            §§push(this.§3Q§);
                                                            if(_loc7_ || _loc2_)
                                                            {
                                                               if(§§pop().alpha <= 0)
                                                               {
                                                                  addr185:
                                                                  §§push(this.§3Q§);
                                                                  if(!(_loc7_ || param1))
                                                                  {
                                                                     addr207:
                                                                     §§pop().rotation = Math.cos(_loc2_) * §#!E§.§@$§;
                                                                     if(_loc7_ || this)
                                                                     {
                                                                        _loc4_ = new Point(-this.§?z§.x,-this.§?z§.y);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(this.§3Q§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§pop().x = x + _loc4_.x * Math.cos(this.§3Q§.rotation) - _loc4_.y * Math.sin(this.§3Q§.rotation);
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr257:
                                                                                 this.§3Q§.y = y + _loc4_.x * Math.sin(this.§3Q§.rotation) + _loc4_.y * Math.cos(this.§3Q§.rotation);
                                                                                 if(_loc7_ || _loc3_)
                                                                                 {
                                                                                    §§push(Number(§'[§().GetLinearVelocity().y));
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc6_ && _loc2_))
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr304:
                                                                                             if(§§pop() > §#!E§.§5x§)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   addr307:
                                                                                                   §§push(§#!E§.§5x§);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§goto(addr322);
                                                                                                   }
                                                                                                   addr322:
                                                                                                   _loc5_ = Number(§§pop());
                                                                                                   addr321:
                                                                                                   if(_loc7_ || _loc3_)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr340);
                                                                                                }
                                                                                                addr340:
                                                                                                §§push(this);
                                                                                                §§push(this.§"8§);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(§§pop() + param1);
                                                                                                }
                                                                                                §§pop().§"8§ = §§pop();
                                                                                                return;
                                                                                             }
                                                                                             §'[§().SetLinearVelocity(new b2Vec2(_loc3_ * §#!E§.§8!9§,_loc5_));
                                                                                          }
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                       §§goto(addr304);
                                                                                    }
                                                                                    §§goto(addr321);
                                                                                 }
                                                                              }
                                                                              §§goto(addr307);
                                                                           }
                                                                        }
                                                                        §§goto(addr257);
                                                                     }
                                                                  }
                                                                  §§goto(addr322);
                                                               }
                                                               addr198:
                                                               §§goto(addr322);
                                                            }
                                                            §§pop().dispose();
                                                            this.§3Q§ = null;
                                                         }
                                                         §§goto(addr198);
                                                      }
                                                      §§goto(addr322);
                                                   }
                                                   §§goto(addr152);
                                                }
                                                §§goto(addr207);
                                             }
                                             §§goto(addr152);
                                          }
                                       }
                                       else
                                       {
                                          §§push(this.§3Q§);
                                       }
                                       §§goto(addr207);
                                    }
                                    §§goto(addr185);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr322);
               }
               §§goto(addr128);
            }
            §§goto(addr50);
         }
         §§goto(addr55);
      }
      
      public function get §'!!§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(!§'[§());
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§pop();
                     addr48:
                     §§push(this.§3Q§ == null);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr48);
      }
   }
}
