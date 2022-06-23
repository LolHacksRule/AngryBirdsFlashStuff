package §#P§
{
   public class §1!?§
   {
       
      
      protected var §^f§:Number = 0.0;
      
      protected var §40§:Number = 0.0;
      
      protected var §7!%§:Function = null;
      
      protected var §=!?§:Boolean = true;
      
      protected var §8[§:Boolean = true;
      
      protected var §<!D§:Boolean = true;
      
      public function §1!?§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§40§ = param1;
            if(!(_loc3_ && _loc3_))
            {
               if(param1 < 0)
               {
                  if(_loc2_)
                  {
                     addr58:
                     this.§40§ = 0;
                     if(_loc3_ && _loc2_)
                     {
                     }
                  }
                  §§goto(addr84);
               }
               §§push(this);
               §§push(this.§40§);
               if(!_loc3_)
               {
                  §§push(-§§pop());
                  if(_loc2_ || _loc3_)
                  {
                     addr81:
                     §§push(§§pop() * 1000);
                  }
                  §§pop().§^f§ = §§pop();
                  §§goto(addr84);
               }
               §§goto(addr81);
            }
            addr84:
            return;
         }
         §§goto(addr58);
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §;y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§=!?§ = param1;
         }
      }
      
      public function set §'%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§8[§ = param1;
         }
      }
      
      public function get §'%§() : Boolean
      {
         return this.§8[§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!this.isCompleted)
            {
               if(_loc2_)
               {
                  this.§7!%§ = param1;
               }
            }
         }
      }
      
      public function set §'p§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<!D§ = param1;
         }
      }
      
      public function get §'p§() : Boolean
      {
         return this.§<!D§;
      }
   }
}
