package §_-ZI§
{
   import flash.utils.getTimer;
   
   public class §_-9v§
   {
       
      
      private var mName:String;
      
      private var §_-2T§:String;
      
      private var §_-UA§:String;
      
      private var §_-8U§:String;
      
      private var §_-H5§:uint;
      
      private var §_-rM§:uint;
      
      private var §_-Nj§:uint;
      
      private var § each§:Boolean = false;
      
      public function §_-9v§()
      {
         super();
         this.§_-Nj§ = getTimer();
      }
      
      public function get §_-Zn§() : Boolean
      {
         return this.§ each§;
      }
      
      public function set §_-Zn§(param1:Boolean) : void
      {
         this.§ each§ = param1;
      }
      
      public function get §_-le§() : String
      {
         return this.§_-8U§;
      }
      
      public function set §_-le§(param1:String) : void
      {
         this.§_-8U§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §_-Yv§() : String
      {
         return this.§_-2T§;
      }
      
      public function set §_-Yv§(param1:String) : void
      {
         this.§_-2T§ = param1;
      }
      
      public function get password() : String
      {
         return this.§_-UA§;
      }
      
      public function set password(param1:String) : void
      {
         this.§_-UA§ = param1;
      }
      
      public function get §_-VF§() : uint
      {
         this.§_-H5§ = getTimer() - this.§_-Nj§;
         return this.§_-H5§;
      }
      
      public function get §_-jX§() : uint
      {
         return this.§_-rM§;
      }
      
      public function set §_-jX§(param1:uint) : void
      {
         this.§_-rM§ = param1;
      }
      
      public function get §_-pp§() : Boolean
      {
         if(this.§_-le§ != null && this.§_-le§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
