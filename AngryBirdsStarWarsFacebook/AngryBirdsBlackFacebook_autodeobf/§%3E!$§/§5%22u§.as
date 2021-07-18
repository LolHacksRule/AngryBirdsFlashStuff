package §>!$§
{
   public class §5"u§
   {
       
      
      private var §&#N§ = null;
      
      private var §"#K§ = null;
      
      private var §>"F§:Boolean = false;
      
      public function §5"u§(param1:* = null)
      {
         super();
         this.§"#K§ = this.§&#N§ = param1;
      }
      
      public function get value() : *
      {
         return this.§"#K§;
      }
      
      public function set value(param1:*) : void
      {
         this.§"#K§ = param1;
         this.§>"F§ = this.§"#K§ != this.§&#N§;
      }
      
      public function get §>t§() : Boolean
      {
         return this.§>"F§;
      }
      
      public function §>j§() : void
      {
         this.§&#N§ = this.§"#K§;
         this.§>"F§ = false;
      }
      
      public function §>"D§() : void
      {
         this.§"#K§ = this.§&#N§;
         this.§>"F§ = false;
      }
      
      public function toString() : String
      {
         return "" + this.value + " (prev \'" + this.§&#N§ + "\')";
      }
      
      public function dispose() : void
      {
         this.§&#N§ = null;
         this.§"#K§ = null;
      }
   }
}
