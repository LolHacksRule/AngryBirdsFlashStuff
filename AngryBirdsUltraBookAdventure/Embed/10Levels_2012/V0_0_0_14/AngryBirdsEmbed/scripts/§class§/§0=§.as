package §class§
{
   import §-!F§.§&!A§;
   import §<!G§.§^3§;
   import flash.display.MovieClip;
   
   public class §0=§ extends §3C§
   {
       
      
      public var §[!6§:int;
      
      public var §4!1§:int;
      
      public var §6l§:int;
      
      public var §=!9§:int;
      
      public var §5Z§:Number;
      
      public var §^,§:Number;
      
      public var §9s§:Number;
      
      public var §^+§:Number;
      
      public var § !>§:Number;
      
      public function §0=§(param1:XML, param2:§3C§, param3:§^3§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param2,param3,param4);
            if(!(_loc6_ && param2))
            {
               §8!;§ = true;
            }
         }
      }
      
      public function §,D§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         this.§6l§ = param6;
         this.§=!9§ = param1 * this.§6l§;
         this.§ !>§ = param7;
         if(!(_loc8_ && this))
         {
            this.§9s§ = param2;
            if(_loc9_)
            {
               this.§^+§ = param3;
               this.§5Z§ = param4;
            }
            this.§^,§ = param5;
            if(!(_loc8_ && param3))
            {
               §§push(false);
               if(!_loc8_)
               {
                  if(§§pop())
                  {
                     if(!_loc8_)
                     {
                        §§goto(addr74);
                     }
                  }
                  §§goto(addr85);
               }
               addr74:
               §§pop();
               if(!(_loc8_ && this))
               {
                  addr85:
                  if(param1 == param7)
                  {
                     this.§4!1§ = Math.max(1,Math.ceil(§3! §.length / this.§=!9§));
                  }
                  else
                  {
                     this.§4!1§ = 1;
                     if(§3! §.length > this.§=!9§)
                     {
                     }
                  }
                  §§goto(addr135);
               }
               this.§4!1§ += Math.ceil((§3! §.length - this.§=!9§) / (this.§6l§ * this.§ !>§));
            }
            §§goto(addr135);
         }
         addr135:
         this.§5V§(0);
      }
      
      public function §5V§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param1);
            §§push(0);
            if(_loc5_)
            {
               if(§§pop() < §§pop())
               {
                  if(!_loc6_)
                  {
                     param1 = 0;
                     if(!(_loc6_ && _loc3_))
                     {
                        addr34:
                        §§push(param1);
                        if(!_loc6_)
                        {
                           addr39:
                           if(§§pop() >= this.§4!1§)
                           {
                              if(_loc5_)
                              {
                                 addr42:
                                 §§push(this.§4!1§);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() - 1);
                                    if(_loc5_)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc5_ || param1)
                                       {
                                          addr57:
                                          param1 = §§pop();
                                          if(_loc5_ || _loc2_)
                                          {
                                             addr65:
                                             this.§[!6§ = param1;
                                             §§goto(addr68);
                                          }
                                          addr68:
                                          §§goto(addr70);
                                       }
                                       addr70:
                                       §§push(this.§[!6§ * this.§ !>§);
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          addr80:
                                          §§push(§§pop() * this.§6l§);
                                       }
                                       var _loc2_:int = §§pop();
                                       §§push(_loc2_);
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(int(§§pop() + this.§=!9§));
                                       }
                                       var _loc3_:* = §§pop();
                                       var _loc4_:int = 0;
                                       while(true)
                                       {
                                          if(_loc4_ >= §3! §.length)
                                          {
                                             if(_loc5_ || param1)
                                             {
                                                §§push(§§findproperty(x));
                                                §§push(this.§9s§);
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§push(§§pop() - this.§[!6§ * this.§5Z§);
                                                }
                                                §§pop().x = §§pop();
                                                if(_loc5_ || this)
                                                {
                                                   §§push(§§findproperty(y));
                                                   §§push(this.§^+§);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() - this.§[!6§ * this.§^,§);
                                                   }
                                                   §§pop().y = §§pop();
                                                   break;
                                                }
                                                break;
                                             }
                                             break;
                                          }
                                          (§3! §[_loc4_] as §&!A§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
                                          if(_loc6_ && this)
                                          {
                                             break;
                                          }
                                          _loc4_++;
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr80);
                                 }
                                 §§goto(addr57);
                              }
                              §§goto(addr68);
                           }
                        }
                        §§goto(addr65);
                     }
                     §§goto(addr42);
                  }
                  §§goto(addr65);
               }
               §§goto(addr34);
            }
            §§goto(addr39);
         }
         §§goto(addr42);
      }
   }
}
