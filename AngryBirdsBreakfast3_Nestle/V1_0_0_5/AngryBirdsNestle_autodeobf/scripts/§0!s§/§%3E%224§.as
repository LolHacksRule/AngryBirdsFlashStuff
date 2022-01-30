package §0!s§
{
   public class §>"4§
   {
       
      
      protected var mObjectId1:int;
      
      protected var mObjectId2:int;
      
      protected var §0!z§:Number = 0;
      
      protected var §,!!§:Number;
      
      protected var §;e§:Boolean = false;
      
      public function §>"4§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mObjectId1 = param1;
         this.mObjectId2 = param2;
         this.§,!!§ = Math.floor(param3 * 1000);
      }
      
      public function get objectId1() : int
      {
         return this.mObjectId1;
      }
      
      public function get objectId2() : int
      {
         return this.mObjectId2;
      }
      
      public function get §9" §() : int
      {
         return this.§,!!§;
      }
      
      public function get §6!d§() : Boolean
      {
         return this.§;e§;
      }
      
      public function set §6!d§(param1:Boolean) : void
      {
         this.§;e§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         this.§0!z§ += param1;
         if(this.§0!z§ >= this.§,!!§)
         {
            return false;
         }
         return true;
      }
   }
}
