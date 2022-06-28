package §2!H§
{
   public class §!!1§
   {
       
      
      protected var §[f§:Number = 0.0;
      
      protected var §@z§:Number = 0.0;
      
      protected var §3!U§:Function = null;
      
      protected var §6?§:Boolean = true;
      
      protected var §%!l§:Boolean = true;
      
      protected var §5!J§:Boolean = true;
      
      public function §!!1§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§@z§ = param1;
         if(param1 < 0)
         {
            this.§@z§ = 0;
         }
         this.§[f§ = -this.§@z§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §8!u§(param1:Boolean) : void
      {
         this.§6?§ = param1;
      }
      
      public function set §]! §(param1:Boolean) : void
      {
         this.§%!l§ = param1;
      }
      
      public function get §]! §() : Boolean
      {
         return this.§%!l§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§3!U§ = param1;
         }
      }
      
      public function set §7>§(param1:Boolean) : void
      {
         this.§5!J§ = param1;
      }
      
      public function get §7>§() : Boolean
      {
         return this.§5!J§;
      }
   }
}
