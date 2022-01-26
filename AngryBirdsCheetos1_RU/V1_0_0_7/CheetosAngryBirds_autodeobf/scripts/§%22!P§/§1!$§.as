package §"!P§
{
   public class §1!$§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §]`§:Number = 0;
      
      protected var §8j§:Number;
      
      protected var §-F§:Boolean = false;
      
      public function §1!$§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§8j§ = Math.floor(param3 * 1000);
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
      
      public function get §2K§() : Boolean
      {
         return this.§-F§;
      }
      
      public function set §2K§(param1:Boolean) : void
      {
         this.§-F§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§]`§ += param1;
         if(this.§]`§ >= this.§8j§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
