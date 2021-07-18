package §[h§
{
   import §<!B§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var § !§:b2Vec2;
      
      public var §9!+§:Number;
      
      public var §<!&§:b2Vec2;
      
      public var §!!M§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§ !§ = new b2Vec2();
            if(_loc2_ || _loc2_)
            {
               this.§<!&§ = new b2Vec2();
               if(_loc2_ || _loc2_)
               {
               }
               §§goto(addr58);
            }
            super();
         }
         addr58:
      }
      
      public function §22§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§ !§.§22§();
            if(_loc1_ || _loc2_)
            {
               this.§9!+§ = 0;
               if(!_loc2_)
               {
                  addr43:
                  this.§<!&§.§22§();
                  if(_loc1_)
                  {
                     this.§!!M§ = 0;
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§ !§.SetV(param1);
            if(_loc6_ || this)
            {
               this.§9!+§ = param2;
               if(!_loc5_)
               {
                  §§goto(addr60);
               }
            }
            §§goto(addr71);
         }
         addr60:
         this.§<!&§.SetV(param3);
         if(_loc6_ || param3)
         {
            addr71:
            this.§!!M§ = param4;
         }
      }
      
      public function §7!P§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§ !§.x);
         if(!(_loc6_ && param2))
         {
            §§push(§§pop() * param1.x);
            if(_loc5_)
            {
               §§push(this.§ !§.y);
               §§push(param1.y);
               if(!(_loc6_ && param3))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc5_)
                     {
                        addr49:
                        §§push(this.§9!+§);
                        if(!(_loc6_ && param2))
                        {
                           §§push(param2);
                           if(!_loc6_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc6_ && this))
                                 {
                                    addr82:
                                    §§push(this.§<!&§.x);
                                    §§push(param3.x);
                                    if(!_loc6_)
                                    {
                                       addr89:
                                       §§push(§§pop() * §§pop());
                                       if(_loc5_ || param3)
                                       {
                                          addr97:
                                          §§push(this.§<!&§.y);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() * param3.y);
                                             if(_loc5_)
                                             {
                                                addr118:
                                                §§push(§§pop() + (§§pop() + §§pop()));
                                                if(_loc6_ && this)
                                                {
                                                }
                                                §§goto(addr138);
                                             }
                                          }
                                       }
                                       §§goto(addr136);
                                    }
                                 }
                                 §§goto(addr138);
                              }
                           }
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr97);
               }
               §§goto(addr89);
            }
            §§goto(addr49);
         }
         addr138:
         §§push(this.§!!M§);
         if(!(_loc6_ && param2))
         {
            addr136:
            §§push(§§pop() * param4);
         }
         return §§pop() + §§pop();
      }
   }
}
