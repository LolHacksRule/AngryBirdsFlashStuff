package §<!0§
{
   public class §`v§
   {
       
      
      protected var §#!c§:Number = 0.0;
      
      protected var §9T§:Number = 0.0;
      
      protected var §%H§:Function = null;
      
      protected var §,s§:Boolean = true;
      
      protected var §2!H§:Boolean = true;
      
      protected var §=O§:Boolean = true;
      
      public function §`v§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§9T§ = param1;
            loop0:
            while(param1 < 0)
            {
               if(_loc3_ && this)
               {
                  do
                  {
                     break loop0;
                     §§pop().§#!c§ = §§pop();
                  }
                  while(_loc3_ && _loc3_);
                  
               }
               else
               {
                  addr89:
               }
               continue;
               if(!_loc3_)
               {
                  return;
               }
            }
            while(true)
            {
               §§push(this);
               §§push(this.§9T§);
               if(_loc2_)
               {
                  §§push(-§§pop());
                  if(!(_loc3_ && param1))
                  {
                     addr52:
                     §§push(§§pop() * 1000);
                  }
                  §§goto(addr54);
               }
               §§goto(addr52);
               §§goto(addr89);
            }
         }
         this.§9T§ = 0;
         §§goto(addr89);
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §[!#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,s§ = param1;
         }
      }
      
      public function set §8!F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§2!H§ = param1;
         }
      }
      
      public function get §8!F§() : Boolean
      {
         return this.§2!H§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.isCompleted)
            {
               if(_loc3_ || _loc3_)
               {
                  addr49:
                  this.§%H§ = param1;
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function set §'!-§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§=O§ = param1;
         }
      }
      
      public function get §'!-§() : Boolean
      {
         return this.§=O§;
      }
   }
}
