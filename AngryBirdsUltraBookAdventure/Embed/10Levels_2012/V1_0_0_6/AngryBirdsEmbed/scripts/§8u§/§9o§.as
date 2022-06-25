package §8u§
{
   import §,_§.Sprite;
   import §3G§.§!E§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §9o§ extends §8j§
   {
       
      
      private var §;=§:Number = 0;
      
      public function §9o§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         §§push(this.§;=§);
         if(!_loc5_)
         {
            §§push(0);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() == §§pop());
               if(_loc4_ || param1)
               {
                  §§push(!§§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && param1))
                        {
                           addr52:
                           §§pop();
                           §§push(§@^§ == §%!J§);
                           if(!_loc4_)
                           {
                           }
                           addr59:
                           if(§§pop())
                           {
                              this.§;=§ = 0;
                           }
                           §§push(this.§;=§);
                           if(_loc4_ || _loc3_)
                           {
                              addr73:
                              if(§§pop() != 0)
                              {
                                 §§push(Number(§?n§().GetLinearVelocity().x));
                                 if(!_loc5_)
                                 {
                                    _loc2_ = §§pop();
                                    _loc3_ = §?n§().GetLinearVelocity().y;
                                    §§push(this.§;=§);
                                    §§push(_loc2_);
                                    if(!_loc5_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             §?n§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
                                             if(!_loc5_)
                                             {
                                                addr126:
                                                §§push(this.§;=§);
                                                §§push(_loc2_);
                                                if(_loc4_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         addr132:
                                                         this.§;=§ = 0;
                                                         if(_loc5_)
                                                         {
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr175:
                                                   if(§§pop() <= §§pop())
                                                   {
                                                   }
                                                }
                                                §§goto(addr179);
                                             }
                                             this.§;=§ = 0;
                                             addr179:
                                             return;
                                          }
                                          §§goto(addr132);
                                       }
                                       else
                                       {
                                          §§push(this.§;=§);
                                          if(_loc4_ || this)
                                          {
                                             §§push(_loc2_);
                                             if(!_loc5_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   §?n§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
                                                   §§push(this.§;=§);
                                                }
                                                §§goto(addr132);
                                             }
                                             §§goto(addr175);
                                          }
                                          §§push(_loc2_);
                                       }
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr59);
                        §§push(!§§pop());
                     }
                     §§goto(addr59);
                  }
               }
               §§goto(addr52);
            }
         }
         §§goto(addr73);
      }
      
      override public function activateSpecialPower(param1:§6a§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc3_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr52);
                  }
               }
               var _loc2_:Number = §?n§().GetLinearVelocity().x;
               if(!_loc4_)
               {
                  if(_loc2_ != 0)
                  {
                     if(_loc3_)
                     {
                        §§push(this);
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           §§push(-§§pop());
                           if(_loc3_ || param1)
                           {
                              §§push(§§pop() * 1.5);
                           }
                        }
                        §§pop().§;=§ = §§pop();
                     }
                  }
               }
               return true;
            }
            §§goto(addr52);
         }
         addr52:
         return false;
      }
   }
}
