package §2!D§
{
   public class §&!B§
   {
       
      
      protected var §[E§:Number = 0.0;
      
      protected var §5L§:Number = 0.0;
      
      protected var §=L§:Function = null;
      
      protected var §!!K§:Boolean = true;
      
      protected var §`!#§:Boolean = true;
      
      protected var §&C§:Boolean = true;
      
      public function §&!B§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§5L§ = param1;
         if(param1 < 0)
         {
            this.§5L§ = 0;
         }
         this.§[E§ = -this.§5L§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §!b§(param1:Boolean) : void
      {
         this.§!!K§ = param1;
      }
      
      public function set §='§(param1:Boolean) : void
      {
         this.§`!#§ = param1;
      }
      
      public function get §='§() : Boolean
      {
         return this.§`!#§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§=L§ = param1;
         }
      }
      
      public function set §%!&§(param1:Boolean) : void
      {
         this.§&C§ = param1;
      }
      
      public function get §%!&§() : Boolean
      {
         return this.§&C§;
      }
   }
}
