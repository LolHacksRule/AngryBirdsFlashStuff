package §4!r§
{
   public class §>!9§ implements §[!m§
   {
       
      
      private var §-!o§:Number;
      
      private var §9T§:Number;
      
      private var §>!W§:Number;
      
      public function §>!9§(param1:Number, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
            if(_loc5_ || this)
            {
               this.§>!W§ = param1;
               if(!(_loc4_ && param2))
               {
                  this.§-!o§ = param2;
                  if(_loc4_)
                  {
                  }
                  §§goto(addr71);
               }
               this.§9T§ = param3;
            }
         }
         addr71:
      }
      
      public function §2!R§(param1:Number, param2:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(param2);
            if(!_loc5_)
            {
               if(§§pop() < 0)
               {
                  §§goto(addr25);
               }
               else
               {
                  §§push(this.§>!W§);
               }
               §§goto(addr41);
            }
            §§goto(addr34);
         }
         addr25:
         §§push(this.§>!W§);
         if(!(_loc5_ && param2))
         {
            addr34:
            §§push(-§§pop());
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         else
         {
            addr41:
            §§push(Number(§§pop()));
         }
         var _loc3_:Number = §§pop();
         if(!(_loc5_ && param1))
         {
            §§push(param2);
            if(_loc6_)
            {
               if(§§pop() < 0)
               {
                  §§goto(addr67);
               }
               else
               {
                  §§push(Number(this.§-!o§));
               }
            }
            §§goto(addr79);
         }
         addr67:
         §§push(-this.§-!o§);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
            if(_loc6_)
            {
               addr79:
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc6_ || param1)
         {
            §§push(-§§pop());
            if(_loc6_ || param1)
            {
               §§goto(addr97);
            }
            §§goto(addr135);
         }
         addr97:
         §§push((§§pop() + Math.sqrt(_loc3_ * _loc3_ - 4 * (_loc4_ / 2) * -param2)) / (2 * (_loc4_ / 2)));
         if(_loc6_ || param2)
         {
            addr135:
            §§push(§§pop() * (1 / this.§9T§));
         }
         return §§pop();
      }
      
      public function §-1§(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            §§push(param3);
            if(_loc6_ || param3)
            {
               if(§§pop() < 0)
               {
                  addr34:
                  §§push(-1);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc7_ && this))
                     {
                        addr51:
                        var _loc4_:Number = §§pop();
                        §§push(param1);
                        if(!(_loc7_ && this))
                        {
                           §§push(§§pop() / (1 / this.§9T§));
                           if(_loc6_ || param1)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc5_:* = §§pop();
                        §§push(param2);
                        if(!_loc7_)
                        {
                           §§push(_loc4_);
                           if(_loc6_ || param1)
                           {
                              §§push(this.§>!W§);
                              if(_loc6_ || this)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc6_)
                                 {
                                    §§push(_loc5_);
                                    if(!(_loc7_ && param1))
                                    {
                                       §§goto(addr116);
                                    }
                                    §§goto(addr144);
                                 }
                                 §§goto(addr116);
                              }
                              addr116:
                              §§push(§§pop() + §§pop() * §§pop());
                              if(!(_loc7_ && param1))
                              {
                                 addr134:
                                 §§push(_loc4_);
                                 §§push(this.§-!o§);
                                 if(_loc6_ || param2)
                                 {
                                    addr144:
                                    §§push(§§pop() * §§pop());
                                    §§push(_loc5_);
                                    if(!(_loc7_ && param1))
                                    {
                                       addr153:
                                       §§push(§§pop() * §§pop());
                                       if(_loc6_)
                                       {
                                          §§goto(addr157);
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr157);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr157);
                           }
                           addr157:
                           §§push(§§pop() * _loc5_);
                           if(!_loc7_)
                           {
                              addr160:
                              §§push(§§pop() / 2);
                           }
                           return §§pop() + §§pop();
                        }
                        §§goto(addr134);
                     }
                  }
                  §§goto(addr51);
               }
               else
               {
                  §§push(1);
               }
               §§push(Number(§§pop()));
               if(!_loc7_)
               {
                  §§goto(addr51);
               }
            }
            §§goto(addr51);
         }
         §§goto(addr34);
      }
   }
}
