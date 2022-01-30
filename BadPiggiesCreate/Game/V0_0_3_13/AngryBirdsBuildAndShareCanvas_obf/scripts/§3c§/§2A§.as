package §3c§
{
   import § ^§.§0c§;
   import § ^§.§@#§;
   import § true§.§1H§;
   import § true§.§<"-§;
   import §4!S§.§7!o§;
   import §4!S§.§<V§;
   import §4!S§.Quest;
   import §4!y§.StateMap;
   import §7!g§.§?!i§;
   import §;W§.§"w§;
   import §=!D§.§<]§;
   import §=%§.§0L§;
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
   
   public class §2A§ extends §1H§ implements IEventDispatcher
   {
      
      private static const §1""§:String = "initial";
      
      private static const §6§:String = "questInfo";
      
      private static const §while§:String = "questList";
      
      private static const §`!D§:int = -400;
      
      private static const §]!7§:int = -10;
      
      private static const §>-§:int = 3;
      
      public static var §6u§:String = "";
      
      public static var §-5§:String = "";
       
      
      private var §3?§:§"w§;
      
      private var §"a§:FileReference;
      
      private var §%!o§:Quest;
      
      private var §&"4§:MovieClip;
      
      private var §7l§:String;
      
      private var §>!p§:Dictionary;
      
      private var §5%§:int = 0;
      
      private var §#"'§:Vector.<§7!o§>;
      
      private var §-!Q§:MovieClip;
      
      private var §&7§:Boolean = false;
      
      private var §&!`§:MovieClip;
      
      private var §[!v§:EventDispatcher;
      
      private var §<"5§:Boolean = true;
      
      private var §-v§:Dictionary;
      
      private var §2!G§:Number = 0;
      
      public function §2A§(param1:§"w§, param2:XML, param3:§1H§)
      {
         this.§-v§ = new Dictionary();
         super(param2,param3,null);
         this.§3?§ = param1;
         param3.§[!I§(this);
         this.§&"4§ = mClip.Container_QuestMenu;
         this.§&"4§.gotoAndStop(0);
         this.§&"4§.buttonMode = true;
         this.§[!v§ = new EventDispatcher(this);
         var _loc4_:MovieClip;
         (_loc4_ = this.§<!5§("Container_MainQuest",this.§&"4§) as MovieClip).addEventListener(MouseEvent.CLICK,this.§3">§,true);
         _loc4_.useHandCursor = true;
         §0c§.§7!?§.§!A§.§&h§(this.onEnterFrame);
         this.§&"4§.y = §`!D§;
         this.§2!G§ = this.§&"4§.x + 30;
         this.§&"4§.x = this.§2!G§;
         this.§7l§ = §1""§;
      }
      
      public function init(param1:Quest) : void
      {
         this.§%!o§ = param1;
         this.§&7§ = false;
         this.§%!o§.addEventListener(§<]§.§+4§,this.§9!W§);
         this.§%!o§.addEventListener(§<]§.§7"2§,this.§`%§);
         this.§>!p§ = new Dictionary();
         this.§3?§.movieClip.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§<7§);
         var _loc2_:Vector.<Object> = §<V§.§7!?§.§'!S§();
         var _loc4_:TextField;
         (_loc4_ = this.mClip.Container_QuestMenu.Container_MainQuest.QuestTitle.text as TextField).text = §-5§.toLowerCase();
         _loc4_.mouseEnabled = false;
         this.§`%§(new §?!i§(§?!i§.§8w§));
         this.§9!W§();
         this.§-j§(§1""§);
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§&"4§.visible)
         {
            return;
         }
         if(this.§5%§ > 0)
         {
            this.§5%§ -= param1;
            if(this.§5%§ <= 0)
            {
               this.§-j§(§1""§);
            }
         }
         if(§@#§.§7!?§.§6,§() && !§@#§.§7!?§.§#!^§())
         {
            getItemByName("ButtonGravity").setVisibility(true);
         }
         else
         {
            getItemByName("ButtonGravity").setVisibility(false);
         }
         this.§&"4§.x = this.§2!G§;
      }
      
      public function hide() : void
      {
         this.§&"4§.visible = false;
      }
      
      public function show() : void
      {
         this.§&"4§.visible = true;
      }
      
      private function §>!E§(param1:Event) : void
      {
         §0c§.§7!?§.§!A§.mNextState = StateMap.§>H§;
      }
      
      private function onEnterFrame(param1:int) : void
      {
         if(this.§&"4§.currentLabel.indexOf("endstate") != -1)
         {
            this.§&"4§.stop();
         }
         var _loc2_:MovieClip = this.§<!5§("Button_ShowMap",this.§&"4§) as MovieClip;
         if(_loc2_)
         {
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§>!E§);
            _loc2_.buttonMode = true;
         }
      }
      
      public function §8§() : Boolean
      {
         return this.§&7§;
      }
      
      private function §-]§(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(Event.SELECT));
         §<V§.§7!?§.§0l§(this.§>!p§[param1.target]);
      }
      
      private function §-j§(param1:String) : void
      {
         if(param1 == §6§)
         {
            this.§4"5§();
            this.§&"4§.gotoAndPlay("mini_menu_dropdown");
            if(this.§%!o§)
            {
               this.§`%§(new §?!i§(§?!i§.§>"0§));
            }
         }
         else if(param1 == §1""§)
         {
            this.§&"4§.y = §`!D§;
            this.§4!M§(null);
         }
         this.§7l§ = param1;
      }
      
      private function §3">§(param1:MouseEvent) : void
      {
         if(this.§7l§ != §6§)
         {
            this.§-j§(§6§);
            this.§5%§ = 0;
         }
         else
         {
            this.§-j§(§1""§);
         }
      }
      
      private function §5!"§(param1:MouseEvent) : void
      {
         this.§5%§ = 0;
      }
      
      private function §4!M§(param1:MouseEvent) : void
      {
         this.§&"4§.y = §`!D§;
         this.§&"4§.addEventListener(Event.ENTER_FRAME,this.§][§,false,0,true);
         this.§7l§ = §1""§;
         this.§`%§(new §?!i§(§?!i§.§<!'§));
      }
      
      private function §<!5§(param1:String, param2:DisplayObjectContainer) : DisplayObject
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
               if(_loc5_ = this.§<!5§(param1,_loc4_ as DisplayObjectContainer))
               {
                  return _loc5_;
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      private function §<7§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.O && param1.ctrlKey)
         {
            this.load();
         }
         if(param1.keyCode == Keyboard.Q && param1.ctrlKey)
         {
            this.§#B§();
         }
      }
      
      private function load() : void
      {
         this.§"a§ = new FileReference();
         this.§"a§.browse([new FileFilter("Quests (*.xml): ","*.xml")]);
         this.§"a§.addEventListener(Event.SELECT,this.§1=§);
      }
      
      private function §1=§(param1:Event) : void
      {
         §6u§ = this.§"a§.name;
         this.§"a§.removeEventListener(Event.SELECT,this.§1=§);
         this.§"a§.addEventListener(Event.COMPLETE,this.§set §);
         this.§"a§.addEventListener(IOErrorEvent.IO_ERROR,this.§<!0§);
         this.§"a§.load();
      }
      
      protected function §<!0§(param1:IOErrorEvent) : void
      {
      }
      
      private function §set §(param1:Event) : void
      {
         this.§"a§.removeEventListener(Event.COMPLETE,this.§set §);
         var _loc2_:XML = new XML((param1.target as FileReference).data);
         this.dispatchEvent(new Event(Event.SELECT));
         §0c§.§7!?§.§8j§.§8!'§();
         §<V§.§7!?§.§0!2§(_loc2_);
      }
      
      private function §#B§() : void
      {
         this.dispatchEvent(new Event(Event.SELECT));
         §0c§.§7!?§.§8j§.§8!'§();
         §<V§.§7!?§.§0!2§(null);
      }
      
      private function §`%§(param1:Event = null) : void
      {
         var _loc2_:TextField = null;
         var _loc7_:String = null;
         var _loc8_:* = false;
         var _loc9_:MovieClip = null;
         if(param1 && param1.type == §?!i§.§>"0§)
         {
            this.§&!`§ = this.§&"4§.getChildByName("Container_DropMenu") as MovieClip;
            _loc2_ = this.§&!`§.TaskList.text as TextField;
         }
         var _loc3_:int = 0;
         if(_loc2_)
         {
            _loc2_.text = "";
            _loc2_.mouseEnabled = false;
         }
         var _loc4_:Vector.<String> = this.§%!o§.§@!s§();
         var _loc5_:int = 1;
         while(_loc5_ <= _loc4_.length)
         {
            _loc8_ = (_loc7_ = _loc4_[_loc5_ - 1]).indexOf("[done]") > -1;
            _loc3_ += !!_loc8_ ? 1 : 0;
            if(_loc2_)
            {
               if(_loc9_ = this.§<!5§("TaskCheck" + _loc5_.toString(),this.§&!`§) as MovieClip)
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
      
      private function §9!W§(param1:Event = null) : void
      {
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc6_:§7!o§ = null;
         var _loc2_:Boolean = true;
         var _loc3_:Vector.<§7!o§> = this.§%!o§.§%",§();
         if(_loc3_ == null)
         {
            _loc4_ = 0;
            while(_loc4_ <= 2)
            {
               (_loc5_ = this.§<!5§("SurpriseStar" + _loc4_.toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).visible = false;
               _loc4_++;
            }
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               _loc2_ = (_loc6_ = _loc3_[_loc4_]).§%!E§;
               if((_loc5_ = this.§<!5§("SurpriseStar" + (_loc4_ + 1).toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).currentFrame == 1 && _loc2_ && !this.§-v§[_loc5_])
               {
                  this.§-v§[_loc5_] = this.§+X§(new §0L§(_loc5_),new §0L§(_loc6_));
               }
               else if(!_loc2_)
               {
                  _loc5_.gotoAndStop(1);
                  if(this.§-v§[_loc5_])
                  {
                     this.§-v§[_loc5_].removeEventListener(Event.COMPLETE,this.§=t§);
                     this.§-v§[_loc5_] = null;
                  }
               }
               _loc4_++;
            }
         }
      }
      
      private function §+X§(param1:§0L§, param2:§0L§) : §3!g§
      {
         var _loc3_:§3!g§ = new §3!g§(param2.position,param1.position);
         this.§3?§.movieClip.addChild(_loc3_);
         _loc3_.addEventListener(Event.COMPLETE,this.§=t§);
         return _loc3_;
      }
      
      private function §=t§(param1:Event) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in this.§-v§)
         {
            if(this.§-v§[_loc2_] == param1.target)
            {
               _loc2_.gotoAndStop(2);
            }
         }
      }
      
      private function §4"5§() : void
      {
         if(this.§&"4§.hasEventListener(Event.ENTER_FRAME))
         {
            this.§&"4§.removeEventListener(Event.ENTER_FRAME,this.§][§);
         }
      }
      
      private function §][§(param1:Event) : void
      {
         if(this.§&"4§.currentFrame == 1)
         {
            this.§4"5§();
         }
         else
         {
            this.§&"4§.prevFrame();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§[!v§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§[!v§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§[!v§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§[!v§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§[!v§.willTrigger(param1);
      }
   }
}
