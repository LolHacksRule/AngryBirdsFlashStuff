package §try§
{
   import §%!n§.§7P§;
   import §%%§.§<!z§;
   import §&"8§.Quest;
   import §&"8§.§[`§;
   import §&"8§.§]T§;
   import §5!k§.§6"6§;
   import §7"2§.§;!5§;
   import §8!7§.§&%§;
   import §;!A§.§9!U§;
   import §<!I§.§7!N§;
   import §<!I§.§>"-§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §6>§ extends §>"-§ implements IEventDispatcher
   {
      
      private static const §%!%§:String = "initial";
      
      private static const §[h§:String = "questInfo";
      
      private static const §#>§:String = "questList";
      
      private static const §>!0§:int = -400;
      
      private static const §2@§:int = -10;
      
      private static const §#!4§:int = 3;
      
      public static var §@!_§:String = "";
      
      public static var §#m§:String = "";
       
      
      private var §;i§:§&%§;
      
      private var §@!g§:FileReference;
      
      private var §<!f§:Quest;
      
      private var §[",§:MovieClip;
      
      private var §4C§:String;
      
      private var §0!$§:Dictionary;
      
      private var §39§:int = 0;
      
      private var §#Z§:Vector.<§]T§>;
      
      private var §8E§:MovieClip;
      
      private var §-!6§:Boolean = false;
      
      private var §5P§:MovieClip;
      
      private var §4! §:EventDispatcher;
      
      private var §2!c§:Boolean = true;
      
      private var §9&§:Dictionary;
      
      private var §=!R§:Number = 0;
      
      public function §6>§(param1:§&%§, param2:XML, param3:§>"-§)
      {
         this.§9&§ = new Dictionary();
         super(param2,param3,null);
         this.§;i§ = param1;
         param3.§?!;§(this);
         this.§[",§ = this.mClip.Container_QuestMenu;
         this.§[",§.gotoAndStop(0);
         this.§[",§.buttonMode = true;
         this.§[",§.useHandCursor = true;
         this.§4! § = new EventDispatcher(this);
         this.§[",§.MovieClip_MouseArea.addEventListener(MouseEvent.ROLL_OVER,this.§'"&§);
         this.§[",§.MovieClip_MouseArea.addEventListener(MouseEvent.ROLL_OUT,this.§,"4§);
         this.§[",§.MovieClip_MouseArea.addEventListener(MouseEvent.CLICK,this.§-!t§);
         this.§[",§.MovieClip_MouseArea.height = this.§[",§.Container_MainQuest.height;
         this.§[",§.y = §>!0§;
         this.§=!R§ = this.§[",§.x + 30;
         this.§[",§.x = this.§=!R§;
         this.§4C§ = §%!%§;
      }
      
      public function init(param1:Quest) : void
      {
         var _loc3_:§7!N§ = null;
         var _loc6_:Object = null;
         var _loc7_:MovieClip = null;
         this.§<!f§ = param1;
         this.§-!6§ = false;
         this.§<!f§.addEventListener(§9!U§.§2!;§,this.§-"!§);
         this.§<!f§.addEventListener(§9!U§.§,!h§,this.§!o§);
         this.§0!$§ = new Dictionary();
         this.§;i§.movieClip.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§`$§);
         var _loc2_:Object = §[`§.§'!o§.§,!O§();
         var _loc4_:int = 1;
         while(_loc4_ < §#!4§ + 2)
         {
            _loc6_ = _loc2_[_loc4_ - 1];
            _loc7_ = getItemByName("QuestBox" + _loc4_.toString()).mClip;
            if(_loc6_)
            {
               _loc7_.mouseEnabled = true;
               _loc7_.buttonMode = true;
               _loc7_.mouseChildren = false;
               _loc7_.addEventListener(MouseEvent.CLICK,this.§!6§);
               if(_loc4_ <= §#!4§)
               {
                  _loc3_ = getItemByName("QuestTitle" + _loc4_.toString()) as §7!N§;
                  _loc3_.setText((_loc2_[_loc4_ - 1].name as String).toLowerCase());
                  _loc3_.setEnabled(false);
                  this.§0!$§[_loc7_] = _loc2_[_loc4_ - 1];
               }
            }
            else
            {
               _loc7_.mouseEnabled = false;
               _loc7_.buttonMode = false;
               _loc7_.removeEventListener(MouseEvent.CLICK,this.§!6§);
               if(_loc4_ <= §#!4§)
               {
                  _loc3_ = getItemByName("QuestTitle" + _loc4_.toString()) as §7!N§;
                  _loc3_.setText("");
               }
            }
            _loc4_++;
         }
         var _loc5_:TextField;
         (_loc5_ = this.mClip.Container_QuestMenu.Container_MainQuest.QuestTitle.text as TextField).text = §#m§.toLowerCase();
         this.§!o§(new §6"6§(§6"6§.§=z§));
         this.§-"!§();
         this.§'2§(§%!%§);
      }
      
      private function §!6§(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(Event.SELECT));
         §[`§.§'!o§.§#!v§(this.§0!$§[param1.target]);
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§[",§.visible)
         {
            return;
         }
         if(this.§[",§.currentLabel.indexOf("endstate") != -1)
         {
            this.§[",§.stop();
         }
         if(this.§39§ > 0)
         {
            this.§39§ -= param1;
            if(this.§39§ <= 0)
            {
               this.§'2§(§%!%§);
            }
         }
         if(§7P§.§'!o§.isGravityAvailable() && !§7P§.§'!o§.canContinue())
         {
            getItemByName("ButtonGravity").setVisibility(true);
         }
         else
         {
            getItemByName("ButtonGravity").setVisibility(false);
         }
         this.§[",§.x = this.§=!R§;
      }
      
      private function §'2§(param1:String) : void
      {
         if(param1 == §[h§)
         {
            this.§'_§();
            this.§[",§.gotoAndPlay("mini_menu_dropdown");
            if(this.§<!f§)
            {
               this.§!o§(new §6"6§(§6"6§.§2o§));
            }
         }
         else if(param1 == §%!%§)
         {
            this.§[",§.y = §>!0§;
            this.§,"4§(null);
         }
         this.§4C§ = param1;
      }
      
      private function §-!t§(param1:MouseEvent) : void
      {
         if(this.§4C§ != §[h§)
         {
            this.§'2§(§[h§);
            this.§39§ = 0;
         }
         else
         {
            this.§'2§(§%!%§);
         }
      }
      
      private function §'"&§(param1:MouseEvent) : void
      {
         this.§39§ = 0;
      }
      
      private function §,"4§(param1:MouseEvent) : void
      {
         this.§[",§.y = §>!0§;
         this.§[",§.addEventListener(Event.ENTER_FRAME,this.§-q§,false,0,true);
         this.§4C§ = §%!%§;
         this.§!o§(new §6"6§(§6"6§.§#M§));
      }
      
      private function §1!2§(param1:String, param2:DisplayObjectContainer) : DisplayObject
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObject = null;
         var _loc3_:int = 0;
         while(_loc3_ < param2.numChildren)
         {
            if((_loc4_ = param2.getChildAt(_loc3_)) && _loc4_.name == param1)
            {
               return _loc4_;
            }
            if(_loc4_ is DisplayObjectContainer)
            {
               if(_loc5_ = this.§1!2§(param1,_loc4_ as DisplayObjectContainer))
               {
                  return _loc5_;
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      protected function §`$§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.O && param1.ctrlKey)
         {
            this.load();
         }
      }
      
      private function load() : void
      {
         this.§@!g§ = new FileReference();
         this.§@!g§.browse([new FileFilter("Quests (*.xml): ","*.xml")]);
         this.§@!g§.addEventListener(Event.SELECT,this.§4!9§);
      }
      
      private function §4!9§(param1:Event) : void
      {
         §@!_§ = this.§@!g§.name;
         this.§@!g§.removeEventListener(Event.SELECT,this.§4!9§);
         this.§@!g§.addEventListener(Event.COMPLETE,this.§[§);
         this.§@!g§.addEventListener(IOErrorEvent.IO_ERROR,this.§5!q§);
         this.§@!g§.load();
      }
      
      protected function §5!q§(param1:IOErrorEvent) : void
      {
      }
      
      private function §[§(param1:Event) : void
      {
         this.§@!g§.removeEventListener(Event.COMPLETE,this.§[§);
         var _loc2_:XML = new XML((param1.target as FileReference).data);
         this.dispatchEvent(new Event(Event.SELECT));
         §;!5§.§'!o§.§=$§.§"6§();
         §[`§.§'!o§.§^!<§(_loc2_);
      }
      
      public function §!o§(param1:Event = null) : void
      {
         var _loc2_:TextField = null;
         var _loc7_:String = null;
         var _loc8_:* = false;
         var _loc9_:MovieClip = null;
         if(param1 && param1.type == §6"6§.§2o§)
         {
            this.§5P§ = this.§[",§.getChildByName("Container_DropMenu") as MovieClip;
            _loc2_ = this.§5P§.TaskList.text as TextField;
            this.§[",§.MovieClip_MouseArea.y = 477;
            this.§[",§.MovieClip_MouseArea.height = 182;
         }
         else
         {
            this.§[",§.MovieClip_MouseArea.y = 420;
            this.§[",§.MovieClip_MouseArea.height = this.§[",§.Container_MainQuest.height;
         }
         var _loc3_:int = 0;
         if(_loc2_)
         {
            _loc2_.text = "";
         }
         var _loc4_:Vector.<String> = this.§<!f§.§>!^§();
         var _loc5_:int = 1;
         while(_loc5_ <= 3)
         {
            _loc8_ = (_loc7_ = _loc4_[_loc5_ - 1]).indexOf("[done]") > -1;
            _loc3_ += !!_loc8_ ? 1 : 0;
            if(_loc2_)
            {
               _loc9_ = this.§1!2§("TaskCheck" + _loc5_.toString(),this.§5P§) as MovieClip;
               if(_loc5_ >= _loc4_.length + 1)
               {
                  _loc9_.visible = false;
               }
               else
               {
                  _loc9_.visible = _loc7_.indexOf("[done]") > -1;
                  _loc7_ = _loc7_.replace("[done]","");
                  _loc2_.appendText(_loc7_ + "\n");
               }
            }
            _loc5_++;
         }
         var _loc6_:MovieClip;
         (_loc6_ = this.mClip.Container_QuestMenu.Container_MainQuest.SurpriseStar0 as MovieClip).gotoAndStop(_loc3_ > 1 ? 2 : 1);
      }
      
      public function §-"!§(param1:Event = null) : void
      {
         var _loc5_:§]T§ = null;
         var _loc6_:MovieClip = null;
         var _loc2_:Boolean = true;
         var _loc3_:Vector.<§]T§> = this.§<!f§.§2!h§();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc2_ = (_loc5_ = _loc3_[_loc4_]).§;m§;
            if((_loc6_ = this.§1!2§("SurpriseStar" + (_loc4_ + 1).toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).currentFrame == 1 && _loc2_ && !this.§9&§[_loc6_])
            {
               this.§9&§[_loc6_] = this.§5r§(new §<!z§(_loc6_),new §<!z§(_loc5_));
            }
            else if(!_loc2_)
            {
               _loc6_.gotoAndStop(1);
               if(this.§9&§[_loc6_])
               {
                  this.§9&§[_loc6_].removeEventListener(Event.COMPLETE,this.§7+§);
                  this.§9&§[_loc6_] = null;
               }
            }
            _loc4_++;
         }
      }
      
      private function §5r§(param1:§<!z§, param2:§<!z§) : §%q§
      {
         var _loc3_:§%q§ = new §%q§(param2.position,param1.position);
         this.§;i§.movieClip.addChild(_loc3_);
         _loc3_.addEventListener(Event.COMPLETE,this.§7+§);
         return _loc3_;
      }
      
      private function §7+§(param1:Event) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in this.§9&§)
         {
            if(this.§9&§[_loc2_] == param1.target)
            {
               _loc2_.gotoAndStop(2);
            }
         }
      }
      
      public function hide() : void
      {
         this.§[",§.visible = false;
      }
      
      public function show() : void
      {
         this.§[",§.visible = true;
         this.§39§ = 2000;
         this.§'2§(§[h§);
      }
      
      private function §'_§() : void
      {
         if(this.§[",§.hasEventListener(Event.ENTER_FRAME))
         {
            this.§[",§.removeEventListener(Event.ENTER_FRAME,this.§-q§);
         }
      }
      
      protected function §-q§(param1:Event) : void
      {
         if(this.§[",§.currentFrame == 1)
         {
            this.§'_§();
         }
         else
         {
            this.§[",§.prevFrame();
         }
      }
      
      public function §>!f§() : Boolean
      {
         return this.§-!6§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§4! §.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§4! §.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§4! §.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§4! §.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§4! §.willTrigger(param1);
      }
      
      public function §<+§() : void
      {
         this.§[",§.MovieClip_MouseArea.removeEventListener(MouseEvent.ROLL_OVER,this.§'"&§);
         this.§[",§.MovieClip_MouseArea.removeEventListener(MouseEvent.ROLL_OUT,this.§,"4§);
         this.§[",§.MovieClip_MouseArea.removeEventListener(MouseEvent.CLICK,this.§-!t§);
      }
   }
}
