package §=!7§
{
   public class §6! §
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §1!<§:Number = 0;
      
      protected var §7!k§:Number;
      
      protected var §#=§:Boolean = false;
      
      public function §6! §(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.mId1 = param1;
            while(true)
            {
               this.mId2 = param2;
               while(!_loc5_)
               {
                  continue loop0;
                  this.§7!k§ = Math.floor(param3 * 1000);
                  if(_loc4_ || param1)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function set id1(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.mId1 = param1;
         }
      }
      
      public function get id2() : int
      {
         return this.mId2;
      }
      
      public function get §2;§() : Boolean
      {
         return this.§#=§;
      }
      
      public function set §2;§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§#=§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§1!<§);
            if(!_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§1!<§ = §§pop();
            for(; this.§1!<§ >= this.§7!k§; if(!(_loc3_ && _loc3_))
            {
               break;
            })
            {
               if(_loc3_)
               {
                  continue;
               }
            }
            §§push(-1);
            if(_loc2_)
            {
               return §§pop();
            }
            §§goto(addr56);
         }
         addr56:
         this.mId2;
         return §§pop();
      }
   }
}
