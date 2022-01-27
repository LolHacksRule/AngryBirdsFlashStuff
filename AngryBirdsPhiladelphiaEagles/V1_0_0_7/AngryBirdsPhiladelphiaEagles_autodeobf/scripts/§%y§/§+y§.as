package §%y§
{
   public class §+y§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §55§:Number = 0;
      
      protected var §^!A§:Number;
      
      protected var §`S§:Boolean = false;
      
      public function §+y§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§^!A§ = Math.floor(param3 * 1000);
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
      
      public function get §;9§() : Boolean
      {
         return this.§`S§;
      }
      
      public function set §;9§(param1:Boolean) : void
      {
         this.§`S§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§55§ += param1;
         if(this.§55§ >= this.§^!A§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
