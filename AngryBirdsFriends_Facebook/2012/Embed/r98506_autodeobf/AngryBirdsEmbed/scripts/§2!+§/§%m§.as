package §2!+§
{
   public class §%m§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §-!F§:Number = 0;
      
      protected var §+!-§:Number;
      
      protected var §>+§:Boolean = false;
      
      public function §%m§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§+!-§ = Math.floor(param3 * 1000);
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
      
      public function get §7!5§() : Boolean
      {
         return this.§>+§;
      }
      
      public function set §7!5§(param1:Boolean) : void
      {
         this.§>+§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§-!F§ += param1;
         if(this.§-!F§ >= this.§+!-§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
