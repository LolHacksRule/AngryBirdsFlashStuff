package §6!S§
{
   public class §;!<§
   {
       
      
      protected var §4!§:Number = 0.0;
      
      protected var §"!S§:Number = 0.0;
      
      protected var §]b§:Function = null;
      
      protected var §^!=§:Boolean = true;
      
      protected var §%n§:Boolean = true;
      
      protected var §'!2§:Boolean = true;
      
      public function §;!<§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§"!S§ = param1;
         if(param1 < 0)
         {
            this.§"!S§ = 0;
         }
         this.§4!§ = -this.§"!S§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §1g§(param1:Boolean) : void
      {
         this.§^!=§ = param1;
      }
      
      public function set §@!X§(param1:Boolean) : void
      {
         this.§%n§ = param1;
      }
      
      public function get §@!X§() : Boolean
      {
         return this.§%n§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§]b§ = param1;
         }
      }
      
      public function set §'&§(param1:Boolean) : void
      {
         this.§'!2§ = param1;
      }
      
      public function get §'&§() : Boolean
      {
         return this.§'!2§;
      }
   }
}
