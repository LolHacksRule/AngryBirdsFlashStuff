package § in§
{
   import §%!&§.§'"-§;
   import flash.display.DisplayObject;
   
   public class §8R§
   {
      
      public static const §'t§:int = 0;
      
      public static const §;!Q§:int = 1;
      
      public static const §;=§:int = 2;
      
      public static const §&z§:int = 3;
       
      
      private var §<L§:int;
      
      private var §2! §:int;
      
      private var §#!?§:int;
      
      private var §#![§:Boolean;
      
      protected var §[;§:Boolean = false;
      
      protected var §53§:String;
      
      public function §8R§()
      {
         super();
         this.§#!?§ = §'t§;
         this.§53§ = "";
      }
      
      public function startCheck(param1:§'"-§) : void
      {
         this.§[;§ = false;
         this.§#!?§ = §&z§;
         this.§<L§ = 0;
         this.§2! § = 0;
      }
      
      public function update(param1:§'"-§, param2:int) : void
      {
         if(this.§#![§)
         {
            this.§#![§ = false;
            this.§^"4§();
         }
         if(this.§<L§ > 0)
         {
            this.§<L§ -= param2;
            if(this.§<L§ <= 0)
            {
               this.finish();
            }
         }
         else if(this.§2! § > 0)
         {
            this.§2! § -= param2;
            if(this.§2! § <= 0)
            {
               this.§^"4§();
            }
         }
      }
      
      protected function finish(param1:int = 0) : void
      {
         this.§[;§ = true;
         this.§<L§ = param1;
         if(this.§<L§ == 0)
         {
            this.§#!?§ = §;=§;
         }
      }
      
      protected function §^"4§(param1:int = 0) : void
      {
         this.§[;§ = true;
         this.§2! § = param1;
         if(this.§2! § == 0)
         {
            this.§#!?§ = §;!Q§;
         }
      }
      
      public function §>!g§() : void
      {
         this.§#![§ = true;
      }
      
      public function get status() : int
      {
         return this.§#!?§;
      }
      
      public final function reset() : void
      {
         this.§#!?§ = §'t§;
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         return new Vector.<DisplayObject>();
      }
      
      public function get description() : String
      {
         return this.§53§;
      }
   }
}
