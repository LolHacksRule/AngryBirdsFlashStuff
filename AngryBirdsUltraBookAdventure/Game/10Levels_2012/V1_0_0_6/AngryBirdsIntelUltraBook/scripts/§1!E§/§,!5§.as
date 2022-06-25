package §1!E§
{
   import §>7§.§&! §;
   import §[!+§.§4`§;
   import flash.display.MovieClip;
   
   public class §,!5§ extends §#?§
   {
       
      
      public var §2!D§:int;
      
      public var §]!@§:int;
      
      public var §^!B§:int;
      
      public var §`9§:int;
      
      public var §@P§:Number;
      
      public var §;^§:Number;
      
      public var §,x§:Number;
      
      public var §<!1§:Number;
      
      public var §%!q§:Number;
      
      public function §,!5§(param1:XML, param2:§#?§, param3:§4`§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            super(param1,param2,param3,param4);
         }
         do
         {
            §`u§ = true;
         }
         while(_loc5_);
         
      }
      
      public function §<q§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            this.§^!B§ = param6;
         }
         loop0:
         while(true)
         {
            this.§`9§ = param1 * this.§^!B§;
            while(true)
            {
               this.§%!q§ = param7;
               loop2:
               while(true)
               {
                  this.§,x§ = param2;
                  loop3:
                  while(true)
                  {
                     this.§<!1§ = param3;
                     loop4:
                     while(true)
                     {
                        this.§@P§ = param4;
                        loop5:
                        while(_loc8_)
                        {
                           this.§;^§ = param5;
                           loop6:
                           while(true)
                           {
                              §§push(false);
                              if(_loc8_)
                              {
                                 if(§§pop())
                                 {
                                    loop14:
                                    while(true)
                                    {
                                       §§pop();
                                       addr142:
                                       while(true)
                                       {
                                          §§push(param1 == param7);
                                          if(_loc8_)
                                          {
                                             break;
                                          }
                                          continue loop14;
                                       }
                                    }
                                    addr141:
                                 }
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       this.§]!@§ = 1;
                                       loop8:
                                       while(true)
                                       {
                                          if(!_loc9_)
                                          {
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                             if(§6!§.length > this.§`9§)
                                             {
                                                if(_loc8_)
                                                {
                                                   if(_loc8_ || this)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      this.§]!@§ += Math.ceil((§6!§.length - this.§`9§) / (this.§^!B§ * this.§%!q§));
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(!(_loc9_ && param1))
                                                         {
                                                            do
                                                            {
                                                               this.§8!P§(0);
                                                            }
                                                            while(!(_loc8_ || param3));
                                                            
                                                            return;
                                                            addr23:
                                                         }
                                                         continue loop7;
                                                      }
                                                      addr127:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop8;
                                                   §§goto(addr23);
                                                }
                                                continue loop5;
                                             }
                                             §§goto(addr23);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§]!@§ = Math.max(1,Math.ceil(§6!§.length / this.§`9§));
                                             }
                                             addr115:
                                          }
                                          §§goto(addr127);
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr115);
                                 }
                              }
                              §§goto(addr141);
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      public function §8!P§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
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
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                           param1 = §§pop();
                           loop3:
                           while(true)
                           {
                              addr35:
                              loop4:
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc6_)
                                 {
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(this.§]!@§);
                                    if(_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       while(true)
                                       {
                                          this.§2!D§ = param1;
                                          if(_loc6_)
                                          {
                                             addr26:
                                             if(_loc6_ || _loc2_)
                                             {
                                                if(true)
                                                {
                                                   §§push(this.§2!D§);
                                                   if(_loc6_ || this)
                                                   {
                                                      §§push(§§pop() * this.§%!q§);
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§pop() * this.§^!B§);
                                                      }
                                                   }
                                                }
                                                continue loop4;
                                                break loop2;
                                             }
                                             addr46:
                                             while(true)
                                             {
                                                if(_loc5_)
                                                {
                                                   continue loop2;
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§]!@§);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§push(§§pop() - 1);
                                                      if(!(_loc6_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      §§push(int(§§pop()));
                                                      if(!_loc6_)
                                                      {
                                                         break loop2;
                                                      }
                                                   }
                                                   param1 = §§pop();
                                                   continue loop3;
                                                }
                                                §§goto(addr26);
                                             }
                                             continue loop3;
                                             §§push(int(§§pop()));
                                             break loop2;
                                          }
                                          continue loop3;
                                          addr76:
                                       }
                                    }
                                    §§goto(addr46);
                                 }
                                 break loop2;
                              }
                              continue loop0;
                           }
                        }
                        break;
                     }
                     var _loc2_:* = §§pop();
                     §§push(_loc2_);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(int(§§pop() + this.§`9§));
                     }
                     var _loc3_:* = §§pop();
                     var _loc4_:int = 0;
                     loop9:
                     while(true)
                     {
                        if(_loc4_ >= §6!§.length)
                        {
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 §§push(§§findproperty(x));
                                 §§push(this.§,x§);
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(§§pop() - this.§2!D§ * this.§@P§);
                                 }
                                 §§pop().x = §§pop();
                                 do
                                 {
                                    §§push(§§findproperty(y));
                                    §§push(this.§<!1§);
                                    if(_loc6_ || this)
                                    {
                                       §§push(§§pop() - this.§2!D§ * this.§;^§);
                                    }
                                    §§pop().y = §§pop();
                                 }
                                 while(_loc5_);
                                 
                                 if(!_loc5_)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       break loop9;
                                    }
                                    break;
                                 }
                                 continue;
                              }
                           }
                           continue;
                        }
                        (§6!§[_loc4_] as §&! §).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
                        _loc4_++;
                     }
                     return;
                  }
                  §§goto(addr35);
               }
            }
         }
         §§goto(addr48);
      }
   }
}
