package §_-F1§
{
   import §_-6r§.§_-Tk§;
   import §_-Ur§.§_-ru§;
   import flash.display.MovieClip;
   
   public class §_-Os§ extends §_-k4§
   {
       
      
      public var §_-uw§:int;
      
      public var §_-ZJ§:int;
      
      public var §_-fD§:int;
      
      public var §_-kk§:int;
      
      public var §_-fK§:Number;
      
      public var §_-Vw§:Number;
      
      public var §_-It§:Number;
      
      public var §_-9h§:Number;
      
      public var §_-dc§:Number;
      
      public function §_-Os§(param1:XML, param2:§_-k4§, param3:§_-ru§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param2,param3,param4);
            if(_loc6_)
            {
               §_-Q4§ = true;
            }
         }
      }
      
      public function §_-xe§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         this.§_-fD§ = param6;
         if(!(_loc9_ && param3))
         {
            this.§_-kk§ = param1 * this.§_-fD§;
            if(_loc8_ || param3)
            {
               this.§_-dc§ = param7;
               this.§_-It§ = param2;
               if(_loc8_ || param2)
               {
                  this.§_-9h§ = param3;
                  this.§_-fK§ = param4;
                  if(_loc8_ || param2)
                  {
                     addr62:
                     this.§_-Vw§ = param5;
                     addr65:
                     §§push(false);
                     if(!(_loc9_ && param2))
                     {
                        if(§§pop())
                        {
                           if(!_loc9_)
                           {
                              §§pop();
                              §§goto(addr119);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        this.§_-ZJ§ = Math.max(1,Math.ceil(§_-yZ§.length / this.§_-kk§));
                     }
                     else
                     {
                        this.§_-ZJ§ = 1;
                        if(§_-yZ§.length > this.§_-kk§)
                        {
                           if(_loc8_ || this)
                           {
                           }
                           §§goto(addr119);
                        }
                     }
                     §§goto(addr151);
                  }
                  addr119:
                  if(!_loc9_)
                  {
                     §§push(param1 == param7);
                  }
                  this.§_-ZJ§ += Math.ceil((§_-yZ§.length - this.§_-kk§) / (this.§_-fD§ * this.§_-dc§));
                  if(_loc8_ || param2)
                  {
                     addr151:
                     this.§_-t6§(0);
                  }
                  return;
               }
               §§goto(addr62);
            }
            §§goto(addr65);
         }
         §§goto(addr62);
      }
      
      public function §_-t6§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && _loc3_))
         {
            §§push(param1);
            §§push(0);
            if(!_loc5_)
            {
               if(§§pop() < §§pop())
               {
                  if(_loc6_)
                  {
                     param1 = 0;
                     if(_loc6_ || _loc2_)
                     {
                        addr37:
                        if(param1 >= this.§_-ZJ§)
                        {
                           if(_loc6_)
                           {
                              §§goto(addr43);
                           }
                           §§goto(addr55);
                        }
                     }
                     §§goto(addr43);
                  }
                  §§goto(addr52);
               }
            }
            §§goto(addr37);
         }
         addr43:
         §§push(this.§_-ZJ§ - 1);
         if(!_loc5_)
         {
            param1 = §§pop();
            if(_loc6_)
            {
               addr52:
               this.§_-uw§ = param1;
               addr55:
               §§push(this.§_-uw§ * this.§_-dc§);
               if(!_loc5_)
               {
                  §§push(§§pop() * this.§_-fD§);
               }
            }
            §§goto(addr55);
         }
         var _loc2_:int = §§pop();
         §§push(_loc2_);
         if(!(_loc5_ && _loc2_))
         {
            §§push(int(§§pop() + this.§_-kk§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 0;
         while(true)
         {
            if(_loc4_ >= §_-yZ§.length)
            {
               if(_loc6_)
               {
                  §§push(§§findproperty(x));
                  §§push(this.§_-It§);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(§§pop() - this.§_-uw§ * this.§_-fK§);
                  }
                  §§pop().x = §§pop();
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§findproperty(y));
                     §§push(this.§_-9h§);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(§§pop() - this.§_-uw§ * this.§_-Vw§);
                     }
                     §§pop().y = §§pop();
                     break;
                  }
                  break;
               }
               break;
            }
            (§_-yZ§[_loc4_] as §_-Tk§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            if(!_loc6_)
            {
               break;
            }
            _loc4_++;
            if(!_loc6_)
            {
               break;
            }
         }
      }
   }
}
