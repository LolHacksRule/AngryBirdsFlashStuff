package §'K§
{
   public class §%!4§
   {
       
      
      protected var §-!9§:Number = 0.0;
      
      protected var §'!D§:Number = 0.0;
      
      protected var §1A§:Function = null;
      
      protected var §!y§:Boolean = true;
      
      protected var §#"§:Boolean = true;
      
      protected var §<!,§:Boolean = true;
      
      public function §%!4§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§'!D§ = param1;
         if(param1 < 0)
         {
            this.§'!D§ = 0;
         }
         this.§-!9§ = -this.§'!D§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §&!&§(param1:Boolean) : void
      {
         this.§!y§ = param1;
      }
      
      public function set §`j§(param1:Boolean) : void
      {
         this.§#"§ = param1;
      }
      
      public function get §`j§() : Boolean
      {
         return this.§#"§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§1A§ = param1;
         }
      }
      
      public function set § i§(param1:Boolean) : void
      {
         this.§<!,§ = param1;
      }
      
      public function get § i§() : Boolean
      {
         return this.§<!,§;
      }
   }
}
