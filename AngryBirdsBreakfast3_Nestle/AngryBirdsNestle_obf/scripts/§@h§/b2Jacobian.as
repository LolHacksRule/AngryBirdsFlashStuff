package §@h§
{
   import §@!E§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §3!u§:b2Vec2;
      
      public var §&'§:Number;
      
      public var §]@§:b2Vec2;
      
      public var §5!C§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§3!u§ = new b2Vec2();
            while(true)
            {
               this.§]@§ = new b2Vec2();
               while(_loc1_ || _loc1_)
               {
                  super();
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr48:
               }
            }
         }
         §§goto(addr48);
      }
      
      public function §>![§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§3!u§.§>![§();
            while(true)
            {
               this.§&'§ = 0;
               while(true)
               {
                  this.§]@§.§>![§();
                  §§goto(addr73);
               }
            }
         }
         addr73:
         while(true)
         {
            this.§5!C§ = 0;
            if(!(_loc2_ && _loc2_))
            {
               if(_loc1_ || _loc2_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr58:
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§3!u§.SetV(param1);
            while(true)
            {
               this.§&'§ = param2;
               while(_loc5_ || param2)
               {
                  this.§]@§.SetV(param3);
                  loop2:
                  while(_loc5_ || param3)
                  {
                     while(true)
                     {
                        this.§5!C§ = param4;
                        if(_loc5_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §%"2§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§3!u§.x);
         if(!(_loc5_ && param3))
         {
            §§push(param1.x);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc6_)
               {
                  §§push(this.§3!u§.y);
                  if(!_loc5_)
                  {
                     §§push(param1.y);
                     if(_loc6_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc5_ && param1))
                        {
                           addr51:
                           §§push(§§pop() + §§pop());
                           if(_loc6_ || param2)
                           {
                              §§push(this.§&'§);
                              if(_loc6_ || this)
                              {
                                 addr68:
                                 §§push(param2);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc5_ && param3))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc5_ && param3))
                                       {
                                          §§push(this.§]@§.x);
                                          if(_loc6_)
                                          {
                                             §§push(param3.x);
                                             if(_loc6_ || param2)
                                             {
                                                addr111:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc5_ && this))
                                                {
                                                   addr119:
                                                   §§push(this.§]@§.y);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() * param3.y);
                                                      if(_loc6_ || param2)
                                                      {
                                                      }
                                                      addr167:
                                                      return §§pop() + §§pop() * §§pop();
                                                      addr165:
                                                   }
                                                }
                                                addr142:
                                                §§push(§§pop() + §§pop());
                                                if(_loc6_ || param2)
                                                {
                                                   addr160:
                                                   §§push(this.§5!C§);
                                                   if(_loc6_)
                                                   {
                                                      addr164:
                                                      §§goto(addr165);
                                                      §§push(param4);
                                                   }
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr167);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc5_ && param3))
                                             {
                                                §§goto(addr142);
                                             }
                                             §§goto(addr164);
                                          }
                                          §§goto(addr119);
                                       }
                                    }
                                 }
                                 §§goto(addr167);
                              }
                              §§goto(addr142);
                           }
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr51);
               }
               §§goto(addr160);
            }
            §§goto(addr68);
         }
         §§goto(addr160);
      }
   }
}
