package §_-nE§
{
   import flash.utils.getTimer;
   
   public class §_-Vr§
   {
       
      
      private var mName:String;
      
      private var §_-jF§:String;
      
      private var §_-VB§:String;
      
      private var §_-ug§:String;
      
      private var §_-BI§:uint;
      
      private var §_-Fb§:uint;
      
      private var §_-Z7§:uint;
      
      private var §_-Vc§:Boolean = false;
      
      public function §_-Vr§()
      {
         super();
         this.§_-Z7§ = getTimer();
      }
      
      public function get §_-Vx§() : Boolean
      {
         return this.§_-Vc§;
      }
      
      public function set §_-Vx§(param1:Boolean) : void
      {
         this.§_-Vc§ = param1;
      }
      
      public function get §_-dw§() : String
      {
         return this.§_-ug§;
      }
      
      public function set §_-dw§(param1:String) : void
      {
         this.§_-ug§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §_-sc§() : String
      {
         return this.§_-jF§;
      }
      
      public function set §_-sc§(param1:String) : void
      {
         this.§_-jF§ = param1;
      }
      
      public function get password() : String
      {
         return this.§_-VB§;
      }
      
      public function set password(param1:String) : void
      {
         this.§_-VB§ = param1;
      }
      
      public function get §_-eu§() : uint
      {
         this.§_-BI§ = getTimer() - this.§_-Z7§;
         return this.§_-BI§;
      }
      
      public function get §_-tz§() : uint
      {
         return this.§_-Fb§;
      }
      
      public function set §_-tz§(param1:uint) : void
      {
         this.§_-Fb§ = param1;
      }
      
      public function get §_-Bl§() : Boolean
      {
         if(this.§_-dw§ != null && this.§_-dw§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
