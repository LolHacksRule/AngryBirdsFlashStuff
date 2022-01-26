package §;!2§
{
   public class §15§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §6w§:Number = 0;
      
      protected var §]J§:Number;
      
      protected var §"t§:Boolean = false;
      
      public function §15§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§]J§ = Math.floor(param3 * 1000);
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
      
      public function get §`!§() : Boolean
      {
         return this.§"t§;
      }
      
      public function set §`!§(param1:Boolean) : void
      {
         this.§"t§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§6w§ += param1;
         if(this.§6w§ >= this.§]J§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
