package § ;§
{
   public class §2^§
   {
       
      
      protected var §"!#§:Number = 0.0;
      
      protected var §;W§:Number = 0.0;
      
      protected var §-!1§:Function = null;
      
      protected var §6,§:Boolean = true;
      
      protected var each:Boolean = true;
      
      protected var §^!>§:Boolean = true;
      
      public function §2^§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public function set delay(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§;W§ = param1;
         }
         do
         {
            if(param1 < 0)
            {
               if(!_loc2_)
               {
                  this.§;W§ = 0;
               }
               while(true)
               {
               }
               addr80:
            }
            while(true)
            {
               §§push(this);
               §§push(this.§;W§);
               if(_loc3_ || param1)
               {
                  §§push(-§§pop());
                  if(!_loc2_)
                  {
                     addr53:
                     §§push(§§pop() * 1000);
                  }
                  §§pop().§"!#§ = §§pop();
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue;
               }
               §§goto(addr53);
            }
         }
         while(_loc2_);
         
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function set §[!6§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§6,§ = param1;
         }
      }
      
      public function set §#Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.each = param1;
         }
      }
      
      public function get §#Y§() : Boolean
      {
         return this.each;
      }
      
      public function set onComplete(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.isCompleted)
            {
               if(_loc2_)
               {
                  addr33:
                  this.§-!1§ = param1;
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      public function set §0r§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§^!>§ = param1;
         }
      }
      
      public function get §0r§() : Boolean
      {
         return this.§^!>§;
      }
   }
}
