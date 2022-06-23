package §6A§
{
   import §2k§.§`n§;
   
   public class §5!F§
   {
       
      
      public var §5V§:Number = 0;
      
      public var §`[§:Number = 0;
      
      public var §<!C§:Number;
      
      public var §9!M§:Number;
      
      public function §5!F§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§<!C§ = §#!E§.§'f§;
            if(!(_loc4_ && param1))
            {
               addr39:
               this.§9!M§ = §#!E§.§'G§;
               if(!_loc4_)
               {
                  super();
                  if(_loc3_ || param2)
                  {
                     this.§<!C§ = param1;
                     if(_loc3_ || _loc3_)
                     {
                        addr74:
                        this.§9!M§ = param2;
                        if(!_loc4_)
                        {
                           this.§5V§ = 0;
                        }
                     }
                     this.§`[§ = 0;
                  }
                  §§goto(addr85);
               }
               §§goto(addr74);
            }
            addr85:
            return;
         }
         §§goto(addr39);
      }
      
      public function §0L§(param1:§`n§, param2:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         §§push(this.§5V§);
         if(!(_loc5_ && param1))
         {
            §§push(§#!E§.§3!9§);
            if(!(_loc5_ && param1))
            {
               if(§§pop() < §§pop())
               {
                  §§push(this);
                  §§push(this.§5V§);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + param2);
                  }
                  §§pop().§5V§ = §§pop();
                  §§push(this);
                  §§push(this.§`[§);
                  if(_loc6_ || param2)
                  {
                     §§push(§§pop() + this.§<!C§);
                  }
                  §§pop().§`[§ = §§pop();
                  if(!_loc5_)
                  {
                     §§push(param2);
                     if(_loc6_)
                     {
                        §§push(§#!E§.§5!$§);
                        if(_loc6_ || param2)
                        {
                           addr76:
                           §§push(§§pop() / §§pop());
                           §§push(this.§9!M§);
                           if(_loc6_)
                           {
                              addr82:
                              §§push(§§pop() * §§pop() * Math.sin(Math.PI / 4 + this.§`[§ * 2 * Math.PI));
                              if(!(_loc5_ && this))
                              {
                                 _loc3_ = §§pop();
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(param2);
                                    if(!(_loc5_ && param2))
                                    {
                                       §§push(§#!E§.§5!$§);
                                       if(_loc6_ || this)
                                       {
                                          addr143:
                                          §§push(§§pop() / §§pop() * this.§9!M§);
                                          if(!_loc5_)
                                          {
                                             addr146:
                                             §§push(§§pop() * Math.sin(this.§`[§ * 2.1 * Math.PI));
                                             if(_loc6_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                       }
                                       §§goto(addr143);
                                    }
                                    _loc4_ = §§pop();
                                    if(_loc6_)
                                    {
                                       §§push(this);
                                       §§push(this.§9!M§);
                                       if(!_loc5_)
                                       {
                                          §§push(param2);
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(§#!E§.§'G§);
                                             if(_loc6_)
                                             {
                                                addr186:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc5_)
                                                {
                                                   addr184:
                                                   §§push(§§pop() / §#!E§.§3!9§);
                                                }
                                                §§pop().§9!M§ = §§pop() - §§pop();
                                                if(_loc6_)
                                                {
                                                   §§push(this);
                                                   §§push(this.§<!C§);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§push(param2);
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         §§push(§#!E§.§'f§);
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§goto(addr238);
                                                         }
                                                      }
                                                      §§goto(addr236);
                                                   }
                                                   addr238:
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      addr236:
                                                      §§push(§§pop() / §#!E§.§3!9§);
                                                   }
                                                   §§pop().§<!C§ = §§pop() - §§pop();
                                                   §§goto(addr239);
                                                }
                                                §§goto(addr261);
                                             }
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr186);
                                    }
                                 }
                                 addr239:
                                 param1.§,!%§(_loc3_,_loc4_);
                                 §§goto(addr243);
                              }
                              §§goto(addr146);
                           }
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr82);
                  }
                  addr243:
                  param1.§5!K§();
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(true);
                     if(!(_loc5_ && param1))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr261:
                     §§push(false);
                  }
                  return §§pop();
               }
               §§goto(addr261);
            }
            §§goto(addr76);
         }
         §§goto(addr146);
      }
   }
}
