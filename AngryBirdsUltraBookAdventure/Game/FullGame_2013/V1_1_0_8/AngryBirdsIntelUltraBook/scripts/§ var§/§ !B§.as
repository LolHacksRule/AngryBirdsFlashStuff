package § var§
{
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §40§.§5G§;
   import §`g§.Sprite;
   
   public class § !B§ extends §3!5§
   {
       
      
      private var §@!x§:Number = 0;
      
      public function § !B§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
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
         var _loc3_:* = NaN;
         if(_loc4_)
         {
            §§push(this.§@!x§);
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr271:
                              do
                              {
                                 §§push(§0M§ == §]!3§);
                                 if(!_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc5_ && _loc3_)
                                    {
                                       continue loop2;
                                    }
                                    §§push(!§§pop());
                                 }
                              }
                              while(!(_loc5_ && _loc2_));
                              
                              continue loop3;
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(!_loc5_)
                              {
                                 this.§@!x§ = 0;
                                 while(true)
                                 {
                                    addr147:
                                    if(!(_loc5_ && param1))
                                    {
                                       this.§@!x§ = 0;
                                       addr23:
                                       return;
                                       addr157:
                                       addr81:
                                    }
                                 }
                              }
                              §§goto(addr271);
                              addr257:
                           }
                           loop9:
                           while(true)
                           {
                              §§push(this.§@!x§);
                              while(true)
                              {
                                 §§push(0);
                                 if(!(_loc4_ || _loc2_))
                                 {
                                    break;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(Number(§63§().GetLinearVelocity().x));
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          while(true)
                                          {
                                             §§push(Number(§63§().GetLinearVelocity().y));
                                             loop14:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                addr200:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§push(this.§@!x§);
                                                      continue loop14;
                                                   }
                                                   §§goto(addr257);
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       §§goto(addr147);
                                    }
                                 }
                                 §§goto(addr23);
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      override public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc4_ || param1)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr49:
                     var _loc2_:Number = §63§().GetLinearVelocity().x;
                     if(!(_loc3_ && _loc2_))
                     {
                        if(_loc2_ != 0)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr82:
                              §§push(this);
                              §§push(_loc2_);
                              if(_loc4_ || this)
                              {
                                 §§push(-§§pop());
                                 if(!(_loc3_ && param1))
                                 {
                                    addr99:
                                    §§push(§§pop() * 1.5);
                                 }
                                 §§pop().§@!x§ = §§pop();
                                 §§goto(addr102);
                              }
                              §§goto(addr99);
                           }
                        }
                        addr102:
                        return true;
                     }
                     §§goto(addr82);
                  }
               }
               §§goto(addr49);
            }
            return §§pop();
         }
         §§goto(addr49);
      }
   }
}
