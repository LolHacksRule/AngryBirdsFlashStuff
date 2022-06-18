package §>!H§
{
   public class §8!L§
   {
       
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      protected var §@N§:Number = 0;
      
      protected var §3S§:Number;
      
      protected var §7!I§:Boolean = false;
      
      public function §8!L§(param1:int, param2:int, param3:Number)
      {
         super();
         this.mId1 = param1;
         this.mId2 = param2;
         this.§3S§ = Math.floor(param3 * 1000);
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
      
      public function get §"!6§() : Boolean
      {
         return this.§7!I§;
      }
      
      public function set §"!6§(param1:Boolean) : void
      {
         this.§7!I§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§@N§ += param1;
         if(this.§@N§ >= this.§3S§)
         {
            return this.mId2;
         }
         return -1;
      }
   }
}
