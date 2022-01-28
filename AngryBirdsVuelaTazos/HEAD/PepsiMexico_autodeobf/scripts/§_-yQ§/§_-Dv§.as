package §_-yQ§
{
   import flash.utils.getTimer;
   
   public class §_-Dv§
   {
       
      
      private var mName:String;
      
      private var §_-Ty§:String;
      
      private var §_-iQ§:String;
      
      private var §_-uV§:String;
      
      private var §_-i0§:uint;
      
      private var §_-ub§:uint;
      
      private var §_-M4§:uint;
      
      private var §_-Ny§:Boolean = false;
      
      public function §_-Dv§()
      {
         super();
         this.§_-M4§ = getTimer();
      }
      
      public function get §case§() : Boolean
      {
         return this.§_-Ny§;
      }
      
      public function set §case§(param1:Boolean) : void
      {
         this.§_-Ny§ = param1;
      }
      
      public function get §_-VF§() : String
      {
         return this.§_-uV§;
      }
      
      public function set §_-VF§(param1:String) : void
      {
         this.§_-uV§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §_-U§() : String
      {
         return this.§_-Ty§;
      }
      
      public function set §_-U§(param1:String) : void
      {
         this.§_-Ty§ = param1;
      }
      
      public function get password() : String
      {
         return this.§_-iQ§;
      }
      
      public function set password(param1:String) : void
      {
         this.§_-iQ§ = param1;
      }
      
      public function get §_-bq§() : uint
      {
         this.§_-i0§ = getTimer() - this.§_-M4§;
         return this.§_-i0§;
      }
      
      public function get §_-AN§() : uint
      {
         return this.§_-ub§;
      }
      
      public function set §_-AN§(param1:uint) : void
      {
         this.§_-ub§ = param1;
      }
      
      public function get §_-JP§() : Boolean
      {
         if(this.§_-VF§ != null && this.§_-VF§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
