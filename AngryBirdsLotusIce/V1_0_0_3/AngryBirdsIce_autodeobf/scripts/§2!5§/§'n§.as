package §2!5§
{
   public class §'n§
   {
       
      
      protected var § !A§:Number = 0.0;
      
      protected var §<!C§:Number = 0.0;
      
      protected var §@F§:Function = null;
      
      protected var §+?§:Boolean = true;
      
      protected var §]_§:Boolean = true;
      
      protected var §@_§:Boolean = true;
      
      public function §'n§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§<!C§ = param1;
         if(param1 < 0)
         {
            this.§<!C§ = 0;
         }
         this.§ !A§ = -this.§<!C§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function set §1!+§(param1:Boolean) : void
      {
         this.§+?§ = param1;
      }
      
      public function set §+&§(param1:Boolean) : void
      {
         this.§]_§ = param1;
      }
      
      public function get §+&§() : Boolean
      {
         return this.§]_§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§@F§ = param1;
         }
      }
      
      public function set §1!=§(param1:Boolean) : void
      {
         this.§@_§ = param1;
      }
      
      public function get §1!=§() : Boolean
      {
         return this.§@_§;
      }
   }
}
