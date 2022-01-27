package §<§
{
   public class §1"&§
   {
       
      
      protected var §"!e§:Number = 0.0;
      
      protected var §@"9§:Number = 0.0;
      
      private var §@>§:Boolean = true;
      
      protected var §5A§:Function = null;
      
      protected var §+,§:Function = null;
      
      protected var §]"D§:Boolean = true;
      
      protected var §9!A§:Boolean = true;
      
      protected var §2!E§:Boolean = true;
      
      public function §1"&§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§5A§ = null;
         this.§+,§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§@"9§ = param1;
         if(param1 < 0)
         {
            this.§@"9§ = 0;
         }
         this.§"!e§ = -this.§@"9§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§@>§;
      }
      
      public function pause() : void
      {
         this.§@>§ = true;
      }
      
      public function play() : void
      {
         this.§@>§ = false;
      }
      
      public function set §@"3§(param1:Boolean) : void
      {
         this.§]"D§ = param1;
      }
      
      public function set §5!Y§(param1:Boolean) : void
      {
         this.§9!A§ = param1;
      }
      
      public function get §5!Y§() : Boolean
      {
         return this.§9!A§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§5A§ = param1;
         }
      }
      
      public function set §6u§(param1:Function) : void
      {
         if(this.§"!e§ <= 0)
         {
            this.§+,§ = param1;
         }
      }
      
      public function set §#"D§(param1:Boolean) : void
      {
         this.§2!E§ = param1;
      }
      
      public function get §#"D§() : Boolean
      {
         return this.§2!E§;
      }
      
      protected function §-I§(param1:Number) : Boolean
      {
         if(this.§@>§ || this.isCompleted)
         {
            return false;
         }
         this.§"!e§ += param1;
         if(this.§"!e§ <= 0)
         {
            return false;
         }
         if(this.§"!e§ <= param1)
         {
            if(this.§+,§ != null)
            {
               this.§+,§();
               this.§+,§ = null;
            }
         }
         return true;
      }
   }
}
