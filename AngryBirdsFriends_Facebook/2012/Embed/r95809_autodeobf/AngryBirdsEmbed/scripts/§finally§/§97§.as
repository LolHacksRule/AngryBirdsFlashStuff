package §finally§
{
   public class §97§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §,?§:Number = 0;
      
      protected var §]!8§:Number;
      
      protected var §if§:Boolean = false;
      
      public function §97§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§]!8§ = Math.floor(param3 * 1000);
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
      
      public function set id2(param1:int) : void
      {
         this.mId2 = param1;
      }
      
      public function get §-!$§() : Boolean
      {
         return this.§if§;
      }
      
      public function set §-!$§(param1:Boolean) : void
      {
         this.§if§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§,?§ += param1;
         if(this.§,?§ >= this.§]!8§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
