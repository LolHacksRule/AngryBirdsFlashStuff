package §`!C§
{
   public class §`!&§
   {
       
      
      protected var §1;§:int;
      
      protected var §'2§:int;
      
      protected var §&J§:Number = 0;
      
      protected var §[!N§:Number;
      
      protected var §5H§:Boolean = false;
      
      public function §`!&§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§1;§ = param1;
         this.§'2§ = param2;
         this.§[!N§ = Math.floor(param3 * 1000);
      }
      
      public function get §[!O§() : int
      {
         return this.§1;§;
      }
      
      public function set §[!O§(param1:int) : void
      {
         this.§1;§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§'2§;
      }
      
      public function get §]!U§() : Boolean
      {
         return this.§5H§;
      }
      
      public function set §]!U§(param1:Boolean) : void
      {
         this.§5H§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§&J§ += param1;
         if(this.§&J§ >= this.§[!N§)
         {
            return this.§'2§;
         }
         return -1;
      }
   }
}
