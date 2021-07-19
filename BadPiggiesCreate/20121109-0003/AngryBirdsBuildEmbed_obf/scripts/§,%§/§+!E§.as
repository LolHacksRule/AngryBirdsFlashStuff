package §,%§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §+!E§ extends EventDispatcher implements §&!Z§
   {
       
      
      private var §<!J§:Number = 0;
      
      private var § @§:Number;
      
      private var §%!P§:Function;
      
      private var §5§:Array;
      
      private var §[!a§:int = 1;
      
      public function §+!E§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super();
            if(!_loc5_)
            {
               this.§%!P§ = param1;
               if(_loc4_)
               {
                  addr42:
                  this.§ @§ = Math.max(param2,0.0001);
                  if(_loc4_)
                  {
                     this.§5§ = param3;
                  }
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§<!J§);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         this.§<!J§ = Math.min(this.§ @§,this.§<!J§ + param1);
         if(_loc3_ || param1)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc3_)
            {
               §§push(this.§ @§);
               if(_loc3_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc3_ || this)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           addr63:
                           §§pop();
                           §§push(this.§<!J§ >= this.§ @§);
                        }
                     }
                     if(§§pop())
                     {
                        this.§%!P§.apply(null,this.§5§);
                        if(_loc3_ || _loc3_)
                        {
                           if(this.§[!a§ > 1)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 this.§[!a§ = this.§[!a§ - 1;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr116:
                                    this.§<!J§ = 0;
                                    if(_loc3_)
                                    {
                                       §§push(this);
                                       §§push(_loc2_);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(param1);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc3_ || this)
                                             {
                                                addr153:
                                                §§push(§§pop() - this.§ @§);
                                             }
                                             §§pop().advanceTime(§§pop());
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                addr169:
                                                return;
                                                addr162:
                                             }
                                             §§goto(addr169);
                                          }
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr169);
                                 }
                                 §§goto(addr162);
                              }
                           }
                           else
                           {
                              dispatchEvent(new Event(Event.§%%§));
                              §§goto(addr169);
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr169);
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function get §`Q§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§[!a§ == 1);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     addr50:
                     §§push(this.§<!J§ >= this.§ @§);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr50);
      }
      
      public function get §=W§() : Number
      {
         return this.§ @§;
      }
      
      public function get currentTime() : Number
      {
         return this.§<!J§;
      }
      
      public function get §-!n§() : int
      {
         return this.§[!a§;
      }
      
      public function set §-!n§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[!a§ = param1;
         }
      }
   }
}
