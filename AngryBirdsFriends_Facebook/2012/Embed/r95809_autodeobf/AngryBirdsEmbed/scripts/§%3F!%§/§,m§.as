package §?!%§
{
   public class §,m§
   {
       
      
      protected var §&!9§:Number = 0.0;
      
      protected var §'s§:Number = 0.0;
      
      protected var §,!F§:Function = null;
      
      protected var §^!G§:Boolean = true;
      
      protected var §#l§:Boolean = true;
      
      protected var §"!B§:Boolean = true;
      
      public function §,m§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§'s§ = param1;
         if(param1 < 0)
         {
            this.§'s§ = 0;
         }
         this.§&!9§ = -this.§'s§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function set §01§(param1:Boolean) : void
      {
         this.§^!G§ = param1;
      }
      
      public function set §8!C§(param1:Boolean) : void
      {
         this.§#l§ = param1;
      }
      
      public function get §8!C§() : Boolean
      {
         return this.§#l§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§,!F§ = param1;
         }
      }
      
      public function set §1!H§(param1:Boolean) : void
      {
         this.§"!B§ = param1;
      }
      
      public function get §1!H§() : Boolean
      {
         return this.§"!B§;
      }
   }
}
