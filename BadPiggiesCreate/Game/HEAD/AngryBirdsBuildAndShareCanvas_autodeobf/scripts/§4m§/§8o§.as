package §4m§
{
   import §&!P§.§^!!§;
   import flash.display.DisplayObject;
   
   public class §8o§
   {
      
      public static const §7!L§:int = 0;
      
      public static const §"m§:int = 1;
      
      public static const §4!j§:int = 2;
      
      public static const §4!d§:int = 3;
       
      
      private var §51§:int;
      
      private var § R§:int;
      
      private var §`?§:int;
      
      private var §2G§:Boolean;
      
      protected var § !7§:Boolean = false;
      
      protected var §]B§:String;
      
      public function §8o§()
      {
         super();
         this.§`?§ = §7!L§;
         this.§]B§ = "";
      }
      
      public function startCheck(param1:§^!!§) : void
      {
         this.§ !7§ = false;
         this.§`?§ = §4!d§;
         this.§51§ = 0;
         this.§ R§ = 0;
      }
      
      public function update(param1:§^!!§, param2:int) : void
      {
         if(this.§2G§)
         {
            this.§2G§ = false;
            this.§6o§();
         }
         if(this.§51§ > 0)
         {
            this.§51§ -= param2;
            if(this.§51§ <= 0)
            {
               this.finish();
            }
         }
         else if(this.§ R§ > 0)
         {
            this.§ R§ -= param2;
            if(this.§ R§ <= 0)
            {
               this.§6o§();
            }
         }
      }
      
      protected function finish(param1:int = 0) : void
      {
         this.§ !7§ = true;
         this.§51§ = param1;
         if(this.§51§ == 0)
         {
            this.§`?§ = §4!j§;
         }
      }
      
      protected function §6o§(param1:int = 0) : void
      {
         this.§ !7§ = true;
         this.§ R§ = param1;
         if(this.§ R§ == 0)
         {
            this.§`?§ = §"m§;
         }
      }
      
      public function §'r§() : void
      {
         this.§2G§ = true;
      }
      
      public function get status() : int
      {
         return this.§`?§;
      }
      
      public final function reset() : void
      {
         this.§`?§ = §7!L§;
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         return new Vector.<DisplayObject>();
      }
      
      public function get description() : String
      {
         return this.§]B§;
      }
   }
}
