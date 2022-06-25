package §_-j7§
{
   import §_-8d§.§_-vz§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-L8§;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2World;
   import §_-lt§.§_-30§;
   import §_-lt§.§_-eZ§;
   import §_-qO§.§ in§;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import flash.geom.Point;
   
   public class §_-LY§ extends §_-eZ§
   {
       
      
      public var §_-09m§:Boolean = false;
      
      public var §_-Up§:Boolean = false;
      
      private var §_-p6§:§_-09b§;
      
      private var §_-gp§:Point;
      
      private var §_-047§:Number = 0;
      
      public function §_-LY§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:Number, param7:Number, param8:Number, param9:Number)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(!_loc11_)
         {
            super(param1,param2,param3,param4,param5,"POWERUP_BOMB",param6,param7,param8,param9);
         }
         do
         {
            this.§_-gH§();
         }
         while(!_loc10_);
         
      }
      
      private function §_-gH§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-vz§ = § in§.§_-Dc§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         if(_loc2_ || this)
         {
            this.§_-p6§ = new §_-09b§(_loc1_.texture,true);
            while(true)
            {
               this.§_-gp§ = new Point(_loc1_.pivotX,_loc1_.pivotY);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     § in§.§_-Dc§.objects.§_-eJ§.addChild(this.§_-p6§);
                     if(!_loc3_)
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
      
      public function §_-6K§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:Point = null;
         var _loc5_:* = NaN;
         if(_loc7_ || this)
         {
            super.update(param1);
         }
         §§push(this.§_-047§);
         if(_loc7_ || this)
         {
            §§push(§§pop() / 1000);
            if(!_loc6_)
            {
               §§push(§§pop() * Math.PI);
               if(_loc7_ || this)
               {
               }
               addr66:
               var _loc2_:Number = §§pop();
               var _loc3_:Number = Math.sin(_loc2_);
               addr65:
               if(_loc7_ || _loc3_)
               {
                  §§push(this.§_-p6§);
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§push(this.§_-Up§);
                           if(_loc7_ || _loc2_)
                           {
                              §§push(Boolean(§§pop()));
                              loop2:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop16:
                                    while(true)
                                    {
                                       §§pop();
                                       addr262:
                                       while(true)
                                       {
                                          §§push(!§_-SJ§());
                                          if(!(_loc6_ && this))
                                          {
                                             break;
                                          }
                                          continue loop16;
                                       }
                                       if(!_loc7_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    addr261:
                                 }
                                 loop3:
                                 while(!§§pop())
                                 {
                                    §§push(this.§_-p6§);
                                    if(!_loc6_)
                                    {
                                       §§push(Math.cos(_loc2_) * §_-L8§.§_-sp§);
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§pop().rotation = §§pop();
                                          if(_loc7_)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(!(_loc6_ && param1))
                                                {
                                                   if(_loc7_ || param1)
                                                   {
                                                      if(true)
                                                      {
                                                         _loc4_ = new Point(-this.§_-gp§.x,-this.§_-gp§.y);
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            this.§_-p6§.x = x + _loc4_.x * Math.cos(this.§_-p6§.rotation) - _loc4_.y * Math.sin(this.§_-p6§.rotation);
                                                            addr421:
                                                            §§push(this.§_-p6§);
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               §§pop().y = y + _loc4_.x * Math.sin(this.§_-p6§.rotation) + _loc4_.y * Math.cos(this.§_-p6§.rotation);
                                                               addr381:
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  addr303:
                                                                  §§push(Number(§_-SJ§().GetLinearVelocity().y));
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc7_ || this)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        if(_loc7_ || param1)
                                                                        {
                                                                           addr329:
                                                                           if(§§pop() > §_-L8§.§_-mk§)
                                                                           {
                                                                              if(_loc7_ || _loc3_)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push(§_-L8§.§_-mk§);
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       addr349:
                                                                                       _loc5_ = Number(§§pop());
                                                                                       §_-SJ§().SetLinearVelocity(new b2Vec2(_loc3_ * §_-L8§.§_-Lm§,_loc5_));
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr303);
                                                                                          }
                                                                                          addr422:
                                                                                          §§push(this);
                                                                                          §§push(this.§_-047§);
                                                                                          if(_loc7_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop() + param1);
                                                                                          }
                                                                                          §§pop().§_-047§ = §§pop();
                                                                                          break loop1;
                                                                                       }
                                                                                       addr350:
                                                                                       §§goto(addr350);
                                                                                    }
                                                                                    §§goto(addr349);
                                                                                 }
                                                                                 §§goto(addr381);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr349);
                                                                     }
                                                                  }
                                                                  §§goto(addr329);
                                                                  addr388:
                                                               }
                                                               §§goto(addr421);
                                                            }
                                                            addr391:
                                                            §§goto(addr391);
                                                         }
                                                         §§goto(addr388);
                                                      }
                                                      §§goto(addr422);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr262);
                                                   }
                                                }
                                                else
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(!(_loc7_ || _loc2_))
                                                            {
                                                               break loop3;
                                                            }
                                                            §§push(this.§_-p6§);
                                                            loop11:
                                                            while(_loc7_ || param1)
                                                            {
                                                               §§push(this.§_-p6§);
                                                               if(_loc7_ || _loc2_)
                                                               {
                                                                  §§pop().rotation = §§pop().rotation + 0.01;
                                                                  addr158:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§_-p6§);
                                                                     if(!_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§pop().dispose();
                                                                        continue loop9;
                                                                     }
                                                                     addr239:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§_-p6§);
                                                                        addr241:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().alpha - 0.025);
                                                                           addr244:
                                                                           while(true)
                                                                           {
                                                                              §§pop().alpha = §§pop();
                                                                              addr245:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§_-p6§);
                                                                                 break loop11;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr158:
                                                                  addr187:
                                                               }
                                                               while(_loc6_ && param1)
                                                               {
                                                                  §§goto(addr241);
                                                               }
                                                               §§pop().y = §§pop().y + 1;
                                                               continue loop10;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr193);
                                                            }
                                                         }
                                                         addr214:
                                                      }
                                                   }
                                                   addr161:
                                                }
                                                this.§_-p6§ = null;
                                             }
                                             if(!(_loc7_ || _loc3_))
                                             {
                                                continue loop1;
                                             }
                                             §§goto(addr422);
                                          }
                                          break loop1;
                                       }
                                       §§goto(addr244);
                                    }
                                    §§goto(addr158);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr239);
                                    §§goto(addr214);
                                 }
                              }
                           }
                           §§goto(addr261);
                        }
                        return;
                     }
                     §§goto(addr422);
                  }
               }
               §§goto(addr245);
            }
            §§push(§§pop() * §_-L8§.§_-06I§);
            if(!(_loc6_ && this))
            {
               §§goto(addr65);
            }
         }
         §§goto(addr66);
      }
      
      public function get §_-tO§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(!§_-SJ§());
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§pop();
                     addr44:
                     return this.§_-p6§ == null;
                  }
               }
            }
         }
         §§goto(addr44);
      }
   }
}
