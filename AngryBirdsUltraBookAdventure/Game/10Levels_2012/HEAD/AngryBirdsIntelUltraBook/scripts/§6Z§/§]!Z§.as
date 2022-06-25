package §6Z§
{
   public class §]!Z§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §&V§:Number = 0;
      
      protected var §[4§:Number;
      
      protected var §2!'§:Boolean = false;
      
      public function §]!Z§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super();
         }
         loop0:
         do
         {
            this.mId1 = param1;
            while(true)
            {
               this.mId2 = param2;
               while(!_loc4_)
               {
                  this.§[4§ = Math.floor(param3 * 1000);
                  if(!_loc4_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc5_ || this));
         
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function set id1(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mId1 = param1;
         }
      }
      
      public function get id2() : int
      {
         return this.mId2;
      }
      
      public function get §9O§() : Boolean
      {
         return this.§2!'§;
      }
      
      public function set §9O§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§2!'§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§&V§);
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§&V§ = §§pop();
            while(this.§&V§ >= this.§[4§)
            {
               if(_loc3_ || this)
               {
                  §§goto(addr62);
               }
               if(_loc3_)
               {
                  addr65:
                  break;
               }
            }
            §§push(-1);
            if(!_loc2_)
            {
               return §§pop();
            }
            addr62:
            return this.mId2;
         }
         §§goto(addr65);
      }
   }
}
