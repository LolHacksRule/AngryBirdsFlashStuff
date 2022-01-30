package §-b§
{
   public class §8!_§
   {
       
      
      protected var static:Number = 0.0;
      
      protected var §1!%§:Number = 0.0;
      
      private var §]p§:Boolean = true;
      
      protected var §6l§:Function = null;
      
      protected var §0"$§:Function = null;
      
      protected var §;p§:Boolean = true;
      
      protected var §2q§:Boolean = true;
      
      protected var §^t§:Boolean = true;
      
      public function §8!_§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§6l§ = null;
         this.§0"$§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§1!%§ = param1;
         if(param1 < 0)
         {
            this.§1!%§ = 0;
         }
         this.static = -this.§1!%§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§]p§;
      }
      
      public function pause() : void
      {
         this.§]p§ = true;
      }
      
      public function play() : void
      {
         this.§]p§ = false;
      }
      
      public function set §+!,§(param1:Boolean) : void
      {
         this.§;p§ = param1;
      }
      
      public function set §?!b§(param1:Boolean) : void
      {
         this.§2q§ = param1;
      }
      
      public function get §?!b§() : Boolean
      {
         return this.§2q§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§6l§ = param1;
         }
      }
      
      public function set §#!d§(param1:Function) : void
      {
         if(this.static <= 0)
         {
            this.§0"$§ = param1;
         }
      }
      
      public function set §?!p§(param1:Boolean) : void
      {
         this.§^t§ = param1;
      }
      
      public function get §?!p§() : Boolean
      {
         return this.§^t§;
      }
      
      protected function §!!K§(param1:Number) : Boolean
      {
         if(this.§]p§ || this.isCompleted)
         {
            return false;
         }
         this.static += param1;
         if(this.static <= 0)
         {
            return false;
         }
         if(this.static <= param1)
         {
            if(this.§0"$§ != null)
            {
               this.§0"$§();
               this.§0"$§ = null;
            }
         }
         return true;
      }
   }
}
