package §;g§
{
   public class §]w§
   {
       
      
      protected var §>!?§:Number = 0.0;
      
      protected var §<!n§:Number = 0.0;
      
      private var §7!J§:Boolean = true;
      
      protected var §;!h§:Function = null;
      
      protected var §^=§:Function = null;
      
      protected var §#M§:Boolean = true;
      
      protected var §0!!§:Boolean = true;
      
      protected var §7!>§:Boolean = true;
      
      public function §]w§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§;!h§ = null;
         this.§^=§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§<!n§ = param1;
         if(param1 < 0)
         {
            this.§<!n§ = 0;
         }
         this.§>!?§ = -this.§<!n§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§7!J§;
      }
      
      public function pause() : void
      {
         this.§7!J§ = true;
      }
      
      public function play() : void
      {
         this.§7!J§ = false;
      }
      
      public function set §6!i§(param1:Boolean) : void
      {
         this.§#M§ = param1;
      }
      
      public function set §7y§(param1:Boolean) : void
      {
         this.§0!!§ = param1;
      }
      
      public function get §7y§() : Boolean
      {
         return this.§0!!§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§;!h§ = param1;
         }
      }
      
      public function set §>!R§(param1:Function) : void
      {
         if(this.§>!?§ <= 0)
         {
            this.§^=§ = param1;
         }
      }
      
      public function set §+!d§(param1:Boolean) : void
      {
         this.§7!>§ = param1;
      }
      
      public function get §+!d§() : Boolean
      {
         return this.§7!>§;
      }
      
      protected function §^!m§(param1:Number) : Boolean
      {
         if(this.§7!J§ || this.isCompleted)
         {
            return false;
         }
         this.§>!?§ += param1;
         if(this.§>!?§ <= 0)
         {
            return false;
         }
         if(this.§>!?§ <= param1)
         {
            if(this.§^=§ != null)
            {
               this.§^=§();
               this.§^=§ = null;
            }
         }
         return true;
      }
   }
}
