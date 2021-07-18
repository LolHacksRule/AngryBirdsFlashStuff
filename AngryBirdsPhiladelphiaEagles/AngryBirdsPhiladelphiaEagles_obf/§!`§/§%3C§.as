package §!`§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §<§ extends EventDispatcher implements §%9§
   {
       
      
      private var §`c§:Number = 0;
      
      private var §5P§:Number;
      
      private var §>4§:Function;
      
      private var §@>§:Array;
      
      private var §`!F§:int = 1;
      
      public function §<§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super();
            while(true)
            {
               this.§>4§ = param1;
               while(!_loc5_)
               {
                  this.§5P§ = Math.max(param2,0.0001);
                  do
                  {
                     this.§@>§ = param3;
                  }
                  while(_loc5_ && param1);
                  
                  if(!(_loc5_ && param3))
                  {
                     return;
                     addr66:
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§`c§);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         this.§`c§ = Math.min(this.§5P§,this.§`c§ + param1);
         §§push(_loc2_);
         loop0:
         while(true)
         {
            §§push(this.§5P§);
            addr154:
            while(true)
            {
               §§push(§§pop() < §§pop());
               addr155:
               addr141:
               while(§§pop())
               {
                  continue loop0;
               }
               if(§§pop())
               {
                  addr143:
                  this.§>4§.apply(null,this.§@>§);
                  if(this.§`!F§ > 1)
                  {
                     §§goto(addr89);
                  }
                  dispatchEvent(new Event(Event.§,m§));
                  if(!(_loc4_ && _loc2_))
                  {
                     if(_loc4_)
                     {
                        addr89:
                        this.§`!F§ = this.§`!F§ - 1;
                        addr94:
                        if(_loc4_ && param1)
                        {
                           §§goto(addr143);
                        }
                        this.§`c§ = 0;
                        addr83:
                        §§push(this);
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           §§push(param1);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§goto(addr65);
                           }
                           §§push(§§pop() - §§pop());
                        }
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr94);
               }
               addr65:
               §§push(§§pop() + §§pop());
               if(!_loc4_)
               {
                  §§push(this.§5P§);
               }
               §§pop().advanceTime(§§pop());
               if(!_loc3_)
               {
                  §§goto(addr83);
               }
               return;
            }
         }
      }
      
      public function get §,y§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§`!F§ == 1);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     addr40:
                     return this.§`c§ >= this.§5P§;
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public function get §[@§() : Number
      {
         return this.§5P§;
      }
      
      public function get §=d§() : Number
      {
         return this.§`c§;
      }
      
      public function get §%!J§() : int
      {
         return this.§`!F§;
      }
      
      public function set §%!J§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§`!F§ = param1;
         }
      }
   }
}
