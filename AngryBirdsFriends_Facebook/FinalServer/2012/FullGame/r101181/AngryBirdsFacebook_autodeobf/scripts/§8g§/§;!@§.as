package §8g§
{
   public class §;!@§
   {
       
      
      protected var §09§:int;
      
      protected var §'"C§:int;
      
      protected var §]"1§:Number = 0;
      
      protected var §8!e§:Number;
      
      protected var § !h§:Boolean = false;
      
      public function §;!@§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super();
            loop0:
            do
            {
               this.§09§ = param1;
               while(true)
               {
                  this.§'"C§ = param2;
                  while(!_loc5_)
                  {
                     this.§8!e§ = Math.floor(param3 * 1000);
                     if(_loc4_ || param3)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc5_ && this);
            
         }
      }
      
      public function get §6>§() : int
      {
         return this.§09§;
      }
      
      public function set §6>§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§09§ = param1;
         }
      }
      
      public function get targetId() : int
      {
         return this.§'"C§;
      }
      
      public function get §>Z§() : Boolean
      {
         return this.§ !h§;
      }
      
      public function set §>Z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§ !h§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§]"1§);
            if(_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§]"1§ = §§pop();
         }
         while(this.§]"1§ >= this.§8!e§)
         {
            if(!_loc2_)
            {
               break;
            }
            if(_loc2_)
            {
               §§goto(addr48);
            }
         }
         §§push(-1);
         if(_loc2_)
         {
            return §§pop();
         }
         addr48:
         return this.§'"C§;
      }
   }
}
