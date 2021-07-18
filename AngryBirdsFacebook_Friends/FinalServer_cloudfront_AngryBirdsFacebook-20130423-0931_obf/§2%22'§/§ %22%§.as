package §2"'§
{
   public class § "%§
   {
       
      
      protected var §"!M§:Number = 0.0;
      
      protected var §!"U§:Number = 0.0;
      
      protected var §[!r§:Function = null;
      
      protected var §-$§:Boolean = true;
      
      protected var §4!%§:Boolean = true;
      
      protected var §1!>§:Boolean = true;
      
      public function § "%§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§!"U§ = param1;
            loop0:
            while(param1 < 0)
            {
               if(!(_loc2_ && _loc2_))
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  this.§!"U§ = 0;
               }
               while(true)
               {
                  break loop0;
               }
               return;
            }
            while(true)
            {
               §§push(this);
               §§push(this.§!"U§);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(-§§pop());
                  if(_loc3_ || param1)
                  {
                     §§push(§§pop() * 1000);
                  }
               }
               §§pop().§"!M§ = §§pop();
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
            }
         }
         §§goto(addr78);
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §3!S§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§-$§ = param1;
         }
      }
      
      public function set §="6§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§4!%§ = param1;
         }
      }
      
      public function get §="6§() : Boolean
      {
         return this.§4!%§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.isCompleted)
            {
               if(!_loc2_)
               {
                  this.§[!r§ = param1;
               }
            }
         }
      }
      
      public function set §%!j§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§1!>§ = param1;
         }
      }
      
      public function get §%!j§() : Boolean
      {
         return this.§1!>§;
      }
   }
}
