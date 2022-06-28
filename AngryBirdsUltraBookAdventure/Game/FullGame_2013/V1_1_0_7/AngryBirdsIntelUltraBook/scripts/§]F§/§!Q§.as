package §]F§
{
   public class §!Q§
   {
       
      
      protected var §!!L§:Number = 0.0;
      
      protected var §+!e§:Number = 0.0;
      
      protected var §10§:Function = null;
      
      protected var §[!c§:Boolean = true;
      
      protected var §?" §:Boolean = true;
      
      protected var §2!L§:Boolean = true;
      
      public function §!Q§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§+!e§ = param1;
         if(param1 < 0)
         {
            this.§+!e§ = 0;
         }
         this.§!!L§ = -this.§+!e§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §;!W§(param1:Boolean) : void
      {
         this.§[!c§ = param1;
      }
      
      public function set §^!5§(param1:Boolean) : void
      {
         this.§?" § = param1;
      }
      
      public function get §^!5§() : Boolean
      {
         return this.§?" §;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§10§ = param1;
         }
      }
      
      public function set §<!v§(param1:Boolean) : void
      {
         this.§2!L§ = param1;
      }
      
      public function get §<!v§() : Boolean
      {
         return this.§2!L§;
      }
   }
}
