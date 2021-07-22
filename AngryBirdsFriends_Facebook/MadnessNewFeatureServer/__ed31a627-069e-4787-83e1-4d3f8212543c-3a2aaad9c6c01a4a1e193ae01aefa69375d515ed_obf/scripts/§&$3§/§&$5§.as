package §&$3§
{
   public class §&$5§
   {
       
      
      protected var §8"%§:Number = 0.0;
      
      protected var §;"5§:Number = 0.0;
      
      private var §+"q§:Boolean = true;
      
      protected var §6"e§:Function = null;
      
      protected var §^?§:Function = null;
      
      protected var §`4§:Boolean = true;
      
      protected var §##m§:Boolean = true;
      
      protected var §2"a§:Boolean = true;
      
      public function §&$5§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§6"e§ = null;
         this.§^?§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§;"5§ = param1;
         if(param1 < 0)
         {
            this.§;"5§ = 0;
         }
         this.§8"%§ = -this.§;"5§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§+"q§;
      }
      
      public function pause() : void
      {
         this.§+"q§ = true;
      }
      
      public function play() : void
      {
         this.§+"q§ = false;
      }
      
      public function set §+"3§(param1:Boolean) : void
      {
         this.§`4§ = param1;
      }
      
      public function set §=F§(param1:Boolean) : void
      {
         this.§##m§ = param1;
      }
      
      public function get §=F§() : Boolean
      {
         return this.§##m§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§6"e§ = param1;
         }
      }
      
      public function set onStart(param1:Function) : void
      {
         if(this.§8"%§ <= 0)
         {
            this.§^?§ = param1;
         }
      }
      
      public function set §6!'§(param1:Boolean) : void
      {
         this.§2"a§ = param1;
      }
      
      public function get §6!'§() : Boolean
      {
         return this.§2"a§;
      }
      
      protected function §+"a§(param1:Number) : Boolean
      {
         if(this.§+"q§ || this.isCompleted)
         {
            return false;
         }
         this.§8"%§ += param1;
         if(this.§8"%§ <= 0)
         {
            return false;
         }
         if(this.§8"%§ <= param1)
         {
            if(this.§^?§ != null)
            {
               this.§^?§();
               this.§^?§ = null;
            }
         }
         return true;
      }
   }
}
