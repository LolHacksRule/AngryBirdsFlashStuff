package §3g§
{
   import §9"§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §4k§:b2Vec2;
      
      public var §7!Q§:Number;
      
      public var §!U§:b2Vec2;
      
      public var §>!J§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§4k§ = new b2Vec2();
            do
            {
               this.§!U§ = new b2Vec2();
               do
               {
                  super();
               }
               while(!(_loc2_ || this));
               
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public function §^!#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§4k§.§^!#§();
            loop0:
            while(true)
            {
               this.§7!Q§ = 0;
               while(true)
               {
                  this.§!U§.§^!#§();
                  loop2:
                  while(!(_loc2_ && this))
                  {
                     while(true)
                     {
                        this.§>!J§ = 0;
                        if(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            this.§4k§.SetV(param1);
            while(true)
            {
               this.§7!Q§ = param2;
               loop1:
               while(_loc5_)
               {
                  this.§!U§.SetV(param3);
                  while(true)
                  {
                     this.§>!J§ = param4;
                     if(_loc5_ || param1)
                     {
                        if(!_loc6_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §0!§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§4k§.x);
         if(_loc5_)
         {
            §§push(param1.x);
            if(!_loc6_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc6_ && param2))
               {
                  §§push(this.§4k§.y);
                  if(_loc5_)
                  {
                     §§push(param1.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           addr45:
                           §§push(§§pop() + §§pop());
                           if(_loc5_ || param1)
                           {
                              §§push(this.§7!Q§);
                              if(_loc5_ || this)
                              {
                                 §§push(param2);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc6_)
                                       {
                                          addr81:
                                          §§push(this.§!U§.x);
                                          if(_loc5_)
                                          {
                                             addr86:
                                             §§push(param3.x);
                                             if(_loc5_ || this)
                                             {
                                                addr95:
                                                §§push(§§pop() * §§pop());
                                                if(_loc5_)
                                                {
                                                   addr98:
                                                   §§push(this.§!U§.y);
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      addr108:
                                                      §§push(§§pop() * param3.y);
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc6_ && param3))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc6_ && param3))
                                                            {
                                                               addr129:
                                                               §§push(this.§>!J§);
                                                               if(_loc5_ || param3)
                                                               {
                                                                  addr150:
                                                                  §§push(§§pop() + §§pop() * param4);
                                                               }
                                                               §§goto(addr150);
                                                            }
                                                            return §§pop();
                                                         }
                                                         §§goto(addr150);
                                                      }
                                                   }
                                                }
                                                §§goto(addr150);
                                             }
                                             §§goto(addr108);
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr86);
                                 }
                                 §§goto(addr108);
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr81);
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr45);
               }
               §§goto(addr129);
            }
            §§goto(addr150);
         }
         §§goto(addr129);
      }
   }
}
