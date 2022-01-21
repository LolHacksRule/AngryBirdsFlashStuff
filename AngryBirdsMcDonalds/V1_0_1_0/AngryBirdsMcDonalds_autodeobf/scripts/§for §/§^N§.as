package §for §
{
   public class §^N§
   {
       
      
      protected var §!J§:int;
      
      protected var §!M§:int;
      
      protected var §+!"§:Number = 0;
      
      protected var §5"§:Number;
      
      protected var §9!U§:Boolean = false;
      
      public function §^N§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§!J§ = param1;
         this.§!M§ = param2;
         this.§5"§ = Math.floor(param3 * 1000);
      }
      
      public function get §;!V§() : int
      {
         return this.§!J§;
      }
      
      public function set §;!V§(param1:int) : void
      {
         this.§!J§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§!M§;
      }
      
      public function get §7e§() : Boolean
      {
         return this.§9!U§;
      }
      
      public function set §7e§(param1:Boolean) : void
      {
         this.§9!U§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§+!"§ += param1;
         if(this.§+!"§ >= this.§5"§)
         {
            return this.§!M§;
         }
         return -1;
      }
   }
}
