package §=3§
{
   public class §->§
   {
       
      
      protected var §[!l§:Number = 0.0;
      
      protected var §>!x§:Number = 0.0;
      
      private var §0!P§:Boolean = true;
      
      protected var § !o§:Function = null;
      
      protected var §@L§:Function = null;
      
      protected var § !+§:Boolean = true;
      
      protected var §`!'§:Boolean = true;
      
      protected var §"!6§:Boolean = true;
      
      public function §->§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§ !o§ = null;
         this.§@L§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§>!x§ = param1;
         if(param1 < 0)
         {
            this.§>!x§ = 0;
         }
         this.§[!l§ = -this.§>!x§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§0!P§;
      }
      
      public function pause() : void
      {
         this.§0!P§ = true;
      }
      
      public function play() : void
      {
         this.§0!P§ = false;
      }
      
      public function set §]h§(param1:Boolean) : void
      {
         this.§ !+§ = param1;
      }
      
      public function set §,@§(param1:Boolean) : void
      {
         this.§`!'§ = param1;
      }
      
      public function get §,@§() : Boolean
      {
         return this.§`!'§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§ !o§ = param1;
         }
      }
      
      public function set §=r§(param1:Function) : void
      {
         if(this.§[!l§ <= 0)
         {
            this.§@L§ = param1;
         }
      }
      
      public function set §%!a§(param1:Boolean) : void
      {
         this.§"!6§ = param1;
      }
      
      public function get §%!a§() : Boolean
      {
         return this.§"!6§;
      }
      
      protected function §8!z§(param1:Number) : Boolean
      {
         if(this.§0!P§ || this.isCompleted)
         {
            return false;
         }
         this.§[!l§ += param1;
         if(this.§[!l§ <= 0)
         {
            return false;
         }
         if(this.§[!l§ <= param1)
         {
            if(this.§@L§ != null)
            {
               this.§@L§();
               this.§@L§ = null;
            }
         }
         return true;
      }
   }
}
