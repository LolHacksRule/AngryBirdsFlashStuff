package §'V§
{
   public class §8a§
   {
       
      
      protected var §9R§:Number = 0.0;
      
      protected var §&l§:Number = 0.0;
      
      protected var §,h§:Function = null;
      
      protected var §!!p§:Boolean = true;
      
      protected var §]!4§:Boolean = true;
      
      protected var §;!n§:Boolean = true;
      
      public function §8a§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§&l§ = param1;
         if(param1 < 0)
         {
            this.§&l§ = 0;
         }
         this.§9R§ = -this.§&l§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §?p§(param1:Boolean) : void
      {
         this.§!!p§ = param1;
      }
      
      public function set §5"6§(param1:Boolean) : void
      {
         this.§]!4§ = param1;
      }
      
      public function get §5"6§() : Boolean
      {
         return this.§]!4§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§,h§ = param1;
         }
      }
      
      public function set §"H§(param1:Boolean) : void
      {
         this.§;!n§ = param1;
      }
      
      public function get §"H§() : Boolean
      {
         return this.§;!n§;
      }
   }
}
