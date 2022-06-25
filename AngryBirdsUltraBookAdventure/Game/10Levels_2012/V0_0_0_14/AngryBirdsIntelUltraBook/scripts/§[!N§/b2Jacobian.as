package §[!N§
{
   import §8>§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §+O§:b2Vec2;
      
      public var §6w§:Number;
      
      public var §[!k§:b2Vec2;
      
      public var §`e§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§+O§ = new b2Vec2();
         }
         while(true)
         {
            this.§[!k§ = new b2Vec2();
            while(!(_loc2_ && this))
            {
               super();
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §%&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§+O§.§%&§();
         }
         do
         {
            this.§6w§ = 0;
            do
            {
               this.§[!k§.§%&§();
               do
               {
                  this.§`e§ = 0;
               }
               while(_loc1_);
               
            }
            while(!_loc2_);
            
         }
         while(_loc1_);
         
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            this.§+O§.SetV(param1);
         }
         loop0:
         do
         {
            this.§6w§ = param2;
            while(true)
            {
               this.§[!k§.SetV(param3);
               while(!(_loc6_ && param3))
               {
                  this.§`e§ = param4;
                  if(_loc5_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc6_ && param2);
         
      }
      
      public function §,#§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§+O§.x);
         if(_loc6_ || this)
         {
            §§push(param1.x);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  §§push(this.§+O§.y);
                  if(_loc6_ || param1)
                  {
                     §§push(param1.y);
                     if(_loc6_ || param3)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc6_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_ || param2)
                           {
                              §§push(this.§6w§);
                              if(_loc6_ || param3)
                              {
                                 addr83:
                                 §§push(param2);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc6_ || param2)
                                    {
                                       addr94:
                                       §§push(§§pop() + §§pop());
                                       if(!_loc5_)
                                       {
                                          §§push(this.§[!k§.x);
                                          if(_loc6_)
                                          {
                                             §§push(param3.x);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc5_)
                                                {
                                                   §§push(this.§[!k§.y);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() * param3.y);
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         addr134:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc6_)
                                                         {
                                                            addr137:
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc5_)
                                                            {
                                                               addr140:
                                                               §§push(this.§`e§);
                                                               if(_loc6_ || param3)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr152);
                                                      }
                                                      addr150:
                                                      addr152:
                                                      return §§pop() + §§pop();
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr150);
                                                }
                                             }
                                          }
                                          §§goto(addr150);
                                          §§push(param4);
                                       }
                                    }
                                    §§goto(addr152);
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr152);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr83);
               }
               §§goto(addr140);
            }
            §§goto(addr137);
         }
         §§goto(addr140);
      }
   }
}
