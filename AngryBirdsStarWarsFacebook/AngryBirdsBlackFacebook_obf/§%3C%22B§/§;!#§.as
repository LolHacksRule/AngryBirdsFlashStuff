package §<"B§
{
   public class §;!#§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §1J§:Number = 0;
      
      protected var §<"e§:Number;
      
      private var §2"f§:Boolean = false;
      
      protected var §,!h§:Boolean = false;
      
      public function §;!#§(param1:int, param2:int, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            super();
            loop0:
            do
            {
               this.mObjectId1 = param1;
               while(true)
               {
                  this.mObjectId2 = param2;
                  while(!(_loc6_ && this))
                  {
                     this.§<"e§ = Math.floor(param3 * 1000);
                     do
                     {
                        this.§2"f§ = param4;
                     }
                     while(!_loc5_);
                     
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc6_);
            
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
      
      public function get §>"i§() : Boolean
      {
         return this.§,!h§;
      }
      
      public function set §>"i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§,!h§ = param1;
         }
      }
      
      public function get §+!A§() : Boolean
      {
         return this.§2"f§;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§1J§);
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§1J§ = §§pop();
            while(this.§1J§ >= this.§<"e§)
            {
               if(!(_loc3_ || this))
               {
                  break;
               }
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr58);
            }
            §§push(true);
            if(_loc3_)
            {
               return §§pop();
            }
            §§goto(addr58);
         }
         addr58:
         return false;
      }
   }
}
