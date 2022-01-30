package §2L§
{
   import §"p§.§@=§;
   import §%!,§.§,v§;
   import §%B§.§^k§;
   import §,!x§.§]S§;
   import §2!w§.§[D§;
   import §5!8§.§;!Z§;
   import §7N§.StateLevelEditor;
   import §>";§.§#§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§<!w§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class StateMap extends §,v§
   {
      
      private static const §`X§:Class = §%!n§;
      
      private static const §9J§:int = 10;
      
      public static const §8n§:String = "StateMap";
      
      private static var §6!d§:XML;
      
      private static var §"u§:int = -1;
       
      
      private var §2h§:§-!j§;
      
      private var §4D§:MapPig;
      
      private var §^_§:Vector.<MapQuestIcon>;
      
      public function StateMap(param1:Boolean = true, param2:String = "StateMap")
      {
         this.§^_§ = new Vector.<MapQuestIcon>();
         super(param1,param2);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(mNextState.length > 0)
         {
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return _loc2_;
      }
      
      override public function init() : void
      {
         super.init();
         §6!d§ = §@=§.§="#§(§`X§);
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_Map[0]);
         this.§2h§ = new §-!j§();
         this.§4D§ = new MapPig(this.§2h§);
         this.§4D§.addEventListener(MouseEvent.CLICK,this.start);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Vector.<Object> = (AngryBirdsFP11.§`!j§ as §#§).completedQuests.concat();
         var _loc2_:int = _loc1_.length;
         if(§"u§ < 0)
         {
            §"u§ = _loc2_;
         }
         _loc2_ %= §9J§;
         §"u§ = Math.min(§"u§ % §9J§,_loc2_);
         var _loc3_:Number = (§"u§ + 1) / §9J§;
         var _loc4_:Number = (_loc2_ + 1) / §9J§;
         this.§2h§.draw(§6!d§.map[0],_loc3_,_loc4_);
         §?F§.getItemByName("Map").mClip.addChildAt(this.§2h§,1);
         this.§3h§();
         this.§+"3§(0,§"u§);
         this.§+"3§(§"u§,_loc2_,true);
         this.§4D§.§!"=§(_loc4_);
         §?F§.getItemByName("Map").mClip.addChild(this.§4D§);
         §"u§ = _loc2_;
         var _loc5_:* = !(AngryBirdsFP11.§`!j§ as §#§).sandboxAvailable;
         var _loc6_:§;!Z§;
         (_loc6_ = §?F§.getItemByName("Button_Sandbox") as §;!Z§).setEnabled(_loc5_);
         _loc6_.mClip.alpha = !!_loc5_ ? Number(1) : Number(0.5);
      }
      
      private function §3h§() : void
      {
         var _loc1_:MapQuestIcon = null;
         for each(_loc1_ in this.§^_§)
         {
            _loc1_.parent.removeChild(_loc1_);
         }
         this.§^_§ = new Vector.<MapQuestIcon>();
      }
      
      private function §+"3§(param1:int, param2:int, param3:Boolean = false) : void
      {
         var _loc6_:Object = null;
         var _loc7_:Number = NaN;
         var _loc8_:§%b§ = null;
         var _loc9_:MapQuestIcon = null;
         var _loc4_:Object = (AngryBirdsFP11.§`!j§ as §#§).completedQuests;
         var _loc5_:int = 0;
         for each(_loc6_ in _loc4_)
         {
            if(_loc5_ < param1 || _loc5_ >= param2)
            {
               _loc5_++;
            }
            else
            {
               _loc7_ = (_loc5_ + 1) / §9J§;
               _loc8_ = this.§2h§.§"7§(_loc7_);
               _loc9_ = new MapQuestIcon(_loc6_,_loc8_.x,_loc8_.y,param3);
               §?F§.getItemByName("Map").mClip.addChild(_loc9_);
               _loc5_++;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         switch(param2)
         {
            case "START":
               this.start();
               break;
            case "SANDBOX":
               §^k§.playSound("Sound_Button_Click");
               §[D§.§ "!§.§&!m§(null);
         }
      }
      
      private function start(param1:Event = null) : void
      {
         §^k§.playSound("Sound_Button_Click");
         if(§]S§.§ "!§ && §]S§.§ "!§.§3!V§.§+q§())
         {
            mNextState = StateLevelEditor.§8n§;
         }
         else
         {
            §[D§.§ "!§.§>"9§(§[D§.§ "!§.§26§());
         }
      }
   }
}
