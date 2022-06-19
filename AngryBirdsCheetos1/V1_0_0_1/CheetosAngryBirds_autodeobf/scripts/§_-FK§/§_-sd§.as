package §_-FK§
{
   import flash.utils.getTimer;
   
   public class §_-sd§
   {
       
      
      private var mName:String;
      
      private var §_-00I§:String;
      
      private var §_-9§:String;
      
      private var §_-th§:String;
      
      private var §_-1U§:uint;
      
      private var §_-fM§:uint;
      
      private var §_-ub§:uint;
      
      private var §_-g3§:Boolean = false;
      
      public function §_-sd§()
      {
         super();
         this.§_-ub§ = getTimer();
      }
      
      public function get §_-qs§() : Boolean
      {
         return this.§_-g3§;
      }
      
      public function set §_-qs§(param1:Boolean) : void
      {
         this.§_-g3§ = param1;
      }
      
      public function get §_-6J§() : String
      {
         return this.§_-th§;
      }
      
      public function set §_-6J§(param1:String) : void
      {
         this.§_-th§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get §_-PG§() : String
      {
         return this.§_-00I§;
      }
      
      public function set §_-PG§(param1:String) : void
      {
         this.§_-00I§ = param1;
      }
      
      public function get §_-0-u§() : String
      {
         return this.§_-9§;
      }
      
      public function set §_-0-u§(param1:String) : void
      {
         this.§_-9§ = param1;
      }
      
      public function get §_-tp§() : uint
      {
         this.§_-1U§ = getTimer() - this.§_-ub§;
         return this.§_-1U§;
      }
      
      public function get §_-24§() : uint
      {
         return this.§_-fM§;
      }
      
      public function set §_-24§(param1:uint) : void
      {
         this.§_-fM§ = param1;
      }
      
      public function get §_-96§() : Boolean
      {
         if(this.§_-6J§ != null && this.§_-6J§.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
