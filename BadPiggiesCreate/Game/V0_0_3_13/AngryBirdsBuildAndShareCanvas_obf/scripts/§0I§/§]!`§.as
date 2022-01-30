package §0I§
{
   public class §]!`§
   {
       
      
      protected var §+!>§:int;
      
      protected var §3B§:int;
      
      protected var §`g§:Number = 0;
      
      protected var §9"9§:Number;
      
      protected var §%V§:Boolean = false;
      
      public function §]!`§(param1:int, param2:int, param3:Number)
      {
         super();
         this.§+!>§ = param1;
         this.§3B§ = param2;
         this.§9"9§ = Math.floor(param3 * 1000);
      }
      
      public function get §[[§() : int
      {
         return this.§+!>§;
      }
      
      public function set §[[§(param1:int) : void
      {
         this.§+!>§ = param1;
      }
      
      public function get targetId() : int
      {
         return this.§3B§;
      }
      
      public function get §&!9§() : Boolean
      {
         return this.§%V§;
      }
      
      public function set §&!9§(param1:Boolean) : void
      {
         this.§%V§ = param1;
      }
      
      public function update(param1:Number) : int
      {
         this.§`g§ += param1;
         if(this.§`g§ >= this.§9"9§)
         {
            return this.§3B§;
         }
         return -1;
      }
   }
}
