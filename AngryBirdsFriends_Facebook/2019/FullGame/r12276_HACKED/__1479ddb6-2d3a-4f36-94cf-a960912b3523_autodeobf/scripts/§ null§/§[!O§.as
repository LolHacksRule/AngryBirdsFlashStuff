package § null§
{
   public class §[!O§
   {
       
      
      protected var §]!&§:Number = 0.0;
      
      protected var §#"z§:Number = 0.0;
      
      private var §6x§:Boolean = true;
      
      protected var §"#L§:Function = null;
      
      protected var §]!T§:Function = null;
      
      protected var §=$B§:Boolean = true;
      
      protected var §5!u§:Boolean = true;
      
      protected var §,!^§:Boolean = true;
      
      public function §[!O§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§"#L§ = null;
         this.§]!T§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§#"z§ = param1;
         if(param1 < 0)
         {
            this.§#"z§ = 0;
         }
         this.§]!&§ = -this.§#"z§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§6x§;
      }
      
      public function pause() : void
      {
         this.§6x§ = true;
      }
      
      public function play() : void
      {
         this.§6x§ = false;
      }
      
      public function set §7-§(param1:Boolean) : void
      {
         this.§=$B§ = param1;
      }
      
      public function set §7!z§(param1:Boolean) : void
      {
         this.§5!u§ = param1;
      }
      
      public function get §7!z§() : Boolean
      {
         return this.§5!u§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§"#L§ = param1;
         }
      }
      
      public function set onStart(param1:Function) : void
      {
         if(this.§]!&§ <= 0)
         {
            this.§]!T§ = param1;
         }
      }
      
      public function set §]!3§(param1:Boolean) : void
      {
         this.§,!^§ = param1;
      }
      
      public function get §]!3§() : Boolean
      {
         return this.§,!^§;
      }
      
      protected function §`#u§(param1:Number) : Boolean
      {
         if(this.§6x§ || this.isCompleted)
         {
            return false;
         }
         this.§]!&§ += param1;
         if(this.§]!&§ <= 0)
         {
            return false;
         }
         if(this.§]!&§ <= param1)
         {
            if(this.§]!T§ != null)
            {
               this.§]!T§();
               this.§]!T§ = null;
            }
         }
         return true;
      }
   }
}
