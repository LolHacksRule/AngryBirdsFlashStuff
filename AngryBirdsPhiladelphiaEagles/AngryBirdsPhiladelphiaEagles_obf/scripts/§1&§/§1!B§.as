package §1&§
{
   import § N§.§1!A§;
   import § N§.Sprite;
   import §#e§.§`!9§;
   import §-!&§.§20§;
   import §-!&§.§3!,§;
   import §8!B§.§#! §;
   import §9T§.§1r§;
   import §9T§.Tuner;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §1!B§ extends §3!,§
   {
       
      
      public var §2s§:Boolean = false;
      
      public var §0J§:Boolean = false;
      
      private var §3!§:§1!A§;
      
      private var §!!$§:Point;
      
      private var §+t§:Number = 0;
      
      public function §1!B§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc11_)
         {
            super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
            do
            {
               this.§8!3§();
            }
            while(!(_loc10_ || param2));
            
         }
      }
      
      private function §8!3§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§`!9§ = §#! §.§`'§.§<'§.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         if(!(_loc3_ && this))
         {
            this.§3!§ = new §1!A§(_loc1_.texture,true);
            while(true)
            {
               this.§!!$§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     §#! §.§`'§.objects.§<-§.addChild(this.§3!§);
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      public function §4!>§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         if(_loc6_ || param1)
         {
            super.update(param1);
         }
         §§push(this.§+t§);
         if(_loc6_)
         {
            §§push(§§pop() / 1000);
            if(!_loc7_)
            {
               addr39:
               §§push(§§pop() * Math.PI);
               if(_loc6_)
               {
                  §§push(§§pop() * Tuner.§=y§);
                  if(!_loc6_)
                  {
                  }
                  §§goto(addr50);
               }
               §§push(Number(§§pop()));
            }
            addr50:
            var _loc2_:* = §§pop();
            var _loc3_:Number = Math.sin(_loc2_);
            §§push(this.§3!§);
            loop0:
            while(§§pop())
            {
               if(_loc6_)
               {
                  §§push(this.§0J§);
                  if(!_loc7_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc7_)
                     {
                        addr178:
                        if(!§§pop())
                        {
                           loop1:
                           while(true)
                           {
                              §§pop();
                              addr181:
                              while(true)
                              {
                                 §§push(!§`%§());
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              addr143:
                              if(§§pop())
                              {
                                 §§push(this.§3!§);
                                 if(!_loc6_)
                                 {
                                    continue loop0;
                                 }
                                 addr151:
                                 §§push(this.§3!§.alpha - 0.025);
                              }
                              else
                              {
                                 §§push(this.§3!§);
                                 §§push(Math.cos(_loc2_) * Tuner.§3!G§);
                                 if(!_loc7_)
                                 {
                                    §§pop().rotation = §§pop();
                                    if(!(_loc7_ && this))
                                    {
                                       if(_loc6_ || _loc3_)
                                       {
                                          if(false)
                                          {
                                             addr87:
                                             this.§3!§ = null;
                                          }
                                          else
                                          {
                                             _loc4_ = new Point(-this.§!!$§.x,-this.§!!$§.y);
                                             if(!_loc7_)
                                             {
                                                this.§3!§.x = x + _loc4_.x * Math.cos(this.§3!§.rotation) - _loc4_.y * Math.sin(this.§3!§.rotation);
                                                addr315:
                                                §§push(this.§3!§);
                                                if(_loc6_)
                                                {
                                                   §§pop().y = y + _loc4_.x * Math.sin(this.§3!§.rotation) + _loc4_.y * Math.cos(this.§3!§.rotation);
                                                   addr219:
                                                   addr282:
                                                   §§push(Number(§`%§().GetLinearVelocity().y));
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc7_ && this))
                                                      {
                                                         _loc5_ = §§pop();
                                                         addr251:
                                                         if(!(_loc7_ && this))
                                                         {
                                                            §§push(Tuner.§in §);
                                                         }
                                                         _loc5_ = §§pop();
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               addr197:
                                                               §`%§().SetLinearVelocity(new b2Vec2(_loc3_ * Tuner.§%f§,_loc5_));
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr219);
                                                                     }
                                                                     break loop0;
                                                                  }
                                                                  addr246:
                                                                  §§push(Tuner.§in §);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr251);
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               §§goto(addr251);
                                                            }
                                                            §§goto(addr315);
                                                         }
                                                         §§goto(addr282);
                                                      }
                                                      if(§§pop() > §§pop())
                                                      {
                                                         §§goto(addr246);
                                                      }
                                                      §§goto(addr197);
                                                   }
                                                   §§goto(addr251);
                                                }
                                                addr285:
                                                §§goto(addr285);
                                             }
                                             §§goto(addr246);
                                          }
                                       }
                                       else
                                       {
                                          addr103:
                                          if(!_loc6_)
                                          {
                                             addr126:
                                             §§push(this.§3!§);
                                             if(!_loc7_)
                                             {
                                                addr57:
                                                if(§§pop().alpha <= 0)
                                                {
                                                   §§push(this.§3!§);
                                                }
                                                break loop0;
                                             }
                                             §§pop().dispose();
                                             §§goto(addr103);
                                             addr126:
                                          }
                                          §§goto(addr87);
                                       }
                                       §§goto(addr57);
                                    }
                                    §§goto(addr329);
                                 }
                                 addr164:
                                 §§pop().alpha = §§pop();
                                 addr132:
                                 this.§3!§.y += 1;
                                 §§push(this.§3!§);
                                 if(_loc6_)
                                 {
                                    §§push(this.§3!§);
                                    if(_loc6_ || _loc2_)
                                    {
                                       if(_loc7_)
                                       {
                                          §§goto(addr151);
                                       }
                                       §§pop().rotation = §§pop().rotation + 0.01;
                                       §§goto(addr126);
                                    }
                                    §§goto(addr132);
                                 }
                                 addr130:
                                 §§goto(addr130);
                                 §§goto(addr126);
                              }
                              §§goto(addr164);
                           }
                           addr180:
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr178);
               }
               §§goto(addr181);
            }
            §§push(this);
            §§push(this.§+t§);
            if(!(_loc7_ && this))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§+t§ = §§pop();
            addr329:
            return;
         }
         §§goto(addr39);
      }
      
      public function get §6Q§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(!§`%§());
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     addr42:
                     §§pop();
                     return this.§3!§ == null;
                  }
               }
            }
         }
         §§goto(addr42);
      }
   }
}
