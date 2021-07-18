package §,B§
{
   import § "@§.StateLevelEditor;
   import §'!A§.§-!S§;
   import §'i§.§'!;§;
   import §'p§.§="#§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §8" §.§,!q§;
   import §=!M§.§?!1§;
   import §^!y§.§'"#§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class StateMap extends §5y§
   {
      
      private static const §>!x§:Class = §8!x§;
      
      private static const §2!-§:int = 10;
      
      public static const §'=§:String = "StateMap";
      
      private static var §;a§:XML;
      
      private static var §@!K§:int = -1;
       
      
      private var §?"6§:§9W§;
      
      private var §!!-§:MapPig;
      
      private var §;A§:Vector.<MapQuestIcon>;
      
      public function StateMap(param1:Boolean = true, param2:String = "StateMap")
      {
         this.§;A§ = new Vector.<MapQuestIcon>();
         super(param1,param2);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(mNextState.length > 0)
         {
            return §5y§.STATE_STATUS_COMPLETED;
         }
         return _loc2_;
      }
      
      override public function init() : void
      {
         super.init();
         §;a§ = §?!1§.§ !?§(§>!x§);
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_Map[0]);
         this.§?"6§ = new §9W§();
         this.§!!-§ = new MapPig(this.§?"6§);
         this.§!!-§.addEventListener(MouseEvent.CLICK,this.start);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Vector.<Object> = (AngryBirdsFP11.§>" § as §'"#§).completedQuests.concat();
         var _loc2_:int = _loc1_.length;
         if(§@!K§ < 0)
         {
            §@!K§ = _loc2_;
         }
         _loc2_ %= §2!-§;
         §@!K§ = Math.min(§@!K§ % §2!-§,_loc2_);
         var _loc3_:Number = (§@!K§ + 1) / §2!-§;
         var _loc4_:Number = (_loc2_ + 1) / §2!-§;
         this.§?"6§.draw(§;a§.map[0],_loc3_,_loc4_);
         §?E§.getItemByName("Map").mClip.addChildAt(this.§?"6§,1);
         this.§=,§();
         this.§0"?§(0,§@!K§);
         this.§0"?§(§@!K§,_loc2_,true);
         this.§!!-§.§3!A§(_loc4_);
         §?E§.getItemByName("Map").mClip.addChild(this.§!!-§);
         §@!K§ = _loc2_;
         var _loc5_:* = !(AngryBirdsFP11.§>" § as §'"#§).sandboxAvailable;
         var _loc6_:§="#§;
         (_loc6_ = §?E§.getItemByName("Button_Sandbox") as §="#§).setEnabled(_loc5_);
         _loc6_.mClip.alpha = !!_loc5_ ? Number(1) : Number(0.5);
      }
      
      private function §=,§() : void
      {
         var _loc1_:MapQuestIcon = null;
         for each(_loc1_ in this.§;A§)
         {
            _loc1_.parent.removeChild(_loc1_);
         }
         this.§;A§ = new Vector.<MapQuestIcon>();
      }
      
      private function §0"?§(param1:int, param2:int, param3:Boolean = false) : void
      {
         var _loc6_:Object = null;
         var _loc7_:Number = NaN;
         var _loc8_:§="9§ = null;
         var _loc9_:MapQuestIcon = null;
         var _loc4_:Object = (AngryBirdsFP11.§>" § as §'"#§).completedQuests;
         var _loc5_:int = 0;
         for each(_loc6_ in _loc4_)
         {
            if(_loc5_ < param1 || _loc5_ >= param2)
            {
               _loc5_++;
            }
            else
            {
               _loc7_ = (_loc5_ + 1) / §2!-§;
               _loc8_ = this.§?"6§.§-C§(_loc7_);
               _loc9_ = new MapQuestIcon(_loc6_,_loc8_.x,_loc8_.y,param3);
               §?E§.getItemByName("Map").mClip.addChild(_loc9_);
               _loc5_++;
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         switch(param2)
         {
            case "START":
               this.start();
               break;
            case "SANDBOX":
               §5!U§.playSound("Sound_Button_Click");
               §,!q§.§2=§.§?j§(null);
         }
      }
      
      private function start(param1:Event = null) : void
      {
         §5!U§.playSound("Sound_Button_Click");
         if(§'!;§.§2=§ && §'!;§.§2=§.§4!4§.§3l§())
         {
            mNextState = StateLevelEditor.§'=§;
         }
         else
         {
            §,!q§.§2=§.§-E§(§,!q§.§2=§.§>!9§());
         }
      }
   }
}
