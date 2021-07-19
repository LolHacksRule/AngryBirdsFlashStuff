package §'V§
{
   public class §8a§
   {
       
      
      protected var §9R§:Number = 0.0;
      
      protected var §&l§:Number = 0.0;
      
      protected var §,h§:Function = null;
      
      protected var §!!p§:Boolean = true;
      
      protected var §]!4§:Boolean = true;
      
      protected var §;!n§:Boolean = true;
      
      public function §8a§()
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&l§ = param1;
            loop0:
            while(param1 < 0)
            {
               if(!(_loc3_ || _loc2_))
               {
                  do
                  {
                     break loop0;
                     §§pop().§9R§ = §§pop();
                  }
                  while(_loc2_);
                  
               }
               else
               {
                  addr80:
               }
               continue;
               if(!_loc2_)
               {
                  return;
               }
            }
            while(true)
            {
               §§push(this);
               §§push(this.§&l§);
               if(!_loc2_)
               {
                  §§push(-§§pop());
                  if(_loc3_ || _loc2_)
                  {
                     addr48:
                     §§push(§§pop() * 1000);
                  }
                  §§goto(addr50);
               }
               §§goto(addr48);
               §§goto(addr80);
            }
         }
         this.§&l§ = 0;
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
      
      public function set §?p§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§!!p§ = param1;
         }
      }
      
      public function set §5"6§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§]!4§ = param1;
         }
      }
      
      public function get §5"6§() : Boolean
      {
         return this.§]!4§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(!this.isCompleted)
            {
               if(!_loc3_)
               {
                  this.§,h§ = param1;
               }
            }
         }
      }
      
      public function set §"H§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;!n§ = param1;
         }
      }
      
      public function get §"H§() : Boolean
      {
         return this.§;!n§;
      }
   }
}
