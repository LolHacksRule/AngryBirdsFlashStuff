package §_-CR§
{
   import §_-Iw§.b2World;
   import §_-Ja§.b2Vec2;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-tL§;
   
   public class §_-PY§ extends §_-zf§
   {
       
      
      private var §_-N9§:Number = 0;
      
      public function §_-PY§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(!(_loc12_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         §§push(this.§_-N9§);
         §§push(0);
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop() == §§pop());
            if(!(_loc5_ && _loc2_))
            {
               §§push(!§§pop());
               if(!_loc5_)
               {
                  addr38:
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        §§push(§_-Qm§ == §_-FF§);
                        if(!(_loc5_ && this))
                        {
                           addr53:
                           §§push(!§§pop());
                        }
                     }
                  }
                  if(§§pop())
                  {
                     this.§_-N9§ = 0;
                     if(_loc4_)
                     {
                        addr60:
                        if(this.§_-N9§ != 0)
                        {
                           _loc2_ = §_-zq§().GetLinearVelocity().x;
                           if(_loc4_ || _loc2_)
                           {
                              _loc3_ = §_-zq§().GetLinearVelocity().y;
                              §§push(this.§_-N9§);
                              §§push(_loc2_);
                              if(!_loc5_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    addr96:
                                    §_-zq§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
                                    §§push(this.§_-N9§);
                                    §§push(_loc2_);
                                    if(!_loc5_)
                                    {
                                       addr112:
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             this.§_-N9§ = 0;
                                             addr167:
                                             return;
                                             addr123:
                                          }
                                          §§goto(addr167);
                                       }
                                       §§goto(addr123);
                                    }
                                    §§goto(addr167);
                                 }
                                 else
                                 {
                                    §§push(this.§_-N9§);
                                    §§push(_loc2_);
                                    if(!(_loc5_ && this))
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          §_-zq§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
                                          if(_loc4_ || this)
                                          {
                                             §§push(this.§_-N9§);
                                             §§push(_loc2_);
                                          }
                                       }
                                       §§goto(addr167);
                                    }
                                 }
                                 if(§§pop() <= §§pop())
                                 {
                                    this.§_-N9§ = 0;
                                 }
                                 §§goto(addr167);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr96);
                        }
                     }
                     §§goto(addr167);
                  }
                  §§goto(addr60);
               }
               §§goto(addr53);
            }
            §§goto(addr38);
         }
         §§goto(addr60);
      }
      
      override public function activateSpecialPower(param1:§_-F5§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     var _loc2_:Number = §_-zq§().GetLinearVelocity().x;
                     addr26:
                     if(!_loc3_)
                     {
                        if(_loc2_ != 0)
                        {
                           if(_loc4_)
                           {
                              addr46:
                              §§push(this);
                              §§push(_loc2_);
                              if(_loc4_)
                              {
                                 §§push(-§§pop());
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(§§pop() * 1.5);
                                 }
                              }
                              §§pop().§_-N9§ = §§pop();
                           }
                        }
                        return true;
                     }
                     §§goto(addr46);
                  }
               }
               §§goto(addr26);
            }
            return §§pop();
         }
         §§goto(addr26);
      }
   }
}
