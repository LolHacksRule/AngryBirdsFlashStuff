package §@V§
{
   public class §9!b§
   {
      
      private static const §^!M§:Number = 1.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §^!M§ = 1;
         }
      }
      
      private var §6J§:Number = 1.0;
      
      private var § h§:Number = 0.0;
      
      private var §8!^§:Number = 0.0;
      
      private var § try§:Number = 0.0;
      
      private var §?A§:Number = 0.0;
      
      private var §11§:Number = 1.0;
      
      public function §9!b§(param1:Number = 0.0, param2:Number = 0.0, param3:Number = 0.0, param4:Number = 1.0)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§6J§ = param4;
            while(true)
            {
               this.§ h§ = param2;
               while(_loc6_ || param3)
               {
                  this.§8!^§ = param1;
                  while(!(_loc5_ && param1))
                  {
                     continue loop0;
                     this.§ try§ = param3;
                     do
                     {
                        this.update(0);
                     }
                     while(!_loc6_);
                     
                     if(!(_loc5_ && param3))
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      public function get speed() : Number
      {
         return this.§11§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§?A§);
            if(_loc4_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§?A§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§?A§);
               loop1:
               while(true)
               {
                  §§push(this.§8!^§);
                  loop2:
                  while(§§pop() >= §§pop())
                  {
                     §§push(this.§?A§);
                     loop3:
                     while(true)
                     {
                        §§push(this.§8!^§);
                        loop4:
                        while(true)
                        {
                           §§push(this.§ h§);
                           addr236:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              while(true)
                              {
                                 if(_loc3_ && this)
                                 {
                                    continue loop2;
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    this.§11§ = this.§6J§;
                                    addr249:
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 §§push(this.§?A§);
                                 if(!_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 addr198:
                                 addr225:
                                 §§push(this.§8!^§);
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr207:
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    if(!_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    §§push(§§pop() + this.§ h§);
                                 }
                                 §§push(§§pop() - §§pop());
                                 if(_loc4_ || param1)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 _loc2_ = §§pop();
                                 addr226:
                                 §§push(this);
                                 §§push(this.§6J§);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(§^!M§);
                                    if(!_loc3_)
                                    {
                                       §§push(this.§6J§);
                                       if(_loc4_ || param1)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc4_)
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc3_ && param1)
                                                {
                                                }
                                                addr121:
                                                §§pop().§11§ = §§pop() + §§pop();
                                                addr120:
                                                if(_loc3_)
                                                {
                                                   §§goto(addr226);
                                                }
                                                break;
                                             }
                                             addr119:
                                             §§goto(addr120);
                                             §§push(§§pop() / §§pop());
                                          }
                                          §§push(this.§ try§);
                                       }
                                       §§goto(addr119);
                                    }
                                    §§goto(addr120);
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr22);
                           }
                        }
                     }
                  }
                  addr258:
                  §§push(this);
                  §§push(§^!M§);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(this.§6J§);
                     if(_loc4_)
                     {
                        §§push(§^!M§);
                        if(_loc4_ || param1)
                        {
                           §§push(§§pop() - §§pop());
                           if(!(_loc3_ && this))
                           {
                              §§push(this.§?A§);
                              if(_loc4_ || _loc2_)
                              {
                                 addr296:
                                 addr308:
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_ || _loc2_)
                                 {
                                    addr306:
                                    §§push(§§pop() / this.§8!^§);
                                 }
                                 §§pop().§11§ = §§pop() + §§pop();
                                 addr22:
                                 §§push(true);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    return §§pop();
                                 }
                                 addr36:
                                 return §§pop();
                                 addr309:
                              }
                           }
                           §§goto(addr306);
                        }
                        §§goto(addr296);
                     }
                     §§goto(addr306);
                  }
                  §§goto(addr308);
               }
            }
         }
         §§goto(addr309);
      }
   }
}
