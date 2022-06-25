package §[!+§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §9F§ extends EventDispatcher implements §"N§
   {
       
      
      private var §?-§:Number = 0;
      
      private var §1!J§:Number;
      
      private var §?!J§:Function;
      
      private var §%!B§:Array;
      
      private var §%!A§:int = 1;
      
      public function §9F§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super();
            if(_loc4_ || param1)
            {
               this.§?!J§ = param1;
               if(_loc4_)
               {
                  this.§1!J§ = Math.max(param2,0.0001);
                  if(_loc5_ && param2)
                  {
                  }
                  §§goto(addr73);
               }
               this.§%!B§ = param3;
            }
         }
         addr73:
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§?-§);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         this.§?-§ = Math.min(this.§1!J§,this.§?-§ + param1);
         if(_loc4_ || _loc3_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push(this.§1!J§);
               if(_loc4_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc4_ || this)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           addr59:
                           §§pop();
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr82);
                           }
                           §§goto(addr91);
                        }
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr59);
               }
               §§goto(addr82);
            }
            addr82:
            if(this.§?-§ >= this.§1!J§)
            {
               this.§?!J§.apply(null,this.§%!B§);
               if(!_loc3_)
               {
                  addr91:
                  if(this.§%!A§ > 1)
                  {
                     if(!_loc4_)
                     {
                     }
                  }
                  else
                  {
                     dispatchEvent(new Event(Event.§'D§));
                  }
                  §§goto(addr172);
               }
               this.§%!A§ = this.§%!A§ - 1;
               if(!(_loc3_ && this))
               {
                  this.§?-§ = 0;
                  if(_loc4_ || this)
                  {
                     §§push(this);
                     §§push(_loc2_);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(param1);
                        if(!(_loc3_ && this))
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc3_ && _loc2_))
                           {
                              addr156:
                              §§push(§§pop() - this.§1!J§);
                           }
                           §§pop().advanceTime(§§pop());
                           if(_loc4_ || _loc2_)
                           {
                              addr165:
                           }
                           §§goto(addr172);
                        }
                     }
                     §§goto(addr156);
                  }
                  §§goto(addr165);
               }
            }
            addr172:
            return;
         }
         §§goto(addr165);
      }
      
      public function get §^l§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§%!A§ == 1);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     addr49:
                     §§pop();
                     §§push(this.§?-§ >= this.§1!J§);
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr49);
      }
      
      public function get §9t§() : Number
      {
         return this.§1!J§;
      }
      
      public function get currentTime() : Number
      {
         return this.§?-§;
      }
      
      public function get §"j§() : int
      {
         return this.§%!A§;
      }
      
      public function set §"j§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%!A§ = param1;
         }
      }
   }
}
