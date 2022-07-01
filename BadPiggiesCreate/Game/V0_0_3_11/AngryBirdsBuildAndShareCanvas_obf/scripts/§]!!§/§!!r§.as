package §]!!§
{
   public class §!!r§
   {
       
      
      protected var §^!P§:int;
      
      protected var §7!3§:int;
      
      protected var §7!v§:Number = 0;
      
      protected var § !Z§:Number;
      
      protected var §+!L§:Boolean = false;
      
      public function §!!r§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§^!P§ = param1;
         this.§7!3§ = param2;
         this.§ !Z§ = Math.floor(param3 * 1000);
      }
      
      public function get §?!r§() : int
      {
         return this.§^!P§;
      }
      
      public function set §?!r§(param1:int) : void
      {
         this.§^!P§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§7!3§;
      }
      
      public function get §^"+§() : Boolean
      {
         return this.§+!L§;
      }
      
      public function set §^"+§(param1:Boolean) : void
      {
         this.§+!L§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§7!v§ += param1;
         if(this.§7!v§ >= this.§ !Z§)
         {
            return this.§7!3§;
         }
         return -1;
      }
   }
}
