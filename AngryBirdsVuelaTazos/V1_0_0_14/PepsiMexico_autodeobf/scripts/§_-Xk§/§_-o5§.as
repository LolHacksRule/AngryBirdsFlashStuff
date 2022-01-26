package §_-Xk§
{
   import flash.utils.getTimer;
   
   public class §_-o5§
   {
       
      
      private var mName:String;
      
      private var §_-l-§:String;
      
      private var §_-8k§:String;
      
      private var §_-p2§:String;
      
      private var §_-SH§:uint;
      
      private var §_-sy§:uint;
      
      private var §_-1q§:uint;
      
      private var §_-ee§:Boolean = false;
      
      public function §_-o5§()
      {
         super();
         this.§_-1q§ = getTimer();
      }
      
      public function get §_-Zc§() : Boolean
      {
         return this.§_-ee§;
      }
      
      public function set §_-Zc§(param1:Boolean) : void
      {
         this.§_-ee§ = param1;
      }
      
      public function get §_-za§() : String
      {
         return this.§_-p2§;
      }
      
      public function set §_-za§(param1:String) : void
      {
         this.§_-p2§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §_-P0§() : String
      {
         return this.§_-l-§;
      }
      
      public function set §_-P0§(param1:String) : void
      {
         this.§_-l-§ = param1;
      }
      
      public function get password() : String
      {
         return this.§_-8k§;
      }
      
      public function set password(param1:String) : void
      {
         this.§_-8k§ = param1;
      }
      
      public function get §_-pm§() : uint
      {
         this.§_-SH§ = getTimer() - this.§_-1q§;
         return this.§_-SH§;
      }
      
      public function get §_-Ca§() : uint
      {
         return this.§_-sy§;
      }
      
      public function set §_-Ca§(param1:uint) : void
      {
         this.§_-sy§ = param1;
      }
      
      public function get §_-2r§() : Boolean
      {
         if(this.§_-za§ != null && this.§_-za§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
