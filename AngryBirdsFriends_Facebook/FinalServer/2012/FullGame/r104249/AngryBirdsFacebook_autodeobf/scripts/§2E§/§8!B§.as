package §2E§
{
   public class §8!B§
   {
       
      
      protected var §=!S§:Number = 0.0;
      
      protected var §;`§:Number = 0.0;
      
      protected var §6!_§:Function = null;
      
      protected var §@!9§:Boolean = true;
      
      protected var §'!-§:Boolean = true;
      
      protected var §1f§:Boolean = true;
      
      public function §8!B§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§;`§ = param1;
         if(param1 < 0)
         {
            this.§;`§ = 0;
         }
         this.§=!S§ = -this.§;`§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set § !`§(param1:Boolean) : void
      {
         this.§@!9§ = param1;
      }
      
      public function set §=!h§(param1:Boolean) : void
      {
         this.§'!-§ = param1;
      }
      
      public function get §=!h§() : Boolean
      {
         return this.§'!-§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§6!_§ = param1;
         }
      }
      
      public function set §;H§(param1:Boolean) : void
      {
         this.§1f§ = param1;
      }
      
      public function get §;H§() : Boolean
      {
         return this.§1f§;
      }
   }
}
