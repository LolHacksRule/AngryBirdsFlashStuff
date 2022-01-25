package §%i§
{
   public class §0>§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §]!4§:Number = 0;
      
      protected var §#!-§:Number;
      
      protected var §9J§:Boolean = false;
      
      public function §0>§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§#!-§ = Math.floor(param3 * 1000);
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
      
      public function get §0t§() : Boolean
      {
         return this.§9J§;
      }
      
      public function set §0t§(param1:Boolean) : void
      {
         this.§9J§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§]!4§ += param1;
         if(this.§]!4§ >= this.§#!-§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
