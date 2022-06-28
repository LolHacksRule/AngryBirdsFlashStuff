package §4!C§
{
   public class §2!3§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §,F§:Number = 0;
      
      protected var §>b§:Number;
      
      protected var §7!<§:Boolean = false;
      
      public function §2!3§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§>b§ = Math.floor(param3 * 1000);
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
      
      public function get §7<§() : Boolean
      {
         return this.§7!<§;
      }
      
      public function set §7<§(param1:Boolean) : void
      {
         this.§7!<§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§,F§ += param1;
         if(this.§,F§ >= this.§>b§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
