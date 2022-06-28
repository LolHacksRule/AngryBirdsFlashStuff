package §57§
{
   public class §`!x§
   {
       
      
      protected var §=U§:Number = 0.0;
      
      protected var §1!o§:Number = 0.0;
      
      protected var §@V§:Function = null;
      
      protected var §+!p§:Boolean = true;
      
      protected var §]!^§:Boolean = true;
      
      protected var §5u§:Boolean = true;
      
      public function §`!x§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§1!o§ = param1;
         if(param1 < 0)
         {
            this.§1!o§ = 0;
         }
         this.§=U§ = -this.§1!o§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §^!K§(param1:Boolean) : void
      {
         this.§+!p§ = param1;
      }
      
      public function set §-3§(param1:Boolean) : void
      {
         this.§]!^§ = param1;
      }
      
      public function get §-3§() : Boolean
      {
         return this.§]!^§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§@V§ = param1;
         }
      }
      
      public function set §3!9§(param1:Boolean) : void
      {
         this.§5u§ = param1;
      }
      
      public function get §3!9§() : Boolean
      {
         return this.§5u§;
      }
   }
}
