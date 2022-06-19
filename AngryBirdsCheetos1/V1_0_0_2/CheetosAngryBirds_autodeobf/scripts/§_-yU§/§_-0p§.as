package §_-yU§
{
   import flash.utils.getTimer;
   
   public class §_-0p§
   {
       
      
      private var mName:String;
      
      private var §_-08§:String;
      
      private var §_-yy§:String;
      
      private var §_-BC§:String;
      
      private var §_-Ty§:uint;
      
      private var §super§:uint;
      
      private var §_-dC§:uint;
      
      private var §_-IT§:Boolean = false;
      
      public function §_-0p§()
      {
         super();
         this.§_-dC§ = getTimer();
      }
      
      public function get §_-G4§() : Boolean
      {
         return this.§_-IT§;
      }
      
      public function set §_-G4§(param1:Boolean) : void
      {
         this.§_-IT§ = param1;
      }
      
      public function get §_-y5§() : String
      {
         return this.§_-BC§;
      }
      
      public function set §_-y5§(param1:String) : void
      {
         this.§_-BC§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §_-2o§() : String
      {
         return this.§_-08§;
      }
      
      public function set §_-2o§(param1:String) : void
      {
         this.§_-08§ = param1;
      }
      
      public function get §_-sJ§() : String
      {
         return this.§_-yy§;
      }
      
      public function set §_-sJ§(param1:String) : void
      {
         this.§_-yy§ = param1;
      }
      
      public function get §do §() : uint
      {
         this.§_-Ty§ = getTimer() - this.§_-dC§;
         return this.§_-Ty§;
      }
      
      public function get §_-o9§() : uint
      {
         return this.§super§;
      }
      
      public function set §_-o9§(param1:uint) : void
      {
         this.§super§ = param1;
      }
      
      public function get §_-3W§() : Boolean
      {
         if(this.§_-y5§ != null && this.§_-y5§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
