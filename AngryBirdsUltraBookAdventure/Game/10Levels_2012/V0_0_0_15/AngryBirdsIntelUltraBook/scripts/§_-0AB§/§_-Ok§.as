package §_-0AB§
{
   public class §_-Ok§
   {
       
      
      protected var §_-063§:Number = 0.0;
      
      protected var §_-kv§:Number = 0.0;
      
      protected var §_-9L§:Function = null;
      
      protected var §_-i-§:Boolean = true;
      
      protected var §_-ht§:Boolean = true;
      
      protected var §_-W2§:Boolean = true;
      
      public function §_-Ok§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-kv§ = param1;
            loop0:
            while(true)
            {
               if(param1 >= 0)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§_-kv§);
                     if(_loc3_)
                     {
                        §§push(-§§pop());
                        if(!_loc2_)
                        {
                           §§push(§§pop() * 1000);
                        }
                     }
                     §§pop().§_-063§ = §§pop();
                     if(_loc3_)
                     {
                        addr58:
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     addr80:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr80);
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §_-JH§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§_-i-§ = param1;
         }
      }
      
      public function set §_-04E§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§_-ht§ = param1;
         }
      }
      
      public function get §_-04E§() : Boolean
      {
         return this.§_-ht§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!this.isCompleted)
            {
               if(!_loc3_)
               {
                  this.§_-9L§ = param1;
               }
            }
         }
      }
      
      public function set §_-l0§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-W2§ = param1;
         }
      }
      
      public function get §_-l0§() : Boolean
      {
         return this.§_-W2§;
      }
   }
}
