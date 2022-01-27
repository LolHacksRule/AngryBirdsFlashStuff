package §^I§
{
   public class §+=§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §]!,§:Number = 0;
      
      protected var §<!;§:Number;
      
      protected var §;#§:Boolean = false;
      
      public function §+=§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§<!;§ = Math.floor(param3 * 1000);
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
      
      public function get §4!7§() : Boolean
      {
         return this.§;#§;
      }
      
      public function set §4!7§(param1:Boolean) : void
      {
         this.§;#§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§]!,§ += param1;
         if(this.§]!,§ >= this.§<!;§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
