package §50§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §1" §.§#!j§;
   import §6]§.§+!T§;
   import §7!@§.§+`§;
   import §;" §.§5L§;
   import §;<§.§'B§;
   import §=!7§.§9"8§;
   import §@y§.§0=§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class StateMap extends §'B§
   {
      
      private static const §5!§:Class = §[q§;
      
      private static const §?!4§:int = 10;
      
      public static const §%!Q§:String = "StateMap";
      
      public static const §4h§:String = "MainMenuChannel";
      
      private static var §,!S§:XML;
      
      private static var §?n§:int = -1;
       
      
      private var §"d§:§8!e§;
      
      private var §0!m§:MapPig;
      
      private var §0!l§:Vector.<MapQuestIcon>;
      
      public function StateMap(param1:Boolean = true, param2:String = "StateMap")
      {
         this.§0!l§ = new Vector.<MapQuestIcon>();
         super(param1,param2);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(mNextState.length > 0)
         {
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return _loc2_;
      }
      
      override public function init() : void
      {
         super.init();
         §,!S§ = §+!T§.§`x§(§5!§);
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_Map[0]);
         this.§"d§ = new §8!e§();
         this.§0!m§ = new MapPig(this.§"d§);
         this.§0!m§.addEventListener(MouseEvent.CLICK,this.start);
         §0"#§.§4!m§(§4h§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Vector.<Object> = (AngryBirdsFP11.§>!7§ as §+`§).completedQuests.concat();
         var _loc2_:int = _loc1_.length;
         if(§?n§ < 0)
         {
            §?n§ = _loc2_;
         }
         _loc2_ %= §?!4§;
         §?n§ = Math.min(§?n§ % §?!4§,_loc2_);
         var _loc3_:Number = (§?n§ + 1) / §?!4§;
         var _loc4_:Number = (_loc2_ + 1) / §?!4§;
         this.§"d§.draw(§,!S§.map[0],_loc3_,_loc4_);
         §`!v§.getItemByName("Map").mClip.addChildAt(this.§"d§,1);
         this.§;!@§();
         this.§&!Y§(0,§?n§);
         this.§&!Y§(§?n§,_loc2_,true);
         this.§0!m§.§4R§(_loc4_);
         §`!v§.getItemByName("Map").mClip.addChild(this.§0!m§);
         §?n§ = _loc2_;
         var _loc5_:Boolean = (AngryBirdsFP11.§>!7§ as §+`§).sandboxAvailable;
         var _loc6_:§9"8§;
         (_loc6_ = §`!v§.getItemByName("Button_Sandbox") as §9"8§).setEnabled(_loc5_);
         _loc6_.mClip.alpha = !!_loc5_ ? Number(1) : Number(0.5);
         §0"#§.§9"2§("BadPiggies_LevelSelecion",§4h§,1000);
      }
      
      private function §;!@§() : void
      {
         var _loc1_:MapQuestIcon = null;
         for each(_loc1_ in this.§0!l§)
         {
            _loc1_.parent.removeChild(_loc1_);
         }
         this.§0!l§ = new Vector.<MapQuestIcon>();
      }
      
      private function §&!Y§(param1:int, param2:int, param3:Boolean = false) : void
      {
         var _loc6_:Object = null;
         var _loc7_:Number = NaN;
         var _loc8_:§+!&§ = null;
         var _loc9_:MapQuestIcon = null;
         var _loc4_:Object = (AngryBirdsFP11.§>!7§ as §+`§).completedQuests;
         var _loc5_:int = 0;
         for each(_loc6_ in _loc4_)
         {
            if(_loc5_ < param1 || _loc5_ >= param2)
            {
               _loc5_++;
            }
            else
            {
               _loc7_ = (_loc5_ + 1) / §?!4§;
               _loc8_ = this.§"d§.§^<§(_loc7_);
               _loc9_ = new MapQuestIcon(_loc6_,_loc8_.x,_loc8_.y,param3);
               §`!v§.getItemByName("Map").mClip.addChild(_loc9_);
               _loc5_++;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         switch(param2)
         {
            case "START":
               this.start();
               break;
            case "SANDBOX":
               §0"#§.§9"2§("Sound_Button_Click");
               if(§#!j§.§[E§)
               {
                  §#!j§.§[E§.§9L§.§=D§();
               }
               §5L§.§[E§.§["%§(null);
         }
      }
      
      private function start(param1:Event = null) : void
      {
         §0"#§.§9"2§("Sound_Button_Click");
         if(§#!j§.§[E§)
         {
            §#!j§.§[E§.§9L§.§=D§();
         }
         §5L§.§[E§.each(§5L§.§[E§.§#!b§());
      }
   }
}
