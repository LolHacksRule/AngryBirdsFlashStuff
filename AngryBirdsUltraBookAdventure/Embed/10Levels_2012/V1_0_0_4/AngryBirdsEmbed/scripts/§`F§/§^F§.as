package §`F§
{
   public class §^F§
   {
       
      
      protected var §3j§:Number = 0.0;
      
      protected var §?-§:Number = 0.0;
      
      protected var §]!8§:Function = null;
      
      protected var §4v§:Boolean = true;
      
      protected var §<n§:Boolean = true;
      
      protected var §,!D§:Boolean = true;
      
      public function §^F§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?-§ = param1;
            if(_loc3_ || param1)
            {
               if(param1 < 0)
               {
                  if(_loc3_)
                  {
                     addr54:
                     this.§?-§ = 0;
                     if(_loc2_)
                     {
                     }
                     §§goto(addr75);
                  }
               }
               §§push(this);
               §§push(this.§?-§);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(-§§pop());
                  if(_loc3_)
                  {
                     §§push(§§pop() * 1000);
                  }
               }
               §§pop().§3j§ = §§pop();
            }
            addr75:
            return;
         }
         §§goto(addr54);
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §-Q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§4v§ = param1;
         }
      }
      
      public function set §?!+§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<n§ = param1;
         }
      }
      
      public function get §?!+§() : Boolean
      {
         return this.§<n§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!this.isCompleted)
            {
               if(_loc2_)
               {
                  addr28:
                  this.§]!8§ = param1;
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function set §^g§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,!D§ = param1;
         }
      }
      
      public function get §^g§() : Boolean
      {
         return this.§,!D§;
      }
   }
}
