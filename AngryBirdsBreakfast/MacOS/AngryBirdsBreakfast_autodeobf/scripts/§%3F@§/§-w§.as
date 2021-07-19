package §?@§
{
   public class §-w§
   {
       
      
      protected var §^B§:Number = 0.0;
      
      protected var §55§:Number = 0.0;
      
      private var §=2§:Boolean = true;
      
      protected var §try§:Function = null;
      
      protected var §0!3§:Function = null;
      
      protected var §5l§:Boolean = true;
      
      protected var §@[§:Boolean = true;
      
      protected var §7f§:Boolean = true;
      
      public function §-w§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§try§ = null;
         this.§0!3§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§55§ = param1;
         if(param1 < 0)
         {
            this.§55§ = 0;
         }
         this.§^B§ = -this.§55§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§=2§;
      }
      
      public function pause() : void
      {
         this.§=2§ = true;
      }
      
      public function play() : void
      {
         this.§=2§ = false;
      }
      
      public function set §<d§(param1:Boolean) : void
      {
         this.§5l§ = param1;
      }
      
      public function set §`F§(param1:Boolean) : void
      {
         this.§@[§ = param1;
      }
      
      public function get §`F§() : Boolean
      {
         return this.§@[§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§try§ = param1;
         }
      }
      
      public function set §@!]§(param1:Function) : void
      {
         if(this.§^B§ <= 0)
         {
            this.§0!3§ = param1;
         }
      }
      
      public function set §2!X§(param1:Boolean) : void
      {
         this.§7f§ = param1;
      }
      
      public function get §2!X§() : Boolean
      {
         return this.§7f§;
      }
      
      protected function §`G§(param1:Number) : Boolean
      {
         if(this.§=2§ || this.isCompleted)
         {
            return false;
         }
         this.§^B§ += param1;
         if(this.§^B§ <= 0)
         {
            return false;
         }
         if(this.§^B§ <= param1)
         {
            if(this.§0!3§ != null)
            {
               this.§0!3§();
               this.§0!3§ = null;
            }
         }
         return true;
      }
   }
}
