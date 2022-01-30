package §%!I§
{
   public class §+;§
   {
       
      
      protected var §^O§:int;
      
      protected var §0n§:int;
      
      protected var §;>§:Number = 0;
      
      protected var §8o§:Number;
      
      protected var §!y§:Boolean = false;
      
      public function §+;§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§^O§ = param1;
         this.§0n§ = param2;
         this.§8o§ = Math.floor(param3 * 1000);
      }
      
      public function get §]W§() : int
      {
         return this.§^O§;
      }
      
      public function set §]W§(param1:int) : void
      {
         this.§^O§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§0n§;
      }
      
      public function get §<N§() : Boolean
      {
         return this.§!y§;
      }
      
      public function set §<N§(param1:Boolean) : void
      {
         this.§!y§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§;>§ += param1;
         if(this.§;>§ >= this.§8o§)
         {
            return this.§0n§;
         }
         return -1;
      }
   }
}
