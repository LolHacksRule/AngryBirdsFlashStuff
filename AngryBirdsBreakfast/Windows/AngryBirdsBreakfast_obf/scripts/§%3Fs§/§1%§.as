package §?s§
{
   public class §1%§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §="#§:Number = 0;
      
      protected var §"" §:Number;
      
      private var §`_§:Boolean = false;
      
      protected var §7!U§:Boolean = false;
      
      public function §1%§(param1:int, param2:int, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.mObjectId1 = param1;
            addr74:
            while(true)
            {
               this.mObjectId2 = param2;
               continue loop0;
            }
         }
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §1Z§() : Boolean
      {
         return this.§7!U§;
      }
      
      public function set §1Z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7!U§ = param1;
         }
      }
      
      public function get §#!8§() : Boolean
      {
         return this.§`_§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this);
            §§push(this.§="#§);
            if(_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§="#§ = §§pop();
            while(this.§="#§ >= this.§"" §)
            {
               if(_loc2_)
               {
                  §§goto(addr50);
               }
               if(!_loc3_)
               {
                  addr53:
                  break;
               }
            }
            §§push(true);
            if(_loc2_)
            {
               return §§pop();
            }
            addr50:
            return false;
         }
         §§goto(addr53);
      }
   }
}
