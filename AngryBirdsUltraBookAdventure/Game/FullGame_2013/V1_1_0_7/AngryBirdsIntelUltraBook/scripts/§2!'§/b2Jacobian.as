package §2!'§
{
   import §&H§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §,!]§:b2Vec2;
      
      public var §[!p§:Number;
      
      public var §"S§:b2Vec2;
      
      public var §5!<§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§,!]§ = new b2Vec2();
         }
         do
         {
            this.§"S§ = new b2Vec2();
            do
            {
               super();
            }
            while(!(_loc2_ || this));
            
         }
         while(_loc1_);
         
      }
      
      public function §+J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§,!]§.§+J§();
         }
         while(true)
         {
            this.§[!p§ = 0;
            while(_loc2_ || this)
            {
               this.§"S§.§+J§();
               do
               {
                  this.§5!<§ = 0;
               }
               while(_loc1_ && _loc1_);
               
               if(_loc2_ || this)
               {
                  return;
               }
            }
         }
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§,!]§.SetV(param1);
            while(true)
            {
               this.§[!p§ = param2;
               addr72:
               if(!(_loc6_ && param3))
               {
                  this.§5!<§ = param4;
                  addr79:
                  if(!(_loc5_ || this))
                  {
                     while(!(_loc6_ && param1))
                     {
                        §§goto(addr72);
                        §§goto(addr79);
                     }
                     while(true)
                     {
                        this.§"S§.SetV(param3);
                        §§goto(addr65);
                     }
                     addr65:
                     addr84:
                  }
                  return;
               }
            }
         }
         §§goto(addr84);
      }
      
      public function §]l§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§,!]§.x);
         if(_loc5_)
         {
            §§push(param1.x);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc6_)
               {
                  §§push(this.§,!]§.y);
                  if(!_loc6_)
                  {
                     §§push(param1.y);
                     if(!_loc6_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc6_)
                        {
                           addr40:
                           §§push(§§pop() + §§pop());
                           if(_loc5_)
                           {
                              addr43:
                              §§push(this.§[!p§);
                              if(!(_loc6_ && this))
                              {
                                 §§push(param2);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc5_ || this)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc5_ || param3)
                                       {
                                          §§push(this.§"S§.x);
                                          if(_loc5_)
                                          {
                                             addr86:
                                             §§push(param3.x);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc5_ || param2)
                                                {
                                                   addr98:
                                                   §§push(this.§"S§.y);
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      addr118:
                                                      §§push(§§pop() * param3.y);
                                                      if(!_loc6_)
                                                      {
                                                         addr123:
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc5_)
                                                         {
                                                         }
                                                         return §§pop() + §§pop() * param4;
                                                         addr139:
                                                      }
                                                      §§goto(addr139);
                                                   }
                                                   §§goto(addr123);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc5_)
                                                {
                                                   addr129:
                                                   §§push(this.§5!<§);
                                                   if(_loc6_ && param2)
                                                   {
                                                   }
                                                }
                                             }
                                             §§goto(addr123);
                                          }
                                          §§goto(addr98);
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr123);
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr86);
                           }
                        }
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr40);
               }
               §§goto(addr43);
            }
            §§goto(addr98);
         }
         §§goto(addr43);
      }
   }
}
