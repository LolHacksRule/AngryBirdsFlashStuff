package §&a§
{
   import §;%§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §1E§:b2Vec2;
      
      public var §5!a§:Number;
      
      public var §2>§:b2Vec2;
      
      public var §,$§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§1E§ = new b2Vec2();
            while(true)
            {
               this.§2>§ = new b2Vec2();
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            super();
            if(_loc2_ || this)
            {
               if(!(_loc1_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §&!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§1E§.§&!K§();
            do
            {
               this.§5!a§ = 0;
               do
               {
                  this.§2>§.§&!K§();
                  do
                  {
                     this.§,$§ = 0;
                  }
                  while(_loc1_);
                  
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(_loc1_);
            
         }
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§1E§.SetV(param1);
         }
         loop0:
         do
         {
            this.§5!a§ = param2;
            while(true)
            {
               this.§2>§.SetV(param3);
               while(_loc5_)
               {
                  this.§,$§ = param4;
                  if(_loc5_ || this)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc6_ && param1);
         
      }
      
      public function §2!<§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§1E§.x);
         if(!_loc5_)
         {
            §§push(param1.x);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc6_)
               {
                  addr29:
                  §§push(this.§1E§.y);
                  if(_loc6_)
                  {
                     §§push(param1.y);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc6_ || param2)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_ || param1)
                           {
                              §§push(this.§5!a§);
                              if(!(_loc5_ && param1))
                              {
                                 addr63:
                                 §§push(param2);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc5_ && param2))
                                    {
                                       addr84:
                                       §§push(§§pop() + §§pop());
                                       if(!_loc5_)
                                       {
                                          §§push(this.§2>§.x);
                                          if(_loc6_)
                                          {
                                             §§push(param3.x);
                                             if(!(_loc5_ && this))
                                             {
                                                addr101:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc5_)
                                                {
                                                   addr104:
                                                   §§push(this.§2>§.y);
                                                   if(_loc6_ || param3)
                                                   {
                                                      addr114:
                                                      §§push(§§pop() * param3.y);
                                                      if(_loc6_)
                                                      {
                                                         addr129:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            §§goto(addr137);
                                                         }
                                                      }
                                                      §§goto(addr156);
                                                   }
                                                   §§goto(addr129);
                                                }
                                             }
                                             §§goto(addr114);
                                          }
                                          §§goto(addr156);
                                       }
                                       §§goto(addr145);
                                    }
                                    addr137:
                                    §§push(§§pop() + §§pop());
                                    if(_loc6_ || this)
                                    {
                                       addr145:
                                       §§push(this.§,$§);
                                       if(_loc6_ || param2)
                                       {
                                          addr156:
                                          §§push(§§pop() + §§pop() * param4);
                                       }
                                       §§goto(addr156);
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr156);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr63);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr84);
               }
               §§goto(addr145);
            }
            §§goto(addr104);
         }
         §§goto(addr29);
      }
   }
}
