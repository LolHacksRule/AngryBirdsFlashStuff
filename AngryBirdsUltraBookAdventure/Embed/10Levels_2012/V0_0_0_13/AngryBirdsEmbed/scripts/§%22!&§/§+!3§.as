package §"!&§
{
   public class §+!3§
   {
       
      
      protected var §=,§:Number = 0.0;
      
      protected var §1!-§:Number = 0.0;
      
      protected var §8q§:Function = null;
      
      protected var §4L§:Boolean = true;
      
      protected var §'b§:Boolean = true;
      
      protected var §+L§:Boolean = true;
      
      public function §+!3§()
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
            this.§1!-§ = param1;
            if(_loc3_ || param1)
            {
               if(param1 < 0)
               {
                  if(_loc3_)
                  {
                     addr54:
                     this.§1!-§ = 0;
                     if(_loc2_)
                     {
                     }
                     §§goto(addr75);
                  }
               }
               §§push(this);
               §§push(this.§1!-§);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(-§§pop());
                  if(_loc3_)
                  {
                     §§push(§§pop() * 1000);
                  }
               }
               §§pop().§=,§ = §§pop();
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
      
      public function set §9V§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§4L§ = param1;
         }
      }
      
      public function set § D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'b§ = param1;
         }
      }
      
      public function get § D§() : Boolean
      {
         return this.§'b§;
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
                  this.§8q§ = param1;
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function set §>!#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+L§ = param1;
         }
      }
      
      public function get §>!#§() : Boolean
      {
         return this.§+L§;
      }
   }
}
