package §[!P§
{
   public class §[-§
   {
       
      
      protected var §?;§:int;
      
      protected var §4J§:int;
      
      protected var §3R§:Number = 0;
      
      protected var §6!N§:Number;
      
      protected var §]"6§:Boolean = false;
      
      public function §[-§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§?;§ = param1;
            }
            addr76:
         }
         loop1:
         while(true)
         {
            this.§4J§ = param2;
            while(!(_loc4_ && param2))
            {
               this.§6!N§ = Math.floor(param3 * 1000);
               if(_loc4_)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  break loop1;
               }
               §§goto(addr76);
            }
         }
      }
      
      public function get §86§() : int
      {
         return this.§?;§;
      }
      
      public function set §86§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?;§ = param1;
         }
      }
      
      public function get targetId() : int
      {
         return this.§4J§;
      }
      
      public function get §4x§() : Boolean
      {
         return this.§]"6§;
      }
      
      public function set §4x§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§]"6§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§3R§);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§3R§ = §§pop();
         }
         while(this.§3R§ >= this.§6!N§)
         {
            if(_loc2_)
            {
               §§goto(addr51);
            }
            if(!_loc3_)
            {
               break;
            }
         }
         §§push(-1);
         if(!(_loc3_ && _loc3_))
         {
            return §§pop();
         }
         addr51:
         return this.§4J§;
      }
   }
}
