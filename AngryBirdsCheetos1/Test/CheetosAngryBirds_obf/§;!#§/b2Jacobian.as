package §;!#§
{
   import §6!H§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §5A§:b2Vec2;
      
      public var §0K§:Number;
      
      public var §!8§:b2Vec2;
      
      public var §>!G§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§5A§ = new b2Vec2();
            while(true)
            {
               this.§!8§ = new b2Vec2();
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     super();
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §7_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§5A§.§7_§();
            loop0:
            while(true)
            {
               this.§0K§ = 0;
               while(true)
               {
                  this.§!8§.§7_§();
                  loop2:
                  while(!(_loc2_ && _loc1_))
                  {
                     while(true)
                     {
                        this.§>!G§ = 0;
                        if(!_loc2_)
                        {
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§5A§.SetV(param1);
            while(true)
            {
               this.§0K§ = param2;
               §§goto(addr75);
            }
         }
         addr75:
         while(true)
         {
            this.§!8§.SetV(param3);
            do
            {
               this.§>!G§ = param4;
            }
            while(!_loc6_);
            
            if(!(_loc5_ && param2))
            {
               if(!(_loc5_ && param3))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §5y§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§5A§.x);
         if(_loc5_)
         {
            §§push(param1.x);
            if(_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_ || param1)
               {
                  §§push(this.§5A§.y);
                  if(!_loc6_)
                  {
                     §§push(param1.y);
                     if(_loc5_ || param2)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc5_ || param1)
                           {
                              §§push(this.§0K§);
                              if(!(_loc6_ && this))
                              {
                                 §§push(param2);
                                 if(_loc5_ || param2)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc6_)
                                    {
                                       addr88:
                                       §§push(§§pop() + §§pop());
                                       if(_loc5_)
                                       {
                                          §§push(this.§!8§.x);
                                          if(!_loc6_)
                                          {
                                             addr96:
                                             §§push(param3.x);
                                             if(!_loc6_)
                                             {
                                                addr100:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc6_)
                                                {
                                                   addr103:
                                                   §§push(this.§!8§.y);
                                                   if(!_loc6_)
                                                   {
                                                      addr108:
                                                      §§push(§§pop() * param3.y);
                                                      if(_loc6_)
                                                      {
                                                      }
                                                      addr151:
                                                      return §§pop() + §§pop() * §§pop();
                                                      addr150:
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      addr121:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         addr129:
                                                         §§push(this.§>!G§);
                                                         if(_loc6_ && param1)
                                                         {
                                                         }
                                                         §§goto(addr150);
                                                      }
                                                   }
                                                   §§goto(addr151);
                                                   §§push(param4);
                                                }
                                                §§goto(addr121);
                                             }
                                             §§goto(addr151);
                                          }
                                          §§goto(addr103);
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr96);
                                 }
                                 §§goto(addr108);
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr108);
               }
               §§goto(addr129);
            }
            §§goto(addr88);
         }
         §§goto(addr108);
      }
   }
}
