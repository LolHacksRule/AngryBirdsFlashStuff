package §4!C§
{
   public class §2!3§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §,F§:Number = 0;
      
      protected var §>b§:Number;
      
      protected var §7!<§:Boolean = false;
      
      public function §2!3§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super();
            while(true)
            {
               this.mId1 = param1;
               §§goto(addr84);
            }
         }
         addr84:
         while(true)
         {
            this.mId2 = param2;
            do
            {
               this.§>b§ = Math.floor(param3 * 1000);
            }
            while(!(_loc5_ || param2));
            
            if(_loc5_)
            {
               if(!(_loc4_ && param3))
               {
                  break;
               }
               continue loop0;
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
         if(_loc2_)
         {
            this.mId1 = param1;
         }
      }
      
      public function get id2() : int
      {
         return this.mId2;
      }
      
      public function get §7<§() : Boolean
      {
         return this.§7!<§;
      }
      
      public function set §7<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§7!<§ = param1;
         }
      }
      
      public function update(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§,F§);
            if(_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§,F§ = §§pop();
            while(this.§,F§ >= this.§>b§)
            {
               if(_loc3_ && _loc2_)
               {
                  break;
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr68);
            }
            §§push(-1);
            if(_loc2_)
            {
               return §§pop();
            }
            §§goto(addr68);
         }
         addr68:
         return this.mId2;
      }
   }
}
