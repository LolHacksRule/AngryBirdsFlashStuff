package §1!A§
{
   public class §>p§
   {
       
      
      protected var §&7§:int;
      
      protected var §]!?§:int;
      
      protected var §>t§:Number = 0;
      
      protected var §@!;§:Number;
      
      protected var §9!&§:Boolean = false;
      
      public function §>p§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§&7§ = param1;
         this.§]!?§ = param2;
         this.§@!;§ = Math.floor(param3 * 1000);
      }
      
      public function get §;!G§() : int
      {
         return this.§&7§;
      }
      
      public function set §;!G§(param1:int) : void
      {
         this.§&7§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§]!?§;
      }
      
      public function get §&!!§() : int
      {
         return this.§@!;§;
      }
      
      public function get §^8§() : Boolean
      {
         return this.§9!&§;
      }
      
      public function set §^8§(param1:Boolean) : void
      {
         this.§9!&§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§>t§ += param1;
         if(this.§>t§ >= this.§@!;§)
         {
            return this.§]!?§;
         }
         return -1;
      }
   }
}
