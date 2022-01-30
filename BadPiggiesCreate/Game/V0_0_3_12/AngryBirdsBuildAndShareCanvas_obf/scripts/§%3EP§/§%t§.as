package §>P§
{
   import §,!x§.§0!s§;
   import §,!x§.§]S§;
   import §-=§.§8"1§;
   import §0"7§.§ !2§;
   import §1!N§.§!!`§;
   import §2!w§.§8!g§;
   import §2!w§.Quest;
   import §2!w§.§[D§;
   import §2L§.StateMap;
   import §5!8§.§+!?§;
   import §5!8§.§6m§;
   import §^H§.§1l§;
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
   
   public class §%t§ extends §+!?§ implements IEventDispatcher
   {
      
      private static const §5K§:String = "initial";
      
      private static const § !S§:String = "questInfo";
      
      private static const §#"'§:String = "questList";
      
      private static const §]!q§:int = -400;
      
      private static const §;3§:int = -10;
      
      private static const §`!h§:int = 3;
      
      public static var §&!P§:String = "";
      
      public static var §=Q§:String = "";
       
      
      private var §?F§:§1l§;
      
      private var §&!a§:FileReference;
      
      private var §>!V§:Quest;
      
      private var §8!w§:MovieClip;
      
      private var §-!&§:String;
      
      private var §'B§:Dictionary;
      
      private var §?f§:int = 0;
      
      private var §8?§:Vector.<§8!g§>;
      
      private var §'!m§:MovieClip;
      
      private var §"n§:Boolean = false;
      
      private var § "§:MovieClip;
      
      private var §?!>§:EventDispatcher;
      
      private var §90§:Boolean = true;
      
      private var §?!%§:Dictionary;
      
      private var §#">§:Number = 0;
      
      public function §%t§(param1:§1l§, param2:XML, param3:§+!?§)
      {
         this.§?!%§ = new Dictionary();
         super(param2,param3,null);
         this.§?F§ = param1;
         param3.§`!Y§(this);
         this.§8!w§ = mClip.Container_QuestMenu;
         this.§8!w§.gotoAndStop(0);
         this.§8!w§.buttonMode = true;
         this.§?!>§ = new EventDispatcher(this);
         var _loc4_:MovieClip;
         (_loc4_ = this.§&N§("Container_MainQuest",this.§8!w§) as MovieClip).addEventListener(MouseEvent.CLICK,this.§`7§,true);
         _loc4_.useHandCursor = true;
         §]S§.§ "!§.§]!c§.§0!+§(this.onEnterFrame);
         this.§8!w§.y = §]!q§;
         this.§#">§ = this.§8!w§.x + 30;
         this.§8!w§.x = this.§#">§;
         this.§-!&§ = §5K§;
      }
      
      public function init(param1:Quest) : void
      {
         var _loc3_:§6m§ = null;
         var _loc6_:Object = null;
         var _loc7_:MovieClip = null;
         this.§>!V§ = param1;
         this.§"n§ = false;
         this.§>!V§.addEventListener(§ !2§.§3G§,this.§5"4§);
         this.§>!V§.addEventListener(§ !2§.§6@§,this.§7!v§);
         this.§'B§ = new Dictionary();
         this.§?F§.movieClip.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§;4§);
         var _loc2_:Object = §[D§.§ "!§.§%!#§();
         var _loc4_:int = 1;
         while(_loc4_ < §`!h§ + 2)
         {
            _loc6_ = _loc2_[_loc4_ - 1];
            _loc7_ = getItemByName("QuestBox" + _loc4_.toString()).mClip;
            if(_loc6_)
            {
               _loc7_.mouseEnabled = true;
               _loc7_.buttonMode = true;
               _loc7_.mouseChildren = false;
               _loc7_.addEventListener(MouseEvent.CLICK,this.§7!M§);
               if(_loc4_ <= §`!h§)
               {
                  _loc3_ = getItemByName("QuestTitle" + _loc4_.toString()) as §6m§;
                  _loc3_.setText((_loc2_[_loc4_ - 1].name as String).toLowerCase());
                  _loc3_.setEnabled(false);
                  this.§'B§[_loc7_] = _loc2_[_loc4_ - 1];
               }
            }
            else
            {
               _loc7_.mouseEnabled = false;
               _loc7_.buttonMode = false;
               _loc7_.removeEventListener(MouseEvent.CLICK,this.§7!M§);
               if(_loc4_ <= §`!h§)
               {
                  _loc3_ = getItemByName("QuestTitle" + _loc4_.toString()) as §6m§;
                  _loc3_.setText("");
               }
            }
            _loc4_++;
         }
         var _loc5_:TextField;
         (_loc5_ = this.mClip.Container_QuestMenu.Container_MainQuest.QuestTitle.text as TextField).text = §=Q§.toLowerCase();
         _loc5_.mouseEnabled = false;
         this.§7!v§(new §8"1§(§8"1§.§,!n§));
         this.§5"4§();
         this.§<!%§(§5K§);
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§8!w§.visible)
         {
            return;
         }
         if(this.§?f§ > 0)
         {
            this.§?f§ -= param1;
            if(this.§?f§ <= 0)
            {
               this.§<!%§(§5K§);
            }
         }
         if(§0!s§.§ "!§.§>!z§() && !§0!s§.§ "!§.§>!<§())
         {
            getItemByName("ButtonGravity").setVisibility(true);
         }
         else
         {
            getItemByName("ButtonGravity").setVisibility(false);
         }
         this.§8!w§.x = this.§#">§;
      }
      
      public function hide() : void
      {
         this.§8!w§.visible = false;
      }
      
      public function show() : void
      {
         this.§8!w§.visible = true;
      }
      
      private function §]"1§(param1:Event) : void
      {
         §]S§.§ "!§.§]!c§.mNextState = StateMap.§8n§;
      }
      
      private function onEnterFrame(param1:int) : void
      {
         if(this.§8!w§.currentLabel.indexOf("endstate") != -1)
         {
            this.§8!w§.stop();
         }
         var _loc2_:MovieClip = this.§&N§("Button_ShowMap",this.§8!w§) as MovieClip;
         if(_loc2_)
         {
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§]"1§);
            _loc2_.buttonMode = true;
         }
      }
      
      public function § U§() : Boolean
      {
         return this.§"n§;
      }
      
      private function §7!M§(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(Event.SELECT));
         §[D§.§ "!§.§>"9§(this.§'B§[param1.target]);
      }
      
      private function §<!%§(param1:String) : void
      {
         if(param1 == § !S§)
         {
            this.§^L§();
            this.§8!w§.gotoAndPlay("mini_menu_dropdown");
            if(this.§>!V§)
            {
               this.§7!v§(new §8"1§(§8"1§.§!!s§));
            }
         }
         else if(param1 == §5K§)
         {
            this.§8!w§.y = §]!q§;
            this.§>c§(null);
         }
         this.§-!&§ = param1;
      }
      
      private function §`7§(param1:MouseEvent) : void
      {
         if(this.§-!&§ != § !S§)
         {
            this.§<!%§(§ !S§);
            this.§?f§ = 0;
         }
         else
         {
            this.§<!%§(§5K§);
         }
      }
      
      private function §7F§(param1:MouseEvent) : void
      {
         this.§?f§ = 0;
      }
      
      private function §>c§(param1:MouseEvent) : void
      {
         this.§8!w§.y = §]!q§;
         this.§8!w§.addEventListener(Event.ENTER_FRAME,this.§+§,false,0,true);
         this.§-!&§ = §5K§;
         this.§7!v§(new §8"1§(§8"1§.§'s§));
      }
      
      private function §&N§(param1:String, param2:DisplayObjectContainer) : DisplayObject
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
               if(_loc5_ = this.§&N§(param1,_loc4_ as DisplayObjectContainer))
               {
                  return _loc5_;
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      private function §;4§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.O && param1.ctrlKey)
         {
            this.load();
         }
         if(param1.keyCode == Keyboard.Q && param1.ctrlKey)
         {
            this.§ s§();
         }
      }
      
      private function load() : void
      {
         this.§&!a§ = new FileReference();
         this.§&!a§.browse([new FileFilter("Quests (*.xml): ","*.xml")]);
         this.§&!a§.addEventListener(Event.SELECT,this.§?!"§);
      }
      
      private function §?!"§(param1:Event) : void
      {
         §&!P§ = this.§&!a§.name;
         this.§&!a§.removeEventListener(Event.SELECT,this.§?!"§);
         this.§&!a§.addEventListener(Event.COMPLETE,this.§#"4§);
         this.§&!a§.addEventListener(IOErrorEvent.IO_ERROR,this.§>+§);
         this.§&!a§.load();
      }
      
      protected function §>+§(param1:IOErrorEvent) : void
      {
      }
      
      private function §#"4§(param1:Event) : void
      {
         this.§&!a§.removeEventListener(Event.COMPLETE,this.§#"4§);
         var _loc2_:XML = new XML((param1.target as FileReference).data);
         this.dispatchEvent(new Event(Event.SELECT));
         §]S§.§ "!§.§=!P§.§2-§();
         §[D§.§ "!§.§&!m§(_loc2_);
      }
      
      private function § s§() : void
      {
         this.dispatchEvent(new Event(Event.SELECT));
         §]S§.§ "!§.§=!P§.§2-§();
         §[D§.§ "!§.§&!m§(null);
      }
      
      private function §7!v§(param1:Event = null) : void
      {
         var _loc2_:TextField = null;
         var _loc7_:String = null;
         var _loc8_:* = false;
         var _loc9_:MovieClip = null;
         if(param1 && param1.type == §8"1§.§!!s§)
         {
            this.§ "§ = this.§8!w§.getChildByName("Container_DropMenu") as MovieClip;
            _loc2_ = this.§ "§.TaskList.text as TextField;
         }
         var _loc3_:int = 0;
         if(_loc2_)
         {
            _loc2_.text = "";
            _loc2_.mouseEnabled = false;
         }
         var _loc4_:Vector.<String> = this.§>!V§.§`"3§();
         var _loc5_:int = 1;
         while(_loc5_ <= _loc4_.length)
         {
            _loc8_ = (_loc7_ = _loc4_[_loc5_ - 1]).indexOf("[done]") > -1;
            _loc3_ += !!_loc8_ ? 1 : 0;
            if(_loc2_)
            {
               if(_loc9_ = this.§&N§("TaskCheck" + _loc5_.toString(),this.§ "§) as MovieClip)
               {
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
            }
            _loc5_++;
         }
         var _loc6_:MovieClip;
         (_loc6_ = this.mClip.Container_QuestMenu.Container_MainQuest.SurpriseStar0 as MovieClip).gotoAndStop(_loc3_ > 1 ? 2 : 1);
      }
      
      private function §5"4§(param1:Event = null) : void
      {
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc6_:§8!g§ = null;
         var _loc2_:Boolean = true;
         var _loc3_:Vector.<§8!g§> = this.§>!V§.§;F§();
         if(_loc3_ == null)
         {
            _loc4_ = 0;
            while(_loc4_ <= 2)
            {
               (_loc5_ = this.§&N§("SurpriseStar" + _loc4_.toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).visible = false;
               _loc4_++;
            }
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               _loc2_ = (_loc6_ = _loc3_[_loc4_]).§!! §;
               if((_loc5_ = this.§&N§("SurpriseStar" + (_loc4_ + 1).toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).currentFrame == 1 && _loc2_ && !this.§?!%§[_loc5_])
               {
                  this.§?!%§[_loc5_] = this.§-b§(new §!!`§(_loc5_),new §!!`§(_loc6_));
               }
               else if(!_loc2_)
               {
                  _loc5_.gotoAndStop(1);
                  if(this.§?!%§[_loc5_])
                  {
                     this.§?!%§[_loc5_].removeEventListener(Event.COMPLETE,this.§,!@§);
                     this.§?!%§[_loc5_] = null;
                  }
               }
               _loc4_++;
            }
         }
      }
      
      private function §-b§(param1:§!!`§, param2:§!!`§) : §[""§
      {
         var _loc3_:§[""§ = new §[""§(param2.position,param1.position);
         this.§?F§.movieClip.addChild(_loc3_);
         _loc3_.addEventListener(Event.COMPLETE,this.§,!@§);
         return _loc3_;
      }
      
      private function §,!@§(param1:Event) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in this.§?!%§)
         {
            if(this.§?!%§[_loc2_] == param1.target)
            {
               _loc2_.gotoAndStop(2);
            }
         }
      }
      
      private function §^L§() : void
      {
         if(this.§8!w§.hasEventListener(Event.ENTER_FRAME))
         {
            this.§8!w§.removeEventListener(Event.ENTER_FRAME,this.§+§);
         }
      }
      
      private function §+§(param1:Event) : void
      {
         if(this.§8!w§.currentFrame == 1)
         {
            this.§^L§();
         }
         else
         {
            this.§8!w§.prevFrame();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§?!>§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§?!>§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§?!>§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§?!>§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§?!>§.willTrigger(param1);
      }
   }
}
