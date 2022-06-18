package §+!U§
{
   public class §^!S§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §-!M§:Number = 0;
      
      protected var § f§:Number;
      
      protected var §5D§:Boolean = false;
      
      public function §^!S§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§ f§ = Math.floor(param3 * 1000);
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
      
      public function get §&R§() : Boolean
      {
         return this.§5D§;
      }
      
      public function set §&R§(param1:Boolean) : void
      {
         this.§5D§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§-!M§ += param1;
         if(this.§-!M§ >= this.§ f§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
