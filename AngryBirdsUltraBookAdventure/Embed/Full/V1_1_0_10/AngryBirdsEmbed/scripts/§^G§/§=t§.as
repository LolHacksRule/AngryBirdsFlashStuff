package §^G§
{
   public class §=t§
   {
       
      
      protected var §+6§:int;
      
      protected var §<2§:int;
      
      protected var §&!,§:Number = 0;
      
      protected var §&G§:Number;
      
      protected var §18§:Boolean = false;
      
      public function §=t§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            if(_loc5_ || param1)
            {
               this.§+6§ = param1;
               if(!_loc4_)
               {
                  addr43:
                  this.§<2§ = param2;
                  if(!_loc4_)
                  {
                     addr48:
                     this.§&G§ = Math.floor(param3 * 1000);
                  }
               }
               return;
            }
            §§goto(addr48);
         }
         §§goto(addr43);
      }
      
      public function get §#!?§() : int
      {
         return this.§+6§;
      }
      
      public function set §#!?§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+6§ = param1;
         }
      }
      
      public function get targetId() : int
      {
         return this.§<2§;
      }
      
      public function get §=e§() : int
      {
         return this.§&G§;
      }
      
      public function get §[!%§() : Boolean
      {
         return this.§18§;
      }
      
      public function set §[!%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§18§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§&!,§);
            if(_loc3_ || this)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§&!,§ = §§pop();
            if(!_loc2_)
            {
               if(this.§&!,§ >= this.§&G§)
               {
                  if(_loc3_ || param1)
                  {
                     addr66:
                     §§push(this.§<2§);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr71:
                     §§push(-1);
                  }
                  return §§pop();
               }
               §§goto(addr71);
            }
            §§goto(addr66);
         }
         §§goto(addr71);
      }
   }
}
