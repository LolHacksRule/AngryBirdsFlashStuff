package §7H§
{
   public class §6F§
   {
       
      
      protected var §]L§:Number = 0.0;
      
      protected var §@H§:Number = 0.0;
      
      protected var §0V§:Function = null;
      
      protected var §?D§:Boolean = true;
      
      protected var §1!P§:Boolean = true;
      
      protected var §1?§:Boolean = true;
      
      public function §6F§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§@H§ = param1;
         if(param1 < 0)
         {
            this.§@H§ = 0;
         }
         this.§]L§ = -this.§@H§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §`!W§(param1:Boolean) : void
      {
         this.§?D§ = param1;
      }
      
      public function set §%!5§(param1:Boolean) : void
      {
         this.§1!P§ = param1;
      }
      
      public function get §%!5§() : Boolean
      {
         return this.§1!P§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§0V§ = param1;
         }
      }
      
      public function set §`^§(param1:Boolean) : void
      {
         this.§1?§ = param1;
      }
      
      public function get §`^§() : Boolean
      {
         return this.§1?§;
      }
   }
}
