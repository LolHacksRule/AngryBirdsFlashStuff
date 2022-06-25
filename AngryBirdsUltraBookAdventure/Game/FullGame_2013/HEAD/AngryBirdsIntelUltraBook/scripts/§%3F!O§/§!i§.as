package §?!O§
{
   public class §!i§
   {
       
      
      protected var §28§:Number = 0.0;
      
      protected var §^!5§:Number = 0.0;
      
      protected var §3!K§:Function = null;
      
      protected var §?4§:Boolean = true;
      
      protected var §,6§:Boolean = true;
      
      protected var §!!J§:Boolean = true;
      
      public function §!i§()
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
         if(_loc2_ || _loc3_)
         {
            this.§^!5§ = param1;
            loop0:
            while(true)
            {
               if(param1 < 0)
               {
                  addr79:
                  while(true)
                  {
                     this.§^!5§ = 0;
                     addr82:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
                  addr79:
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§^!5§);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(-§§pop());
                     if(_loc2_ || this)
                     {
                        addr67:
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§28§ = §§pop();
                     if(!_loc2_)
                     {
                        continue;
                     }
                     if(!_loc3_)
                     {
                        return;
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr67);
               }
            }
         }
         §§goto(addr79);
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §function§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§?4§ = param1;
         }
      }
      
      public function set §1!,§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§,6§ = param1;
         }
      }
      
      public function get §1!,§() : Boolean
      {
         return this.§,6§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.isCompleted);
            if(!_loc2_)
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc3_ || _loc3_)
               {
                  this.§3!K§ = param1;
               }
            }
         }
      }
      
      public function set §=e§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!!J§ = param1;
         }
      }
      
      public function get §=e§() : Boolean
      {
         return this.§!!J§;
      }
   }
}
