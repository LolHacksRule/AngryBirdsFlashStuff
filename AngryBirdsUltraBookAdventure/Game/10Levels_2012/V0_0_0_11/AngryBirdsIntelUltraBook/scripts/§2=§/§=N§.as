package §2=§
{
   public class §=N§
   {
       
      
      protected var §2+§:Number = 0.0;
      
      protected var §'r§:Number = 0.0;
      
      protected var §>!@§:Function = null;
      
      protected var §+j§:Boolean = true;
      
      protected var §+D§:Boolean = true;
      
      protected var §""§:Boolean = true;
      
      public function §=N§()
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'r§ = param1;
         }
         loop0:
         do
         {
            if(param1 < 0)
            {
               while(true)
               {
                  this.§'r§ = 0;
                  addr84:
                  while(true)
                  {
                  }
                  addr67:
                  if(_loc2_ || _loc2_)
                  {
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               §§push(this);
               §§push(this.§'r§);
               if(_loc2_ || _loc2_)
               {
                  §§push(-§§pop());
                  if(!_loc3_)
                  {
                     addr47:
                     §§push(§§pop() * 1000);
                  }
                  §§pop().§2+§ = §§pop();
                  if(!(_loc2_ || param1))
                  {
                     continue;
                  }
                  §§goto(addr67);
               }
               §§goto(addr47);
            }
         }
         while(!_loc2_);
         
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §8!,§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+j§ = param1;
         }
      }
      
      public function set §2!_§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§+D§ = param1;
         }
      }
      
      public function get §2!_§() : Boolean
      {
         return this.§+D§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.isCompleted);
            if(!_loc2_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!_loc2_)
               {
                  addr27:
                  this.§>!@§ = param1;
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function set §-b§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§""§ = param1;
         }
      }
      
      public function get §-b§() : Boolean
      {
         return this.§""§;
      }
   }
}
