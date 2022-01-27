package §"#§
{
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import flash.display.MovieClip;
   
   public class §"G§
   {
       
      
      protected var §6!?§:int;
      
      protected var §6!5§:Boolean;
      
      protected var §?!-§:Boolean;
      
      protected var §[+§:§;g§;
      
      protected var §>"C§:§;g§;
      
      protected var §[#,§:§@!8§;
      
      protected var §^!R§:MovieClip;
      
      public var §@X§:Object;
      
      public function §"G§(param1:§@!8§, param2:int, param3:Boolean = true)
      {
         super();
         this.§[#,§ = param1;
         this.§6!?§ = param2;
         this.§6!5§ = param3;
         this.§?!-§ = true;
         this.init();
      }
      
      public function get canBuyToUnlock() : Boolean
      {
         return this.§6!5§;
      }
      
      public function set canBuyToUnlock(param1:Boolean) : void
      {
         this.§6!5§ = param1;
      }
      
      public function get §5!T§() : int
      {
         return this.§6!?§;
      }
      
      public function get isLocked() : Boolean
      {
         return this.§?!-§;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this.§?!-§ = param1;
         this.refresh();
      }
      
      private function init() : void
      {
         this.§[+§ = §;g§(this.§[#,§.getItemByName("Button_NextLevel"));
         this.§>"C§ = §;g§(this.§[#,§.getItemByName("Button_NextLevelLocked"));
         this.§^!R§ = this.§[#,§.mClip.unlockTimer;
      }
      
      protected function refresh() : void
      {
         this.§^!R§.visible = this.§?!-§;
         this.§>"C§.setVisibility(this.§?!-§);
         this.§[+§.setVisibility(!this.§?!-§);
      }
      
      public function dispose() : void
      {
         this.§[+§ = null;
         this.§>"C§ = null;
         this.§^!R§ = null;
      }
   }
}
