package §5!@§
{
   public class §3S§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §+9§:Number = 0;
      
      protected var §=!;§:Number;
      
      protected var § <§:Boolean = false;
      
      public function §3S§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§=!;§ = Math.floor(param3 * 1000);
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
      
      public function get §;N§() : Boolean
      {
         return this.§ <§;
      }
      
      public function set §;N§(param1:Boolean) : void
      {
         this.§ <§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§+9§ += param1;
         if(this.§+9§ >= this.§=!;§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
