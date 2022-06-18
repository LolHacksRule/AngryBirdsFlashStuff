package § !'§
{
   public class §-m§
   {
       
      
      protected var §;!A§:int;
      
      protected var § !?§:int;
      
      protected var §7!5§:Number = 0;
      
      protected var §];§:Number;
      
      protected var §1!8§:Boolean = false;
      
      public function §-m§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§;!A§ = param1;
         this.§ !?§ = param2;
         this.§];§ = Math.floor(param3 * 1000);
      }
      
      public function get §!#§() : int
      {
         return this.§;!A§;
      }
      
      public function set §!#§(param1:int) : void
      {
         this.§;!A§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§ !?§;
      }
      
      public function get §"A§() : int
      {
         return this.§];§;
      }
      
      public function get §=I§() : Boolean
      {
         return this.§1!8§;
      }
      
      public function set §=I§(param1:Boolean) : void
      {
         this.§1!8§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§7!5§ += param1;
         if(this.§7!5§ >= this.§];§)
         {
            return this.§ !?§;
         }
         return -1;
      }
   }
}
