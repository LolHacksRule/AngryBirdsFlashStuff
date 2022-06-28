package §`6§
{
   public class §5!;§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §?S§:Number = 0;
      
      protected var native:Number;
      
      protected var §finally§:Boolean = false;
      
      public function §5!;§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.native = Math.floor(param3 * 1000);
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
      
      public function get §8i§() : Boolean
      {
         return this.§finally§;
      }
      
      public function set §8i§(param1:Boolean) : void
      {
         this.§finally§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§?S§ += param1;
         if(this.§?S§ >= this.native)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
