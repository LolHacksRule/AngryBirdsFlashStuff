package §6%§
{
   public class §0F§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §?!X§:Number = 0;
      
      protected var §;!P§:Number;
      
      protected var §28§:Boolean = false;
      
      public function §0F§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§;!P§ = Math.floor(param3 * 1000);
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function set id1(param1:int) : void
      {
         this.mId1 = param1;
      }
      
      public function get id2() : int
      {
         return this.mId2;
      }
      
      public function get §if §() : Boolean
      {
         return this.§28§;
      }
      
      public function set §if §(param1:Boolean) : void
      {
         this.§28§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§?!X§ += param1;
         if(this.§?!X§ >= this.§;!P§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
