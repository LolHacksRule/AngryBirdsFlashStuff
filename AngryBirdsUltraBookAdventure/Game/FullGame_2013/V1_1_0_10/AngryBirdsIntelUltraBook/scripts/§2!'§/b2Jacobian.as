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
         if(!(_loc1_ && _loc1_))
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
            while(!_loc2_);
            
         }
         while(_loc1_);
         
      }
      
      public function §+J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§,!]§.§+J§();
            while(true)
            {
               this.§[!p§ = 0;
               loop1:
               for(; _loc1_ || _loc2_; while(!(_loc2_ && _loc2_))
               {
                  this.§5!<§ = 0;
                  if(_loc1_ || this)
                  {
                     return;
                  }
               })
               {
                  while(true)
                  {
                     this.§"S§.§+J§();
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§,!]§.SetV(param1);
            while(true)
            {
               this.§[!p§ = param2;
               loop1:
               while(_loc6_)
               {
                  while(true)
                  {
                     this.§"S§.SetV(param3);
                     do
                     {
                        this.§5!<§ = param4;
                     }
                     while(!(_loc6_ || param2));
                     
                     if(_loc6_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §]l§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§,!]§.x);
         if(!_loc5_)
         {
            §§push(param1.x);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc6_)
               {
                  §§push(this.§,!]§.y);
                  if(!(_loc5_ && param1))
                  {
                     addr39:
                     §§push(param1.y);
                     if(!(_loc5_ && param2))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc6_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_ || param1)
                           {
                              §§push(this.§[!p§);
                              if(!_loc5_)
                              {
                                 addr63:
                                 §§push(param2);
                                 if(_loc6_ || param2)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc5_)
                                       {
                                          addr87:
                                          §§push(this.§"S§.x);
                                          if(!(_loc5_ && param3))
                                          {
                                             addr97:
                                             §§push(param3.x);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc6_ || param3)
                                                {
                                                   §§push(this.§"S§.y);
                                                   if(_loc6_ || this)
                                                   {
                                                      addr129:
                                                      §§push(§§pop() * param3.y);
                                                      if(_loc5_ && param1)
                                                      {
                                                      }
                                                      addr157:
                                                      return §§pop() + §§pop() * §§pop();
                                                      addr156:
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc6_)
                                                   {
                                                      addr142:
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc5_)
                                                      {
                                                         addr145:
                                                         §§push(this.§5!<§);
                                                         if(_loc5_ && this)
                                                         {
                                                         }
                                                         §§goto(addr156);
                                                      }
                                                   }
                                                   §§goto(addr157);
                                                   §§push(param4);
                                                }
                                                §§goto(addr157);
                                             }
                                             §§goto(addr129);
                                          }
                                          §§goto(addr142);
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr97);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr63);
                     }
                  }
                  §§goto(addr129);
               }
               §§goto(addr87);
            }
            §§goto(addr39);
         }
         §§goto(addr145);
      }
   }
}
