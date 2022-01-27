package §^!v§
{
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import flash.display.MovieClip;
   
   public class §5!N§
   {
       
      
      protected var §@!#§:int;
      
      protected var §5o§:Boolean;
      
      protected var §'!2§:Boolean;
      
      protected var §&"Y§:§^"m§;
      
      protected var §]"b§:§^"m§;
      
      protected var §^c§:§ #^§;
      
      protected var §6"7§:MovieClip;
      
      public var §5!_§:Object;
      
      public function §5!N§(param1:§ #^§, param2:int, param3:Boolean = true)
      {
         super();
         this.§^c§ = param1;
         this.§@!#§ = param2;
         this.§5o§ = param3;
         this.§'!2§ = true;
         this.init();
      }
      
      public function get canBuyToUnlock() : Boolean
      {
         return this.§5o§;
      }
      
      public function set canBuyToUnlock(param1:Boolean) : void
      {
         this.§5o§ = param1;
      }
      
      public function get §?!N§() : int
      {
         return this.§@!#§;
      }
      
      public function get isLocked() : Boolean
      {
         return this.§'!2§;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this.§'!2§ = param1;
         this.refresh();
      }
      
      private function init() : void
      {
         this.§&"Y§ = §^"m§(this.§^c§.getItemByName("Button_NextLevel"));
         this.§]"b§ = §^"m§(this.§^c§.getItemByName("Button_NextLevelLocked"));
         this.§6"7§ = this.§^c§.mClip.unlockTimer;
      }
      
      protected function refresh() : void
      {
         this.§6"7§.visible = this.§'!2§;
         this.§]"b§.setVisibility(this.§'!2§);
         this.§&"Y§.setVisibility(!this.§'!2§);
      }
      
      public function dispose() : void
      {
         this.§&"Y§ = null;
         this.§]"b§ = null;
         this.§6"7§ = null;
      }
   }
}
