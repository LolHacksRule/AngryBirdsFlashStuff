package §!+§
{
   import §9W§.Sprite;
   import §?b§.§7!,§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §8g§ extends §=H§
   {
       
      
      private var §-!!§:Number = 0;
      
      public function §8g§(param1:§#-§, param2:Sprite, param3:b2World, param4:§7!,§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(_loc5_ || _loc2_)
         {
            §§push(this.§-!!§);
            §§push(0);
            if(!_loc4_)
            {
               §§push(§§pop() == §§pop());
               if(!_loc4_)
               {
                  §§push(!§§pop());
                  if(_loc5_)
                  {
                     §§goto(addr39);
                  }
                  §§goto(addr48);
               }
               §§goto(addr39);
            }
            addr39:
            if(§§pop())
            {
               if(!(_loc4_ && _loc2_))
               {
                  addr48:
                  §§pop();
                  §§push(§`0§ == § !,§);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(!§§pop());
                  }
               }
            }
            if(§§pop())
            {
               this.§-!!§ = 0;
            }
            if(this.§-!!§ != 0)
            {
               if(_loc5_ || param1)
               {
                  _loc2_ = §`t§().GetLinearVelocity().x;
                  if(!(_loc4_ && _loc2_))
                  {
                     _loc3_ = §`t§().GetLinearVelocity().y;
                  }
                  §§push(this.§-!!§);
                  §§push(_loc2_);
                  if(!(_loc4_ && param1))
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!_loc4_)
                        {
                           addr117:
                           §`t§().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
                           §§push(this.§-!!§);
                           if(_loc5_ || _loc2_)
                           {
                              §§push(_loc2_);
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    this.§-!!§ = 0;
                                 }
                              }
                              else
                              {
                                 addr165:
                                 if(§§pop() > §§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       addr168:
                                       §`t§().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
                                       if(!(_loc4_ && param1))
                                       {
                                          addr189:
                                          if(this.§-!!§ <= _loc2_)
                                          {
                                          }
                                          §§goto(addr193);
                                       }
                                       this.§-!!§ = 0;
                                    }
                                 }
                              }
                              §§goto(addr193);
                           }
                           else
                           {
                              addr152:
                              §§push(_loc2_);
                              if(_loc5_)
                              {
                                 §§goto(addr165);
                              }
                           }
                           §§goto(addr189);
                        }
                        §§goto(addr168);
                     }
                     else
                     {
                        §§push(this.§-!!§);
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr165);
               }
               §§goto(addr189);
            }
            addr193:
            return;
         }
         §§goto(addr117);
      }
      
      override public function activateSpecialPower(param1:§#-§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc3_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     §§goto(addr47);
                  }
               }
               var _loc2_:Number = §`t§().GetLinearVelocity().x;
               if(!_loc4_)
               {
                  if(_loc2_ != 0)
                  {
                     if(_loc3_ || this)
                     {
                        §§push(this);
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           §§push(-§§pop());
                           if(!_loc4_)
                           {
                              §§push(§§pop() * 1.5);
                           }
                        }
                        §§pop().§-!!§ = §§pop();
                     }
                  }
               }
               return true;
            }
            §§goto(addr47);
         }
         addr47:
         return false;
      }
   }
}
