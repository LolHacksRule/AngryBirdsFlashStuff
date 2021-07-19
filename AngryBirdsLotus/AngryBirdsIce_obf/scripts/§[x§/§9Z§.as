package §[x§
{
   import §[K§.§2!1§;
   
   public class §9Z§
   {
       
      
      public var §"!6§:Number = 0;
      
      public var §2§:Number = 0;
      
      public var §-1§:Number;
      
      public var §&%§:Number;
      
      public function §9Z§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         this.§-1§ = §`5§.§3x§;
         this.§&%§ = §`5§.§"y§;
         super();
         this.§-1§ = param1;
         do
         {
            this.§&%§ = param2;
         }
         while(!_loc3_);
         
         this.§"!6§ = 0;
         this.§2§ = 0;
      }
      
      public function §-0§(param1:§2!1§, param2:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(!_loc6_)
         {
            §§push(this.§"!6§);
            while(true)
            {
               §§push(§`5§.§>!G§);
               addr236:
               §§goto(addr32);
            }
         }
         loop7:
         while(true)
         {
            §§push(param2);
            if(!(_loc6_ && param2))
            {
               §§push(§`5§.§^!E§);
               if(!_loc6_)
               {
                  if(!_loc6_)
                  {
                     if(!_loc6_)
                     {
                        addr151:
                        §§push(§§pop() / §§pop() * this.§&%§ * Math.sin(this.§2§ * 2.1 * Math.PI));
                        if(_loc5_)
                        {
                           _loc4_ = §§pop();
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§&%§);
                              if(_loc5_ || this)
                              {
                                 §§push(param2);
                                 if(!_loc6_)
                                 {
                                    §§push(§`5§.§"y§);
                                    if(!_loc6_)
                                    {
                                       addr129:
                                       §§push(§§pop() * §§pop());
                                       if(_loc5_ || param2)
                                       {
                                          addr127:
                                          §§push(§§pop() / §`5§.§>!G§);
                                       }
                                       §§pop().§&%§ = §§pop() - §§pop();
                                       §§push(this);
                                       §§push(this.§-1§);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(param2);
                                          if(_loc5_)
                                          {
                                             §§push(§`5§.§3x§);
                                             if(!_loc6_)
                                             {
                                                addr78:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc6_)
                                                {
                                                   addr76:
                                                   §§push(§§pop() / §`5§.§>!G§);
                                                }
                                                §§pop().§-1§ = §§pop() - §§pop();
                                                continue loop7;
                                             }
                                          }
                                          §§goto(addr76);
                                       }
                                       §§goto(addr78);
                                    }
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr129);
                              addr39:
                              if(!(_loc5_ || _loc3_))
                              {
                                 continue;
                              }
                              addr32:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(false);
                                    if(_loc5_)
                                    {
                                       return §§pop();
                                    }
                                    addr237:
                                 }
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§"!6§);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§push(§§pop() + param2);
                                    }
                                    §§pop().§"!6§ = §§pop();
                                    §§push(this);
                                    §§push(this.§2§);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() + this.§-1§);
                                    }
                                    §§pop().§2§ = §§pop();
                                    §§push(param2);
                                    if(_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    addr186:
                                    while(true)
                                    {
                                       §§push(§§pop() * Math.sin(Math.PI / 4 + this.§2§ * 2 * Math.PI));
                                       if(!(_loc6_ && param2))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       _loc3_ = §§pop();
                                    }
                                 }
                                 continue loop0;
                              }
                              return §§pop();
                              §§push(true);
                           }
                        }
                        else
                        {
                           §§goto(addr181);
                        }
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr183);
               }
            }
            §§goto(addr151);
         }
      }
   }
}
