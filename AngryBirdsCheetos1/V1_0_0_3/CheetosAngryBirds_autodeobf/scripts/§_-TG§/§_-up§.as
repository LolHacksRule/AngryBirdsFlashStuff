package §_-TG§
{
   import flash.utils.getTimer;
   
   public class §_-up§
   {
       
      
      private var mName:String;
      
      private var §_-vN§:String;
      
      private var §_-zN§:String;
      
      private var §_-N2§:String;
      
      private var §_-SI§:uint;
      
      private var §_-Fo§:uint;
      
      private var §_-sk§:uint;
      
      private var §_-tN§:Boolean = false;
      
      public function §_-up§()
      {
         super();
         this.§_-sk§ = getTimer();
      }
      
      public function get §_-bu§() : Boolean
      {
         return this.§_-tN§;
      }
      
      public function set §_-bu§(param1:Boolean) : void
      {
         this.§_-tN§ = param1;
      }
      
      public function get §_-mN§() : String
      {
         return this.§_-N2§;
      }
      
      public function set §_-mN§(param1:String) : void
      {
         this.§_-N2§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §_-Go§() : String
      {
         return this.§_-vN§;
      }
      
      public function set §_-Go§(param1:String) : void
      {
         this.§_-vN§ = param1;
      }
      
      public function get §_-1T§() : String
      {
         return this.§_-zN§;
      }
      
      public function set §_-1T§(param1:String) : void
      {
         this.§_-zN§ = param1;
      }
      
      public function get §_-BC§() : uint
      {
         this.§_-SI§ = getTimer() - this.§_-sk§;
         return this.§_-SI§;
      }
      
      public function get §_-k6§() : uint
      {
         return this.§_-Fo§;
      }
      
      public function set §_-k6§(param1:uint) : void
      {
         this.§_-Fo§ = param1;
      }
      
      public function get §_-Hv§() : Boolean
      {
         if(this.§_-mN§ != null && this.§_-mN§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
