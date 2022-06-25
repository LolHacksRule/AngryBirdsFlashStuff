package §]![§
{
   import § D§.b2World;
   import §+&§.§-!7§;
   import §8>§.b2Vec2;
   import §9E§.Sprite;
   
   public class §9J§ extends §4J§
   {
       
      
      private var §1!p§:Number = 0;
      
      public function §9J§(param1:§[?§, param2:Sprite, param3:b2World, param4:§-!7§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         if(_loc5_)
         {
            §§push(this.§1!p§);
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
                              addr257:
                              while(true)
                              {
                                 §§push(§%,§ == §0K§);
                                 if(_loc5_ || _loc2_)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       break;
                                    }
                                    §§push(!§§pop());
                                 }
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    continue loop2;
                                 }
                              }
                              continue loop3;
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 this.§1!p§ = 0;
                              }
                              while(true)
                              {
                              }
                              addr248:
                           }
                           while(true)
                           {
                              §§push(this.§1!p§);
                              loop9:
                              while(true)
                              {
                                 §§push(0);
                                 if(!(_loc5_ || _loc2_))
                                 {
                                    break;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    addr24:
                                    return;
                                 }
                                 while(true)
                                 {
                                    §§push(Number(§+$§().GetLinearVelocity().x));
                                    addr201:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr202:
                                       while(true)
                                       {
                                          §§push(Number(§+$§().GetLinearVelocity().y));
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                              continue loop1;
                              §§goto(addr248);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      override public function activateSpecialPower(param1:§[?§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || this)
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr48:
                     var _loc2_:Number = §+$§().GetLinearVelocity().x;
                     if(_loc3_)
                     {
                        if(_loc2_ != 0)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr76:
                              §§push(this);
                              §§push(_loc2_);
                              if(_loc3_)
                              {
                                 §§push(-§§pop());
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(§§pop() * 1.5);
                                 }
                              }
                              §§pop().§1!p§ = §§pop();
                           }
                        }
                        return true;
                     }
                     §§goto(addr76);
                  }
               }
               §§goto(addr48);
            }
            return §§pop();
         }
         §§goto(addr48);
      }
   }
}
