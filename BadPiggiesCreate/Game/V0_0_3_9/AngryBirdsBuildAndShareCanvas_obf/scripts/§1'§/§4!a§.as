package §1'§
{
   public class §4!a§
   {
       
      
      protected var §0C§:int;
      
      protected var §@!u§:int;
      
      protected var §<"#§:Number = 0;
      
      protected var §43§:Number;
      
      protected var §;>§:Boolean = false;
      
      public function §4!a§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§0C§ = param1;
         this.§@!u§ = param2;
         this.§43§ = Math.floor(param3 * 1000);
      }
      
      public function get §]!Z§() : int
      {
         return this.§0C§;
      }
      
      public function set §]!Z§(param1:int) : void
      {
         this.§0C§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§@!u§;
      }
      
      public function get §4"-§() : Boolean
      {
         return this.§;>§;
      }
      
      public function set §4"-§(param1:Boolean) : void
      {
         this.§;>§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§<"#§ += param1;
         if(this.§<"#§ >= this.§43§)
         {
            return this.§@!u§;
         }
         return -1;
      }
   }
}
