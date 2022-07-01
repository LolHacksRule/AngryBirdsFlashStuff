package §53§
{
   public class §'!L§
   {
       
      
      protected var §>§:Number = 0.0;
      
      protected var §3!t§:Number = 0.0;
      
      private var §%y§:Boolean = true;
      
      protected var §4r§:Function = null;
      
      protected var § !A§:Function = null;
      
      protected var §&!,§:Boolean = true;
      
      protected var §"2§:Boolean = true;
      
      protected var §=!$§:Boolean = true;
      
      public function §'!L§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§4r§ = null;
         this.§ !A§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§3!t§ = param1;
         if(param1 < 0)
         {
            this.§3!t§ = 0;
         }
         this.§>§ = -this.§3!t§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§%y§;
      }
      
      public function pause() : void
      {
         this.§%y§ = true;
      }
      
      public function play() : void
      {
         this.§%y§ = false;
      }
      
      public function set §+!x§(param1:Boolean) : void
      {
         this.§&!,§ = param1;
      }
      
      public function set §>#§(param1:Boolean) : void
      {
         this.§"2§ = param1;
      }
      
      public function get §>#§() : Boolean
      {
         return this.§"2§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§4r§ = param1;
         }
      }
      
      public function set §`!7§(param1:Function) : void
      {
         if(this.§>§ <= 0)
         {
            this.§ !A§ = param1;
         }
      }
      
      public function set §"K§(param1:Boolean) : void
      {
         this.§=!$§ = param1;
      }
      
      public function get §"K§() : Boolean
      {
         return this.§=!$§;
      }
      
      protected function §%!I§(param1:Number) : Boolean
      {
         if(this.§%y§ || this.isCompleted)
         {
            return false;
         }
         this.§>§ += param1;
         if(this.§>§ <= 0)
         {
            return false;
         }
         if(this.§>§ <= param1)
         {
            if(this.§ !A§ != null)
            {
               this.§ !A§();
               this.§ !A§ = null;
            }
         }
         return true;
      }
   }
}
