package §%t§
{
   import §&L§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var § !D§:b2Vec2;
      
      public var §]#§:Number;
      
      public var §!O§:b2Vec2;
      
      public var §'!e§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§ !D§ = new b2Vec2();
            do
            {
               this.§!O§ = new b2Vec2();
               do
               {
                  super();
               }
               while(!_loc2_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public function §5b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§ !D§.§5b§();
         }
         loop0:
         while(true)
         {
            this.§]#§ = 0;
            while(true)
            {
               this.§!O§.§5b§();
               while(!(_loc1_ && _loc1_))
               {
                  continue loop0;
                  this.§'!e§ = 0;
                  if(!(_loc1_ && this))
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
            this.§ !D§.SetV(param1);
         }
         do
         {
            this.§]#§ = param2;
            do
            {
               this.§!O§.SetV(param3);
               do
               {
                  this.§'!e§ = param4;
               }
               while(_loc6_);
               
            }
            while(_loc6_);
            
         }
         while(!_loc5_);
         
      }
      
      public function §3!$§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§ !D§.x);
         if(!(_loc5_ && param2))
         {
            §§push(param1.x);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() * §§pop());
               if(_loc6_)
               {
                  §§push(this.§ !D§.y);
                  if(!(_loc5_ && param2))
                  {
                     §§push(param1.y);
                     if(!(_loc5_ && param3))
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc5_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_ || param1)
                           {
                              §§push(this.§]#§);
                              if(_loc6_)
                              {
                                 §§push(param2);
                                 if(!(_loc5_ && param2))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc5_)
                                       {
                                          addr102:
                                          §§push(this.§!O§.x);
                                          if(_loc6_)
                                          {
                                             addr107:
                                             §§push(param3.x);
                                             if(!(_loc5_ && this))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc6_)
                                                {
                                                   addr119:
                                                   §§push(this.§!O§.y);
                                                   if(_loc6_ || param3)
                                                   {
                                                      addr139:
                                                      §§push(§§pop() * param3.y);
                                                      if(!_loc6_)
                                                      {
                                                      }
                                                      addr167:
                                                      return §§pop() + §§pop() * §§pop();
                                                      addr165:
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc6_)
                                                   {
                                                      addr147:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         addr155:
                                                         §§push(this.§'!e§);
                                                         if(_loc6_ || param1)
                                                         {
                                                            addr164:
                                                            §§goto(addr165);
                                                            §§push(param4);
                                                         }
                                                      }
                                                      §§goto(addr167);
                                                   }
                                                   §§goto(addr164);
                                                }
                                                §§goto(addr167);
                                             }
                                             §§goto(addr139);
                                          }
                                          §§goto(addr147);
                                       }
                                       §§goto(addr139);
                                    }
                                    §§goto(addr164);
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr119);
               }
               §§goto(addr139);
            }
            §§goto(addr107);
         }
         §§goto(addr155);
      }
   }
}
