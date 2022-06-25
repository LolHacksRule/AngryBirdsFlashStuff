package §%4§
{
   import §-!D§.§4!,§;
   import §0!#§.§'!,§;
   import flash.display.MovieClip;
   
   public class §9!&§ extends §4!=§
   {
       
      
      public var §1x§:int;
      
      public var §-!=§:int;
      
      public var §@U§:int;
      
      public var §^5§:int;
      
      public var §;-§:Number;
      
      public var §>!#§:Number;
      
      public var §]]§:Number;
      
      public var §3=§:Number;
      
      public var §+!@§:Number;
      
      public function §9!&§(param1:XML, param2:§4!=§, param3:§4!,§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            super(param1,param2,param3,param4);
            if(_loc6_ || this)
            {
               addr47:
               §7!I§ = true;
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §4^§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         this.§@U§ = param6;
         if(!(_loc8_ && param1))
         {
            this.§^5§ = param1 * this.§@U§;
            this.§+!@§ = param7;
            this.§]]§ = param2;
            if(!(_loc8_ && param1))
            {
               this.§3=§ = param3;
               if(!(_loc8_ && param1))
               {
                  this.§;-§ = param4;
                  if(_loc9_)
                  {
                     addr61:
                     this.§>!#§ = param5;
                     §§goto(addr64);
                  }
                  §§goto(addr105);
               }
               addr64:
               §§push(false);
               if(!_loc8_)
               {
                  if(§§pop())
                  {
                     if(_loc9_ || param3)
                     {
                        §§pop();
                        if(_loc9_ || param2)
                        {
                           §§goto(addr97);
                        }
                        §§goto(addr105);
                     }
                  }
               }
               addr97:
               if(param1 == param7)
               {
                  if(_loc9_ || param2)
                  {
                     addr105:
                     this.§-!=§ = Math.max(1,Math.ceil(§+q§.length / this.§^5§));
                  }
               }
               else
               {
                  this.§-!=§ = 1;
                  if(§+q§.length > this.§^5§)
                  {
                     if(_loc9_ || this)
                     {
                        this.§-!=§ += Math.ceil((§+q§.length - this.§^5§) / (this.§@U§ * this.§+!@§));
                        if(_loc8_)
                        {
                        }
                     }
                     §§goto(addr166);
                  }
               }
               this.§<!#§(0);
               §§goto(addr166);
            }
            §§goto(addr61);
         }
         addr166:
      }
      
      public function §<!#§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(0);
               if(!(_loc6_ && _loc3_))
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc5_ || _loc2_)
                     {
                        param1 = 0;
                        if(!(_loc6_ && param1))
                        {
                           addr46:
                           if(param1 >= this.§-!=§)
                           {
                              if(_loc5_ || this)
                              {
                                 addr57:
                                 §§push(this.§-!=§);
                                 if(!_loc6_)
                                 {
                                    addr61:
                                    §§push(§§pop() - 1);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc5_)
                                       {
                                          addr72:
                                          param1 = §§pop();
                                          if(_loc5_)
                                          {
                                             addr75:
                                             this.§1x§ = param1;
                                             addr78:
                                             §§push(this.§1x§ * this.§+!@§);
                                             if(_loc5_ || _loc3_)
                                             {
                                                addr100:
                                                §§push(§§pop() * this.§@U§);
                                             }
                                             §§push(int(§§pop()));
                                          }
                                          §§goto(addr78);
                                       }
                                       var _loc2_:* = §§pop();
                                       §§push(_loc2_);
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§push(int(§§pop() + this.§^5§));
                                       }
                                       var _loc3_:* = §§pop();
                                       var _loc4_:int = 0;
                                       do
                                       {
                                          if(_loc4_ >= §+q§.length)
                                          {
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             §§goto(addr187);
                                          }
                                          (§+q§[_loc4_] as §'!,§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          _loc4_++;
                                       }
                                       while(!(_loc6_ && param1));
                                       
                                       §§push(§§findproperty(x));
                                       §§push(this.§]]§);
                                       if(_loc5_ || this)
                                       {
                                          §§push(§§pop() - this.§1x§ * this.§;-§);
                                       }
                                       §§pop().x = §§pop();
                                       if(_loc5_ || this)
                                       {
                                          §§goto(addr187);
                                       }
                                       addr187:
                                       §§push(§§findproperty(y));
                                       §§push(this.§3=§);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() - this.§1x§ * this.§>!#§);
                                       }
                                       §§pop().y = §§pop();
                                       return;
                                    }
                                    §§goto(addr100);
                                 }
                                 §§goto(addr72);
                              }
                              §§goto(addr78);
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr57);
                     }
                     §§goto(addr75);
                  }
               }
               §§goto(addr46);
            }
            §§goto(addr61);
         }
         §§goto(addr75);
      }
   }
}
