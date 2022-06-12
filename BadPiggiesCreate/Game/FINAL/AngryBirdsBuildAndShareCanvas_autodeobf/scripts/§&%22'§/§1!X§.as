package §&"'§
{
   public class §1!X§
   {
       
      
      protected var §7A§:Number = 0.0;
      
      protected var §0!<§:Number = 0.0;
      
      protected var §&6§:Function = null;
      
      protected var §<!y§:Boolean = true;
      
      protected var §-!w§:Boolean = true;
      
      protected var §4!Y§:Boolean = true;
      
      public function §1!X§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§0!<§ = param1;
         if(param1 < 0)
         {
            this.§0!<§ = 0;
         }
         this.§7A§ = -this.§0!<§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §#!5§(param1:Boolean) : void
      {
         this.§<!y§ = param1;
      }
      
      public function set §?V§(param1:Boolean) : void
      {
         this.§-!w§ = param1;
      }
      
      public function get §?V§() : Boolean
      {
         return this.§-!w§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§&6§ = param1;
         }
      }
      
      public function set §!^§(param1:Boolean) : void
      {
         this.§4!Y§ = param1;
      }
      
      public function get §!^§() : Boolean
      {
         return this.§4!Y§;
      }
   }
}
