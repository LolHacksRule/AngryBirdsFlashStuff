package §1=§
{
   import § !t§.b2World;
   import §-!`§.§7!J§;
   import §-!`§.Sprite;
   import §<!<§.§7E§;
   import §<!<§.§;J§;
   import §<!B§.b2Vec2;
   import §=U§.§>?§;
   import §>!'§.§'!Y§;
   import §>!'§.§<!3§;
   import §?!-§.§'!V§;
   import flash.geom.Point;
   
   public class §#!J§ extends §<!3§
   {
       
      
      public var §,9§:Boolean = false;
      
      public var §3t§:Boolean = false;
      
      private var §0E§:§7!J§;
      
      private var §]%§:Point;
      
      private var §-D§:Number = 0;
      
      public function §#!J§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || param2)
         {
            super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
            if(!_loc10_)
            {
               this.§2Y§();
            }
         }
      }
      
      private function §2Y§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§>?§ = §'!V§.§1!2§.§@!o§.§`!!§("POWERUP_BOMB_PARACHUTE").getFrame(0);
         if(!_loc3_)
         {
            this.§0E§ = new §7!J§(_loc1_.texture,true);
            if(_loc2_)
            {
               addr56:
               this.§]%§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
               if(!_loc3_)
               {
                  §'!V§.§1!2§.objects.§&s§.addChild(this.§0E§);
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function §;h§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         if(_loc6_)
         {
            super.update(param1);
         }
         §§push(this.§-D§);
         if(_loc6_)
         {
            §§push(§§pop() / 1000);
            if(_loc6_ || _loc2_)
            {
               §§push(§§pop() * Math.PI);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() * §;J§.§<!m§);
                  if(_loc6_ || _loc2_)
                  {
                     addr59:
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr59);
            }
            var _loc2_:* = §§pop();
            var _loc3_:Number = Math.sin(_loc2_);
            if(this.§0E§)
            {
               §§push(this.§3t§);
               if(_loc6_ || _loc3_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc7_)
                  {
                     addr81:
                     if(!§§pop())
                     {
                        if(_loc6_)
                        {
                           §§pop();
                           §§push(!getBody());
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§push(this.§0E§);
                        §§push(this.§0E§);
                        if(_loc6_)
                        {
                           §§push(§§pop().alpha - 0.025);
                           if(!(_loc7_ && param1))
                           {
                              §§pop().alpha = §§pop();
                              §§push(this.§0E§);
                              if(!_loc7_)
                              {
                                 §§push(this.§0E§);
                                 if(_loc6_)
                                 {
                                    addr117:
                                    §§pop().y = §§pop().y + 1;
                                    if(!_loc7_)
                                    {
                                       addr127:
                                       this.§0E§.rotation += 0.01;
                                       if(!_loc7_)
                                       {
                                          §§push(this.§0E§);
                                          if(_loc6_)
                                          {
                                             if(§§pop().alpha <= 0)
                                             {
                                                §§push(this.§0E§);
                                                if(!_loc7_)
                                                {
                                                   addr154:
                                                   §§pop().dispose();
                                                   this.§0E§ = null;
                                                }
                                                else
                                                {
                                                   addr167:
                                                   §§pop().rotation = Math.cos(_loc2_) * §;J§.§7`§;
                                                   _loc4_ = new Point(-this.§]%§.x,-this.§]%§.y);
                                                   if(_loc6_)
                                                   {
                                                      §§push(this.§0E§);
                                                      if(_loc6_)
                                                      {
                                                         §§pop().x = x + _loc4_.x * Math.cos(this.§0E§.rotation) - _loc4_.y * Math.sin(this.§0E§.rotation);
                                                         §§goto(addr303);
                                                      }
                                                      §§pop().y = y + _loc4_.x * Math.sin(this.§0E§.rotation) + _loc4_.y * Math.cos(this.§0E§.rotation);
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr237);
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                   addr237:
                                                   §§push(Number(getBody().GetLinearVelocity().y));
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc7_ && _loc2_))
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            §§goto(addr267);
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      addr267:
                                                      §§goto(addr265);
                                                   }
                                                   addr265:
                                                   if(§§pop() > §;J§.§^!s§)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         addr270:
                                                         §§push(§;J§.§^!s§);
                                                         if(!_loc7_)
                                                         {
                                                            §§goto(addr275);
                                                         }
                                                         addr275:
                                                         _loc5_ = Number(§§pop());
                                                         if(_loc6_ || param1)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr303);
                                                   }
                                                   getBody().SetLinearVelocity(new b2Vec2(_loc3_ * §;J§.§#!c§,_loc5_));
                                                   addr303:
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(this.§0E§);
                                                   }
                                                   §§push(this);
                                                   §§push(this.§-D§);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§push(§§pop() + param1);
                                                   }
                                                   §§pop().§-D§ = §§pop();
                                                   return;
                                                   addr161:
                                                }
                                             }
                                             §§goto(addr303);
                                          }
                                          §§goto(addr154);
                                       }
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr167);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr167);
                  }
                  else
                  {
                     §§push(this.§0E§);
                  }
                  §§goto(addr161);
               }
               §§goto(addr81);
            }
            §§goto(addr303);
         }
         §§goto(addr59);
      }
      
      public function get § get§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(!getBody());
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§pop();
                     addr44:
                     §§push(this.§0E§ == null);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr44);
      }
   }
}
