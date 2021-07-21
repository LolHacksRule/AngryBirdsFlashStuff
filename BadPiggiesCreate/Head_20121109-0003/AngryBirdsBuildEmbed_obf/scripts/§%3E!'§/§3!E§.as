package §>!'§
{
   import § !t§.b2World;
   import §-!`§.Sprite;
   import §<!<§.§7E§;
   import §<!B§.b2Vec2;
   
   public class §3!E§ extends §7!U§
   {
       
      
      private var §4!F§:Number = 0;
      
      public function §3!E§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§4!F§);
            §§push(0);
            if(!_loc4_)
            {
               §§push(§§pop() == §§pop());
               if(!_loc4_)
               {
                  §§push(!§§pop());
                  if(!_loc4_)
                  {
                     addr39:
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§pop();
                           if(_loc5_ || param1)
                           {
                              §§push(§!!>§ == §1!s§);
                              if(_loc5_ || param1)
                              {
                                 addr62:
                                 if(!§§pop())
                                 {
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       this.§4!F§ = 0;
                                       if(!(_loc4_ && this))
                                       {
                                          addr80:
                                          §§push(this.§4!F§);
                                          if(!_loc4_)
                                          {
                                             addr85:
                                             if(§§pop() != 0)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(Number(getBody().GetLinearVelocity().x));
                                                   if(_loc5_)
                                                   {
                                                      addr105:
                                                      _loc2_ = §§pop();
                                                      addr132:
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         addr113:
                                                         §§push(Number(getBody().GetLinearVelocity().y));
                                                      }
                                                      getBody().SetLinearVelocity(new b2Vec2(_loc2_ - param1 / 10,_loc3_));
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         addr150:
                                                         §§push(this.§4!F§);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               addr162:
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     this.§4!F§ = 0;
                                                                  }
                                                                  else
                                                                  {
                                                                     addr216:
                                                                     this.§4!F§ = 0;
                                                                     §§goto(addr219);
                                                                  }
                                                               }
                                                               §§goto(addr219);
                                                            }
                                                            addr219:
                                                            return;
                                                         }
                                                         addr212:
                                                         §§push(_loc2_);
                                                         addr213:
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            if(_loc4_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   _loc3_ = §§pop();
                                                   if(!(_loc4_ && this))
                                                   {
                                                      addr126:
                                                      §§push(this.§4!F§);
                                                      §§push(_loc2_);
                                                      if(!_loc4_)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            §§goto(addr132);
                                                         }
                                                         else
                                                         {
                                                            §§push(this.§4!F§);
                                                            §§push(_loc2_);
                                                            if(!_loc4_)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     getBody().SetLinearVelocity(new b2Vec2(_loc2_ + param1 / 10,_loc3_));
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr210:
                                                                        §§goto(addr212);
                                                                        §§push(this.§4!F§);
                                                                     }
                                                                     §§goto(addr216);
                                                                  }
                                                                  §§goto(addr210);
                                                               }
                                                               §§goto(addr216);
                                                            }
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                      §§goto(addr162);
                                                   }
                                                   §§goto(addr210);
                                                }
                                                §§goto(addr126);
                                             }
                                             §§goto(addr216);
                                          }
                                          §§goto(addr105);
                                       }
                                       §§goto(addr126);
                                    }
                                    §§goto(addr105);
                                 }
                                 §§goto(addr80);
                              }
                              §§goto(addr62);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr62);
                     }
                  }
                  §§goto(addr62);
               }
               §§goto(addr39);
            }
            §§goto(addr85);
         }
         §§goto(addr113);
      }
      
      override public function activateSpecialPower(param1:§'!Y§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc3_ || this)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     var _loc2_:Number = getBody().GetLinearVelocity().x;
                     §§goto(addr43);
                  }
               }
               §§goto(addr43);
            }
            return §§pop();
         }
         addr43:
         if(_loc3_ || _loc2_)
         {
            if(_loc2_ != 0)
            {
               if(!_loc4_)
               {
                  §§push(this);
                  §§push(_loc2_);
                  if(!(_loc4_ && this))
                  {
                     §§push(-§§pop());
                     if(_loc3_)
                     {
                        §§push(§§pop() * 1.5);
                     }
                  }
                  §§pop().§4!F§ = §§pop();
               }
            }
         }
         return true;
      }
   }
}
