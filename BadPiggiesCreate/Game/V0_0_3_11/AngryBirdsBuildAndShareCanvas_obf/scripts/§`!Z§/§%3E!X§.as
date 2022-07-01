package §`!Z§
{
   import § ""§.§6!u§;
   import flash.display.DisplayObject;
   
   public class §>!X§
   {
      
      public static const §3!K§:int = 0;
      
      public static const §2-§:int = 1;
      
      public static const § !=§:int = 2;
      
      public static const §=O§:int = 3;
       
      
      private var §%"§:int;
      
      private var §11§:int;
      
      private var §-"1§:int;
      
      private var §`?§:Boolean;
      
      protected var §1l§:Boolean = false;
      
      protected var §]!=§:String;
      
      public function §>!X§()
      {
         super();
         this.§-"1§ = §3!K§;
         this.§]!=§ = "";
      }
      
      public function startCheck(param1:§6!u§) : void
      {
         this.§1l§ = false;
         this.§-"1§ = §=O§;
         this.§%"§ = 0;
         this.§11§ = 0;
      }
      
      public function update(param1:§6!u§, param2:int) : void
      {
         if(this.§`?§)
         {
            this.§`?§ = false;
            this.§-f§();
         }
         if(this.§%"§ > 0)
         {
            this.§%"§ -= param2;
            if(this.§%"§ <= 0)
            {
               this.finish();
            }
         }
         else if(this.§11§ > 0)
         {
            this.§11§ -= param2;
            if(this.§11§ <= 0)
            {
               this.§-f§();
            }
         }
      }
      
      protected function finish(param1:int = 0) : void
      {
         this.§1l§ = true;
         this.§%"§ = param1;
         if(this.§%"§ == 0)
         {
            this.§-"1§ = § !=§;
         }
      }
      
      protected function §-f§(param1:int = 0) : void
      {
         this.§1l§ = true;
         this.§11§ = param1;
         if(this.§11§ == 0)
         {
            this.§-"1§ = §2-§;
         }
      }
      
      public function §6t§() : void
      {
         this.§`?§ = true;
      }
      
      public function get status() : int
      {
         return this.§-"1§;
      }
      
      public final function reset() : void
      {
         this.§-"1§ = §3!K§;
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         return new Vector.<DisplayObject>();
      }
      
      public function get description() : String
      {
         return this.§]!=§;
      }
   }
}
