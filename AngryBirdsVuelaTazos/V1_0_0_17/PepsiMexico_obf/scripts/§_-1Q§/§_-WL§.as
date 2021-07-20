package §_-1Q§
{
   import flash.display.DisplayObject;
   
   public class §_-WL§ implements §_-G7§
   {
       
      
      private var §_-z-§:Array;
      
      private var §_-QF§:Number;
      
      private var §_-CI§:DisplayObject;
      
      private var §_-jL§:Boolean = false;
      
      public function §_-WL§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               this.§_-QF§ = 0;
               if(_loc1_ || this)
               {
               }
               §§goto(addr51);
            }
            this.§_-z-§ = [];
         }
         addr51:
      }
      
      public function add(param1:§_-G7§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1 == null);
            if(_loc2_ || param1)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                     }
                  }
                  §§goto(addr62);
               }
               §§pop();
               if(_loc2_ || param1)
               {
                  §§push(this.§_-z-§);
                  if(_loc2_)
                  {
                     addr62:
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           addr67:
                           this.§_-z-§.push(param1);
                        }
                        §§goto(addr69);
                     }
                     addr69:
                     return;
                     §§push(§§pop().indexOf(param1) == -1);
                  }
               }
               §§goto(addr67);
            }
            §§goto(addr62);
         }
         §§goto(addr67);
      }
      
      public function set §_-ra§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§_-jL§ = param1;
         }
      }
      
      public function §_-TM§(param1:§_-G7§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§_-z-§.indexOf(param1);
         if(!_loc4_)
         {
            if(_loc2_ != -1)
            {
               if(!(_loc4_ && _loc2_))
               {
                  addr45:
                  this.§_-z-§.splice(_loc2_,1);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §_-Aa§(param1:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§pop().§§slot[1] = param1;
            if(!(_loc4_ && _loc2_))
            {
               §§goto(addr37);
            }
            §§goto(addr42);
         }
         addr37:
         if(target == null)
         {
            if(_loc3_)
            {
               addr42:
               return;
            }
         }
         this.§_-z-§ = this.§_-z-§.filter(function(param1:Object, param2:int, param3:Array):Boolean
         {
            var _loc4_:*;
            if((_loc4_ = param1 as §_-kt§) && _loc4_.target == target)
            {
               return false;
            }
            return true;
         });
      }
      
      public function §_-Y0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-z-§ = [];
         }
      }
      
      public function §_-F-§(param1:Function, param2:Number, ... rest) : §_-ib§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(param1 == null)
            {
               if(_loc6_ || param1)
               {
                  return null;
               }
            }
         }
         var _loc4_:§_-ib§ = new §_-ib§(param1,param2,rest);
         if(!_loc5_)
         {
            this.add(_loc4_);
         }
         return _loc4_;
      }
      
      public function §_-IE§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_ || _loc2_)
         {
            §§pop().§§slot[3] = null;
            if(!_loc6_)
            {
               §§push(§§newactivation());
               if(!(_loc6_ && param1))
               {
                  §§goto(addr38);
               }
               addr74:
               var objectCopy:Array = this.§_-z-§.concat();
               §§goto(addr79);
            }
            addr79:
            var _loc3_:int = 0;
            var _loc4_:* = objectCopy;
            while(§§hasnext(_loc4_,_loc3_))
            {
               §§push(§§newactivation());
               if(!(_loc6_ && param1))
               {
                  §§pop().§§slot[3] = §§nextvalue(_loc3_,_loc4_);
                  if(!_loc5_)
                  {
                     continue;
                  }
                  §§push(§§newactivation());
               }
               §§pop().§§slot[3].§_-IE§(time);
            }
            if(!(_loc6_ && this))
            {
               this.§_-z-§ = this.§_-z-§.filter(function(param1:§_-G7§, param2:int, param3:Array):Boolean
               {
                  return !param1.§_-ZY§;
               });
            }
            return;
         }
         addr38:
         §§pop().§§slot[1] = param1;
         if(this.§_-jL§)
         {
            if(_loc5_ || this)
            {
               return;
            }
         }
         else
         {
            §§push(this);
            §§push(this.§_-QF§);
            if(_loc5_)
            {
               §§push(§§pop() + time);
            }
            §§pop().§_-QF§ = §§pop();
            if(this.§_-z-§.length != 0)
            {
               §§goto(addr74);
            }
         }
      }
      
      public function get §_-ZY§() : Boolean
      {
         return false;
      }
      
      public function get §_-vY§() : Number
      {
         return this.§_-QF§;
      }
   }
}
