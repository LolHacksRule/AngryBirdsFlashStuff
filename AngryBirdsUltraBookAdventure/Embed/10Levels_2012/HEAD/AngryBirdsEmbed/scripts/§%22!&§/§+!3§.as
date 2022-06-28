package §"!&§
{
   public class §+!3§
   {
       
      
      protected var §=,§:Number = 0.0;
      
      protected var §?i§:Number = 0.0;
      
      protected var § S§:Function = null;
      
      protected var §4L§:Boolean = true;
      
      protected var §'b§:Boolean = true;
      
      protected var §+L§:Boolean = true;
      
      public function §+!3§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§?i§ = param1;
         if(param1 < 0)
         {
            this.§?i§ = 0;
         }
         this.§=,§ = -this.§?i§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §9V§(param1:Boolean) : void
      {
         this.§4L§ = param1;
      }
      
      public function set § D§(param1:Boolean) : void
      {
         this.§'b§ = param1;
      }
      
      public function get § D§() : Boolean
      {
         return this.§'b§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§ S§ = param1;
         }
      }
      
      public function set §>!#§(param1:Boolean) : void
      {
         this.§+L§ = param1;
      }
      
      public function get §>!#§() : Boolean
      {
         return this.§+L§;
      }
   }
}
