package §]" §
{
   import §"_§.§!"8§;
   import §1" §.§!!2§;
   import §1" §.§#!j§;
   import §50§.StateMap;
   import §7t§.§7a§;
   import §7t§.§<^§;
   import §;" §.§5L§;
   import §;" §.§7!9§;
   import §;" §.Quest;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §^!k§.§return§;
   import §`!,§.§[!&§;
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
   
   public class §?"-§ extends §6W§ implements IEventDispatcher
   {
      
      private static const §9!,§:String = "initial";
      
      private static const §=!F§:String = "questInfo";
      
      private static const §8!L§:String = "questList";
      
      private static const §&!x§:int = -400;
      
      private static const §^F§:int = -10;
      
      private static const §0!g§:int = 3;
      
      public static var §>!`§:String = "";
      
      public static var §7"0§:String = "Sandbox";
       
      
      private var §`!v§:§return§;
      
      private var §^!4§:FileReference;
      
      private var §[o§:Quest;
      
      private var §2!<§:MovieClip;
      
      private var §>!F§:String;
      
      private var §`!y§:Dictionary;
      
      private var §catch§:int = 0;
      
      private var §6!L§:Vector.<§7!9§>;
      
      private var §1""§:MovieClip;
      
      private var §#!#§:Boolean = false;
      
      private var §4"%§:MovieClip;
      
      private var §-H§:EventDispatcher;
      
      private var §3!§:Boolean = true;
      
      private var §]4§:Dictionary;
      
      private var §2!0§:Number = 0;
      
      public function §?"-§(param1:§return§, param2:XML, param3:§6W§)
      {
         this.§]4§ = new Dictionary();
         super(param2,param3,null);
         this.§`!v§ = param1;
         param3.§#i§(this);
         this.§2!<§ = mClip.Container_QuestMenu;
         this.§2!<§.gotoAndStop(0);
         this.§2!<§.buttonMode = true;
         this.§-H§ = new EventDispatcher(this);
         var _loc4_:MovieClip;
         (_loc4_ = this.§7!8§("Container_MainQuest",this.§2!<§) as MovieClip).addEventListener(MouseEvent.CLICK,this.§6F§,true);
         _loc4_.useHandCursor = true;
         §#!j§.§[E§.§<!_§.§;!"§(this.onEnterFrame);
         this.§2!<§.y = §&!x§;
         this.§2!0§ = this.§2!<§.x + 30;
         this.§2!<§.x = this.§2!0§;
         this.§>!F§ = §9!,§;
      }
      
      public function init(param1:Quest) : void
      {
         this.§[o§ = param1;
         this.§#!#§ = false;
         this.§[o§.addEventListener(§[!&§.§^A§,this.§?!T§);
         this.§[o§.addEventListener(§[!&§.§^[§,this.§1!K§);
         this.§`!y§ = new Dictionary();
         this.§`!v§.movieClip.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§[H§);
         var _loc2_:Vector.<Object> = §5L§.§[E§.§9"'§();
         var _loc4_:TextField;
         (_loc4_ = this.mClip.Container_QuestMenu.Container_MainQuest.QuestTitle.text as TextField).text = §7"0§.toLowerCase();
         _loc4_.mouseEnabled = false;
         this.§1!K§(new §!"8§(§!"8§.§6H§));
         this.§?!T§();
         this.§;!Z§(§9!,§);
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§2!<§.visible)
         {
            return;
         }
         if(this.§catch§ > 0)
         {
            this.§catch§ -= param1;
            if(this.§catch§ <= 0)
            {
               this.§;!Z§(§9!,§);
            }
         }
         if(§!!2§.§[E§.§["&§() && !§!!2§.§[E§.§+6§())
         {
            getItemByName("ButtonGravity").setVisibility(true);
         }
         else
         {
            getItemByName("ButtonGravity").setVisibility(false);
         }
         this.§2!<§.x = this.§2!0§;
      }
      
      public function hide() : void
      {
         this.§2!<§.visible = false;
      }
      
      public function show() : void
      {
         this.§2!<§.visible = true;
      }
      
      private function §7D§(param1:Event) : void
      {
         §#!j§.§[E§.§<!_§.mNextState = StateMap.§%!Q§;
      }
      
      private function onEnterFrame(param1:int) : void
      {
         if(this.§2!<§.currentLabel.indexOf("endstate") != -1)
         {
            this.§2!<§.stop();
         }
         var _loc2_:MovieClip = this.§7!8§("Button_ShowMap",this.§2!<§) as MovieClip;
         if(_loc2_)
         {
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§7D§);
            _loc2_.buttonMode = true;
         }
      }
      
      public function §-"&§() : Boolean
      {
         return this.§#!#§;
      }
      
      private function §5!a§(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(Event.SELECT));
         §5L§.§[E§.each(this.§`!y§[param1.target]);
      }
      
      private function §;!Z§(param1:String) : void
      {
         if(param1 == §=!F§)
         {
            this.§]!m§();
            this.§2!<§.gotoAndPlay("mini_menu_dropdown");
            if(this.§[o§)
            {
               this.§1!K§(new §!"8§(§!"8§.§6"+§));
            }
         }
         else if(param1 == §9!,§)
         {
            this.§2!<§.y = §&!x§;
            this.§+!h§(null);
         }
         this.§>!F§ = param1;
      }
      
      private function §6F§(param1:MouseEvent) : void
      {
         if(this.§>!F§ != §=!F§)
         {
            this.§;!Z§(§=!F§);
            this.§catch§ = 0;
         }
         else
         {
            this.§;!Z§(§9!,§);
         }
      }
      
      private function §@"8§(param1:MouseEvent) : void
      {
         this.§catch§ = 0;
      }
      
      private function §+!h§(param1:MouseEvent) : void
      {
         this.§2!<§.y = §&!x§;
         this.§2!<§.addEventListener(Event.ENTER_FRAME,this.§"!F§,false,0,true);
         this.§>!F§ = §9!,§;
         this.§1!K§(new §!"8§(§!"8§.§1!u§));
      }
      
      private function §7!8§(param1:String, param2:DisplayObjectContainer) : DisplayObject
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
               if(_loc5_ = this.§7!8§(param1,_loc4_ as DisplayObjectContainer))
               {
                  return _loc5_;
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      private function §[H§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.O && param1.ctrlKey)
         {
            this.load();
         }
         if(param1.keyCode == Keyboard.Q && param1.ctrlKey)
         {
            this.startSandbox();
         }
      }
      
      private function load() : void
      {
         this.§^!4§ = new FileReference();
         this.§^!4§.browse([new FileFilter("Quests (*.xml): ","*.xml")]);
         this.§^!4§.addEventListener(Event.SELECT,this.§?v§);
      }
      
      private function §?v§(param1:Event) : void
      {
         §>!`§ = this.§^!4§.name;
         this.§^!4§.removeEventListener(Event.SELECT,this.§?v§);
         this.§^!4§.addEventListener(Event.COMPLETE,this.§9A§);
         this.§^!4§.addEventListener(IOErrorEvent.IO_ERROR,this.§'T§);
         this.§^!4§.load();
      }
      
      protected function §'T§(param1:IOErrorEvent) : void
      {
      }
      
      private function §9A§(param1:Event) : void
      {
         this.§^!4§.removeEventListener(Event.COMPLETE,this.§9A§);
         var _loc2_:XML = new XML((param1.target as FileReference).data);
         this.dispatchEvent(new Event(Event.SELECT));
         §#!j§.§[E§.§&!F§.§&",§();
         §5L§.§[E§.§["%§(_loc2_);
      }
      
      private function startSandbox() : void
      {
         this.dispatchEvent(new Event(Event.SELECT));
         §#!j§.§[E§.§&!F§.§&",§();
         §5L§.§[E§.§["%§(null);
      }
      
      private function §1!K§(param1:Event = null) : void
      {
         var _loc2_:TextField = null;
         var _loc8_:* = false;
         var _loc9_:String = null;
         var _loc10_:MovieClip = null;
         var _loc11_:int = 0;
         var _loc12_:§7a§ = null;
         if(param1 && param1.type == §!"8§.§6"+§)
         {
            this.§4"%§ = this.§2!<§.getChildByName("Container_DropMenu") as MovieClip;
            _loc2_ = this.§4"%§.TaskList.text as TextField;
         }
         var _loc3_:int = 0;
         if(_loc2_)
         {
            _loc2_.text = "";
            _loc2_.mouseEnabled = false;
         }
         var _loc4_:Vector.<String> = this.§[o§.§9!J§();
         var _loc5_:int = 1;
         while(_loc5_ <= 3)
         {
            _loc8_ = false;
            if(_loc5_ - 1 < _loc4_.length)
            {
               _loc8_ = (_loc9_ = _loc4_[_loc5_ - 1]).indexOf("[done]") > -1;
               _loc3_ += !!_loc8_ ? 1 : 0;
            }
            if(_loc2_)
            {
               if(_loc10_ = this.§7!8§("TaskCheck" + _loc5_.toString(),this.§4"%§) as MovieClip)
               {
                  if(_loc5_ >= _loc4_.length + 1)
                  {
                     _loc10_.visible = false;
                  }
                  else
                  {
                     _loc10_.visible = _loc9_.indexOf("[done]") > -1;
                     _loc9_ = _loc9_.replace("[done]","");
                     _loc2_.appendText(_loc9_ + "\n");
                  }
               }
            }
            _loc5_++;
         }
         var _loc6_:MovieClip;
         var _loc7_:Boolean = (_loc6_ = this.mClip.Container_QuestMenu.Container_MainQuest.SurpriseStar0 as MovieClip).currentFrame == 2 || this.§]4§[_loc6_];
         if(_loc3_ <= 1)
         {
            if(this.§]4§[_loc6_])
            {
               this.§]4§[_loc6_].removeEventListener(Event.COMPLETE,this.§=,§);
               this.§]4§[_loc6_] = null;
            }
            _loc6_.gotoAndStop(1);
         }
         if(_loc3_ > 1 && !_loc7_)
         {
            _loc11_ = 0;
            while(_loc11_ < §#!j§.§[E§.§0"!§.§0z§.objects.getObjectCount())
            {
               if((_loc12_ = §7a§.§^!g§(§#!j§.§[E§.§0"!§.§0z§.objects.getObject(_loc11_))).§>!r§())
               {
                  this.§%!J§(_loc6_,new §<^§(_loc12_),true);
               }
               _loc11_++;
            }
         }
      }
      
      private function §?!T§(param1:Event = null) : void
      {
         var _loc4_:int = 0;
         var _loc5_:MovieClip = null;
         var _loc6_:§7!9§ = null;
         var _loc2_:Boolean = true;
         var _loc3_:Vector.<§7!9§> = this.§[o§.§=O§();
         if(_loc3_ == null)
         {
            _loc4_ = 0;
            while(_loc4_ <= 2)
            {
               (_loc5_ = this.§7!8§("SurpriseStar" + _loc4_.toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).visible = false;
               _loc4_++;
            }
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               _loc2_ = (_loc6_ = _loc3_[_loc4_]).§!9§;
               if((_loc5_ = this.§7!8§("SurpriseStar" + (_loc4_ + 1).toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).currentFrame == 1 && _loc2_ && !this.§]4§[_loc5_])
               {
                  this.§%!J§(_loc5_,new §<^§(_loc6_));
               }
               else if(!_loc2_)
               {
                  _loc5_.gotoAndStop(1);
                  if(this.§]4§[_loc5_])
                  {
                     this.§]4§[_loc5_].removeEventListener(Event.COMPLETE,this.§=,§);
                     this.§]4§[_loc5_] = null;
                  }
               }
               _loc4_++;
            }
         }
      }
      
      private function §%!J§(param1:MovieClip, param2:§<^§, param3:Boolean = false) : void
      {
         var _loc4_:§<^§ = new §<^§(param1);
         var _loc5_:§+!d§ = new §+!d§(param2.position,_loc4_.position,param3);
         this.§`!v§.movieClip.addChild(_loc5_);
         if(this.§]4§[param1] == null)
         {
            _loc5_.addEventListener(Event.COMPLETE,this.§=,§);
            this.§]4§[param1] = _loc5_;
         }
      }
      
      private function §=,§(param1:Event) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in this.§]4§)
         {
            if(this.§]4§[_loc2_] == param1.target)
            {
               _loc2_.gotoAndStop(2);
               this.§]4§[_loc2_] = null;
               break;
            }
         }
      }
      
      private function §]!m§() : void
      {
         if(this.§2!<§.hasEventListener(Event.ENTER_FRAME))
         {
            this.§2!<§.removeEventListener(Event.ENTER_FRAME,this.§"!F§);
         }
      }
      
      private function §"!F§(param1:Event) : void
      {
         if(this.§2!<§.currentFrame == 1)
         {
            this.§]!m§();
         }
         else
         {
            this.§2!<§.prevFrame();
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§-H§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§-H§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§-H§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§-H§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§-H§.willTrigger(param1);
      }
   }
}
