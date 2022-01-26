package §_-vF§
{
   import flash.utils.getTimer;
   
   public class §_-fi§
   {
       
      
      private var mName:String;
      
      private var §_-b3§:String;
      
      private var §_-cg§:String;
      
      private var §_-tQ§:String;
      
      private var §_-fy§:uint;
      
      private var §_-af§:uint;
      
      private var §_-dI§:uint;
      
      private var §_-wa§:Boolean = false;
      
      public function §_-fi§()
      {
         super();
         this.§_-dI§ = getTimer();
      }
      
      public function get §_-A§() : Boolean
      {
         return this.§_-wa§;
      }
      
      public function set §_-A§(param1:Boolean) : void
      {
         this.§_-wa§ = param1;
      }
      
      public function get §_-Z6§() : String
      {
         return this.§_-tQ§;
      }
      
      public function set §_-Z6§(param1:String) : void
      {
         this.§_-tQ§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §_-Xe§() : String
      {
         return this.§_-b3§;
      }
      
      public function set §_-Xe§(param1:String) : void
      {
         this.§_-b3§ = param1;
      }
      
      public function get password() : String
      {
         return this.§_-cg§;
      }
      
      public function set password(param1:String) : void
      {
         this.§_-cg§ = param1;
      }
      
      public function get §_-Rl§() : uint
      {
         this.§_-fy§ = getTimer() - this.§_-dI§;
         return this.§_-fy§;
      }
      
      public function get §_-pv§() : uint
      {
         return this.§_-af§;
      }
      
      public function set §_-pv§(param1:uint) : void
      {
         this.§_-af§ = param1;
      }
      
      public function get §_-5f§() : Boolean
      {
         if(this.§_-Z6§ != null && this.§_-Z6§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
