package §6§#7
{
   public class §5p§
   {
       
      
      protected var §?"6§:Number = 0.0;
      
      protected var §=#H§:Number = 0.0;
      
      private var §"#j§:Boolean = true;
      
      protected var §2$@§:Function = null;
      
      protected var §,"r§:Function = null;
      
      protected var §+!5§:Boolean = true;
      
      protected var §""_§:Boolean = true;
      
      protected var §%"2§:Boolean = true;
      
      public function §5p§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§2$@§ = null;
         this.§,"r§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§=#H§ = param1;
         if(param1 < 0)
         {
            this.§=#H§ = 0;
         }
         this.§?"6§ = -this.§=#H§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§"#j§;
      }
      
      public function pause() : void
      {
         this.§"#j§ = true;
      }
      
      public function play() : void
      {
         this.§"#j§ = false;
      }
      
      public function set §8u§(param1:Boolean) : void
      {
         this.§+!5§ = param1;
      }
      
      public function set §-#u§(param1:Boolean) : void
      {
         this.§""_§ = param1;
      }
      
      public function get §-#u§() : Boolean
      {
         return this.§""_§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§2$@§ = param1;
         }
      }
      
      public function set onStart(param1:Function) : void
      {
         if(this.§?"6§ <= 0)
         {
            this.§,"r§ = param1;
         }
      }
      
      public function set §#$0§(param1:Boolean) : void
      {
         this.§%"2§ = param1;
      }
      
      public function get §#$0§() : Boolean
      {
         return this.§%"2§;
      }
      
      protected function §5#^§(param1:Number) : Boolean
      {
         if(this.§"#j§ || this.isCompleted)
         {
            return false;
         }
         this.§?"6§ += param1;
         if(this.§?"6§ <= 0)
         {
            return false;
         }
         if(this.§?"6§ <= param1)
         {
            if(this.§,"r§ != null)
            {
               this.§,"r§();
               this.§,"r§ = null;
            }
         }
         return true;
      }
   }
}
