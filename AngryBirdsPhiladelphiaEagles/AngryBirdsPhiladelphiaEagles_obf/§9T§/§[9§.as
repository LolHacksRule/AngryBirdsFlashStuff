package §9T§
{
   import §-!O§.§?Z§;
   
   public class §[9§
   {
       
      
      public var §]G§:Number = 0;
      
      public var §!4§:Number = 0;
      
      public var §`$§:Number;
      
      public var §1C§:Number;
      
      public function §[9§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.§`$§ = Tuner.§+"§;
         loop0:
         while(true)
         {
            this.§1C§ = Tuner.§0e§;
            while(true)
            {
               super();
               this.§`$§ = param1;
               while(!(_loc3_ && param2))
               {
                  this.§1C§ = param2;
                  loop3:
                  while(_loc4_ || param1)
                  {
                     this.§]G§ = 0;
                     while(!_loc3_)
                     {
                        this.§!4§ = 0;
                        if(!(_loc3_ && param1))
                        {
                           if(_loc4_ || param1)
                           {
                              return;
                           }
                           continue loop3;
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §#F§(param1:§?Z§, param2:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(!_loc5_)
         {
            §§push(this.§]G§);
            §§push(Tuner.§@b§);
            loop0:
            while(true)
            {
               if(§§pop() >= §§pop())
               {
                  §§push(false);
                  if(!_loc5_)
                  {
                     return §§pop();
                  }
                  break;
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§]G§);
                  if(_loc6_ || this)
                  {
                     §§push(§§pop() + param2);
                  }
                  §§pop().§]G§ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§!4§);
                     if(_loc6_ || param1)
                     {
                        §§push(§§pop() + this.§`$§);
                     }
                     §§pop().§!4§ = §§pop();
                     §§push(param2);
                     §§push(Tuner.§ f§);
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        §§push(this.§1C§);
                        addr211:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc6_)
                           {
                              §§push(§§pop() * Math.sin(Math.PI / 4 + this.§!4§ * 2 * Math.PI));
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                              }
                              addr229:
                           }
                           while(true)
                           {
                              _loc3_ = §§pop();
                           }
                        }
                        addr157:
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(§§pop() / §§pop());
                           if(_loc5_ && param1)
                           {
                              addr189:
                              if(!_loc6_)
                              {
                                 §§goto(addr229);
                              }
                              addr202:
                              _loc4_ = §§pop() * Math.sin(this.§!4§ * 2.1 * Math.PI);
                              §§push(this);
                              §§push(this.§1C§);
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(param2);
                                 if(_loc6_)
                                 {
                                    §§push(Tuner.§0e§);
                                    if(!_loc5_)
                                    {
                                       addr142:
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc5_ && param1))
                                       {
                                          addr140:
                                          §§push(§§pop() / Tuner.§@b§);
                                       }
                                       §§pop().§1C§ = §§pop() - §§pop();
                                       §§push(this);
                                       §§push(this.§`$§);
                                       if(!(_loc6_ || this))
                                       {
                                          continue loop2;
                                       }
                                       §§push(param2);
                                       if(!_loc5_)
                                       {
                                          §§push(Tuner.§+"§);
                                          if(!_loc5_)
                                          {
                                             addr92:
                                             §§push(§§pop() * §§pop());
                                             if(_loc6_ || param2)
                                             {
                                                §§push(Tuner.§@b§);
                                             }
                                             §§push(§§pop() - §§pop());
                                             continue loop2;
                                          }
                                          §§push(§§pop() / §§pop());
                                       }
                                       §§goto(addr92);
                                    }
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr142);
                           }
                           §§push(this.§1C§);
                           continue loop0;
                        }
                     }
                  }
               }
            }
            return §§pop();
         }
         while(true)
         {
            §§push(param2);
            §§push(Tuner.§ f§);
            if(_loc6_ || param1)
            {
               if(_loc6_)
               {
                  §§goto(addr157);
               }
               §§goto(addr211);
            }
            §§goto(addr174);
         }
         §§goto(addr56);
      }
   }
}
