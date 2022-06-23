package §3G§
{
   import §3c§.§^z§;
   
   public class §'!$§
   {
       
      
      public var §1k§:Number = 0;
      
      public var §[!C§:Number = 0;
      
      public var §;8§:Number;
      
      public var §`!<§:Number;
      
      public function §'!$§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§;8§ = §&!"§.§]!6§;
         }
         this.§`!<§ = §&!"§.§^=§;
         super();
         this.§;8§ = param1;
         this.§`!<§ = param2;
         this.§1k§ = 0;
         this.§[!C§ = 0;
      }
      
      public function §"<§(param1:§^z§, param2:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         if(_loc5_ || param2)
         {
            §§push(this.§1k§);
            §§push(§&!"§.§"!4§);
            if(_loc5_)
            {
               if(§§pop() < §§pop())
               {
                  §§goto(addr34);
               }
               §§goto(addr251);
            }
            §§goto(addr138);
         }
         addr34:
         §§push(this);
         §§push(this.§1k§);
         if(!(_loc6_ && this))
         {
            §§push(§§pop() + param2);
         }
         §§pop().§1k§ = §§pop();
         if(!(_loc6_ && param1))
         {
            §§push(this);
            §§push(this.§[!C§);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() + this.§;8§);
            }
            §§pop().§[!C§ = §§pop();
            §§push(param2);
            §§push(§&!"§.§@!5§);
            if(_loc5_)
            {
               §§push(§§pop() / §§pop());
               if(!(_loc6_ && param1))
               {
                  §§push(this.§`!<§);
                  if(_loc5_ || param1)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc6_ && param2))
                     {
                        addr123:
                        _loc3_ = §§pop() * Math.sin(Math.PI / 4 + this.§[!C§ * 2 * Math.PI);
                        §§push(param2);
                        §§push(§&!"§.§@!5§);
                        if(!(_loc6_ && _loc3_))
                        {
                           addr138:
                           §§push(§§pop() / §§pop() * this.§`!<§ * Math.sin(this.§[!C§ * 2.1 * Math.PI));
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr138);
                     }
                     _loc4_ = §§pop();
                     if(_loc5_ || param1)
                     {
                        §§push(this);
                        §§push(this.§`!<§);
                        if(_loc5_ || param1)
                        {
                           §§push(param2);
                           if(!_loc6_)
                           {
                              §§push(§&!"§.§^=§);
                              if(_loc5_)
                              {
                                 addr188:
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_)
                                 {
                                    §§push(§&!"§.§"!4§);
                                 }
                                 §§pop().§`!<§ = §§pop() - §§pop();
                                 §§push(this);
                                 §§push(this.§;8§);
                                 if(!_loc6_)
                                 {
                                    §§push(param2);
                                    if(_loc5_)
                                    {
                                       §§push(§&!"§.§]!6§);
                                       if(_loc5_)
                                       {
                                          addr224:
                                          §§push(§§pop() * §§pop());
                                          if(_loc5_ || param1)
                                          {
                                             addr212:
                                             §§push(§§pop() / §&!"§.§"!4§);
                                          }
                                          §§pop().§;8§ = §§pop() - §§pop();
                                          if(_loc5_)
                                          {
                                             param1.§2B§(_loc3_,_loc4_);
                                             if(_loc5_ || param2)
                                             {
                                                §§goto(addr238);
                                             }
                                             §§goto(addr242);
                                          }
                                          §§goto(addr251);
                                       }
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr224);
                              }
                              §§push(§§pop() / §§pop());
                           }
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr242);
                  }
                  §§goto(addr138);
               }
               §§goto(addr123);
            }
            §§goto(addr138);
         }
         addr238:
         param1.§]8§();
         if(!_loc6_)
         {
            addr242:
            §§push(true);
            if(!(_loc6_ && param2))
            {
               return §§pop();
            }
         }
         else
         {
            addr251:
            §§push(false);
         }
         return §§pop();
      }
   }
}
