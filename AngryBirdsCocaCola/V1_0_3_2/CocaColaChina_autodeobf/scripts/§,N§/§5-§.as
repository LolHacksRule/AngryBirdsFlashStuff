package §,N§
{
   public class §5-§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §0+§:Number = 0;
      
      protected var §?!b§:Number;
      
      protected var §1!M§:Boolean = false;
      
      public function §5-§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§?!b§ = Math.floor(param3 * 1000);
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
      
      public function get §2!B§() : Boolean
      {
         return this.§1!M§;
      }
      
      public function set §2!B§(param1:Boolean) : void
      {
         this.§1!M§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§0+§ += param1;
         if(this.§0+§ >= this.§?!b§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
