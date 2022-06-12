package §&#S§
{
   public class §^!0§
   {
       
      
      protected var §&"Q§:Number = 0.0;
      
      protected var §0"=§:Number = 0.0;
      
      private var §5G§:Boolean = true;
      
      protected var §;#§:Function = null;
      
      protected var § get§:Function = null;
      
      protected var §`"v§:Boolean = true;
      
      protected var §!!t§:Boolean = true;
      
      protected var § !o§:Boolean = true;
      
      public function §^!0§()
      {
         super();
      }
      
      public function dispose() : void
      {
         this.§;#§ = null;
         this.§ get§ = null;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§0"=§ = param1;
         if(param1 < 0)
         {
            this.§0"=§ = 0;
         }
         this.§&"Q§ = -this.§0"=§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return this.§5G§;
      }
      
      public function pause() : void
      {
         this.§5G§ = true;
      }
      
      public function play() : void
      {
         this.§5G§ = false;
      }
      
      public function set §>$&§(param1:Boolean) : void
      {
         this.§`"v§ = param1;
      }
      
      public function set §#"V§(param1:Boolean) : void
      {
         this.§!!t§ = param1;
      }
      
      public function get §#"V§() : Boolean
      {
         return this.§!!t§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§;#§ = param1;
         }
      }
      
      public function set onStart(param1:Function) : void
      {
         if(this.§&"Q§ <= 0)
         {
            this.§ get§ = param1;
         }
      }
      
      public function set §^"c§(param1:Boolean) : void
      {
         this.§ !o§ = param1;
      }
      
      public function get §^"c§() : Boolean
      {
         return this.§ !o§;
      }
      
      protected function §0"z§(param1:Number) : Boolean
      {
         if(this.§5G§ || this.isCompleted)
         {
            return false;
         }
         this.§&"Q§ += param1;
         if(this.§&"Q§ <= 0)
         {
            return false;
         }
         if(this.§&"Q§ <= param1)
         {
            if(this.§ get§ != null)
            {
               this.§ get§();
               this.§ get§ = null;
            }
         }
         return true;
      }
   }
}
