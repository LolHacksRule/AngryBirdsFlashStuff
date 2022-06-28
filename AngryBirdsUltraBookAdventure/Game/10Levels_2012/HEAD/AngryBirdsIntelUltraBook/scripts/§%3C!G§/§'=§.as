package §<!G§
{
   public class §'=§
   {
       
      
      protected var §>2§:Number = 0.0;
      
      protected var §=8§:Number = 0.0;
      
      protected var §1!1§:Function = null;
      
      protected var §9i§:Boolean = true;
      
      protected var §+M§:Boolean = true;
      
      protected var §2N§:Boolean = true;
      
      public function §'=§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§=8§ = param1;
         if(param1 < 0)
         {
            this.§=8§ = 0;
         }
         this.§>2§ = -this.§=8§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §+K§(param1:Boolean) : void
      {
         this.§9i§ = param1;
      }
      
      public function set §'H§(param1:Boolean) : void
      {
         this.§+M§ = param1;
      }
      
      public function get §'H§() : Boolean
      {
         return this.§+M§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§1!1§ = param1;
         }
      }
      
      public function set §^Y§(param1:Boolean) : void
      {
         this.§2N§ = param1;
      }
      
      public function get §^Y§() : Boolean
      {
         return this.§2N§;
      }
   }
}
