package §4x§
{
   public class §7!B§
   {
       
      
      protected var §9!6§:Number = 0.0;
      
      protected var § ,§:Number = 0.0;
      
      protected var §4!P§:Function = null;
      
      protected var § !3§:Boolean = true;
      
      protected var §7!J§:Boolean = true;
      
      protected var §>n§:Boolean = true;
      
      public function §7!B§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§ ,§ = param1;
         if(param1 < 0)
         {
            this.§ ,§ = 0;
         }
         this.§9!6§ = -this.§ ,§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set § !O§(param1:Boolean) : void
      {
         this.§ !3§ = param1;
      }
      
      public function set §+&§(param1:Boolean) : void
      {
         this.§7!J§ = param1;
      }
      
      public function get §+&§() : Boolean
      {
         return this.§7!J§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§4!P§ = param1;
         }
      }
      
      public function set §8@§(param1:Boolean) : void
      {
         this.§>n§ = param1;
      }
      
      public function get §8@§() : Boolean
      {
         return this.§>n§;
      }
   }
}
