package §_-by§
{
   public class §_-023§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §_-0CK§:Number = 0;
      
      protected var §_-0Dr§:Number;
      
      protected var §_-mD§:Boolean = false;
      
      public function §_-023§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super();
            while(true)
            {
               this.mId1 = param1;
               while(_loc4_ || param1)
               {
                  this.mId2 = param2;
                  do
                  {
                     this.§_-0Dr§ = Math.floor(param3 * 1000);
                  }
                  while(_loc5_ && param3);
                  
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  return;
                  addr70:
               }
            }
         }
         §§goto(addr70);
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function set id1(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.mId1 = param1;
         }
      }
      
      public function get id2() : int
      {
         return this.mId2;
      }
      
      public function get §_-Ux§() : Boolean
      {
         return this.§_-mD§;
      }
      
      public function set §_-Ux§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§_-mD§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this);
            §§push(this.§_-0CK§);
            if(!_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§_-0CK§ = §§pop();
            while(this.§_-0CK§ >= this.§_-0Dr§)
            {
               if(_loc2_ && _loc2_)
               {
                  break;
               }
               if(_loc3_)
               {
                  §§goto(addr69);
               }
            }
            §§push(-1);
            if(_loc3_)
            {
               return §§pop();
            }
            §§goto(addr69);
         }
         addr69:
         return this.mId2;
      }
   }
}
