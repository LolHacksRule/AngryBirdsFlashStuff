package § !V§
{
   import §2"=§.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var §[`§:b2Vec2;
      
      public var §"!K§:Number;
      
      public var §<!4§:b2Vec2;
      
      public var §?!G§:Number;
      
      public function b2Jacobian()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§[`§ = new b2Vec2();
            while(true)
            {
               this.§<!4§ = new b2Vec2();
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     super();
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §@!s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§[`§.§@!s§();
            while(true)
            {
               this.§"!K§ = 0;
               while(_loc1_ || this)
               {
                  this.§<!4§.§@!s§();
                  loop2:
                  while(_loc1_ || this)
                  {
                     while(true)
                     {
                        this.§?!G§ = 0;
                        if(_loc1_ || _loc1_)
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
         §§goto(addr61);
      }
      
      public function Set(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§[`§.SetV(param1);
            loop0:
            while(true)
            {
               this.§"!K§ = param2;
               loop1:
               do
               {
                  this.§<!4§.SetV(param3);
                  while(!_loc6_)
                  {
                     this.§?!G§ = param4;
                     if(_loc5_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc6_);
               
            }
         }
      }
      
      public function §6!C§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§[`§.x);
         if(!_loc5_)
         {
            §§push(param1.x);
            if(!_loc5_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  §§push(this.§[`§.y);
                  if(_loc6_)
                  {
                     §§push(param1.y);
                     if(!(_loc5_ && param3))
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc5_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc5_ && param3))
                           {
                              addr54:
                              §§push(this.§"!K§);
                              if(_loc6_ || param2)
                              {
                                 addr63:
                                 §§push(param2);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§goto(addr81);
                                 }
                                 §§goto(addr106);
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr145);
                        }
                        §§goto(addr63);
                     }
                     addr81:
                     §§push(§§pop() * §§pop());
                     if(_loc6_ || this)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc6_)
                        {
                           §§push(this.§<!4§.x);
                           if(!(_loc5_ && param3))
                           {
                              §§push(param3.x);
                              if(!_loc5_)
                              {
                                 addr106:
                                 §§push(§§pop() * §§pop());
                                 if(_loc6_)
                                 {
                                    addr109:
                                    §§push(this.§<!4§.y);
                                    if(!_loc5_)
                                    {
                                       addr114:
                                       §§push(§§pop() * param3.y);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc5_ && this))
                                          {
                                             §§goto(addr127);
                                          }
                                          §§goto(addr151);
                                       }
                                    }
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr145);
                     }
                     addr127:
                     §§push(§§pop() + §§pop());
                     if(_loc6_ || this)
                     {
                        addr145:
                        §§push(this.§?!G§);
                        if(_loc6_)
                        {
                           addr151:
                           §§push(§§pop() + §§pop() * param4);
                        }
                        §§goto(addr151);
                     }
                     return §§pop();
                  }
                  §§goto(addr109);
               }
               §§goto(addr145);
            }
            §§goto(addr63);
         }
         §§goto(addr54);
      }
   }
}
