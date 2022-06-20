package §0r§
{
   public class §4x§
   {
       
      
      protected var §]!B§:Number = 0.0;
      
      protected var §]4§:Number = 0.0;
      
      protected var §%s§:Function = null;
      
      protected var §-"$§:Boolean = true;
      
      protected var §4M§:Boolean = true;
      
      protected var §7!-§:Boolean = true;
      
      public function §4x§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§]4§ = param1;
         if(param1 < 0)
         {
            this.§]4§ = 0;
         }
         this.§]!B§ = -this.§]4§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §!!y§(param1:Boolean) : void
      {
         this.§-"$§ = param1;
      }
      
      public function set §?"+§(param1:Boolean) : void
      {
         this.§4M§ = param1;
      }
      
      public function get §?"+§() : Boolean
      {
         return this.§4M§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§%s§ = param1;
         }
      }
      
      public function set §3!j§(param1:Boolean) : void
      {
         this.§7!-§ = param1;
      }
      
      public function get §3!j§() : Boolean
      {
         return this.§7!-§;
      }
   }
}
