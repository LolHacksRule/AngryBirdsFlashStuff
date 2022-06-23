package §^!A§
{
   import §&o§.Sprite;
   import §6A§.§ !§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §?g§ extends §^`§
   {
       
      
      private var §"S§:Number = 0;
      
      public function §?g§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
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
         if(!_loc5_)
         {
            §§push(this.§"S§);
            §§push(0);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() == §§pop());
               if(_loc4_)
               {
                  §§push(!§§pop());
                  if(!(_loc5_ && _loc2_))
                  {
                     addr43:
                     if(§§pop())
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           §§pop();
                           §§push(§`Y§ == §@!§);
                           if(!_loc4_)
                           {
                           }
                           addr59:
                           if(§§pop())
                           {
                              this.§"S§ = 0;
                           }
                           §§push(this.§"S§);
                           if(!(_loc5_ && _loc3_))
                           {
                              addr73:
                              if(§§pop() != 0)
                              {
                                 §§push(Number(§'[§().GetLinearVelocity().x));
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    _loc2_ = §§pop();
                                    if(!_loc5_)
                                    {
                                       _loc3_ = §'[§().GetLinearVelocity().y;
                                       if(!_loc5_)
                                       {
                                          addr109:
                                          §§push(this.§"S§);
                                          §§push(_loc2_);
                                          if(_loc4_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                addr113:
                                                §'[§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
                                                if(_loc4_ || this)
                                                {
                                                   §§push(this.§"S§);
                                                   if(_loc4_ || this)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc4_ || this)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               this.§"S§ = 0;
                                                               if(_loc5_ && param1)
                                                               {
                                                                  addr206:
                                                                  if(this.§"S§ <= _loc2_)
                                                                  {
                                                                     if(!(_loc5_ && _loc2_))
                                                                     {
                                                                        addr214:
                                                                        this.§"S§ = 0;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr217);
                                                            }
                                                         }
                                                         addr217:
                                                         return;
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(this.§"S§);
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc4_)
                                                   {
                                                      addr174:
                                                      if(§§pop() > §§pop())
                                                      {
                                                         §'[§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§goto(addr206);
                                                         }
                                                      }
                                                      §§goto(addr214);
                                                   }
                                                }
                                             }
                                             §§goto(addr206);
                                          }
                                          §§goto(addr174);
                                       }
                                    }
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr109);
                        }
                        §§push(!§§pop());
                     }
                  }
                  §§goto(addr59);
               }
               §§goto(addr43);
            }
            §§goto(addr73);
         }
         §§goto(addr113);
      }
      
      override public function activateSpecialPower(param1:§@H§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     §§goto(addr53);
                  }
               }
               var _loc2_:Number = §'[§().GetLinearVelocity().x;
               if(!_loc3_)
               {
                  if(_loc2_ != 0)
                  {
                     if(_loc4_)
                     {
                        addr67:
                        §§push(this);
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           §§push(-§§pop());
                           if(_loc4_)
                           {
                              §§push(§§pop() * 1.5);
                           }
                        }
                        §§pop().§"S§ = §§pop();
                     }
                  }
                  return true;
               }
               §§goto(addr67);
            }
            §§goto(addr53);
         }
         addr53:
         return false;
      }
   }
}
