package §0!D§
{
   public class §3m§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §&V§:Number = 0;
      
      protected var §2!#§:Number;
      
      protected var §6,§:Boolean = false;
      
      public function §3m§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§2!#§ = Math.floor(param3 * 1000);
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
      
      public function get §,!"§() : Boolean
      {
         return this.§6,§;
      }
      
      public function set §,!"§(param1:Boolean) : void
      {
         this.§6,§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§&V§ += param1;
         if(this.§&V§ >= this.§2!#§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
