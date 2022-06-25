package §4!O§
{
   public class §]B§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §^[§:Number = 0;
      
      protected var §<F§:Number;
      
      protected var §[!@§:Boolean = false;
      
      public function §]B§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.mId1 = param1;
            loop1:
            do
            {
               this.mId2 = param2;
               while(_loc4_)
               {
                  this.§<F§ = Math.floor(param3 * 1000);
                  if(_loc4_ || param3)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!_loc4_);
            
            return;
         }
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
      
      public function get §;Z§() : Boolean
      {
         return this.§[!@§;
      }
      
      public function set §;Z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§[!@§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this);
            §§push(this.§^[§);
            if(_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§^[§ = §§pop();
            while(this.§^[§ >= this.§<F§)
            {
               if(!(_loc3_ && this))
               {
                  §§goto(addr71);
               }
               if(!_loc3_)
               {
                  addr74:
                  break;
               }
            }
            §§push(-1);
            if(_loc2_ || _loc2_)
            {
               return §§pop();
            }
            addr71:
            return this.mId2;
         }
         §§goto(addr74);
      }
   }
}
