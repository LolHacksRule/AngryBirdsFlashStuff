package §@!0§
{
   public class § "'§
   {
       
      
      protected var §;!$§:Number = 0.0;
      
      protected var §%"8§:Number = 0.0;
      
      private var §32§:Boolean = true;
      
      protected var §1!e§:Function = null;
      
      protected var §]v§:Function = null;
      
      protected var §<!H§:Boolean = true;
      
      protected var §7Z§:Boolean = true;
      
      protected var §@!S§:Boolean = true;
      
      public function § "'§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§1!e§ = null;
         this.§]v§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§%"8§ = param1;
         if(param1 < 0)
         {
            this.§%"8§ = 0;
         }
         this.§;!$§ = -this.§%"8§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§32§;
      }
      
      public function pause() : void
      {
         this.§32§ = true;
      }
      
      public function play() : void
      {
         this.§32§ = false;
      }
      
      public function set §>!"§(param1:Boolean) : void
      {
         this.§<!H§ = param1;
      }
      
      public function set §]!g§(param1:Boolean) : void
      {
         this.§7Z§ = param1;
      }
      
      public function get §]!g§() : Boolean
      {
         return this.§7Z§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§1!e§ = param1;
         }
      }
      
      public function set §-!;§(param1:Function) : void
      {
         if(this.§;!$§ <= 0)
         {
            this.§]v§ = param1;
         }
      }
      
      public function set §8"#§(param1:Boolean) : void
      {
         this.§@!S§ = param1;
      }
      
      public function get §8"#§() : Boolean
      {
         return this.§@!S§;
      }
      
      protected function §,!O§(param1:Number) : Boolean
      {
         if(this.§32§ || this.isCompleted)
         {
            return false;
         }
         this.§;!$§ += param1;
         if(this.§;!$§ <= 0)
         {
            return false;
         }
         if(this.§;!$§ <= param1)
         {
            if(this.§]v§ != null)
            {
               this.§]v§();
               this.§]v§ = null;
            }
         }
         return true;
      }
   }
}
