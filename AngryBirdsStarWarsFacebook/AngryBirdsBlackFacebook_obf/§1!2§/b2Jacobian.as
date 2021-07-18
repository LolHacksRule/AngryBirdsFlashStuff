package §1!2§
{
   import §[R§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §43§:b2Vec2;
      
      public var §'[§:Number;
      
      public var §`#C§:b2Vec2;
      
      public var §5V§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§43§ = new b2Vec2();
         }
         do
         {
            this.§`#C§ = new b2Vec2();
            do
            {
               super();
            }
            while(_loc2_ && this);
            
         }
         while(!_loc1_);
         
      }
      
      public function §&"Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§43§.§&"Q§();
         }
         while(true)
         {
            this.§'[§ = 0;
            while(!(_loc1_ && _loc1_))
            {
               this.§`#C§.§&"Q§();
               while(!_loc1_)
               {
                  this.§5V§ = 0;
                  if(!_loc1_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§43§.SetV(param1);
            while(true)
            {
               this.§'[§ = param2;
               while(true)
               {
                  this.§`#C§.SetV(param3);
                  §§goto(addr54);
               }
            }
         }
         addr54:
         while(true)
         {
            this.§5V§ = param4;
            if(_loc5_)
            {
               if(_loc5_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr48:
      }
      
      public function §1#7§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§43§.x);
         if(!(_loc5_ && this))
         {
            §§push(param1.x);
            if(_loc6_)
            {
               §§push(§§pop() * §§pop());
               if(_loc6_ || this)
               {
                  §§push(this.§43§.y);
                  if(!(_loc5_ && param2))
                  {
                     §§push(param1.y);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc5_)
                        {
                           addr56:
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              §§push(this.§'[§);
                              if(!_loc5_)
                              {
                                 §§push(param2);
                                 if(_loc6_)
                                 {
                                    addr66:
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc6_ || param2)
                                       {
                                          addr92:
                                          §§push(this.§`#C§.x);
                                          if(_loc6_ || param3)
                                          {
                                             §§push(param3.x);
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc5_ && param1))
                                                {
                                                   addr119:
                                                   §§push(this.§`#C§.y);
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(§§pop() * param3.y);
                                                      if(!_loc6_)
                                                      {
                                                      }
                                                      addr167:
                                                      return §§pop() + §§pop() * §§pop();
                                                      addr165:
                                                   }
                                                   §§goto(addr165);
                                                }
                                                addr164:
                                                §§goto(addr165);
                                                §§push(param4);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc6_ || param2)
                                                {
                                                   §§push(this.§5V§);
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§goto(addr164);
                                                   }
                                                }
                                                §§goto(addr167);
                                             }
                                          }
                                          §§goto(addr164);
                                       }
                                    }
                                 }
                                 §§goto(addr167);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr167);
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr56);
               }
               §§goto(addr167);
            }
            §§goto(addr164);
         }
         §§goto(addr92);
      }
   }
}
