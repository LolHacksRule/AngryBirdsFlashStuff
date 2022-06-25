package §^X§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §;$§ extends EventDispatcher implements §5!D§
   {
       
      
      private var §@Q§:Number = 0;
      
      private var §#c§:Number;
      
      private var §8P§:Function;
      
      private var §<'§:Array;
      
      private var §14§:int = 1;
      
      public function §;$§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            if(!(_loc5_ && param2))
            {
               addr47:
               this.§8P§ = param1;
               if(!(_loc5_ && param2))
               {
                  §§goto(addr57);
               }
               §§goto(addr70);
            }
            addr57:
            this.§#c§ = Math.max(param2,0.0001);
            if(_loc4_ || param3)
            {
               addr70:
               this.§<'§ = param3;
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§@Q§);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         this.§@Q§ = Math.min(this.§#c§,this.§@Q§ + param1);
         §§push(_loc2_);
         if(!(_loc4_ && param1))
         {
            §§push(this.§#c§);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() < §§pop());
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || param1)
                     {
                        §§pop();
                        addr76:
                        §§push(this.§@Q§ >= this.§#c§);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     this.§8P§.apply(null,this.§<'§);
                     if(_loc3_)
                     {
                        if(this.§14§ > 1)
                        {
                           addr92:
                           this.§14§ = this.§14§ - 1;
                        }
                        else
                        {
                           dispatchEvent(new Event(Event.§^#§));
                           §§goto(addr146);
                        }
                        §§goto(addr146);
                     }
                     this.§@Q§ = 0;
                     §§push(this);
                     §§push(_loc2_);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(param1);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc3_ || _loc3_)
                           {
                              addr137:
                              §§push(§§pop() - this.§#c§);
                           }
                           §§pop().advanceTime(§§pop());
                           §§goto(addr146);
                        }
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr92);
               }
               addr146:
               return;
            }
         }
         §§goto(addr76);
      }
      
      public function get §&+§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§14§ == 1);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     addr45:
                     §§push(this.§@Q§ >= this.§#c§);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr45);
      }
      
      public function get §2S§() : Number
      {
         return this.§#c§;
      }
      
      public function get currentTime() : Number
      {
         return this.§@Q§;
      }
      
      public function get include() : int
      {
         return this.§14§;
      }
      
      public function set include(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§14§ = param1;
         }
      }
   }
}
