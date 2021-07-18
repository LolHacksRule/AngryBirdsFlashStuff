package §]!+§
{
   import §'i§.§'!;§;
   import §'i§.§,!1§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §,B§.StateMap;
   import §62§.§0!t§;
   import §7r§.§,!<§;
   import §8" §.§,!q§;
   import §8" §.§7z§;
   import §8" §.Quest;
   import §@"5§.§1k§;
   import §^[§.§'!K§;
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
   
   public class § 1§ extends §`!T§ implements IEventDispatcher
   {
      
      private static const §7!M§:String = "initial";
      
      private static const §%!=§:String = "questInfo";
      
      private static const §#U§:String = "questList";
      
      private static const §'!t§:int = -400;
      
      private static const §7W§:int = -10;
      
      private static const §8!D§:int = 3;
      
      public static var §?_§:String = "";
      
      public static var §=!-§:String = "";
       
      
      private var §?E§:§'!K§;
      
      private var §2!y§:FileReference;
      
      private var §'r§:Quest;
      
      private var §1^§:MovieClip;
      
      private var §^"$§:String;
      
      private var §@!W§:Dictionary;
      
      private var §@f§:int = 0;
      
      private var §7! §:Vector.<§7z§>;
      
      private var §!,§:MovieClip;
      
      private var §#"§:Boolean = false;
      
      private var §6D§:MovieClip;
      
      private var §?!w§:EventDispatcher;
      
      private var §"",§:Boolean = true;
      
      private var §8!E§:Dictionary;
      
      private var §2!O§:Number = 0;
      
      public function § 1§(param1:§'!K§, param2:XML, param3:§`!T§)
      {
         this.§8!E§ = new Dictionary();
         super(param2,param3,null);
         this.§?E§ = param1;
         param3.§;!R§(this);
         this.§1^§ = mClip.Container_QuestMenu;
         this.§1^§.gotoAndStop(0);
         this.§1^§.buttonMode = true;
         this.§?!w§ = new EventDispatcher(this);
         var _loc4_:MovieClip;
         (_loc4_ = this.§"!Z§("Container_MainQuest",this.§1^§) as MovieClip).addEventListener(MouseEvent.CLICK,this.§'!_§,true);
         _loc4_.useHandCursor = true;
         §'!;§.§2=§.§+"2§.§@§(this.onEnterFrame);
         this.§1^§.y = §'!t§;
         this.§2!O§ = this.§1^§.x + 30;
         this.§1^§.x = this.§2!O§;
         this.§^"$§ = §7!M§;
      }
      
      public function init(param1:Quest) : void
      {
         this.§'r§ = param1;
         this.§#"§ = false;
         this.§'r§.addEventListener(§1k§.§1!+§,this.§ W§);
         this.§'r§.addEventListener(§1k§.§3!u§,this.§2!p§);
         this.§@!W§ = new Dictionary();
         this.§?E§.movieClip.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§8!l§);
         var _loc2_:Vector.<Object> = §,!q§.§2=§.§ !f§();
         var _loc4_:TextField;
         (_loc4_ = this.mClip.Container_QuestMenu.Container_MainQuest.QuestTitle.text as TextField).text = §=!-§.toLowerCase();
         _loc4_.mouseEnabled = false;
         this.§2!p§(new §0!t§(§0!t§.§0z§));
         this.§ W§();
         this.§4!'§(§7!M§);
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§1^§.visible)
         {
            return;
         }
         if(this.§@f§ > 0)
         {
            this.§@f§ -= param1;
            if(this.§@f§ <= 0)
            {
               this.§4!'§(§7!M§);
            }
         }
         if(§,!1§.§2=§.§"";§() && !§,!1§.§2=§.§ b§())
         {
            getItemByName("ButtonGravity").setVisibility(true);
         }
         else
         {
            getItemByName("ButtonGravity").setVisibility(false);
         }
         this.§1^§.x = this.§2!O§;
      }
      
      public function hide() : void
      {
         this.§1^§.visible = false;
      }
      
      public function show() : void
      {
         this.§1^§.visible = true;
      }
      
      private function §[! §(param1:Event) : void
      {
         §'!;§.§2=§.§+"2§.mNextState = StateMap.§'=§;
      }
      
      private function onEnterFrame(param1:int) : void
      {
         if(this.§1^§.currentLabel.indexOf("endstate") != -1)
         {
            this.§1^§.stop();
         }
         var _loc2_:MovieClip = this.§"!Z§("Button_ShowMap",this.§1^§) as MovieClip;
         if(_loc2_)
         {
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§[! §);
            _loc2_.buttonMode = true;
         }
      }
      
      public function §#O§() : Boolean
      {
         return this.§#"§;
      }
      
      private function §"Y§(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(Event.SELECT));
         §,!q§.§2=§.§-E§(this.§@!W§[param1.target]);
      }
      
      private function §4!'§(param1:String) : void
      {
         if(param1 == §%!=§)
         {
            this.§,9§();
            this.§1^§.gotoAndPlay("mini_menu_dropdown");
            if(this.§'r§)
            {
               this.§2!p§(new §0!t§(§0!t§.§!q§));
            }
         }
         else if(param1 == §7!M§)
         {
            this.§1^§.y = §'!t§;
            this.§`F§(null);
         }
         this.§^"$§ = param1;
      }
      
      private function §'!_§(param1:MouseEvent) : void
      {
         if(this.§^"$§ != §%!=§)
         {
            this.§4!'§(§%!=§);
            this.§@f§ = 0;
         }
         else
         {
            this.§4!'§(§7!M§);
         }
      }
      
      private function §&k§(param1:MouseEvent) : void
      {
         this.§@f§ = 0;
      }
      
      private function §`F§(param1:MouseEvent) : void
      {
         this.§1^§.y = §'!t§;
         this.§1^§.addEventListener(Event.ENTER_FRAME,this.§9!]§,false,0,true);
         this.§^"$§ = §7!M§;
         this.§2!p§(new §0!t§(§0!t§.§0@§));
      }
      
      private function §"!Z§(param1:String, param2:DisplayObjectContainer) : DisplayObject
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
               if(_loc5_ = this.§"!Z§(param1,_loc4_ as DisplayObjectContainer))
               {
                  return _loc5_;
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      private function §8!l§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.O && param1.ctrlKey)
         {
            this.load();
         }
         if(param1.keyCode == Keyboard.Q && param1.ctrlKey)
         {
            this.§`!q§();
         }
      }
      
      private function load() : void
      {
         this.§2!y§ = new FileReference();
         this.§2!y§.browse([new FileFilter("Quests (*.xml): ","*.xml")]);
         this.§2!y§.addEventListener(Event.SELECT,this.§7!'§);
      }
      
      private function §7!'§(param1:Event) : void
      {
         §?_§ = this.§2!y§.name;
         this.§2!y§.removeEventListener(Event.SELECT,this.§7!'§);
         this.§2!y§.addEventListener(Event.COMPLETE,this.§7!g§);
         this.§2!y§.addEventListener(IOErrorEvent.IO_ERROR,this.§try§);
         this.§2!y§.load();
      }
      
      protected function §try§(param1:IOErrorEvent) : void
      {
      }
      
      private function §7!g§(param1:Event) : void
      {
         this.§2!y§.removeEventListener(Event.COMPLETE,this.§7!g§);
         var _loc2_:XML = new XML((param1.target as FileReference).data);
         this.dispatchEvent(new Event(Event.SELECT));
         §'!;§.§2=§.§4p§.§4!G§();
         §,!q§.§2=§.§?j§(_loc2_);
      }
      
      private function §`!q§() : void
      {
         this.dispatchEvent(new Event(Event.SELECT));
         §'!;§.§2=§.§4p§.§4!G§();
         §,!q§.§2=§.§?j§(null);
      }
      
      private function §2!p§(param1:Event = null) : void
      {
         var _loc2_:TextField = null;
         var _loc7_:String = null;
         var _loc8_:* = false;
         var _loc9_:MovieClip = null;
         if(param1 && param1.type == §0!t§.§!q§)
         {
            this.§6D§ = this.§1^§.getChildByName("Container_DropMenu") as MovieClip;
            _loc2_ = this.§6D§.TaskList.text as TextField;
         }
         var _loc3_:int = 0;
         if(_loc2_)
         {
            _loc2_.text = "";
            _loc2_.mouseEnabled = false;
         }
         var _loc4_:Vector.<String> = this.§'r§.§5",§();
         var _loc5_:int = 1;
         while(_loc5_ <= _loc4_.length)
         {
            _loc8_ = (_loc7_ = _loc4_[_loc5_ - 1]).indexOf("[done]") > -1;
            _loc3_ += !!_loc8_ ? 1 : 0;
            if(_loc2_)
            {
               if(_loc9_ = this.§"!Z§("TaskCheck" + _loc5_.toString(),this.§6D§) as MovieClip)
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
      
      private function § W§(param1:Event = null) : void
      {
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc6_:§7z§ = null;
         var _loc2_:Boolean = true;
         var _loc3_:Vector.<§7z§> = this.§'r§.§3!g§();
         if(_loc3_ == null)
         {
            _loc4_ = 0;
            while(_loc4_ <= 2)
            {
               (_loc5_ = this.§"!Z§("SurpriseStar" + _loc4_.toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).visible = false;
               _loc4_++;
            }
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               _loc2_ = (_loc6_ = _loc3_[_loc4_]).§%!0§;
               if((_loc5_ = this.§"!Z§("SurpriseStar" + (_loc4_ + 1).toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).currentFrame == 1 && _loc2_ && !this.§8!E§[_loc5_])
               {
                  this.§8!E§[_loc5_] = this.§+u§(new §,!<§(_loc5_),new §,!<§(_loc6_));
               }
               else if(!_loc2_)
               {
                  _loc5_.gotoAndStop(1);
                  if(this.§8!E§[_loc5_])
                  {
                     this.§8!E§[_loc5_].removeEventListener(Event.COMPLETE,this.§,L§);
                     this.§8!E§[_loc5_] = null;
                  }
               }
               _loc4_++;
            }
         }
      }
      
      private function §+u§(param1:§,!<§, param2:§,!<§) : §97§
      {
         var _loc3_:§97§ = new §97§(param2.position,param1.position);
         this.§?E§.movieClip.addChild(_loc3_);
         _loc3_.addEventListener(Event.COMPLETE,this.§,L§);
         return _loc3_;
      }
      
      private function §,L§(param1:Event) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in this.§8!E§)
         {
            if(this.§8!E§[_loc2_] == param1.target)
            {
               _loc2_.gotoAndStop(2);
            }
         }
      }
      
      private function §,9§() : void
      {
         if(this.§1^§.hasEventListener(Event.ENTER_FRAME))
         {
            this.§1^§.removeEventListener(Event.ENTER_FRAME,this.§9!]§);
         }
      }
      
      private function §9!]§(param1:Event) : void
      {
         if(this.§1^§.currentFrame == 1)
         {
            this.§,9§();
         }
         else
         {
            this.§1^§.prevFrame();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§?!w§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§?!w§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§?!w§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§?!w§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§?!w§.willTrigger(param1);
      }
   }
}
