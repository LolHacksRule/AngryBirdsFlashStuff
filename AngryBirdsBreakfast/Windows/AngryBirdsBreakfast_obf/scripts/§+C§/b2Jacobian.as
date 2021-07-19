package §+C§
{
   import §6Z§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var § X§:b2Vec2;
      
      public var §>d§:Number;
      
      public var §&!K§:b2Vec2;
      
      public var § w§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§ X§ = new b2Vec2();
            while(true)
            {
               this.§&!K§ = new b2Vec2();
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            super();
            if(!(_loc2_ && this))
            {
               if(_loc1_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §5!H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§ X§.§5!H§();
         }
         loop0:
         do
         {
            this.§>d§ = 0;
            while(true)
            {
               this.§&!K§.§5!H§();
               while(!(_loc1_ && this))
               {
                  this.§ w§ = 0;
                  if(_loc2_ || this)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc2_);
         
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            this.§ X§.SetV(param1);
            while(true)
            {
               this.§>d§ = param2;
            }
            addr80:
         }
         loop1:
         do
         {
            this.§&!K§.SetV(param3);
            while(!_loc5_)
            {
               this.§ w§ = param4;
               if(_loc6_ || this)
               {
                  continue loop1;
               }
            }
            §§goto(addr80);
         }
         while(!_loc6_);
         
      }
      
      public function §7_§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§ X§.x);
         if(_loc6_)
         {
            §§push(param1.x);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  §§push(this.§ X§.y);
                  if(_loc6_)
                  {
                     §§push(param1.y);
                     if(_loc6_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc5_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc5_)
                           {
                              §§push(this.§>d§);
                              if(!(_loc5_ && param2))
                              {
                                 addr53:
                                 §§push(param2);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc6_ || this)
                                    {
                                       addr79:
                                       §§push(§§pop() + §§pop());
                                       if(_loc6_ || this)
                                       {
                                          §§push(this.§&!K§.x);
                                          if(_loc6_)
                                          {
                                             addr92:
                                             §§push(param3.x);
                                             if(!(_loc5_ && param3))
                                             {
                                                addr101:
                                                §§push(§§pop() * §§pop());
                                                if(_loc6_ || this)
                                                {
                                                   addr109:
                                                   §§push(this.§&!K§.y);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      §§push(§§pop() * param3.y);
                                                      if(_loc6_ || param1)
                                                      {
                                                         addr129:
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc6_)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr157);
                                                      }
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                }
                                                §§goto(addr157);
                                             }
                                             §§goto(addr129);
                                          }
                                       }
                                       §§goto(addr157);
                                    }
                                    §§goto(addr109);
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr53);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr79);
               }
               §§goto(addr157);
            }
            §§goto(addr154);
         }
         addr157:
         §§push(this.§ w§);
         if(_loc6_ || param3)
         {
            addr154:
            §§push(param4);
         }
         return §§pop() + §§pop();
      }
   }
}
