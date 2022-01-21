package §9§
{
   public class §7L§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §!!P§:Number = 0;
      
      protected var §&&§:Number;
      
      protected var § g§:Boolean = false;
      
      public function §7L§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§&&§ = Math.floor(param3 * 1000);
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
      
      public function get §4E§() : Boolean
      {
         return this.§ g§;
      }
      
      public function set §4E§(param1:Boolean) : void
      {
         this.§ g§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§!!P§ += param1;
         if(this.§!!P§ >= this.§&&§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
