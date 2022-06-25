package § !x§
{
   public class §2k§
   {
       
      
      protected var §?Q§:Number = 0.0;
      
      protected var §%U§:Number = 0.0;
      
      protected var §9!0§:Function = null;
      
      protected var §0b§:Boolean = true;
      
      protected var §#s§:Boolean = true;
      
      protected var §;!6§:Boolean = true;
      
      public function §2k§()
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
         if(_loc3_ || this)
         {
            this.§%U§ = param1;
            loop0:
            while(true)
            {
               if(param1 < 0)
               {
                  addr80:
                  while(true)
                  {
                     this.§%U§ = 0;
                     addr83:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
                  addr80:
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§%U§);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(-§§pop());
                     if(!(_loc2_ && param1))
                     {
                        addr68:
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§?Q§ = §§pop();
                     if(!_loc3_)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        return;
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr68);
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
      
      public function set §[!j§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0b§ = param1;
         }
      }
      
      public function set §+!^§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#s§ = param1;
         }
      }
      
      public function get §+!^§() : Boolean
      {
         return this.§#s§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!this.isCompleted)
            {
               if(_loc3_ || _loc3_)
               {
                  addr44:
                  this.§9!0§ = param1;
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function set §<!@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;!6§ = param1;
         }
      }
      
      public function get §<!@§() : Boolean
      {
         return this.§;!6§;
      }
   }
}
