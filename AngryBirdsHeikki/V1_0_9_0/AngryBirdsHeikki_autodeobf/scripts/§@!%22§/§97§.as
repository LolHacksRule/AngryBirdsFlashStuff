package §@!"§
{
   public class §97§
   {
       
      
      protected var §55§:int;
      
      protected var §8l§:int;
      
      protected var §4!I§:Number = 0;
      
      protected var §#W§:Number;
      
      protected var §<!b§:Boolean = false;
      
      public function §97§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§55§ = param1;
         this.§8l§ = param2;
         this.§#W§ = Math.floor(param3 * 1000);
      }
      
      public function get §^a§() : int
      {
         return this.§55§;
      }
      
      public function set §^a§(param1:int) : void
      {
         this.§55§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§8l§;
      }
      
      public function get §0!?§() : Boolean
      {
         return this.§<!b§;
      }
      
      public function set §0!?§(param1:Boolean) : void
      {
         this.§<!b§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§4!I§ += param1;
         if(this.§4!I§ >= this.§#W§)
         {
            return this.§8l§;
         }
         return -1;
      }
   }
}
