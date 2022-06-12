package §4!y§
{
   import § ^§.§0c§;
   import § true§.§8K§;
   import §&W§.§3g§;
   import §-!H§.§0!]§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §4!S§.§<V§;
   import §4!j§.§0p§;
   import §>!5§.§>!T§;
   import §>Z§.§5;§;
   import §^^§.StateLevelEditor;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class StateMap extends §>!T§
   {
      
      private static const §!!W§:Class = §#e§;
      
      private static const §8"+§:int = 10;
      
      public static const §>H§:String = "StateMap";
      
      private static var §"b§:XML;
      
      private static var §+"§:int = -1;
       
      
      private var §@5§:§<U§;
      
      private var §%4§:MapPig;
      
      private var §"y§:Vector.<MapQuestIcon>;
      
      public function StateMap(param1:Boolean = true, param2:String = "StateMap")
      {
         this.§"y§ = new Vector.<MapQuestIcon>();
         super(param1,param2);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(mNextState.length > 0)
         {
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return _loc2_;
      }
      
      override public function init() : void
      {
         super.init();
         §"b§ = §3g§.§5">§(§!!W§);
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_Map[0]);
         this.§@5§ = new §<U§();
         this.§%4§ = new MapPig(this.§@5§);
         this.§%4§.addEventListener(MouseEvent.CLICK,this.start);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Vector.<Object> = (AngryBirdsFP11.§"!c§ as §0!]§).completedQuests.concat();
         var _loc2_:int = _loc1_.length;
         if(§+"§ < 0)
         {
            §+"§ = _loc2_;
         }
         _loc2_ %= §8"+§;
         §+"§ = Math.min(§+"§ % §8"+§,_loc2_);
         var _loc3_:Number = (§+"§ + 1) / §8"+§;
         var _loc4_:Number = (_loc2_ + 1) / §8"+§;
         this.§@5§.draw(§"b§.map[0],_loc3_,_loc4_);
         §3?§.getItemByName("Map").mClip.addChildAt(this.§@5§,1);
         this.§"d§();
         this.§ !8§(0,§+"§);
         this.§ !8§(§+"§,_loc2_,true);
         this.§%4§.§,!5§(_loc4_);
         §3?§.getItemByName("Map").mClip.addChild(this.§%4§);
         §+"§ = _loc2_;
         var _loc5_:* = !(AngryBirdsFP11.§"!c§ as §0!]§).sandboxAvailable;
         var _loc6_:§8K§;
         (_loc6_ = §3?§.getItemByName("Button_Sandbox") as §8K§).setEnabled(_loc5_);
         _loc6_.mClip.alpha = !!_loc5_ ? Number(1) : Number(0.5);
      }
      
      private function §"d§() : void
      {
         var _loc1_:MapQuestIcon = null;
         for each(_loc1_ in this.§"y§)
         {
            _loc1_.parent.removeChild(_loc1_);
         }
         this.§"y§ = new Vector.<MapQuestIcon>();
      }
      
      private function § !8§(param1:int, param2:int, param3:Boolean = false) : void
      {
         var _loc6_:Object = null;
         var _loc7_:Number = NaN;
         var _loc8_:§1">§ = null;
         var _loc9_:MapQuestIcon = null;
         var _loc4_:Object = (AngryBirdsFP11.§"!c§ as §0!]§).completedQuests;
         var _loc5_:int = 0;
         for each(_loc6_ in _loc4_)
         {
            if(_loc5_ < param1 || _loc5_ >= param2)
            {
               _loc5_++;
            }
            else
            {
               _loc7_ = (_loc5_ + 1) / §8"+§;
               _loc8_ = this.§@5§.§2!@§(_loc7_);
               _loc9_ = new MapQuestIcon(_loc6_,_loc8_.x,_loc8_.y,param3);
               §3?§.getItemByName("Map").mClip.addChild(_loc9_);
               _loc5_++;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         switch(param2)
         {
            case "START":
               this.start();
               break;
            case "SANDBOX":
               §5;§.playSound("Sound_Button_Click");
               §<V§.§7!?§.§0!2§(null);
         }
      }
      
      private function start(param1:Event = null) : void
      {
         §5;§.playSound("Sound_Button_Click");
         if(§0c§.§7!?§ && §0c§.§7!?§.§+"9§.§do§())
         {
            mNextState = StateLevelEditor.§>H§;
         }
         else
         {
            §<V§.§7!?§.§0l§(§<V§.§7!?§.§9!R§());
         }
      }
   }
}
