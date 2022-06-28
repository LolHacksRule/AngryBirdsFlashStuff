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
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§_-0Dr§ = Math.floor(param3 * 1000);
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
      
      public function get §_-Ux§() : Boolean
      {
         return this.§_-mD§;
      }
      
      public function set §_-Ux§(param1:Boolean) : void
      {
         this.§_-mD§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§_-0CK§ += param1;
         if(this.§_-0CK§ >= this.§_-0Dr§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
