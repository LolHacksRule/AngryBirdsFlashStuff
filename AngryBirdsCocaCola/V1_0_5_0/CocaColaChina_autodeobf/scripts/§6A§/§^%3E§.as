package §6a§
{
   public class §^>§
   {
       
      
      protected var §&!a§:Number = 0.0;
      
      protected var §9E§:Number = 0.0;
      
      protected var §=!9§:Function = null;
      
      protected var §6!#§:Boolean = true;
      
      protected var §>&§:Boolean = true;
      
      protected var §"w§:Boolean = true;
      
      public function §^>§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§9E§ = param1;
         if(param1 < 0)
         {
            this.§9E§ = 0;
         }
         this.§&!a§ = -this.§9E§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §^!L§(param1:Boolean) : void
      {
         this.§6!#§ = param1;
      }
      
      public function set §'![§(param1:Boolean) : void
      {
         this.§>&§ = param1;
      }
      
      public function get §'![§() : Boolean
      {
         return this.§>&§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§=!9§ = param1;
         }
      }
      
      public function set §%!^§(param1:Boolean) : void
      {
         this.§"w§ = param1;
      }
      
      public function get §%!^§() : Boolean
      {
         return this.§"w§;
      }
   }
}
