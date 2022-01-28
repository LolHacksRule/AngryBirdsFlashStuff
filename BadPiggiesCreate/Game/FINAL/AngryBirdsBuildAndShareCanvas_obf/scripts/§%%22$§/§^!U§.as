package §%"$§
{
   import §+!o§.§?"-§;
   import flash.display.DisplayObject;
   
   public class §^!U§
   {
      
      public static const §"!x§:int = 0;
      
      public static const §+!>§:int = 1;
      
      public static const §-7§:int = 2;
      
      public static const §5!k§:int = 3;
       
      
      private var §&%§:int;
      
      private var §!e§:int;
      
      private var §if§:int;
      
      private var §;!f§:Boolean;
      
      protected var §#[§:Boolean = false;
      
      protected var §9!7§:String;
      
      public function §^!U§()
      {
         super();
         this.§if§ = §"!x§;
         this.§9!7§ = "";
      }
      
      public function startCheck(param1:§?"-§) : void
      {
         this.§#[§ = false;
         this.§if§ = §5!k§;
         this.§&%§ = 0;
         this.§!e§ = 0;
      }
      
      public function update(param1:§?"-§, param2:int) : void
      {
         if(this.§;!f§)
         {
            this.§;!f§ = false;
            this.§3!P§();
         }
         if(this.§&%§ > 0)
         {
            this.§&%§ -= param2;
            if(this.§&%§ <= 0)
            {
               this.finish();
            }
         }
         else if(this.§!e§ > 0)
         {
            this.§!e§ -= param2;
            if(this.§!e§ <= 0)
            {
               this.§3!P§();
            }
         }
      }
      
      protected function finish(param1:int = 0) : void
      {
         this.§#[§ = true;
         this.§&%§ = param1;
         if(this.§&%§ == 0)
         {
            this.§if§ = §-7§;
         }
      }
      
      protected function §3!P§(param1:int = 0) : void
      {
         this.§#[§ = true;
         this.§!e§ = param1;
         if(this.§!e§ == 0)
         {
            this.§if§ = §+!>§;
         }
      }
      
      public function §+"'§() : void
      {
         this.§;!f§ = true;
      }
      
      public function get status() : int
      {
         return this.§if§;
      }
      
      public final function reset() : void
      {
         this.§if§ = §"!x§;
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         return new Vector.<DisplayObject>();
      }
      
      public function get description() : String
      {
         return this.§9!7§;
      }
   }
}
