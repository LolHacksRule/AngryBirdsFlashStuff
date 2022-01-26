package §,!E§
{
   public class §>K§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §--§:Number = 0;
      
      protected var §=c§:Number;
      
      protected var §;!Z§:Boolean = false;
      
      public function §>K§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§=c§ = Math.floor(param3 * 1000);
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
      
      public function get §'x§() : Boolean
      {
         return this.§;!Z§;
      }
      
      public function set §'x§(param1:Boolean) : void
      {
         this.§;!Z§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§--§ += param1;
         if(this.§--§ >= this.§=c§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
