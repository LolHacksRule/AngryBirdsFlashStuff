package §4C§
{
   import §0w§.§0#§;
   import §`!0§.§4Y§;
   import flash.display.MovieClip;
   
   public class §'=§ extends §1!=§
   {
       
      
      public var §<,§:int;
      
      public var §+!2§:int;
      
      public var §5#§:int;
      
      public var §'j§:int;
      
      public var §>b§:Number;
      
      public var § ]§:Number;
      
      public var §+Q§:Number;
      
      public var §package§:Number;
      
      public var §6s§:Number;
      
      public function §'=§(param1:XML, param2:§1!=§, param3:§0#§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param2,param3,param4);
            if(_loc5_)
            {
               addr26:
               §[U§ = true;
            }
            return;
         }
         §§goto(addr26);
      }
      
      public function §&!!§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            this.§5#§ = param6;
            if(_loc8_ || param1)
            {
               this.§'j§ = param1 * this.§5#§;
               if(_loc8_ || param1)
               {
                  this.§6s§ = param7;
                  this.§+Q§ = param2;
                  addr47:
                  this.§package§ = param3;
                  if(!_loc9_)
                  {
                     addr52:
                     this.§>b§ = param4;
                     this.§ ]§ = param5;
                     if(!_loc9_)
                     {
                        §§push(false);
                        if(!(_loc9_ && param1))
                        {
                           if(§§pop())
                           {
                              if(!(_loc9_ && param2))
                              {
                                 addr87:
                                 §§pop();
                                 §§goto(addr96);
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc9_)
                              {
                                 addr127:
                                 this.§+!2§ += Math.ceil((§@_§.length - this.§'j§) / (this.§5#§ * this.§6s§));
                                 if(_loc9_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              this.§+!2§ = 1;
                              if(§@_§.length > this.§'j§)
                              {
                                 §§goto(addr127);
                              }
                           }
                           §§goto(addr96);
                           this.§+!I§(0);
                           return;
                        }
                     }
                  }
               }
               §§goto(addr87);
            }
            §§goto(addr47);
         }
         §§goto(addr52);
      }
      
      public function §+!I§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param1);
            §§push(0);
            if(_loc5_)
            {
               if(§§pop() < §§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     param1 = 0;
                     if(_loc5_ || _loc3_)
                     {
                        §§goto(addr39);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr52);
               }
               §§goto(addr39);
            }
            §§goto(addr49);
         }
         addr39:
         §§push(param1);
         if(!(_loc6_ && this))
         {
            addr49:
            if(§§pop() >= this.§+!2§)
            {
               if(!_loc6_)
               {
                  addr52:
                  §§push(this.§+!2§);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc5_)
                     {
                        param1 = §§pop();
                        if(!(_loc6_ && _loc2_))
                        {
                           addr73:
                           this.§<,§ = param1;
                           §§goto(addr86);
                        }
                        addr86:
                        §§goto(addr88);
                     }
                     §§goto(addr93);
                  }
                  addr88:
                  §§goto(addr97);
               }
            }
            §§goto(addr73);
         }
         addr97:
         §§push(this.§<,§ * this.§6s§);
         if(_loc5_)
         {
            addr93:
            §§push(§§pop() * this.§5#§);
         }
         var _loc2_:int = §§pop();
         §§push(_loc2_);
         if(_loc5_)
         {
            §§push(int(§§pop() + this.§'j§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 0;
         do
         {
            if(_loc4_ < §@_§.length)
            {
               (§@_§[_loc4_] as §4Y§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
               if(!_loc5_)
               {
                  break;
               }
               continue;
            }
            if(!_loc6_)
            {
               §§push(§§findproperty(x));
               §§push(this.§+Q§);
               if(_loc5_)
               {
                  §§push(§§pop() - this.§<,§ * this.§>b§);
               }
               §§pop().x = §§pop();
               if(_loc5_ || _loc3_)
               {
                  addr170:
                  §§push(§§findproperty(y));
                  §§push(this.§package§);
                  if(!_loc6_)
                  {
                     §§push(§§pop() - this.§<,§ * this.§ ]§);
                  }
                  §§pop().y = §§pop();
                  break;
               }
               break;
            }
            §§goto(addr170);
         }
         while(_loc4_++, !(_loc6_ && param1));
         
      }
   }
}
