package §+N§
{
   public class §!!!§
   {
       
      
      protected var §`+§:Number = 0.0;
      
      protected var §1!<§:Number = 0.0;
      
      protected var §6;§:Function = null;
      
      protected var §]C§:Boolean = true;
      
      protected var §3t§:Boolean = true;
      
      protected var §'!1§:Boolean = true;
      
      public function §!!!§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§1!<§ = param1;
         if(param1 < 0)
         {
            this.§1!<§ = 0;
         }
         this.§`+§ = -this.§1!<§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function set §5@§(param1:Boolean) : void
      {
         this.§]C§ = param1;
      }
      
      public function set §&l§(param1:Boolean) : void
      {
         this.§3t§ = param1;
      }
      
      public function get §&l§() : Boolean
      {
         return this.§3t§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§6;§ = param1;
         }
      }
      
      public function set §58§(param1:Boolean) : void
      {
         this.§'!1§ = param1;
      }
      
      public function get §58§() : Boolean
      {
         return this.§'!1§;
      }
   }
}
