package §_-p9§
{
   import flash.utils.getTimer;
   
   public class §_-4R§
   {
       
      
      private var mName:String;
      
      private var §_-us§:String;
      
      private var §_-eY§:String;
      
      private var §_-Eh§:String;
      
      private var §_-1q§:uint;
      
      private var §_-oq§:uint;
      
      private var §_-L8§:uint;
      
      private var §_-aE§:Boolean = false;
      
      public function §_-4R§()
      {
         super();
         this.§_-L8§ = getTimer();
      }
      
      public function get §_-5j§() : Boolean
      {
         return this.§_-aE§;
      }
      
      public function set §_-5j§(param1:Boolean) : void
      {
         this.§_-aE§ = param1;
      }
      
      public function get §_-KO§() : String
      {
         return this.§_-Eh§;
      }
      
      public function set §_-KO§(param1:String) : void
      {
         this.§_-Eh§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §_-UJ§() : String
      {
         return this.§_-us§;
      }
      
      public function set §_-UJ§(param1:String) : void
      {
         this.§_-us§ = param1;
      }
      
      public function get password() : String
      {
         return this.§_-eY§;
      }
      
      public function set password(param1:String) : void
      {
         this.§_-eY§ = param1;
      }
      
      public function get §_-4B§() : uint
      {
         this.§_-1q§ = getTimer() - this.§_-L8§;
         return this.§_-1q§;
      }
      
      public function get §_-qZ§() : uint
      {
         return this.§_-oq§;
      }
      
      public function set §_-qZ§(param1:uint) : void
      {
         this.§_-oq§ = param1;
      }
      
      public function get §_-VT§() : Boolean
      {
         if(this.§_-KO§ != null && this.§_-KO§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
