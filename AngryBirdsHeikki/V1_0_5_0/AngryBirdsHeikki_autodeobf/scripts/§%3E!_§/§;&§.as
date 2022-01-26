package §>!_§
{
   public class §;&§
   {
       
      
      protected var §9E§:Number = 0.0;
      
      protected var §]H§:Number = 0.0;
      
      protected var §finally§:Function = null;
      
      protected var §-!H§:Boolean = true;
      
      protected var §8u§:Boolean = true;
      
      protected var § !1§:Boolean = true;
      
      public function §;&§()
      {
         super();
      }
      
      public function set delay(param1:Number) : void
      {
         this.§]H§ = param1;
         if(param1 < 0)
         {
            this.§]H§ = 0;
         }
         this.§9E§ = -this.§]H§ * 1000;
      }
      
      public function get isCompleted() : Boolean
      {
         return false;
      }
      
      public function get isPaused() : Boolean
      {
         return false;
      }
      
      public function set §2j§(param1:Boolean) : void
      {
         this.§-!H§ = param1;
      }
      
      public function set §^'§(param1:Boolean) : void
      {
         this.§8u§ = param1;
      }
      
      public function get §^'§() : Boolean
      {
         return this.§8u§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         if(!this.isCompleted)
         {
            this.§finally§ = param1;
         }
      }
      
      public function set §=!#§(param1:Boolean) : void
      {
         this.§ !1§ = param1;
      }
      
      public function get §=!#§() : Boolean
      {
         return this.§ !1§;
      }
   }
}
