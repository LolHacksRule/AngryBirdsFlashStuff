package §-!7§
{
   import §&!"§.b2World;
   import §9"§.b2Vec2;
   import §9N§.§9!%§;
   import §`a§.Sprite;
   
   public class §^7§ extends §^!1§
   {
       
      
      private var §&'§:Number = 0;
      
      public function §^7§(param1:§&$§, param2:Sprite, param3:b2World, param4:§9!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc11_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         if(_loc5_ || _loc2_)
         {
            §§push(this.§&'§);
            loop0:
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
                              addr287:
                              while(true)
                              {
                                 addr233:
                                 §§push(§4^§ == §,>§);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop4;
                                    }
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    §§push(!§§pop());
                                 }
                                 if(_loc4_ && param1)
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
                              addr268:
                              if(_loc5_ || _loc3_)
                              {
                                 this.§&'§ = 0;
                              }
                              while(true)
                              {
                              }
                              addr268:
                           }
                           while(true)
                           {
                              §§push(this.§&'§);
                              addr217:
                              while(true)
                              {
                                 §§push(0);
                                 if(!(_loc5_ || this))
                                 {
                                    break;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    addr29:
                                    return;
                                 }
                                 while(true)
                                 {
                                    §§push(Number(§`!#§().GetLinearVelocity().x));
                                    addr231:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                    addr206:
                                    while(!(_loc4_ && param1))
                                    {
                                       §§push(this.§&'§);
                                       continue loop0;
                                    }
                                 }
                              }
                              continue loop1;
                              §§goto(addr268);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr232);
      }
      
      override public function activateSpecialPower(param1:§&$§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc4_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§goto(addr32);
                  }
               }
               var _loc2_:Number = §`!#§().GetLinearVelocity().x;
               if(!(_loc4_ && param1))
               {
                  if(_loc2_ != 0)
                  {
                     if(!(_loc4_ && this))
                     {
                        addr66:
                        §§push(this);
                        §§push(_loc2_);
                        if(!(_loc4_ && param1))
                        {
                           §§push(-§§pop());
                           if(_loc3_ || this)
                           {
                              addr93:
                              §§push(§§pop() * 1.5);
                           }
                           §§pop().§&'§ = §§pop();
                           §§goto(addr96);
                        }
                        §§goto(addr93);
                     }
                  }
                  addr96:
                  return true;
               }
               §§goto(addr66);
            }
            §§goto(addr32);
         }
         addr32:
         return false;
      }
   }
}
