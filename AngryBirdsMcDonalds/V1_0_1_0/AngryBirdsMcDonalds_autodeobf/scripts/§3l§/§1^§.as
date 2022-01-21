package §3l§
{
   public class §1^§
   {
       
      
      protected var §=!<§:Number = 0.0;
      
      protected var §8!;§:Number = 0.0;
      
      protected var §3!a§:Function = null;
      
      protected var §!!c§:Boolean = true;
      
      protected var §"n§:Boolean = true;
      
      protected var §"A§:Boolean = true;
      
      public function §1^§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§8!;§ = param1;
         if(param1 < 0)
         {
            this.§8!;§ = 0;
         }
         this.§=!<§ = -this.§8!;§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §6v§(param1:Boolean) : void
      {
         this.§!!c§ = param1;
      }
      
      public function set §>!<§(param1:Boolean) : void
      {
         this.§"n§ = param1;
      }
      
      public function get §>!<§() : Boolean
      {
         return this.§"n§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§3!a§ = param1;
         }
      }
      
      public function set §;!=§(param1:Boolean) : void
      {
         this.§"A§ = param1;
      }
      
      public function get §;!=§() : Boolean
      {
         return this.§"A§;
      }
   }
}
