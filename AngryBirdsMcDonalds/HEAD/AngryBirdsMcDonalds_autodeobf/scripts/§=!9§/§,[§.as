package §=!9§
{
   public class §,[§
   {
       
      
      protected var §0!1§:int;
      
      protected var §>`§:int;
      
      protected var §^j§:Number = 0;
      
      protected var §`!7§:Number;
      
      protected var § '§:Boolean = false;
      
      public function §,[§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§0!1§ = param1;
         this.§>`§ = param2;
         this.§`!7§ = Math.floor(param3 * 1000);
      }
      
      public function get §"M§() : int
      {
         return this.§0!1§;
      }
      
      public function set §"M§(param1:int) : void
      {
         this.§0!1§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§>`§;
      }
      
      public function get §>U§() : Boolean
      {
         return this.§ '§;
      }
      
      public function set §>U§(param1:Boolean) : void
      {
         this.§ '§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§^j§ += param1;
         if(this.§^j§ >= this.§`!7§)
         {
            return this.§>`§;
         }
         return -1;
      }
   }
}
