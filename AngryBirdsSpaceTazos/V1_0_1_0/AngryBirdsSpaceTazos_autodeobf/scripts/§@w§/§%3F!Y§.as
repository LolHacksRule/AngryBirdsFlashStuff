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
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§?!0§ = Math.floor(param3 * 1000);
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
         this.§2i§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§&Q§ += param1;
         if(this.§&Q§ >= this.§?!0§)
         {
            return false;
         }
         return true;
      }
   }
}
