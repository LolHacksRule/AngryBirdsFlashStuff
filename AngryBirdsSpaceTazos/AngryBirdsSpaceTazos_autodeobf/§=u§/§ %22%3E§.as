package §=u§
{
   public class § ">§
   {
       
      
      protected var § "?§:Number = 0.0;
      
      protected var §1"'§:Number = 0.0;
      
      private var §%"&§:Boolean = true;
      
      protected var §6!s§:Function = null;
      
      protected var §;4§:Function = null;
      
      protected var §1"G§:Boolean = true;
      
      protected var §>f§:Boolean = true;
      
      protected var §["-§:Boolean = true;
      
      public function § ">§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§6!s§ = null;
         this.§;4§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§1"'§ = param1;
         if(param1 < 0)
         {
            this.§1"'§ = 0;
         }
         this.§ "?§ = -this.§1"'§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§%"&§;
      }
      
      public function pause() : void
      {
         this.§%"&§ = true;
      }
      
      public function play() : void
      {
         this.§%"&§ = false;
      }
      
      public function set §>!d§(param1:Boolean) : void
      {
         this.§1"G§ = param1;
      }
      
      public function set §%S§(param1:Boolean) : void
      {
         this.§>f§ = param1;
      }
      
      public function get §%S§() : Boolean
      {
         return this.§>f§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§6!s§ = param1;
         }
      }
      
      public function set §""E§(param1:Function) : void
      {
         if(this.§ "?§ <= 0)
         {
            this.§;4§ = param1;
         }
      }
      
      public function set § each§(param1:Boolean) : void
      {
         this.§["-§ = param1;
      }
      
      public function get § each§() : Boolean
      {
         return this.§["-§;
      }
      
      protected function §7z§(param1:Number) : Boolean
      {
         if(this.§%"&§ || this.isCompleted)
         {
            return false;
         }
         this.§ "?§ += param1;
         if(this.§ "?§ <= 0)
         {
            return false;
         }
         if(this.§ "?§ <= param1)
         {
            if(this.§;4§ != null)
            {
               this.§;4§();
               this.§;4§ = null;
            }
         }
         return true;
      }
   }
}
