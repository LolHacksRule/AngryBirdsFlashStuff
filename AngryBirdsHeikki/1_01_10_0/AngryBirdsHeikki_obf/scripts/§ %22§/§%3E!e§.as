package § "§
{
   public class §>!e§
   {
       
      
      protected var §6!,§:int;
      
      protected var §<!d§:int;
      
      protected var §'!C§:Number = 0;
      
      protected var §0o§:Number;
      
      protected var §^!3§:Boolean = false;
      
      public function §>!e§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§6!,§ = param1;
               while(true)
               {
                  this.§<!d§ = param2;
                  loop2:
                  while(!(_loc5_ && param1))
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§0o§ = Math.floor(param3 * 1000);
                        if(!(_loc5_ && param1))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function get §'!!§() : int
      {
         return this.§6!,§;
      }
      
      public function set §'!!§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6!,§ = param1;
         }
      }
      
      public function get targetId() : int
      {
         return this.§<!d§;
      }
      
      public function get §=!%§() : Boolean
      {
         return this.§^!3§;
      }
      
      public function set §=!%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^!3§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§'!C§);
            if(!_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§'!C§ = §§pop();
            while(this.§'!C§ >= this.§0o§)
            {
               if(!(_loc2_ || _loc2_))
               {
                  break;
               }
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr58);
            }
            §§push(-1);
            if(!_loc3_)
            {
               return §§pop();
            }
            §§goto(addr58);
         }
         addr58:
         return this.§<!d§;
      }
   }
}
