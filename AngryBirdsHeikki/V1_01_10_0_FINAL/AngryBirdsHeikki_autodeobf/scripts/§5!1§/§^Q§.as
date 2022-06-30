package §5!1§
{
   public class §^Q§
   {
       
      
      protected var §+K§:Number = 0.0;
      
      protected var §]A§:Number = 0.0;
      
      protected var §,3§:Function = null;
      
      protected var § !Z§:Boolean = true;
      
      protected var §3[§:Boolean = true;
      
      protected var §#c§:Boolean = true;
      
      public function §^Q§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§]A§ = param1;
         if(param1 < 0)
         {
            this.§]A§ = 0;
         }
         this.§+K§ = -this.§]A§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §,!P§(param1:Boolean) : void
      {
         this.§ !Z§ = param1;
      }
      
      public function set §<!-§(param1:Boolean) : void
      {
         this.§3[§ = param1;
      }
      
      public function get §<!-§() : Boolean
      {
         return this.§3[§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§,3§ = param1;
         }
      }
      
      public function set §<'§(param1:Boolean) : void
      {
         this.§#c§ = param1;
      }
      
      public function get §<'§() : Boolean
      {
         return this.§#c§;
      }
   }
}
