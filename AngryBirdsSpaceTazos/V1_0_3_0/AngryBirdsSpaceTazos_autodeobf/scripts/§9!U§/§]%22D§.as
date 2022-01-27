package §9!U§
{
   public class §]"D§
   {
       
      
      protected var §#"D§:Number = 0.0;
      
      protected var §""3§:Number = 0.0;
      
      private var §8!t§:Boolean = true;
      
      protected var § "1§:Function = null;
      
      protected var §!!C§:Function = null;
      
      protected var §%"A§:Boolean = true;
      
      protected var §0!]§:Boolean = true;
      
      protected var § !M§:Boolean = true;
      
      public function §]"D§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§ "1§ = null;
         this.§!!C§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§""3§ = param1;
         if(param1 < 0)
         {
            this.§""3§ = 0;
         }
         this.§#"D§ = -this.§""3§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§8!t§;
      }
      
      public function pause() : void
      {
         this.§8!t§ = true;
      }
      
      public function play() : void
      {
         this.§8!t§ = false;
      }
      
      public function set §43§(param1:Boolean) : void
      {
         this.§%"A§ = param1;
      }
      
      public function set §!5§(param1:Boolean) : void
      {
         this.§0!]§ = param1;
      }
      
      public function get §!5§() : Boolean
      {
         return this.§0!]§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§ "1§ = param1;
         }
      }
      
      public function set §3!6§(param1:Function) : void
      {
         if(this.§#"D§ <= 0)
         {
            this.§!!C§ = param1;
         }
      }
      
      public function set §+6§(param1:Boolean) : void
      {
         this.§ !M§ = param1;
      }
      
      public function get §+6§() : Boolean
      {
         return this.§ !M§;
      }
      
      protected function §5!h§(param1:Number) : Boolean
      {
         if(this.§8!t§ || this.isCompleted)
         {
            return false;
         }
         this.§#"D§ += param1;
         if(this.§#"D§ <= 0)
         {
            return false;
         }
         if(this.§#"D§ <= param1)
         {
            if(this.§!!C§ != null)
            {
               this.§!!C§();
               this.§!!C§ = null;
            }
         }
         return true;
      }
   }
}
