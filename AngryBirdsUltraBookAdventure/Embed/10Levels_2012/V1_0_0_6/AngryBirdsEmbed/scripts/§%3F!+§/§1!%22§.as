package §?!+§
{
   public class §1!"§
   {
       
      
      protected var §9!8§:Number = 0.0;
      
      protected var §0! §:Number = 0.0;
      
      protected var §"3§:Function = null;
      
      protected var §[d§:Boolean = true;
      
      protected var §-S§:Boolean = true;
      
      protected var §<!8§:Boolean = true;
      
      public function §1!"§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
            this.§0! § = param1;
            if(!_loc2_)
            {
               addr34:
               if(param1 < 0)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr49);
                  }
               }
               §§goto(addr59);
            }
            addr49:
            this.§0! § = 0;
            if(_loc3_ || this)
            {
               addr59:
               §§push(this);
               §§push(this.§0! §);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(-§§pop());
                  if(_loc3_)
                  {
                     §§push(§§pop() * 1000);
                  }
               }
               §§pop().§9!8§ = §§pop();
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §,!@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§[d§ = param1;
         }
      }
      
      public function set §'<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§-S§ = param1;
         }
      }
      
      public function get §'<§() : Boolean
      {
         return this.§-S§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.isCompleted)
            {
               if(_loc3_ || _loc2_)
               {
                  this.§"3§ = param1;
               }
            }
         }
      }
      
      public function set §5u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§<!8§ = param1;
         }
      }
      
      public function get §5u§() : Boolean
      {
         return this.§<!8§;
      }
   }
}
