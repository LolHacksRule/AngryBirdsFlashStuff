package §catch§
{
   public class §?5§
   {
       
      
      protected var §[!#§:Number = 0.0;
      
      protected var §7%§:Number = 0.0;
      
      protected var §&!Q§:Function = null;
      
      protected var §+"%§:Boolean = true;
      
      protected var §8!l§:Boolean = true;
      
      protected var § set§:Boolean = true;
      
      public function §?5§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§7%§ = param1;
         if(param1 < 0)
         {
            this.§7%§ = 0;
         }
         this.§[!#§ = -this.§7%§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §]!5§(param1:Boolean) : void
      {
         this.§+"%§ = param1;
      }
      
      public function set §;v§(param1:Boolean) : void
      {
         this.§8!l§ = param1;
      }
      
      public function get §;v§() : Boolean
      {
         return this.§8!l§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§&!Q§ = param1;
         }
      }
      
      public function set §9#§(param1:Boolean) : void
      {
         this.§ set§ = param1;
      }
      
      public function get §9#§() : Boolean
      {
         return this.§ set§;
      }
   }
}
