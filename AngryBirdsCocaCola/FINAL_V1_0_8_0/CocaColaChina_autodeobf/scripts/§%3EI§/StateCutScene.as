package §>I§
{
   import § !C§.§6!W§;
   import §%!^§.§"=§;
   import §&V§.§9t§;
   import §0!b§.§#!=§;
   import §48§.§4a§;
   import §9!3§.§"!V§;
   import §9!3§.§7!"§;
   
   public class StateCutScene extends §6!W§
   {
      
      public static const § !P§:String = "StateCutScene";
       
      
      private var §=3§:§"!V§;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §-!#§.§^x§();
         var _loc1_:String = this.§7z§();
         this.§=3§ = §7!"§.§5!O§(_loc1_,§4a§.§]!D§);
         if(this.§=3§)
         {
            §#!=§.§&![§.§[!&§(true);
            §#!=§.§&![§.§0!D§(false);
            this.§=3§.update(0);
            if(§#!=§.§&![§.§^!b§)
            {
               §#!=§.§&![§.§^!b§.addChild(this.§=3§.sprite);
            }
         }
         else
         {
            mNextState = §]#§.§ !P§;
         }
      }
      
      private function §7z§() : String
      {
         var _loc1_:String = §"=§.§4+§;
         var _loc2_:String = §"=§.§<4§().§4&§(_loc1_ + "-OUTRO");
         if(!_loc2_ || !§"=§.§]m§)
         {
            _loc1_ = §"=§.§?x§;
            _loc2_ = §"=§.§<4§().§4&§(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         if(this.§=3§)
         {
            if(§#!=§.§&![§.§^!b§)
            {
               §#!=§.§&![§.§^!b§.removeChild(this.§=3§.sprite);
            }
            this.§=3§.dispose();
            this.§=3§ = null;
         }
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9t§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!W§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §6!W§.STATE_STATUS_COMPLETED;
         }
         if(!this.§=3§.update(param1))
         {
            mNextState = §]#§.§ !P§;
         }
         return §6!W§.STATE_STATUS_RUNNING;
      }
   }
}
