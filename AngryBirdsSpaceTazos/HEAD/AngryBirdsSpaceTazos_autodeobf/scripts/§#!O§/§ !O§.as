package §#!O§
{
   public class § !O§
   {
       
      
      protected var §%!s§:Number = 0.0;
      
      protected var §0S§:Number = 0.0;
      
      private var §!B§:Boolean = true;
      
      protected var §9!]§:Function = null;
      
      protected var §4!+§:Function = null;
      
      protected var §7"§:Boolean = true;
      
      protected var §^!o§:Boolean = true;
      
      protected var § !w§:Boolean = true;
      
      public function § !O§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§9!]§ = null;
         this.§4!+§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§0S§ = param1;
         if(param1 < 0)
         {
            this.§0S§ = 0;
         }
         this.§%!s§ = -this.§0S§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§!B§;
      }
      
      public function pause() : void
      {
         this.§!B§ = true;
      }
      
      public function play() : void
      {
         this.§!B§ = false;
      }
      
      public function set § 6§(param1:Boolean) : void
      {
         this.§7"§ = param1;
      }
      
      public function set §3"&§(param1:Boolean) : void
      {
         this.§^!o§ = param1;
      }
      
      public function get §3"&§() : Boolean
      {
         return this.§^!o§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§9!]§ = param1;
         }
      }
      
      public function set §5!8§(param1:Function) : void
      {
         if(this.§%!s§ <= 0)
         {
            this.§4!+§ = param1;
         }
      }
      
      public function set §%"C§(param1:Boolean) : void
      {
         this.§ !w§ = param1;
      }
      
      public function get §%"C§() : Boolean
      {
         return this.§ !w§;
      }
      
      protected function §=!]§(param1:Number) : Boolean
      {
         if(this.§!B§ || this.isCompleted)
         {
            return false;
         }
         this.§%!s§ += param1;
         if(this.§%!s§ <= 0)
         {
            return false;
         }
         if(this.§%!s§ <= param1)
         {
            if(this.§4!+§ != null)
            {
               this.§4!+§();
               this.§4!+§ = null;
            }
         }
         return true;
      }
   }
}
