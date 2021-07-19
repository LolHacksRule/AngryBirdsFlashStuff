package §+D§
{
   import §7!$§.§]#[§;
   import §;"Y§.§]#X§;
   import flash.display.MovieClip;
   
   public class §5"h§ extends § #^§
   {
       
      
      public var §#"x§:int;
      
      public var §>"4§:int;
      
      public var § !<§:int;
      
      public var §?#K§:int;
      
      public var §8",§:Number;
      
      public var §]a§:Number;
      
      public var §4" §:Number;
      
      public var §?"V§:Number;
      
      public var §^!;§:Number;
      
      public function §5"h§(param1:XML, param2:§ #^§, param3:§]#[§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            super(param1,param2,param3,param4);
            do
            {
               §3"s§ = true;
            }
            while(_loc5_);
            
         }
      }
      
      public function §&!<§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param2))
         {
            this.§ !<§ = param6;
            while(true)
            {
               this.§?#K§ = param1 * this.§ !<§;
               loop1:
               while(true)
               {
                  this.§^!;§ = param7;
                  while(true)
                  {
                     this.§4" § = param2;
                     loop3:
                     while(!(_loc8_ && param2))
                     {
                        this.§?"V§ = param3;
                        loop4:
                        while(true)
                        {
                           this.§8",§ = param4;
                           addr171:
                           while(!_loc8_)
                           {
                              this.§]a§ = param5;
                              while(true)
                              {
                                 §§push(false);
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             this.§>"4§ = 1;
                                             while(true)
                                             {
                                                if(!_loc8_)
                                                {
                                                   continue loop4;
                                                }
                                                addr155:
                                                while(true)
                                                {
                                                   addr29:
                                                   §§goto(addr40);
                                                }
                                             }
                                             continue loop3;
                                          }
                                          while(_loc9_ || this)
                                          {
                                             this.§>"4§ = Math.max(1,Math.ceil(§%"u§.length / this.§?#K§));
                                             §§goto(addr155);
                                          }
                                          addr161:
                                          while(true)
                                          {
                                             §§push(param1 == param7);
                                             if(_loc9_ || this)
                                             {
                                                continue loop7;
                                             }
                                          }
                                          continue loop7;
                                       }
                                       addr134:
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr161);
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         addr40:
         while(true)
         {
            this.§+"a§(0);
            if(_loc9_ || this)
            {
               break;
            }
            continue loop11;
         }
      }
      
      public function §+"a§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc6_ || param1)
                     {
                        §§push(0);
                        while(true)
                        {
                           param1 = §§pop();
                           addr65:
                           if(_loc5_ && this)
                           {
                              continue;
                           }
                           §§push(§§pop() - 1);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(int(§§pop()));
                              if(!_loc5_)
                              {
                                 addr83:
                                 if(!_loc6_)
                                 {
                                    continue loop0;
                                 }
                                 param1 = §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       this.§#"x§ = param1;
                                       if(_loc5_)
                                       {
                                          continue loop7;
                                       }
                                       if(!_loc5_)
                                       {
                                          if(_loc6_)
                                          {
                                             if(true)
                                             {
                                                §§push(this.§#"x§);
                                                if(!_loc5_)
                                                {
                                                   addr114:
                                                   §§push(§§pop() * this.§^!;§);
                                                   if(_loc6_)
                                                   {
                                                      addr123:
                                                      var _loc2_:int = §§pop() * this.§ !<§;
                                                      addr122:
                                                      §§push(_loc2_);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(int(§§pop() + this.§?#K§));
                                                      }
                                                      var _loc3_:* = §§pop();
                                                      var _loc4_:int = 0;
                                                      addr157:
                                                      if(_loc4_ >= §%"u§.length)
                                                      {
                                                         addr162:
                                                         §§push(§§findproperty(x));
                                                         §§push(this.§4" §);
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            §§push(§§pop() - this.§#"x§ * this.§8",§);
                                                         }
                                                         §§pop().x = §§pop();
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§findproperty(y));
                                                            §§push(this.§?"V§);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§pop() - this.§#"x§ * this.§]a§);
                                                            }
                                                            §§pop().y = §§pop();
                                                            if(_loc6_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr162);
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr162);
                                                         }
                                                         addr184:
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr157);
                                                         }
                                                         _loc4_++;
                                                         §§goto(addr184);
                                                         addr214:
                                                      }
                                                      (§%"u§[_loc4_] as §]#X§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
                                                      §§goto(addr214);
                                                   }
                                                   §§goto(addr122);
                                                }
                                             }
                                             §§goto(addr123);
                                          }
                                          else
                                          {
                                             addr109:
                                             while(true)
                                             {
                                             }
                                             addr109:
                                          }
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(!(_loc6_ || param1))
                                             {
                                                break;
                                             }
                                             §§push(this.§>"4§);
                                             if(_loc5_ && this)
                                             {
                                                continue loop1;
                                             }
                                             if(§§pop() < §§pop())
                                             {
                                                continue loop6;
                                             }
                                          }
                                          §§goto(addr114);
                                          addr37:
                                       }
                                       while(true)
                                       {
                                          §§push(this.§>"4§);
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§goto(addr65);
                                          }
                                          §§goto(addr83);
                                       }
                                       §§goto(addr109);
                                    }
                                 }
                              }
                           }
                           §§goto(addr123);
                        }
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr37);
               }
            }
         }
         §§goto(addr86);
      }
   }
}
