package §"!E§
{
   import §!y§.§2U§;
   import §#!4§.§'^§;
   import flash.display.MovieClip;
   
   public class §1!W§ extends §[!s§
   {
       
      
      public var §%<§:int;
      
      public var §>q§:int;
      
      public var §>g§:int;
      
      public var §&h§:int;
      
      public var §5!C§:Number;
      
      public var §,"§:Number;
      
      public var §>!C§:Number;
      
      public var §>B§:Number;
      
      public var §3!1§:Number;
      
      public function §1!W§(param1:XML, param2:§[!s§, param3:§2U§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param2,param3,param4);
            if(!(_loc6_ && param2))
            {
               §8y§ = true;
            }
         }
      }
      
      public function §5a§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            this.§>g§ = param6;
            if(!(_loc9_ && this))
            {
               addr28:
               this.§&h§ = param1 * this.§>g§;
               this.§3!1§ = param7;
               if(!_loc9_)
               {
                  this.§>!C§ = param2;
                  if(_loc8_)
                  {
                     this.§>B§ = param3;
                     this.§5!C§ = param4;
                     this.§,"§ = param5;
                     §§push(false);
                     if(_loc8_ || param3)
                     {
                        if(§§pop())
                        {
                           if(_loc8_)
                           {
                              §§pop();
                              §§goto(addr106);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!(_loc9_ && param3))
                        {
                           addr94:
                           this.§>q§ = Math.max(1,Math.ceil(§?n§.length / this.§&h§));
                        }
                        §§goto(addr106);
                     }
                     else
                     {
                        this.§>q§ = 1;
                        if(§?n§.length > this.§&h§)
                        {
                           this.§>q§ += Math.ceil((§?n§.length - this.§&h§) / (this.§>g§ * this.§3!1§));
                        }
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr94);
               }
               §§goto(addr83);
            }
            addr106:
            if(!(_loc9_ && this))
            {
               addr83:
               §§push(param1 == param7);
            }
            this.§]!$§(0);
            return;
         }
         §§goto(addr28);
      }
      
      public function §]!$§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(param1);
            if(!(_loc5_ && _loc2_))
            {
               §§push(0);
               if(_loc6_ || this)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!(_loc5_ && this))
                     {
                        param1 = 0;
                        if(!_loc6_)
                        {
                        }
                     }
                     §§goto(addr58);
                  }
                  addr48:
                  §§push(param1);
                  §§push(this.§>q§);
               }
               if(§§pop() >= §§pop())
               {
                  if(!(_loc5_ && this))
                  {
                     §§goto(addr58);
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr48);
         }
         addr58:
         §§push(this.§>q§ - 1);
         if(_loc6_)
         {
            param1 = §§pop();
            if(_loc6_ || param1)
            {
               addr72:
               this.§%<§ = param1;
            }
            §§push(this.§%<§ * this.§3!1§);
            if(!_loc5_)
            {
               §§push(§§pop() * this.§>g§);
            }
         }
         var _loc2_:int = §§pop();
         §§push(_loc2_);
         if(!(_loc5_ && _loc2_))
         {
            §§push(int(§§pop() + this.§&h§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= §?n§.length)
            {
               if(_loc6_)
               {
                  §§push(§§findproperty(x));
                  §§push(this.§>!C§);
                  if(!_loc5_)
                  {
                     §§push(§§pop() - this.§%<§ * this.§5!C§);
                  }
                  §§pop().x = §§pop();
                  if(!(_loc5_ && param1))
                  {
                     break;
                  }
                  §§goto(addr191);
               }
               break;
            }
            (§?n§[_loc4_] as §'^§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            if(_loc5_ && _loc2_)
            {
               break;
            }
            _loc4_++;
            if(_loc6_)
            {
               continue;
            }
            §§goto(addr191);
         }
         §§push(§§findproperty(y));
         §§push(this.§>B§);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() - this.§%<§ * this.§,"§);
         }
         §§pop().y = §§pop();
         addr191:
      }
   }
}
