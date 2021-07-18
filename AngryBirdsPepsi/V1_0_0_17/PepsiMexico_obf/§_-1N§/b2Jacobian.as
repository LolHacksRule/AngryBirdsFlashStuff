package §_-1N§
{
   import §_-Ja§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §_-kX§:b2Vec2;
      
      public var §_-lS§:Number;
      
      public var §_-Jk§:b2Vec2;
      
      public var §_-IH§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§_-kX§ = new b2Vec2();
            if(_loc2_)
            {
               addr41:
               this.§_-Jk§ = new b2Vec2();
               if(!_loc1_)
               {
                  super();
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §_-0a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-kX§.§_-0a§();
            if(_loc1_)
            {
               this.§_-lS§ = 0;
               if(!(_loc2_ && this))
               {
                  addr37:
                  this.§_-Jk§.§_-0a§();
                  if(!(_loc2_ && _loc1_))
                  {
                     addr54:
                     this.§_-IH§ = 0;
                  }
               }
               return;
            }
            §§goto(addr37);
         }
         §§goto(addr54);
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§_-kX§.SetV(param1);
            if(!(_loc6_ && this))
            {
               this.§_-lS§ = param2;
               if(!_loc6_)
               {
                  this.§_-Jk§.SetV(param3);
                  if(_loc5_)
                  {
                     addr56:
                     this.§_-IH§ = param4;
                  }
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      public function §_-yB§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§_-kX§.x);
         if(_loc6_ || param1)
         {
            §§push(§§pop() * param1.x);
            if(!(_loc5_ && this))
            {
               §§push(this.§_-kX§.y);
               §§push(param1.y);
               if(!_loc5_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc5_ && param2))
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc5_)
                     {
                        §§push(this.§_-lS§);
                        §§push(param2);
                        if(_loc6_ || param2)
                        {
                           addr69:
                           §§push(§§pop() + §§pop() * §§pop());
                           if(!(_loc5_ && param2))
                           {
                              addr78:
                              §§push(this.§_-Jk§.x);
                              §§push(param3.x);
                              if(_loc6_ || param2)
                              {
                                 §§push(§§pop() * §§pop());
                                 §§push(this.§_-Jk§.y);
                                 if(_loc6_)
                                 {
                                    addr96:
                                    §§push(§§pop() * param3.y);
                                    if(_loc6_)
                                    {
                                       §§goto(addr117);
                                    }
                                 }
                              }
                              addr117:
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(!_loc5_)
                              {
                                 addr112:
                                 §§push(this.§_-IH§);
                                 §§push(param4);
                              }
                              return §§pop();
                              §§push(§§pop() + §§pop() * §§pop());
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr112);
               }
               §§goto(addr69);
            }
            §§goto(addr112);
         }
         §§goto(addr78);
      }
   }
}
