package §=;§
{
   import §>!8§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §-P§:b2Vec2;
      
      public var §2>§:Number;
      
      public var §=!-§:b2Vec2;
      
      public var §9@§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-P§ = new b2Vec2();
            while(true)
            {
               this.§=!-§ = new b2Vec2();
               while(_loc2_)
               {
                  super();
                  if(_loc2_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function §@!;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§-P§.§@!;§();
            while(true)
            {
               this.§2>§ = 0;
               loop2:
               while(_loc1_ || this)
               {
                  this.§9@§ = 0;
                  if(_loc1_)
                  {
                     addr44:
                     if(!(_loc1_ || _loc1_))
                     {
                        while(true)
                        {
                           this.§=!-§.§@!;§();
                           continue loop2;
                           §§goto(addr44);
                        }
                        addr79:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§-P§.SetV(param1);
            loop0:
            while(true)
            {
               this.§2>§ = param2;
               while(true)
               {
                  this.§=!-§.SetV(param3);
                  loop2:
                  while(_loc6_ || param1)
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§9@§ = param4;
                        if(!_loc5_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public function §5!i§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§-P§.x);
         if(!_loc5_)
         {
            §§push(param1.x);
            if(_loc6_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  §§push(this.§-P§.y);
                  if(!_loc5_)
                  {
                     §§push(param1.y);
                     if(_loc6_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc6_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              §§push(this.§2>§);
                              if(!_loc5_)
                              {
                                 addr48:
                                 §§push(param2);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc5_)
                                    {
                                       addr64:
                                       §§push(§§pop() + §§pop());
                                       if(_loc6_ || param1)
                                       {
                                          addr72:
                                          §§push(this.§=!-§.x);
                                          if(_loc6_)
                                          {
                                             addr77:
                                             §§push(param3.x);
                                             if(_loc6_)
                                             {
                                                addr81:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc5_ && this))
                                                {
                                                   addr89:
                                                   §§push(this.§=!-§.y);
                                                   if(!(_loc5_ && param3))
                                                   {
                                                      addr109:
                                                      §§push(§§pop() * param3.y);
                                                      if(!_loc5_)
                                                      {
                                                         addr114:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc6_ || param3)
                                                         {
                                                            addr122:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc5_)
                                                            {
                                                            }
                                                            §§goto(addr137);
                                                         }
                                                         §§goto(addr134);
                                                      }
                                                      addr137:
                                                      §§push(this.§9@§);
                                                      if(_loc6_ || param3)
                                                      {
                                                         addr134:
                                                         §§push(param4);
                                                      }
                                                      return §§pop() + §§pop();
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr114);
                                                }
                                                §§goto(addr134);
                                             }
                                             §§goto(addr109);
                                          }
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr89);
                                 }
                                 §§goto(addr81);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr72);
                        }
                        §§goto(addr48);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr77);
               }
               §§goto(addr137);
            }
            §§goto(addr64);
         }
         §§goto(addr137);
      }
   }
}
