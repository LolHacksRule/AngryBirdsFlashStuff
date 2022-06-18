package §;=§
{
   public class §"A§
   {
       
      
      protected var §;?§:Number = 0.0;
      
      protected var §`]§:Number = 0.0;
      
      protected var §@P§:Function = null;
      
      protected var §2n§:Boolean = true;
      
      protected var §+,§:Boolean = true;
      
      protected var §=! §:Boolean = true;
      
      public function §"A§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§`]§ = param1;
         if(param1 < 0)
         {
            this.§`]§ = 0;
         }
         this.§;?§ = -this.§`]§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §=j§(param1:Boolean) : void
      {
         this.§2n§ = param1;
      }
      
      public function set §4!-§(param1:Boolean) : void
      {
         this.§+,§ = param1;
      }
      
      public function get §4!-§() : Boolean
      {
         return this.§+,§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§@P§ = param1;
         }
      }
      
      public function set §65§(param1:Boolean) : void
      {
         this.§=! § = param1;
      }
      
      public function get §65§() : Boolean
      {
         return this.§=! §;
      }
   }
}
