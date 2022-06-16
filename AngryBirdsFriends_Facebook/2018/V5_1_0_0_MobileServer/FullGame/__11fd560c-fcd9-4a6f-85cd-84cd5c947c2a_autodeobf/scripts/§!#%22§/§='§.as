package §!#"§
{
   public class §='§
   {
       
      
      protected var §]"6§:Number = 0.0;
      
      protected var §"W§:Number = 0.0;
      
      private var §3#"§:Boolean = true;
      
      protected var §+"3§:Function = null;
      
      protected var §,!Z§:Function = null;
      
      protected var §2!I§:Boolean = true;
      
      protected var §^w§:Boolean = true;
      
      protected var §!#b§:Boolean = true;
      
      public function §='§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§+"3§ = null;
         this.§,!Z§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§"W§ = param1;
         if(param1 < 0)
         {
            this.§"W§ = 0;
         }
         this.§]"6§ = -this.§"W§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§3#"§;
      }
      
      public function pause() : void
      {
         this.§3#"§ = true;
      }
      
      public function play() : void
      {
         this.§3#"§ = false;
      }
      
      public function set §9"D§(param1:Boolean) : void
      {
         this.§2!I§ = param1;
      }
      
      public function set §0! §(param1:Boolean) : void
      {
         this.§^w§ = param1;
      }
      
      public function get §0! §() : Boolean
      {
         return this.§^w§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§+"3§ = param1;
         }
      }
      
      public function set onStart(param1:Function) : void
      {
         if(this.§]"6§ <= 0)
         {
            this.§,!Z§ = param1;
         }
      }
      
      public function set §"$ §(param1:Boolean) : void
      {
         this.§!#b§ = param1;
      }
      
      public function get §"$ §() : Boolean
      {
         return this.§!#b§;
      }
      
      protected function §#$A§(param1:Number) : Boolean
      {
         if(this.§3#"§ || this.isCompleted)
         {
            return false;
         }
         this.§]"6§ += param1;
         if(this.§]"6§ <= 0)
         {
            return false;
         }
         if(this.§]"6§ <= param1)
         {
            if(this.§,!Z§ != null)
            {
               this.§,!Z§();
               this.§,!Z§ = null;
            }
         }
         return true;
      }
   }
}
