package §6!!§
{
   import §#!,§.Sprite;
   import §>!8§.b2Vec2;
   import §>!L§.b2World;
   import §]!@§.LevelMain;
   
   public class §5!>§ extends §6!f§
   {
       
      
      public function §5!>§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc11_ || _loc2_)
            {
               §§push(!§§pop());
               if(!_loc10_)
               {
                  if(§§pop())
                  {
                     if(_loc11_ || _loc2_)
                     {
                        §§goto(addr41);
                     }
                  }
                  var _loc2_:Number = §@!'§().GetPosition().x;
                  var _loc3_:Number = §@!'§().GetPosition().y;
                  var _loc4_:Number = §@!'§().GetLinearVelocity().x;
                  var _loc5_:Number = §@!'§().GetLinearVelocity().y;
                  var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                  §§push(_loc4_);
                  if(!_loc10_)
                  {
                     §§push(-§§pop());
                     if(!_loc10_)
                     {
                        §§push(§§pop() / _loc6_);
                        if(!_loc10_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  var _loc7_:* = §§pop();
                  §§push(_loc5_);
                  if(_loc11_ || _loc3_)
                  {
                     §§push(§§pop() / _loc6_);
                     if(!_loc10_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc8_:* = §§pop();
                  §§push(param1);
                  §§push("BIRD_BLUE");
                  §§push(_loc2_);
                  if(_loc11_ || _loc3_)
                  {
                     §§push(_loc8_);
                     if(!_loc10_)
                     {
                        addr128:
                        §§push(§§pop() - §§pop());
                        §§push(_loc3_);
                        if(!_loc10_)
                        {
                           §§push(§§pop() - _loc7_);
                        }
                     }
                     var _loc9_:LevelObject = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale);
                     if(_loc11_ || this)
                     {
                        §§push(_loc9_);
                        §§push(§§findproperty(b2Vec2));
                        §§push(_loc4_);
                        if(_loc11_ || _loc2_)
                        {
                           §§push(7 * _loc8_);
                           if(!_loc10_)
                           {
                              addr165:
                              §§push(§§pop() - §§pop());
                              §§push(_loc5_);
                              if(_loc11_)
                              {
                                 §§push(§§pop() - 7 * _loc7_);
                              }
                           }
                           §§pop().§'x§(new §§pop().b2Vec2(§§pop(),§§pop()));
                           addr175:
                           §§push(param1);
                           §§push("BIRD_BLUE");
                           §§push(_loc2_);
                           if(!(_loc10_ && _loc2_))
                           {
                              §§push(_loc8_);
                              if(!(_loc10_ && this))
                              {
                                 addr194:
                                 §§push(§§pop() + §§pop());
                                 §§push(_loc3_);
                                 if(!(_loc10_ && param1))
                                 {
                                    §§push(§§pop() + _loc7_);
                                 }
                              }
                              _loc9_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,true,false,false,scale);
                              if(_loc11_ || this)
                              {
                                 §§push(_loc9_);
                                 §§push(§§findproperty(b2Vec2));
                                 §§push(_loc4_);
                                 if(!_loc10_)
                                 {
                                    §§push(7 * _loc8_);
                                    if(!(_loc10_ && this))
                                    {
                                       addr246:
                                       §§push(§§pop() + §§pop());
                                       §§push(_loc5_);
                                       if(!_loc10_)
                                       {
                                          §§push(§§pop() + 7 * _loc7_);
                                       }
                                    }
                                    §§pop().§'x§(new §§pop().b2Vec2(§§pop(),§§pop()));
                                    §§goto(addr256);
                                 }
                                 §§goto(addr246);
                              }
                              addr256:
                              return true;
                           }
                           §§goto(addr194);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr128);
               }
            }
            §§goto(addr41);
         }
         addr41:
         return false;
      }
   }
}
