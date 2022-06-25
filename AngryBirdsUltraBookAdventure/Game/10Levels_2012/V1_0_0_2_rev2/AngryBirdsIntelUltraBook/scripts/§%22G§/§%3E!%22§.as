package §"G§
{
   import §%Q§.§=[§;
   import §%Q§.§`!<§;
   import §'!9§.§?!U§;
   import §'!9§.Sprite;
   import §,!5§.§0;§;
   import §,!5§.§^g§;
   import §-w§.§+W§;
   import §>H§.b2Vec2;
   import §`w§.b2World;
   import flash.geom.Point;
   import §true§.§ _§;
   
   public class §>!"§ extends §`!<§
   {
       
      
      public var §"e§:Boolean = false;
      
      public var §;y§:Boolean = false;
      
      private var §?7§:§?!U§;
      
      private var §6>§:Point;
      
      private var §?!2§:Number = 0;
      
      public function §>!"§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc10_)
         {
            super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
            do
            {
               this.§"!v§();
            }
            while(_loc11_);
            
         }
      }
      
      private function §"!v§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§+W§ = § _§.§!6§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         if(_loc3_)
         {
            this.§?7§ = new §?!U§(_loc1_.texture,true);
         }
         do
         {
            this.§6>§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
            do
            {
               § _§.§!6§.objects.§9G§.addChild(this.§?7§);
            }
            while(!(_loc3_ || _loc2_));
            
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function §05§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         if(!(_loc7_ && _loc2_))
         {
            super.update(param1);
         }
         §§push(this.§?!2§);
         if(_loc6_ || this)
         {
            §§push(§§pop() / 1000);
            if(_loc6_)
            {
               §§push(§§pop() * Math.PI);
               if(_loc6_ || _loc2_)
               {
                  addr54:
                  §§push(§§pop() * §0;§.§+j§);
                  if(!(_loc7_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            var _loc2_:* = §§pop();
            var _loc3_:Number = Math.sin(_loc2_);
            if(!(_loc7_ && _loc2_))
            {
               §§push(this.§?7§);
               loop0:
               for(; §§pop(); while(true)
               {
                  if(_loc7_ && param1)
                  {
                     continue loop0;
                  }
                  §§goto(addr246);
                  §§push(this.§?7§);
               })
               {
                  if(!_loc7_)
                  {
                     §§push(this.§;y§);
                     if(!(_loc7_ && param1))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§push(this.§?7§);
                                 if(!(_loc7_ && this))
                                 {
                                    if(_loc6_ || _loc2_)
                                    {
                                       §§push(Math.cos(_loc2_) * §0;§.§#B§);
                                       if(!_loc7_)
                                       {
                                          §§pop().rotation = §§pop();
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             if(_loc7_ && _loc3_)
                                             {
                                                addr148:
                                                if(!(_loc7_ && this))
                                                {
                                                   break;
                                                }
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(!§5b§());
                                                   if(!(_loc7_ && this))
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr275:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop3;
                                                   }
                                                }
                                                continue loop1;
                                             }
                                             if(false)
                                             {
                                                addr123:
                                                this.§?7§ = null;
                                                if(_loc6_)
                                                {
                                                   addr79:
                                                   break loop0;
                                                }
                                                §§goto(addr424);
                                             }
                                             _loc4_ = new Point(-this.§6>§.x,-this.§6>§.y);
                                             if(_loc6_ || _loc3_)
                                             {
                                                this.§?7§.x = x + _loc4_.x * Math.cos(this.§?7§.rotation) - _loc4_.y * Math.sin(this.§?7§.rotation);
                                                addr415:
                                                §§push(this.§?7§);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   §§pop().y = y + _loc4_.x * Math.sin(this.§?7§.rotation) + _loc4_.y * Math.cos(this.§?7§.rotation);
                                                   addr326:
                                                   addr382:
                                                   §§push(Number(§5b§().GetLinearVelocity().y));
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc7_)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            addr342:
                                                            if(§§pop() > §0;§.§9!'§)
                                                            {
                                                               addr343:
                                                               if(_loc6_)
                                                               {
                                                                  addr345:
                                                                  §§push(§0;§.§9!'§);
                                                                  if(_loc6_)
                                                                  {
                                                                     addr350:
                                                                     _loc5_ = Number(§§pop());
                                                                     §5b§().SetLinearVelocity(new b2Vec2(_loc3_ * §0;§.§[!o§,_loc5_));
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr326);
                                                                              }
                                                                              break loop0;
                                                                           }
                                                                           §§goto(addr382);
                                                                        }
                                                                        §§goto(addr343);
                                                                     }
                                                                     addr351:
                                                                     §§goto(addr351);
                                                                     addr349:
                                                                  }
                                                                  §§goto(addr350);
                                                               }
                                                               §§goto(addr415);
                                                            }
                                                            §§goto(addr350);
                                                         }
                                                         §§goto(addr349);
                                                      }
                                                      §§goto(addr342);
                                                   }
                                                   §§goto(addr350);
                                                }
                                                addr385:
                                                §§goto(addr385);
                                             }
                                             §§goto(addr345);
                                          }
                                          §§goto(addr424);
                                       }
                                       else
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §§pop().alpha = §§pop();
                                             if(!(_loc7_ && param1))
                                             {
                                                §§push(this.§?7§);
                                                while(true)
                                                {
                                                   §§push(this.§?7§);
                                                   addr191:
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§pop().y = §§pop().y + 1;
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            §§push(this.§?7§);
                                                         }
                                                         break;
                                                      }
                                                      continue loop5;
                                                   }
                                                   §§goto(addr424);
                                                }
                                                addr189:
                                             }
                                             §§goto(addr424);
                                          }
                                       }
                                       §§goto(addr424);
                                    }
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(!_loc7_)
                                          {
                                             §§push(this.§?7§);
                                             if(!_loc7_)
                                             {
                                                §§pop().rotation = §§pop().rotation + 0.01;
                                                if(_loc6_ || param1)
                                                {
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      §§push(this.§?7§);
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         if(§§pop().alpha <= 0)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               addr147:
                                                               this.§?7§.dispose();
                                                               §§goto(addr148);
                                                            }
                                                            §§goto(addr424);
                                                         }
                                                         §§goto(addr79);
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                   else
                                                   {
                                                      addr235:
                                                      while(true)
                                                      {
                                                         §§push(this.§?7§);
                                                         continue loop0;
                                                      }
                                                      addr235:
                                                   }
                                                }
                                                §§goto(addr424);
                                             }
                                             else
                                             {
                                                §§goto(addr191);
                                             }
                                          }
                                          continue loop0;
                                          return;
                                       }
                                       §§goto(addr189);
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr235);
                           }
                           §§goto(addr123);
                           addr233:
                        }
                        §§goto(addr275);
                     }
                  }
                  §§goto(addr123);
               }
               §§push(this);
               §§push(this.§?!2§);
               if(_loc6_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§?!2§ = §§pop();
               §§goto(addr123);
            }
            §§goto(addr235);
         }
         §§goto(addr54);
      }
      
      public function get §3f§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(!§5b§());
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§pop();
                     addr44:
                     return this.§?7§ == null;
                  }
               }
            }
         }
         §§goto(addr44);
      }
   }
}
