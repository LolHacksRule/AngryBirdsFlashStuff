package §6Z§
{
   public class §]!Z§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §&V§:Number = 0;
      
      protected var §[4§:Number;
      
      protected var §2!'§:Boolean = false;
      
      public function §]!Z§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§[4§ = Math.floor(param3 * 1000);
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
      
      public function get §9O§() : Boolean
      {
         return this.§2!'§;
      }
      
      public function set §9O§(param1:Boolean) : void
      {
         this.§2!'§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§&V§ += param1;
         if(this.§&V§ >= this.§[4§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
