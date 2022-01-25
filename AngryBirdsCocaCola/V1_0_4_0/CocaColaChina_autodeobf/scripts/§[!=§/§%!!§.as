package §[!=§
{
   public class §%!!§
   {
       
      
      protected var §7!G§:Number = 0.0;
      
      protected var §++§:Number = 0.0;
      
      protected var §&!R§:Function = null;
      
      protected var §`!X§:Boolean = true;
      
      protected var §90§:Boolean = true;
      
      protected var §'!R§:Boolean = true;
      
      public function §%!!§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§++§ = param1;
         if(param1 < 0)
         {
            this.§++§ = 0;
         }
         this.§7!G§ = -this.§++§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §9!b§(param1:Boolean) : void
      {
         this.§`!X§ = param1;
      }
      
      public function set §1!1§(param1:Boolean) : void
      {
         this.§90§ = param1;
      }
      
      public function get §1!1§() : Boolean
      {
         return this.§90§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§&!R§ = param1;
         }
      }
      
      public function set §2!5§(param1:Boolean) : void
      {
         this.§'!R§ = param1;
      }
      
      public function get §2!5§() : Boolean
      {
         return this.§'!R§;
      }
   }
}
