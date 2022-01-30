package §6`§
{
   import §!q§.§ %§;
   import §!q§.§84§;
   import §#L§.§!!Q§;
   import §0!d§.§7!a§;
   import §0!d§.§`G§;
   import §3;§.§#!C§;
   import §9!z§.§'Y§;
   import §="$§.§?3§;
   import §="$§.§?w§;
   import §="$§.Quest;
   import §?^§.§;"6§;
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
   
   public class §`!e§ extends §7!a§ implements IEventDispatcher
   {
      
      private static const §5!w§:String = "initial";
      
      private static const §]g§:String = "questInfo";
      
      private static const §1!O§:String = "questList";
      
      private static const §0B§:int = -400;
      
      private static const §`!U§:int = -10;
      
      private static const §7!e§:int = 3;
      
      public static var §@!§:String = "";
      
      public static var §&O§:String = "";
       
      
      private var §'K§:§'Y§;
      
      private var §1t§:FileReference;
      
      private var §@_§:Quest;
      
      private var §;"§:MovieClip;
      
      private var §1%§:String;
      
      private var §?!_§:Dictionary;
      
      private var §[4§:int = 0;
      
      private var §0!,§:Vector.<§?w§>;
      
      private var §0!j§:MovieClip;
      
      private var §;]§:Boolean = false;
      
      private var §4&§:MovieClip;
      
      private var §0!L§:EventDispatcher;
      
      private var §>!§:Boolean = true;
      
      private var §5q§:Dictionary;
      
      private var §<t§:Number = 0;
      
      public function §`!e§(param1:§'Y§, param2:XML, param3:§7!a§)
      {
         this.§5q§ = new Dictionary();
         super(param2,param3,null);
         this.§'K§ = param1;
         param3.§2!%§(this);
         this.§;"§ = this.mClip.Container_QuestMenu;
         this.§;"§.gotoAndStop(0);
         this.§;"§.buttonMode = true;
         this.§;"§.useHandCursor = true;
         this.§0!L§ = new EventDispatcher(this);
         this.§;"§.MovieClip_MouseArea.addEventListener(MouseEvent.ROLL_OVER,this.§]p§);
         this.§;"§.MovieClip_MouseArea.addEventListener(MouseEvent.ROLL_OUT,this.§1J§);
         this.§;"§.MovieClip_MouseArea.addEventListener(MouseEvent.CLICK,this.§,7§);
         this.§;"§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.§;"§.MovieClip_MouseArea.height = this.§;"§.Container_MainQuest.height;
         this.§;"§.y = §0B§;
         this.§<t§ = this.§;"§.x + 30;
         this.§;"§.x = this.§<t§;
         this.§1%§ = §5!w§;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§;"§.currentLabel.indexOf("endstate") != -1)
         {
            this.§;"§.stop();
         }
      }
      
      public function init(param1:Quest) : void
      {
         var _loc3_:§`G§ = null;
         var _loc6_:Object = null;
         var _loc7_:MovieClip = null;
         this.§@_§ = param1;
         this.§;]§ = false;
         this.§@_§.addEventListener(§!!Q§.§<!N§,this.§;!z§);
         this.§@_§.addEventListener(§!!Q§.§?!;§,this.§0-§);
         this.§?!_§ = new Dictionary();
         this.§'K§.movieClip.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§^"5§);
         var _loc2_:Object = §?3§.§,l§.§#§();
         var _loc4_:int = 1;
         while(_loc4_ < §7!e§ + 2)
         {
            _loc6_ = _loc2_[_loc4_ - 1];
            _loc7_ = getItemByName("QuestBox" + _loc4_.toString()).mClip;
            if(_loc6_)
            {
               _loc7_.mouseEnabled = true;
               _loc7_.buttonMode = true;
               _loc7_.mouseChildren = false;
               _loc7_.addEventListener(MouseEvent.CLICK,this.§]!j§);
               if(_loc4_ <= §7!e§)
               {
                  _loc3_ = getItemByName("QuestTitle" + _loc4_.toString()) as §`G§;
                  _loc3_.setText((_loc2_[_loc4_ - 1].name as String).toLowerCase());
                  _loc3_.setEnabled(false);
                  this.§?!_§[_loc7_] = _loc2_[_loc4_ - 1];
               }
            }
            else
            {
               _loc7_.mouseEnabled = false;
               _loc7_.buttonMode = false;
               _loc7_.removeEventListener(MouseEvent.CLICK,this.§]!j§);
               if(_loc4_ <= §7!e§)
               {
                  _loc3_ = getItemByName("QuestTitle" + _loc4_.toString()) as §`G§;
                  _loc3_.setText("");
               }
            }
            _loc4_++;
         }
         var _loc5_:TextField;
         (_loc5_ = this.mClip.Container_QuestMenu.Container_MainQuest.QuestTitle.text as TextField).text = §&O§.toLowerCase();
         this.§0-§(new §#!C§(§#!C§.§97§));
         this.§;!z§();
         this.§'W§(§5!w§);
      }
      
      private function §]!j§(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(Event.SELECT));
         §?3§.§,l§.§&!I§(this.§?!_§[param1.target]);
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§;"§.visible)
         {
            return;
         }
         if(this.§[4§ > 0)
         {
            this.§[4§ -= param1;
            if(this.§[4§ <= 0)
            {
               this.§'W§(§5!w§);
            }
         }
         if(§ %§.§,l§.§1!s§() && !§ %§.§,l§.§^l§())
         {
            getItemByName("ButtonGravity").setVisibility(true);
         }
         else
         {
            getItemByName("ButtonGravity").setVisibility(false);
         }
         this.§;"§.x = this.§<t§;
      }
      
      private function §'W§(param1:String) : void
      {
         if(param1 == §]g§)
         {
            this.§48§();
            this.§;"§.gotoAndPlay("mini_menu_dropdown");
            if(this.§@_§)
            {
               this.§0-§(new §#!C§(§#!C§.§@!g§));
            }
         }
         else if(param1 == §5!w§)
         {
            this.§;"§.y = §0B§;
            this.§1J§(null);
         }
         this.§1%§ = param1;
      }
      
      private function §,7§(param1:MouseEvent) : void
      {
         if(this.§1%§ != §]g§)
         {
            this.§'W§(§]g§);
            this.§[4§ = 0;
         }
         else
         {
            this.§'W§(§5!w§);
         }
      }
      
      private function §]p§(param1:MouseEvent) : void
      {
         this.§[4§ = 0;
      }
      
      private function §1J§(param1:MouseEvent) : void
      {
         this.§;"§.y = §0B§;
         this.§;"§.addEventListener(Event.ENTER_FRAME,this.§!!2§,false,0,true);
         this.§1%§ = §5!w§;
         this.§0-§(new §#!C§(§#!C§.§ !`§));
      }
      
      private function §9"§(param1:String, param2:DisplayObjectContainer) : DisplayObject
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
               if(_loc5_ = this.§9"§(param1,_loc4_ as DisplayObjectContainer))
               {
                  return _loc5_;
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      protected function §^"5§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.O && param1.ctrlKey)
         {
            this.load();
         }
         if(param1.keyCode == Keyboard.Q && param1.ctrlKey)
         {
            this.§1!8§();
         }
      }
      
      private function load() : void
      {
         this.§1t§ = new FileReference();
         this.§1t§.browse([new FileFilter("Quests (*.xml): ","*.xml")]);
         this.§1t§.addEventListener(Event.SELECT,this.§"!&§);
      }
      
      private function §"!&§(param1:Event) : void
      {
         §@!§ = this.§1t§.name;
         this.§1t§.removeEventListener(Event.SELECT,this.§"!&§);
         this.§1t§.addEventListener(Event.COMPLETE,this.§[8§);
         this.§1t§.addEventListener(IOErrorEvent.IO_ERROR,this.§!n§);
         this.§1t§.load();
      }
      
      protected function §!n§(param1:IOErrorEvent) : void
      {
      }
      
      private function §[8§(param1:Event) : void
      {
         this.§1t§.removeEventListener(Event.COMPLETE,this.§[8§);
         var _loc2_:XML = new XML((param1.target as FileReference).data);
         this.dispatchEvent(new Event(Event.SELECT));
         §84§.§,l§.§05§.§<q§();
         §?3§.§,l§.§5@§(_loc2_);
      }
      
      private function §1!8§() : void
      {
         this.dispatchEvent(new Event(Event.SELECT));
         §84§.§,l§.§05§.§<q§();
         §?3§.§,l§.§5@§(null);
      }
      
      public function §0-§(param1:Event = null) : void
      {
         var _loc2_:TextField = null;
         var _loc7_:String = null;
         var _loc8_:* = false;
         var _loc9_:MovieClip = null;
         if(param1 && param1.type == §#!C§.§@!g§)
         {
            this.§4&§ = this.§;"§.getChildByName("Container_DropMenu") as MovieClip;
            _loc2_ = this.§4&§.TaskList.text as TextField;
            this.§;"§.MovieClip_MouseArea.y = 477;
            this.§;"§.MovieClip_MouseArea.height = 182;
         }
         else
         {
            this.§;"§.MovieClip_MouseArea.y = 420;
            this.§;"§.MovieClip_MouseArea.height = this.§;"§.Container_MainQuest.height;
         }
         var _loc3_:int = 0;
         if(_loc2_)
         {
            _loc2_.text = "";
         }
         var _loc4_:Vector.<String> = this.§@_§.§8#§();
         var _loc5_:int = 1;
         while(_loc5_ <= _loc4_.length)
         {
            _loc8_ = (_loc7_ = _loc4_[_loc5_ - 1]).indexOf("[done]") > -1;
            _loc3_ += !!_loc8_ ? 1 : 0;
            if(_loc2_)
            {
               if(_loc9_ = this.§9"§("TaskCheck" + _loc5_.toString(),this.§4&§) as MovieClip)
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
      
      public function §;!z§(param1:Event = null) : void
      {
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc6_:§?w§ = null;
         var _loc2_:Boolean = true;
         var _loc3_:Vector.<§?w§> = this.§@_§.§4",§();
         if(_loc3_ == null)
         {
            _loc4_ = 0;
            while(_loc4_ <= 2)
            {
               (_loc5_ = this.§9"§("SurpriseStar" + _loc4_.toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).visible = false;
               _loc4_++;
            }
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               _loc2_ = (_loc6_ = _loc3_[_loc4_]).§""4§;
               if((_loc5_ = this.§9"§("SurpriseStar" + (_loc4_ + 1).toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).currentFrame == 1 && _loc2_ && !this.§5q§[_loc5_])
               {
                  this.§5q§[_loc5_] = this.§0!P§(new §;"6§(_loc5_),new §;"6§(_loc6_));
               }
               else if(!_loc2_)
               {
                  _loc5_.gotoAndStop(1);
                  if(this.§5q§[_loc5_])
                  {
                     this.§5q§[_loc5_].removeEventListener(Event.COMPLETE,this.§7!s§);
                     this.§5q§[_loc5_] = null;
                  }
               }
               _loc4_++;
            }
         }
      }
      
      private function §0!P§(param1:§;"6§, param2:§;"6§) : §4j§
      {
         var _loc3_:§4j§ = new §4j§(param2.position,param1.position);
         this.§'K§.movieClip.addChild(_loc3_);
         _loc3_.addEventListener(Event.COMPLETE,this.§7!s§);
         return _loc3_;
      }
      
      private function §7!s§(param1:Event) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in this.§5q§)
         {
            if(this.§5q§[_loc2_] == param1.target)
            {
               _loc2_.gotoAndStop(2);
            }
         }
      }
      
      public function hide() : void
      {
         this.§;"§.visible = false;
      }
      
      public function show() : void
      {
         this.§;"§.visible = true;
         this.§[4§ = 2000;
         this.§'W§(§]g§);
      }
      
      private function §48§() : void
      {
         if(this.§;"§.hasEventListener(Event.ENTER_FRAME))
         {
            this.§;"§.removeEventListener(Event.ENTER_FRAME,this.§!!2§);
         }
      }
      
      protected function §!!2§(param1:Event) : void
      {
         if(this.§;"§.currentFrame == 1)
         {
            this.§48§();
         }
         else
         {
            this.§;"§.prevFrame();
         }
      }
      
      public function §]!,§() : Boolean
      {
         return this.§;]§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§0!L§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§0!L§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§0!L§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§0!L§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§0!L§.willTrigger(param1);
      }
      
      public function §[!N§() : void
      {
         this.§;"§.MovieClip_MouseArea.removeEventListener(MouseEvent.ROLL_OVER,this.§]p§);
         this.§;"§.MovieClip_MouseArea.removeEventListener(MouseEvent.ROLL_OUT,this.§1J§);
         this.§;"§.MovieClip_MouseArea.removeEventListener(MouseEvent.CLICK,this.§,7§);
         this.§;"§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
