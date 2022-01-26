package §_-NW§
{
   import flash.utils.getTimer;
   
   public class §_-XZ§
   {
       
      
      private var mName:String;
      
      private var §_-sa§:String;
      
      private var §_-Bb§:String;
      
      private var §_-PZ§:String;
      
      private var §_-86§:uint;
      
      private var §_-ON§:uint;
      
      private var §_-ZQ§:uint;
      
      private var §_-H7§:Boolean = false;
      
      public function §_-XZ§()
      {
         super();
         this.§_-ZQ§ = getTimer();
      }
      
      public function get §_-fr§() : Boolean
      {
         return this.§_-H7§;
      }
      
      public function set §_-fr§(param1:Boolean) : void
      {
         this.§_-H7§ = param1;
      }
      
      public function get §_-70§() : String
      {
         return this.§_-PZ§;
      }
      
      public function set §_-70§(param1:String) : void
      {
         this.§_-PZ§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §_-iI§() : String
      {
         return this.§_-sa§;
      }
      
      public function set §_-iI§(param1:String) : void
      {
         this.§_-sa§ = param1;
      }
      
      public function get password() : String
      {
         return this.§_-Bb§;
      }
      
      public function set password(param1:String) : void
      {
         this.§_-Bb§ = param1;
      }
      
      public function get §_-tN§() : uint
      {
         this.§_-86§ = getTimer() - this.§_-ZQ§;
         return this.§_-86§;
      }
      
      public function get §_-DX§() : uint
      {
         return this.§_-ON§;
      }
      
      public function set §_-DX§(param1:uint) : void
      {
         this.§_-ON§ = param1;
      }
      
      public function get §_-h9§() : Boolean
      {
         if(this.§_-70§ != null && this.§_-70§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
