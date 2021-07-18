package §;A§
{
   public class §9s§
   {
       
      
      protected var §0R§:int;
      
      protected var §]Z§:int;
      
      protected var §5z§:Number = 0;
      
      protected var §^!B§:Number;
      
      protected var §-<§:Boolean = false;
      
      public function §9s§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§0R§ = param1;
         this.§]Z§ = param2;
         this.§^!B§ = Math.floor(param3 * 1000);
      }
      
      public function get §6!A§() : int
      {
         return this.§0R§;
      }
      
      public function set §6!A§(param1:int) : void
      {
         this.§0R§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§]Z§;
      }
      
      public function get §^`§() : int
      {
         return this.§^!B§;
      }
      
      public function get §,Q§() : Boolean
      {
         return this.§-<§;
      }
      
      public function set §,Q§(param1:Boolean) : void
      {
         this.§-<§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§5z§ += param1;
         if(this.§5z§ >= this.§^!B§)
         {
            return this.§]Z§;
         }
         return -1;
      }
   }
}
