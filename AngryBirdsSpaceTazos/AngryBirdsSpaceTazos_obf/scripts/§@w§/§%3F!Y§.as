package §@w§
{
   public class §?!Y§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §&Q§:Number = 0;
      
      protected var §?!0§:Number;
      
      protected var §2i§:Boolean = false;
      
      public function §?!Y§(param1:int, param2:int, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
         }
         do
         {
            this.mObjectId1 = param1;
            do
            {
               this.mObjectId2 = param2;
               do
               {
                  this.§?!0§ = Math.floor(param3 * 1000);
               }
               while(!(_loc5_ || param1));
               
            }
            while(!(_loc5_ || this));
            
         }
         while(_loc4_);
         
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §=""§() : Boolean
      {
         return this.§2i§;
      }
      
      public function set §=""§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2i§ = param1;
         }
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this);
            §§push(this.§&Q§);
            if(_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§&Q§ = §§pop();
            while(this.§&Q§ >= this.§?!0§)
            {
               if(_loc2_ || this)
               {
                  §§goto(addr55);
               }
               if(!(_loc3_ && _loc2_))
               {
                  addr63:
                  break;
               }
            }
            §§push(true);
            if(_loc2_)
            {
               return §§pop();
            }
            addr55:
            return false;
         }
         §§goto(addr63);
      }
   }
}
