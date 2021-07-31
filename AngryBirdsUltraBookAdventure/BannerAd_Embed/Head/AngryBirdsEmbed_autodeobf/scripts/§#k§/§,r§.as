package §#k§
{
   public class §,r§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §,L§:Number = 0;
      
      protected var §#s§:Number;
      
      protected var §9,§:Boolean = false;
      
      public function §,r§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§#s§ = Math.floor(param3 * 1000);
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
      
      public function get §8!A§() : Boolean
      {
         return this.§9,§;
      }
      
      public function set §8!A§(param1:Boolean) : void
      {
         this.§9,§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§,L§ += param1;
         if(this.§,L§ >= this.§#s§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
