package §8Z§
{
   public class §]"_§
   {
       
      
      protected var §7"D§:Number = 0.0;
      
      protected var §%f§:Number = 0.0;
      
      private var § !#§:Boolean = true;
      
      protected var §<$4§:Function = null;
      
      protected var §1#%§:Function = null;
      
      protected var §?!N§:Boolean = true;
      
      protected var §+#H§:Boolean = true;
      
      protected var §-#q§:Boolean = true;
      
      public function §]"_§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§<$4§ = null;
         this.§1#%§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§%f§ = param1;
         if(param1 < 0)
         {
            this.§%f§ = 0;
         }
         this.§7"D§ = -this.§%f§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§ !#§;
      }
      
      public function pause() : void
      {
         this.§ !#§ = true;
      }
      
      public function play() : void
      {
         this.§ !#§ = false;
      }
      
      public function set §!#j§(param1:Boolean) : void
      {
         this.§?!N§ = param1;
      }
      
      public function set §+"+§(param1:Boolean) : void
      {
         this.§+#H§ = param1;
      }
      
      public function get §+"+§() : Boolean
      {
         return this.§+#H§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§<$4§ = param1;
         }
      }
      
      public function set onStart(param1:Function) : void
      {
         if(this.§7"D§ <= 0)
         {
            this.§1#%§ = param1;
         }
      }
      
      public function set §&#X§(param1:Boolean) : void
      {
         this.§-#q§ = param1;
      }
      
      public function get §&#X§() : Boolean
      {
         return this.§-#q§;
      }
      
      protected function § 5§(param1:Number) : Boolean
      {
         if(this.§ !#§ || this.isCompleted)
         {
            return false;
         }
         this.§7"D§ += param1;
         if(this.§7"D§ <= 0)
         {
            return false;
         }
         if(this.§7"D§ <= param1)
         {
            if(this.§1#%§ != null)
            {
               this.§1#%§();
               this.§1#%§ = null;
            }
         }
         return true;
      }
   }
}
