package §#V§
{
   import § !i§.§>!H§;
   import §1z§.§2!J§;
   import §1z§.§@k§;
   import §1z§.Quest;
   import §2!5§.§0!X§;
   import §2!5§.§=,§;
   import §9!l§.§`!d§;
   import §;!§.§8V§;
   import §;!A§.§ !F§;
   import §;!A§.§;!u§;
   import §@!P§.§,"5§;
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
   
   public class §7b§ extends §;!u§ implements IEventDispatcher
   {
      
      private static const §^y§:String = "initial";
      
      private static const §2!$§:String = "questInfo";
      
      private static const §8"8§:String = "questList";
      
      private static const §-!`§:int = -400;
      
      private static const §&,§:int = -10;
      
      private static const §<!b§:int = 3;
      
      public static var §>N§:String = "";
      
      public static var §=!n§:String = "";
       
      
      private var §%""§:§`!d§;
      
      private var §9D§:FileReference;
      
      private var §81§:Quest;
      
      private var §!p§:MovieClip;
      
      private var §5H§:String;
      
      private var §9!q§:Dictionary;
      
      private var §<"5§:int = 0;
      
      private var §-%§:Vector.<§@k§>;
      
      private var § " §:MovieClip;
      
      private var §9!8§:Boolean = false;
      
      private var §!!!§:MovieClip;
      
      private var §2"'§:EventDispatcher;
      
      private var §5!2§:Boolean = true;
      
      private var §6"$§:Dictionary;
      
      private var §"J§:Number = 0;
      
      public function §7b§(param1:§`!d§, param2:XML, param3:§;!u§)
      {
         this.§6"$§ = new Dictionary();
         super(param2,param3,null);
         this.§%""§ = param1;
         param3.§&!W§(this);
         this.§!p§ = this.mClip.Container_QuestMenu;
         this.§!p§.gotoAndStop(0);
         this.§!p§.buttonMode = true;
         this.§!p§.useHandCursor = true;
         this.§2"'§ = new EventDispatcher(this);
         this.§!p§.MovieClip_MouseArea.addEventListener(MouseEvent.ROLL_OVER,this.§ 1§);
         this.§!p§.MovieClip_MouseArea.addEventListener(MouseEvent.ROLL_OUT,this.§ !G§);
         this.§!p§.MovieClip_MouseArea.addEventListener(MouseEvent.CLICK,this.§>!O§);
         this.§!p§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.§!p§.MovieClip_MouseArea.height = this.§!p§.Container_MainQuest.height;
         this.§!p§.y = §-!`§;
         this.§"J§ = this.§!p§.x + 30;
         this.§!p§.x = this.§"J§;
         this.§5H§ = §^y§;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§!p§.currentLabel.indexOf("endstate") != -1)
         {
            this.§!p§.stop();
         }
      }
      
      public function init(param1:Quest) : void
      {
         var _loc3_:§ !F§ = null;
         var _loc6_:Object = null;
         var _loc7_:MovieClip = null;
         this.§81§ = param1;
         this.§9!8§ = false;
         this.§81§.addEventListener(§>!H§.§9&§,this.§+'§);
         this.§81§.addEventListener(§>!H§.§"!L§,this.§]!,§);
         this.§9!q§ = new Dictionary();
         this.§%""§.movieClip.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§1!r§);
         var _loc2_:Object = §2!J§.§if §.§,=§();
         var _loc4_:int = 1;
         while(_loc4_ < §<!b§ + 2)
         {
            _loc6_ = _loc2_[_loc4_ - 1];
            _loc7_ = getItemByName("QuestBox" + _loc4_.toString()).mClip;
            if(_loc6_)
            {
               _loc7_.mouseEnabled = true;
               _loc7_.buttonMode = true;
               _loc7_.mouseChildren = false;
               _loc7_.addEventListener(MouseEvent.CLICK,this.§"!q§);
               if(_loc4_ <= §<!b§)
               {
                  _loc3_ = getItemByName("QuestTitle" + _loc4_.toString()) as § !F§;
                  _loc3_.setText((_loc2_[_loc4_ - 1].name as String).toLowerCase());
                  _loc3_.setEnabled(false);
                  this.§9!q§[_loc7_] = _loc2_[_loc4_ - 1];
               }
            }
            else
            {
               _loc7_.mouseEnabled = false;
               _loc7_.buttonMode = false;
               _loc7_.removeEventListener(MouseEvent.CLICK,this.§"!q§);
               if(_loc4_ <= §<!b§)
               {
                  _loc3_ = getItemByName("QuestTitle" + _loc4_.toString()) as § !F§;
                  _loc3_.setText("");
               }
            }
            _loc4_++;
         }
         var _loc5_:TextField;
         (_loc5_ = this.mClip.Container_QuestMenu.Container_MainQuest.QuestTitle.text as TextField).text = §=!n§.toLowerCase();
         this.§]!,§(new §8V§(§8V§.§6!]§));
         this.§+'§();
         this.§5"3§(§^y§);
      }
      
      private function §"!q§(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(Event.SELECT));
         §2!J§.§if §.§#z§(this.§9!q§[param1.target]);
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§!p§.visible)
         {
            return;
         }
         if(this.§<"5§ > 0)
         {
            this.§<"5§ -= param1;
            if(this.§<"5§ <= 0)
            {
               this.§5"3§(§^y§);
            }
         }
         if(§=,§.§if §.§"!-§() && !§=,§.§if §.§^a§())
         {
            getItemByName("ButtonGravity").setVisibility(true);
         }
         else
         {
            getItemByName("ButtonGravity").setVisibility(false);
         }
         this.§!p§.x = this.§"J§;
      }
      
      private function §5"3§(param1:String) : void
      {
         if(param1 == §2!$§)
         {
            this.§@!d§();
            this.§!p§.gotoAndPlay("mini_menu_dropdown");
            if(this.§81§)
            {
               this.§]!,§(new §8V§(§8V§.§^l§));
            }
         }
         else if(param1 == §^y§)
         {
            this.§!p§.y = §-!`§;
            this.§ !G§(null);
         }
         this.§5H§ = param1;
      }
      
      private function §>!O§(param1:MouseEvent) : void
      {
         if(this.§5H§ != §2!$§)
         {
            this.§5"3§(§2!$§);
            this.§<"5§ = 0;
         }
         else
         {
            this.§5"3§(§^y§);
         }
      }
      
      private function § 1§(param1:MouseEvent) : void
      {
         this.§<"5§ = 0;
      }
      
      private function § !G§(param1:MouseEvent) : void
      {
         this.§!p§.y = §-!`§;
         this.§!p§.addEventListener(Event.ENTER_FRAME,this.§?Y§,false,0,true);
         this.§5H§ = §^y§;
         this.§]!,§(new §8V§(§8V§.§3`§));
      }
      
      private function §!!>§(param1:String, param2:DisplayObjectContainer) : DisplayObject
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
               if(_loc5_ = this.§!!>§(param1,_loc4_ as DisplayObjectContainer))
               {
                  return _loc5_;
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      protected function §1!r§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.O && param1.ctrlKey)
         {
            this.load();
         }
         if(param1.keyCode == Keyboard.Q && param1.ctrlKey)
         {
            this.§7!!§();
         }
      }
      
      private function load() : void
      {
         this.§9D§ = new FileReference();
         this.§9D§.browse([new FileFilter("Quests (*.xml): ","*.xml")]);
         this.§9D§.addEventListener(Event.SELECT,this.§[8§);
      }
      
      private function §[8§(param1:Event) : void
      {
         §>N§ = this.§9D§.name;
         this.§9D§.removeEventListener(Event.SELECT,this.§[8§);
         this.§9D§.addEventListener(Event.COMPLETE,this.§%!d§);
         this.§9D§.addEventListener(IOErrorEvent.IO_ERROR,this.§%!;§);
         this.§9D§.load();
      }
      
      protected function §%!;§(param1:IOErrorEvent) : void
      {
      }
      
      private function §%!d§(param1:Event) : void
      {
         this.§9D§.removeEventListener(Event.COMPLETE,this.§%!d§);
         var _loc2_:XML = new XML((param1.target as FileReference).data);
         this.dispatchEvent(new Event(Event.SELECT));
         §0!X§.§if §.§;d§.§1"7§();
         §2!J§.§if §.§3!0§(_loc2_);
      }
      
      private function §7!!§() : void
      {
         this.dispatchEvent(new Event(Event.SELECT));
         §0!X§.§if §.§;d§.§1"7§();
         §2!J§.§if §.§3!0§(null);
      }
      
      public function §]!,§(param1:Event = null) : void
      {
         var _loc2_:TextField = null;
         var _loc7_:String = null;
         var _loc8_:* = false;
         var _loc9_:MovieClip = null;
         if(param1 && param1.type == §8V§.§^l§)
         {
            this.§!!!§ = this.§!p§.getChildByName("Container_DropMenu") as MovieClip;
            _loc2_ = this.§!!!§.TaskList.text as TextField;
            this.§!p§.MovieClip_MouseArea.y = 477;
            this.§!p§.MovieClip_MouseArea.height = 182;
         }
         else
         {
            this.§!p§.MovieClip_MouseArea.y = 420;
            this.§!p§.MovieClip_MouseArea.height = this.§!p§.Container_MainQuest.height;
         }
         var _loc3_:int = 0;
         if(_loc2_)
         {
            _loc2_.text = "";
         }
         var _loc4_:Vector.<String> = this.§81§.§ l§();
         var _loc5_:int = 1;
         while(_loc5_ <= _loc4_.length)
         {
            _loc8_ = (_loc7_ = _loc4_[_loc5_ - 1]).indexOf("[done]") > -1;
            _loc3_ += !!_loc8_ ? 1 : 0;
            if(_loc2_)
            {
               if(_loc9_ = this.§!!>§("TaskCheck" + _loc5_.toString(),this.§!!!§) as MovieClip)
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
      
      public function §+'§(param1:Event = null) : void
      {
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc6_:§@k§ = null;
         var _loc2_:Boolean = true;
         var _loc3_:Vector.<§@k§> = this.§81§.§#T§();
         if(_loc3_ == null)
         {
            _loc4_ = 0;
            while(_loc4_ <= 2)
            {
               (_loc5_ = this.§!!>§("SurpriseStar" + _loc4_.toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).visible = false;
               _loc4_++;
            }
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               _loc2_ = (_loc6_ = _loc3_[_loc4_]).§2!t§;
               if((_loc5_ = this.§!!>§("SurpriseStar" + (_loc4_ + 1).toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).currentFrame == 1 && _loc2_ && !this.§6"$§[_loc5_])
               {
                  this.§6"$§[_loc5_] = this.§ "%§(new §,"5§(_loc5_),new §,"5§(_loc6_));
               }
               else if(!_loc2_)
               {
                  _loc5_.gotoAndStop(1);
                  if(this.§6"$§[_loc5_])
                  {
                     this.§6"$§[_loc5_].removeEventListener(Event.COMPLETE,this.§?]§);
                     this.§6"$§[_loc5_] = null;
                  }
               }
               _loc4_++;
            }
         }
      }
      
      private function § "%§(param1:§,"5§, param2:§,"5§) : §4g§
      {
         var _loc3_:§4g§ = new §4g§(param2.position,param1.position);
         this.§%""§.movieClip.addChild(_loc3_);
         _loc3_.addEventListener(Event.COMPLETE,this.§?]§);
         return _loc3_;
      }
      
      private function §?]§(param1:Event) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in this.§6"$§)
         {
            if(this.§6"$§[_loc2_] == param1.target)
            {
               _loc2_.gotoAndStop(2);
            }
         }
      }
      
      public function hide() : void
      {
         this.§!p§.visible = false;
      }
      
      public function show() : void
      {
         this.§!p§.visible = true;
         this.§<"5§ = 2000;
         this.§5"3§(§2!$§);
      }
      
      private function §@!d§() : void
      {
         if(this.§!p§.hasEventListener(Event.ENTER_FRAME))
         {
            this.§!p§.removeEventListener(Event.ENTER_FRAME,this.§?Y§);
         }
      }
      
      protected function §?Y§(param1:Event) : void
      {
         if(this.§!p§.currentFrame == 1)
         {
            this.§@!d§();
         }
         else
         {
            this.§!p§.prevFrame();
         }
      }
      
      public function §=!-§() : Boolean
      {
         return this.§9!8§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§2"'§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§2"'§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§2"'§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§2"'§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§2"'§.willTrigger(param1);
      }
      
      public function §5!c§() : void
      {
         this.§!p§.MovieClip_MouseArea.removeEventListener(MouseEvent.ROLL_OVER,this.§ 1§);
         this.§!p§.MovieClip_MouseArea.removeEventListener(MouseEvent.ROLL_OUT,this.§ !G§);
         this.§!p§.MovieClip_MouseArea.removeEventListener(MouseEvent.CLICK,this.§>!O§);
         this.§!p§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
