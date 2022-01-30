package §6t§
{
   public class §=w§
   {
       
      
      protected var §=!c§:Number = 0.0;
      
      protected var §`"5§:Number = 0.0;
      
      private var §8R§:Boolean = true;
      
      protected var §@!T§:Function = null;
      
      protected var §&?§:Function = null;
      
      protected var §]!R§:Boolean = true;
      
      protected var §+!?§:Boolean = true;
      
      protected var §5!H§:Boolean = true;
      
      public function §=w§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§@!T§ = null;
         this.§&?§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§`"5§ = param1;
         if(param1 < 0)
         {
            this.§`"5§ = 0;
         }
         this.§=!c§ = -this.§`"5§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§8R§;
      }
      
      public function pause() : void
      {
         this.§8R§ = true;
      }
      
      public function play() : void
      {
         this.§8R§ = false;
      }
      
      public function set §^!6§(param1:Boolean) : void
      {
         this.§]!R§ = param1;
      }
      
      public function set §0"1§(param1:Boolean) : void
      {
         this.§+!?§ = param1;
      }
      
      public function get §0"1§() : Boolean
      {
         return this.§+!?§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§@!T§ = param1;
         }
      }
      
      public function set §'"2§(param1:Function) : void
      {
         if(this.§=!c§ <= 0)
         {
            this.§&?§ = param1;
         }
      }
      
      public function set §>!t§(param1:Boolean) : void
      {
         this.§5!H§ = param1;
      }
      
      public function get §>!t§() : Boolean
      {
         return this.§5!H§;
      }
      
      protected function §>"%§(param1:Number) : Boolean
      {
         if(this.§8R§ || this.isCompleted)
         {
            return false;
         }
         this.§=!c§ += param1;
         if(this.§=!c§ <= 0)
         {
            return false;
         }
         if(this.§=!c§ <= param1)
         {
            if(this.§&?§ != null)
            {
               this.§&?§();
               this.§&?§ = null;
            }
         }
         return true;
      }
   }
}
