package §&"'§
{
   public class §1!X§
   {
       
      
      protected var §7A§:Number = 0.0;
      
      protected var §0!<§:Number = 0.0;
      
      protected var §&6§:Function = null;
      
      protected var §<!y§:Boolean = true;
      
      protected var §-!w§:Boolean = true;
      
      protected var §4!Y§:Boolean = true;
      
      public function §1!X§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§0!<§ = param1;
            loop0:
            while(param1 < 0)
            {
               if(_loc2_)
               {
                  do
                  {
                     break loop0;
                     §§pop().§7A§ = §§pop();
                  }
                  while(_loc2_ && _loc2_);
                  
               }
               else
               {
                  addr90:
               }
               continue;
               if(_loc3_)
               {
                  return;
               }
            }
            while(true)
            {
               §§push(this);
               §§push(this.§0!<§);
               if(_loc3_ || this)
               {
                  §§push(-§§pop());
                  if(_loc3_ || _loc2_)
                  {
                     addr58:
                     §§push(§§pop() * 1000);
                  }
                  §§goto(addr60);
               }
               §§goto(addr58);
               §§goto(addr90);
            }
         }
         this.§0!<§ = 0;
         §§goto(addr90);
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §#!5§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§<!y§ = param1;
         }
      }
      
      public function set §?V§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-!w§ = param1;
         }
      }
      
      public function get §?V§() : Boolean
      {
         return this.§-!w§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.isCompleted)
            {
               if(!_loc3_)
               {
                  addr33:
                  this.§&6§ = param1;
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function set §!^§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§4!Y§ = param1;
         }
      }
      
      public function get §!^§() : Boolean
      {
         return this.§4!Y§;
      }
   }
}
