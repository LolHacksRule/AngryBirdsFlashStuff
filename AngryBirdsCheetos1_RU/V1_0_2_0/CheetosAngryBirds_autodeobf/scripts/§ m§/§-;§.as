package § m§
{
   public class §-;§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §4!B§:Number = 0;
      
      protected var §`h§:Number;
      
      protected var §"!D§:Boolean = false;
      
      public function §-;§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§`h§ = Math.floor(param3 * 1000);
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
      
      public function get §'!I§() : Boolean
      {
         return this.§"!D§;
      }
      
      public function set §'!I§(param1:Boolean) : void
      {
         this.§"!D§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§4!B§ += param1;
         if(this.§4!B§ >= this.§`h§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
