package §`X§
{
   import §9t§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §@`§:b2Vec2;
      
      public var §7"A§:Number;
      
      public var §?9§:b2Vec2;
      
      public var §7F§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§@`§ = new b2Vec2();
            do
            {
               this.§?9§ = new b2Vec2();
               do
               {
                  super();
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(!_loc2_);
            
         }
      }
      
      public function §@!d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§@`§.§@!d§();
            while(true)
            {
               this.§7"A§ = 0;
            }
            addr78:
         }
         loop1:
         do
         {
            this.§?9§.§@!d§();
            while(_loc2_)
            {
               this.§7F§ = 0;
               if(!(_loc1_ && _loc1_))
               {
                  continue loop1;
               }
            }
            §§goto(addr78);
         }
         while(_loc1_);
         
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§@`§.SetV(param1);
            while(true)
            {
               this.§7"A§ = param2;
               while(_loc5_ || param3)
               {
                  this.§?9§.SetV(param3);
                  while(_loc5_)
                  {
                     this.§7F§ = param4;
                     if(!(_loc6_ && param2))
                     {
                        return;
                        addr44:
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §3!u§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§@`§.x);
         if(_loc5_)
         {
            §§push(param1.x);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_ || param1)
               {
                  §§push(this.§@`§.y);
                  if(_loc5_ || this)
                  {
                     §§push(param1.y);
                     if(_loc5_ || param3)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc5_)
                           {
                              §§push(this.§7"A§);
                              if(_loc5_ || param3)
                              {
                                 §§push(param2);
                                 if(_loc5_ || param1)
                                 {
                                    addr85:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc6_)
                                    {
                                       addr88:
                                       §§push(§§pop() + §§pop());
                                       if(!_loc6_)
                                       {
                                          addr91:
                                          §§push(this.§?9§.x);
                                          if(!_loc6_)
                                          {
                                             addr96:
                                             §§push(param3.x);
                                             if(!(_loc6_ && param1))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc5_ || this)
                                                {
                                                   §§push(this.§?9§.y);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(§§pop() * param3.y);
                                                      if(_loc6_)
                                                      {
                                                      }
                                                      addr166:
                                                      return §§pop() + §§pop() * §§pop();
                                                      addr165:
                                                   }
                                                }
                                                §§goto(addr165);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc6_ && param2))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc5_ || param2)
                                                {
                                                }
                                                §§goto(addr166);
                                             }
                                             addr163:
                                             §§goto(addr166);
                                             §§push(param4);
                                          }
                                          §§goto(addr166);
                                       }
                                       §§push(this.§7F§);
                                       if(_loc5_ || param3)
                                       {
                                          §§goto(addr163);
                                       }
                                    }
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr88);
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr96);
               }
               §§goto(addr91);
            }
            §§goto(addr88);
         }
         §§goto(addr166);
      }
   }
}
