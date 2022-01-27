package §0"g§
{
   public class §6[§
   {
       
      
      protected var §7#4§:Number = 0.0;
      
      protected var §1!4§:Number = 0.0;
      
      private var §0!z§:Boolean = true;
      
      protected var §^@§:Function = null;
      
      protected var §4U§:Function = null;
      
      protected var §@!>§:Boolean = true;
      
      protected var §9#"§:Boolean = true;
      
      protected var §`!d§:Boolean = true;
      
      public function §6[§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§^@§ = null;
         this.§4U§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§1!4§ = param1;
         if(param1 < 0)
         {
            this.§1!4§ = 0;
         }
         this.§7#4§ = -this.§1!4§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§0!z§;
      }
      
      public function pause() : void
      {
         this.§0!z§ = true;
      }
      
      public function play() : void
      {
         this.§0!z§ = false;
      }
      
      public function set §7"k§(param1:Boolean) : void
      {
         this.§@!>§ = param1;
      }
      
      public function set §@%§(param1:Boolean) : void
      {
         this.§9#"§ = param1;
      }
      
      public function get §@%§() : Boolean
      {
         return this.§9#"§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§^@§ = param1;
         }
      }
      
      public function set §<"V§(param1:Function) : void
      {
         if(this.§7#4§ <= 0)
         {
            this.§4U§ = param1;
         }
      }
      
      public function set § "U§(param1:Boolean) : void
      {
         this.§`!d§ = param1;
      }
      
      public function get § "U§() : Boolean
      {
         return this.§`!d§;
      }
      
      protected function §9!;§(param1:Number) : Boolean
      {
         if(this.§0!z§ || this.isCompleted)
         {
            return false;
         }
         this.§7#4§ += param1;
         if(this.§7#4§ <= 0)
         {
            return false;
         }
         if(this.§7#4§ <= param1)
         {
            if(this.§4U§ != null)
            {
               this.§4U§();
               this.§4U§ = null;
            }
         }
         return true;
      }
   }
}
