package §><§
{
   public class §6!2§
   {
       
      
      protected var §6!d§:Number = 0.0;
      
      protected var §[B§:Number = 0.0;
      
      private var §4!1§:Boolean = true;
      
      protected var §@!C§:Function = null;
      
      protected var §1@§:Function = null;
      
      protected var §[v§:Boolean = true;
      
      protected var §5@§:Boolean = true;
      
      protected var §?!o§:Boolean = true;
      
      public function §6!2§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§@!C§ = null;
         this.§1@§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§[B§ = param1;
         if(param1 < 0)
         {
            this.§[B§ = 0;
         }
         this.§6!d§ = -this.§[B§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§4!1§;
      }
      
      public function pause() : void
      {
         this.§4!1§ = true;
      }
      
      public function play() : void
      {
         this.§4!1§ = false;
      }
      
      public function set §;d§(param1:Boolean) : void
      {
         this.§[v§ = param1;
      }
      
      public function set §0!m§(param1:Boolean) : void
      {
         this.§5@§ = param1;
      }
      
      public function get §0!m§() : Boolean
      {
         return this.§5@§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§@!C§ = param1;
         }
      }
      
      public function set §,!a§(param1:Function) : void
      {
         if(this.§6!d§ <= 0)
         {
            this.§1@§ = param1;
         }
      }
      
      public function set §1!j§(param1:Boolean) : void
      {
         this.§?!o§ = param1;
      }
      
      public function get §1!j§() : Boolean
      {
         return this.§?!o§;
      }
      
      protected function §`!v§(param1:Number) : Boolean
      {
         if(this.§4!1§ || this.isCompleted)
         {
            return false;
         }
         this.§6!d§ += param1;
         if(this.§6!d§ <= 0)
         {
            return false;
         }
         if(this.§6!d§ <= param1)
         {
            if(this.§1@§ != null)
            {
               this.§1@§();
               this.§1@§ = null;
            }
         }
         return true;
      }
   }
}
