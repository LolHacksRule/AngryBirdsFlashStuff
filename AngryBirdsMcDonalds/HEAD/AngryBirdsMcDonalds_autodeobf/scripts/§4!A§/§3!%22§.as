package §4!A§
{
   public class §3!"§
   {
       
      
      protected var §@!M§:Number = 0.0;
      
      protected var §?x§:Number = 0.0;
      
      protected var §]2§:Function = null;
      
      protected var §=!%§:Boolean = true;
      
      protected var §?D§:Boolean = true;
      
      protected var §@!H§:Boolean = true;
      
      public function §3!"§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§?x§ = param1;
         if(param1 < 0)
         {
            this.§?x§ = 0;
         }
         this.§@!M§ = -this.§?x§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §^!L§(param1:Boolean) : void
      {
         this.§=!%§ = param1;
      }
      
      public function set §'!]§(param1:Boolean) : void
      {
         this.§?D§ = param1;
      }
      
      public function get §'!]§() : Boolean
      {
         return this.§?D§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§]2§ = param1;
         }
      }
      
      public function set § o§(param1:Boolean) : void
      {
         this.§@!H§ = param1;
      }
      
      public function get § o§() : Boolean
      {
         return this.§@!H§;
      }
   }
}
