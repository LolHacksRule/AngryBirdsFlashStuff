package §`!r§
{
   import §2"Y§.§1#K§;
   import §^#>§.§#_§;
   
   public class §4!L§
   {
       
      
      protected var §8!+§:Number;
      
      protected var §=!Z§:Number;
      
      private var §7!8§:Number;
      
      private var §0!Y§:Number;
      
      private var §6"C§:Number;
      
      private var §=!]§:Number;
      
      protected var §[<§:Number;
      
      private var §4"c§:Number;
      
      protected var §8"2§:Number;
      
      private var §%"g§:Number;
      
      private var §="d§:Number;
      
      private var §6"$§:Boolean = true;
      
      private var §'!#§:Number;
      
      private var §4#N§:Number;
      
      public function §4!L§(param1:Number, param2:Number, param3:Number, param4:§1#K§, param5:Number = 1)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§8!+§ = param1;
               while(true)
               {
                  this.§=!Z§ = param2;
                  loop4:
                  while(!(_loc8_ && this))
                  {
                     if(!_loc8_)
                     {
                        §§push(this);
                        §§push(this.§^"9§(param4.minAngleVel,param4.maxAngleVel));
                        if(_loc7_ || param3)
                        {
                           §§push(§§pop() / 1000);
                        }
                        §§pop().§4"c§ = §§pop();
                        if(_loc8_ && this)
                        {
                           continue;
                        }
                        addr49:
                        if(!(_loc8_ && param2))
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§^"9§(param4.minAngleEmitter,param4.maxAngleEmitter));
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() + param3);
                                 }
                                 §§pop().§[<§ = §§pop();
                                 continue loop4;
                              }
                              addr94:
                              §§push(this.§^"9§(param4.minVel,param4.maxVel));
                              if(_loc7_)
                              {
                                 §§push(§§pop() / 1000);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() * §#_§.§8]§);
                                    if(!_loc8_)
                                    {
                                       addr111:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc6_:* = §§pop();
                                 if(!(_loc8_ && param2))
                                 {
                                    this.§7!8§ = Math.cos(this.§[<§) * _loc6_;
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    this.§0!Y§ = Math.sin(this.§[<§) * _loc6_;
                                    addr282:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§^"9§(param4.minScaleBegin,param4.maxScaleBegin));
                                       if(_loc7_ || param3)
                                       {
                                          §§push(§§pop() * param5);
                                       }
                                       §§pop().§%"g§ = §§pop();
                                       continue loop5;
                                    }
                                 }
                              }
                              addr58:
                           }
                           else
                           {
                              §§goto(addr94);
                           }
                           §§goto(addr111);
                        }
                        else
                        {
                           while(true)
                           {
                              §§goto(addr49);
                           }
                           addr85:
                        }
                        §§goto(addr58);
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function get isAlive() : Boolean
      {
         return this.§6"$§;
      }
      
      public function get §3! §() : Number
      {
         return this.§'!#§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            §§push(this.§7!8§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(this.§6"C§);
               if(!_loc3_)
               {
                  §§push(§§pop() * param1);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().§7!8§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§0!Y§);
               if(!(_loc3_ && this))
               {
                  §§push(this.§=!]§);
                  if(_loc2_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§0!Y§ = §§pop();
               while(true)
               {
                  §§push(this);
                  §§push(this.§8!+§);
                  if(!_loc3_)
                  {
                     §§push(this.§7!8§);
                     if(_loc2_ || _loc3_)
                     {
                        §§push(§§pop() * param1);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§8!+§ = §§pop();
                  while(_loc2_)
                  {
                     §§push(this);
                     §§push(this.§=!Z§);
                     if(!_loc3_)
                     {
                        §§push(this.§0!Y§);
                        if(!_loc3_)
                        {
                           §§push(§§pop() * param1);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().§=!Z§ = §§pop();
                     while(true)
                     {
                        §§push(this.§'!#§);
                        while(true)
                        {
                           §§push(this.§4#N§);
                           addr123:
                           §§goto(addr83);
                        }
                     }
                  }
               }
            }
         }
         addr83:
         while(true)
         {
            if(§§pop() < §§pop())
            {
               loop6:
               while(true)
               {
                  §§push(this);
                  §§push(this.§%"g§);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(this.§="d§);
                     if(_loc2_)
                     {
                        §§push(this.§%"g§);
                        if(_loc2_ || _loc2_)
                        {
                           addr174:
                           §§push(§§pop() - §§pop());
                           if(!(_loc3_ && _loc2_))
                           {
                              addr165:
                              §§push(this.§'!#§);
                              if(!_loc3_)
                              {
                                 addr169:
                                 §§push(§§pop() / this.§4#N§);
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§pop().§8"2§ = §§pop() + §§pop();
                           loop7:
                           while(!_loc3_)
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§[<§);
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§push(this.§4"c§);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§[<§ = §§pop();
                                 while(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          §§push(this);
                                          §§push(this.§'!#§);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() + param1);
                                          }
                                          §§pop().§'!#§ = §§pop();
                                          continue loop6;
                                       }
                                       continue loop0;
                                    }
                                    continue loop3;
                                    if(_loc2_ || param1)
                                    {
                                       this.§6"$§ = false;
                                       addr62:
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr24);
                                          }
                                          continue loop8;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 continue loop7;
                              }
                           }
                           continue loop2;
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr174);
               }
            }
            else
            {
               this.§8"2§ = this.§="d§;
               §§goto(addr117);
            }
            §§goto(addr84);
         }
         while(true)
         {
            §§push(this.§'!#§);
            if(!(_loc2_ || _loc3_))
            {
               continue loop4;
            }
            §§push(this.§4#N§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() >= §§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr52);
                  }
                  §§goto(addr62);
               }
               break;
            }
            §§goto(addr123);
            §§goto(addr117);
         }
         addr24:
         return this.§6"$§;
      }
      
      protected function §^"9§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(isNaN(param1))
            {
               if(_loc3_)
               {
                  §§push(0);
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr121:
                     while(true)
                     {
                        param1 = §§pop();
                     }
                     for(; !(_loc4_ && param1); if(!(_loc3_ || param2))
                     {
                        continue;
                     },§§push(param2),if(_loc3_)
                     {
                        §§push(§§pop() - param1);
                        if(_loc3_)
                        {
                           addr42:
                           §§push(§§pop() * Math.random());
                        }
                        §§goto(addr46);
                        §§push(§§pop() + §§pop());
                     },§§goto(addr42))
                     {
                        param2 = §§pop();
                        while(true)
                        {
                           §§goto(addr19);
                        }
                     }
                  }
               }
               while(true)
               {
               }
               addr122:
            }
            while(true)
            {
               if(isNaN(param2))
               {
                  if(_loc3_ || this)
                  {
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     §§goto(addr86);
                     §§push(0);
                  }
                  §§goto(addr102);
               }
               addr19:
               while(true)
               {
                  §§push(param1);
                  if(_loc3_ || param1)
                  {
                     continue loop5;
                  }
                  addr46:
                  addr46:
                  if(!(_loc4_ && this))
                  {
                     break;
                  }
                  addr86:
                  while(_loc3_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                     continue loop5;
                     §§goto(addr46);
                  }
                  §§goto(addr121);
               }
               return §§pop();
            }
         }
         §§goto(addr102);
      }
   }
}
