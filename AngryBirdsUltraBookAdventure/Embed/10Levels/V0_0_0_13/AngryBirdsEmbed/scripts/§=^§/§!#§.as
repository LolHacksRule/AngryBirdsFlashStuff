package §=^§
{
   import §1;§.§!!1§;
   import §@s§.§3!?§;
   import flash.display.MovieClip;
   
   public class §!#§ extends §`f§
   {
       
      
      public var § try§:int;
      
      public var §9=§:int;
      
      public var §5_§:int;
      
      public var §]!1§:int;
      
      public var §"'§:Number;
      
      public var §&X§:Number;
      
      public var §9;§:Number;
      
      public var §7b§:Number;
      
      public var §-z§:Number;
      
      public function §!#§(param1:XML, param2:§`f§, param3:§!!1§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param2,param3,param4);
            if(!(_loc6_ && param2))
            {
               §%!I§ = true;
            }
         }
      }
      
      public function §6!=§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         this.§5_§ = param6;
         this.§]!1§ = param1 * this.§5_§;
         this.§-z§ = param7;
         if(!(_loc8_ && this))
         {
            this.§9;§ = param2;
            if(_loc9_)
            {
               this.§7b§ = param3;
               this.§"'§ = param4;
            }
            this.§&X§ = param5;
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
                     this.§9=§ = Math.max(1,Math.ceil(§2x§.length / this.§]!1§));
                  }
                  else
                  {
                     this.§9=§ = 1;
                     if(§2x§.length > this.§]!1§)
                     {
                     }
                  }
                  §§goto(addr135);
               }
               this.§9=§ += Math.ceil((§2x§.length - this.§]!1§) / (this.§5_§ * this.§-z§));
            }
            §§goto(addr135);
         }
         addr135:
         this.§5!,§(0);
      }
      
      public function §5!,§(param1:int) : void
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
                           if(§§pop() >= this.§9=§)
                           {
                              if(_loc5_)
                              {
                                 addr42:
                                 §§push(this.§9=§);
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
                                             this.§ try§ = param1;
                                             §§goto(addr68);
                                          }
                                          addr68:
                                          §§goto(addr70);
                                       }
                                       addr70:
                                       §§push(this.§ try§ * this.§-z§);
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          addr80:
                                          §§push(§§pop() * this.§5_§);
                                       }
                                       var _loc2_:int = §§pop();
                                       §§push(_loc2_);
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(int(§§pop() + this.§]!1§));
                                       }
                                       var _loc3_:* = §§pop();
                                       var _loc4_:int = 0;
                                       while(true)
                                       {
                                          if(_loc4_ >= §2x§.length)
                                          {
                                             if(_loc5_ || param1)
                                             {
                                                §§push(§§findproperty(x));
                                                §§push(this.§9;§);
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§push(§§pop() - this.§ try§ * this.§"'§);
                                                }
                                                §§pop().x = §§pop();
                                                if(_loc5_ || this)
                                                {
                                                   §§push(§§findproperty(y));
                                                   §§push(this.§7b§);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() - this.§ try§ * this.§&X§);
                                                   }
                                                   §§pop().y = §§pop();
                                                   break;
                                                }
                                                break;
                                             }
                                             break;
                                          }
                                          (§2x§[_loc4_] as §3!?§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
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
