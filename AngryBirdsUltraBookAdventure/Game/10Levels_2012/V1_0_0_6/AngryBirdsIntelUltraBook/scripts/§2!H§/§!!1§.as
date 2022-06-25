package §2!H§
{
   public class §!!1§
   {
       
      
      protected var §[f§:Number = 0.0;
      
      protected var §@z§:Number = 0.0;
      
      protected var §3!U§:Function = null;
      
      protected var §6?§:Boolean = true;
      
      protected var §%!l§:Boolean = true;
      
      protected var §5!J§:Boolean = true;
      
      public function §!!1§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
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
            this.§@z§ = param1;
         }
         loop0:
         while(true)
         {
            if(param1 >= 0)
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§@z§);
                  if(!(_loc3_ && param1))
                  {
                     §§push(-§§pop());
                     if(!_loc3_)
                     {
                        addr52:
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§[f§ = §§pop();
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  §§goto(addr52);
               }
               return;
            }
            addr28:
            if(_loc2_ || _loc3_)
            {
               this.§@z§ = 0;
            }
         }
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §8!u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6?§ = param1;
         }
      }
      
      public function set §]! §(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§%!l§ = param1;
         }
      }
      
      public function get §]! §() : Boolean
      {
         return this.§%!l§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.isCompleted)
            {
               if(!_loc2_)
               {
                  addr24:
                  this.§3!U§ = param1;
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function set §7>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5!J§ = param1;
         }
      }
      
      public function get §7>§() : Boolean
      {
         return this.§5!J§;
      }
   }
}
