package §`q§
{
   import §]r§.§2"%§;
   import flash.display.DisplayObject;
   
   public class § ![§
   {
      
      public static const §`9§:int = 0;
      
      public static const §!",§:int = 1;
      
      public static const §%f§:int = 2;
      
      public static const §]!q§:int = 3;
       
      
      private var §!p§:int;
      
      private var §@`§:int;
      
      private var §^d§:int;
      
      private var §0&§:Boolean;
      
      protected var §!5§:Boolean = false;
      
      protected var §5!-§:String;
      
      public function § ![§()
      {
         super();
         this.§^d§ = §`9§;
         this.§5!-§ = "";
      }
      
      public function startCheck(param1:§2"%§) : void
      {
         this.§!5§ = false;
         this.§^d§ = §]!q§;
         this.§!p§ = 0;
         this.§@`§ = 0;
      }
      
      public function update(param1:§2"%§, param2:int) : void
      {
         if(this.§0&§)
         {
            this.§0&§ = false;
            this.§]!;§();
         }
         if(this.§!p§ > 0)
         {
            this.§!p§ -= param2;
            if(this.§!p§ <= 0)
            {
               this.finish();
            }
         }
         else if(this.§@`§ > 0)
         {
            this.§@`§ -= param2;
            if(this.§@`§ <= 0)
            {
               this.§]!;§();
            }
         }
      }
      
      protected function finish(param1:int = 0) : void
      {
         this.§!5§ = true;
         this.§!p§ = param1;
         if(this.§!p§ == 0)
         {
            this.§^d§ = §%f§;
         }
      }
      
      protected function §]!;§(param1:int = 0) : void
      {
         this.§!5§ = true;
         this.§@`§ = param1;
         if(this.§@`§ == 0)
         {
            this.§^d§ = §!",§;
         }
      }
      
      public function §#o§() : void
      {
         this.§0&§ = true;
      }
      
      public function get status() : int
      {
         return this.§^d§;
      }
      
      public final function reset() : void
      {
         this.§^d§ = §`9§;
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         return new Vector.<DisplayObject>();
      }
      
      public function get description() : String
      {
         return this.§5!-§;
      }
   }
}
