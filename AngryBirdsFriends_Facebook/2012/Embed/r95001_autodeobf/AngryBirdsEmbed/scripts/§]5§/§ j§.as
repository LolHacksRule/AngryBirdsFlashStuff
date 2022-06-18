package §]5§
{
   public class § j§
   {
       
      
      protected var §`!,§:Number = 0.0;
      
      protected var §1O§:Number = 0.0;
      
      protected var §7f§:Function = null;
      
      protected var §2m§:Boolean = true;
      
      protected var § !2§:Boolean = true;
      
      protected var §;!B§:Boolean = true;
      
      public function § j§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§1O§ = param1;
         if(param1 < 0)
         {
            this.§1O§ = 0;
         }
         this.§`!,§ = -this.§1O§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function set §>!;§(param1:Boolean) : void
      {
         this.§2m§ = param1;
      }
      
      public function set §#a§(param1:Boolean) : void
      {
         this.§ !2§ = param1;
      }
      
      public function get §#a§() : Boolean
      {
         return this.§ !2§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§7f§ = param1;
         }
      }
      
      public function set §]W§(param1:Boolean) : void
      {
         this.§;!B§ = param1;
      }
      
      public function get §]W§() : Boolean
      {
         return this.§;!B§;
      }
   }
}
