package § M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §if§ extends EventDispatcher implements §]-§
   {
       
      
      private var §-r§:Number = 0;
      
      private var §98§:Number;
      
      private var §>!+§:Function;
      
      private var §00§:Array;
      
      private var §continue§:int = 1;
      
      public function §if§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super();
            if(!(_loc5_ && param3))
            {
               this.§>!+§ = param1;
               if(!_loc5_)
               {
                  this.§98§ = Math.max(param2,0.0001);
                  if(!(_loc5_ && param1))
                  {
                     addr70:
                     this.§00§ = param3;
                  }
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§-r§);
         if(!(_loc3_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         this.§-r§ = Math.min(this.§98§,this.§-r§ + param1);
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc2_)
            {
               §§push(this.§98§);
               if(!_loc3_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           addr59:
                           §§pop();
                           if(_loc4_)
                           {
                              §§goto(addr77);
                           }
                           §§goto(addr109);
                        }
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr59);
               }
               §§goto(addr77);
            }
            addr77:
            if(this.§-r§ >= this.§98§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr85:
                  this.§>!+§.apply(null,this.§00§);
                  if(_loc4_)
                  {
                     if(this.§continue§ <= 1)
                     {
                        dispatchEvent(new Event(Event.§1E§));
                     }
                     §§goto(addr150);
                  }
                  this.§-r§ = 0;
                  §§goto(addr109);
               }
               this.§continue§ = this.§continue§ - 1;
               if(!(_loc3_ && _loc3_))
               {
                  addr109:
                  §§push(this);
                  §§push(_loc2_);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§goto(addr140);
                     }
                     §§push(§§pop() - §§pop());
                  }
                  addr140:
                  §§push(§§pop() + §§pop());
                  if(_loc4_)
                  {
                     §§push(this.§98§);
                  }
                  §§pop().advanceTime(§§pop());
                  if(!_loc3_)
                  {
                     addr143:
                  }
                  §§goto(addr150);
               }
               §§goto(addr143);
            }
            addr150:
            return;
         }
         §§goto(addr85);
      }
      
      public function get §@!+§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§continue§ == 1);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr64:
                     §§pop();
                     §§push(this.§-r§ >= this.§98§);
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr64);
      }
      
      public function get §=!,§() : Number
      {
         return this.§98§;
      }
      
      public function get currentTime() : Number
      {
         return this.§-r§;
      }
      
      public function get §7!!§() : int
      {
         return this.§continue§;
      }
      
      public function set §7!!§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§continue§ = param1;
         }
      }
   }
}
