package §6"G§
{
   public class §?!4§
   {
       
      
      protected var §@o§:Number = 0.0;
      
      protected var §"!l§:Number = 0.0;
      
      private var §7!q§:Boolean = true;
      
      protected var §;!S§:Function = null;
      
      protected var §!"R§:Function = null;
      
      protected var §4"q§:Boolean = true;
      
      protected var §-!s§:Boolean = true;
      
      protected var §'#_§:Boolean = true;
      
      public function §?!4§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§;!S§ = null;
         this.§!"R§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§"!l§ = param1;
         if(param1 < 0)
         {
            this.§"!l§ = 0;
         }
         this.§@o§ = -this.§"!l§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§7!q§;
      }
      
      public function pause() : void
      {
         this.§7!q§ = true;
      }
      
      public function play() : void
      {
         this.§7!q§ = false;
      }
      
      public function set §;"8§(param1:Boolean) : void
      {
         this.§4"q§ = param1;
      }
      
      public function set §>h§(param1:Boolean) : void
      {
         this.§-!s§ = param1;
      }
      
      public function get §>h§() : Boolean
      {
         return this.§-!s§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§;!S§ = param1;
         }
      }
      
      public function set §0!X§(param1:Function) : void
      {
         if(this.§@o§ <= 0)
         {
            this.§!"R§ = param1;
         }
      }
      
      public function set § each§(param1:Boolean) : void
      {
         this.§'#_§ = param1;
      }
      
      public function get § each§() : Boolean
      {
         return this.§'#_§;
      }
      
      protected function §"c§(param1:Number) : Boolean
      {
         if(this.§7!q§ || this.isCompleted)
         {
            return false;
         }
         this.§@o§ += param1;
         if(this.§@o§ <= 0)
         {
            return false;
         }
         if(this.§@o§ <= param1)
         {
            if(this.§!"R§ != null)
            {
               this.§!"R§();
               this.§!"R§ = null;
            }
         }
         return true;
      }
   }
}
