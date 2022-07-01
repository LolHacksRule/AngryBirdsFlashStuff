package §9u§
{
   import §!D§.§ use§;
   import §!D§.§%c§;
   import §,!$§.§`!z§;
   import §,m§.§?"%§;
   import §@!H§.§,!a§;
   import §]!b§.§]?§;
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
   import §var§.§,"1§;
   import §var§.§0!r§;
   import §var§.Quest;
   
   public class §"![§ extends § use§ implements IEventDispatcher
   {
      
      private static const §9!u§:String = "initial";
      
      private static const §>v§:String = "questInfo";
      
      private static const §`Q§:String = "questList";
      
      private static const §-p§:int = -400;
      
      private static const §%!V§:int = -10;
      
      private static const §4k§:int = 3;
      
      public static var §0"#§:String = "";
      
      public static var §@&§:String = "";
       
      
      private var §1!j§:§,!a§;
      
      private var §,!O§:FileReference;
      
      private var §%"3§:Quest;
      
      private var §2"3§:MovieClip;
      
      private var §4h§:String;
      
      private var §=!S§:Dictionary;
      
      private var §?"&§:int = 0;
      
      private var §8-§:Vector.<§0!r§>;
      
      private var §92§:MovieClip;
      
      private var §`!K§:Boolean = false;
      
      private var §@W§:MovieClip;
      
      private var §@!C§:EventDispatcher;
      
      public function §"![§(param1:§,!a§, param2:XML, param3:§ use§)
      {
         super(param2,param3,null);
         this.§1!j§ = param1;
         param3.§">§(this);
         this.§2"3§ = this.mClip.Container_QuestMenu;
         this.§2"3§.gotoAndStop(0);
         this.§2"3§.buttonMode = true;
         this.§2"3§.useHandCursor = true;
         this.§@!C§ = new EventDispatcher(this);
         this.§2"3§.MovieClip_MouseArea.addEventListener(MouseEvent.ROLL_OVER,this.§+&§);
         this.§2"3§.MovieClip_MouseArea.addEventListener(MouseEvent.ROLL_OUT,this.§3R§);
         this.§2"3§.MovieClip_MouseArea.addEventListener(MouseEvent.CLICK,this.§5!M§);
         this.§2"3§.MovieClip_MouseArea.height = this.§2"3§.Container_MainQuest.height;
         this.§2"3§.y = §-p§;
         this.§4h§ = §9!u§;
      }
      
      public function init(param1:Quest) : void
      {
         var _loc3_:§%c§ = null;
         var _loc6_:Object = null;
         var _loc7_:MovieClip = null;
         this.§%"3§ = param1;
         this.§`!K§ = false;
         this.§%"3§.addEventListener(§`!z§.§^!r§,this.§["+§);
         this.§%"3§.addEventListener(§`!z§.§;p§,this.§#!k§);
         this.§=!S§ = new Dictionary();
         this.§1!j§.movieClip.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§6!c§);
         var _loc2_:Object = §,"1§.§9j§.§,"5§();
         var _loc4_:int = 1;
         while(_loc4_ < §4k§ + 2)
         {
            _loc6_ = _loc2_[_loc4_ - 1];
            _loc7_ = getItemByName("QuestBox" + _loc4_.toString()).mClip;
            if(_loc6_)
            {
               _loc7_.mouseEnabled = true;
               _loc7_.buttonMode = true;
               _loc7_.mouseChildren = false;
               _loc7_.addEventListener(MouseEvent.CLICK,this.§,!5§);
               if(_loc4_ <= §4k§)
               {
                  _loc3_ = getItemByName("QuestTitle" + _loc4_.toString()) as §%c§;
                  _loc3_.setText((_loc2_[_loc4_ - 1].name as String).toLowerCase());
                  _loc3_.setEnabled(false);
                  this.§=!S§[_loc7_] = _loc2_[_loc4_ - 1];
               }
            }
            else
            {
               _loc7_.mouseEnabled = false;
               _loc7_.buttonMode = false;
               _loc7_.removeEventListener(MouseEvent.CLICK,this.§,!5§);
               if(_loc4_ <= §4k§)
               {
                  _loc3_ = getItemByName("QuestTitle" + _loc4_.toString()) as §%c§;
                  _loc3_.setText("");
               }
            }
            _loc4_++;
         }
         var _loc5_:TextField;
         (_loc5_ = this.mClip.Container_QuestMenu.Container_MainQuest.QuestTitle.text as TextField).text = §@&§.toLowerCase();
         this.§#!k§(new §?"%§(§?"%§.§+!W§));
         this.§["+§();
         this.§-8§(§9!u§);
      }
      
      private function §,!5§(param1:MouseEvent) : void
      {
         this.dispatchEvent(new Event(Event.SELECT));
         §,"1§.§9j§.§8S§(this.§=!S§[param1.target]);
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§2"3§.visible)
         {
            return;
         }
         if(this.§2"3§.currentLabel.indexOf("endstate") != -1)
         {
            this.§2"3§.stop();
         }
         if(this.§?"&§ > 0)
         {
            this.§?"&§ -= param1;
            if(this.§?"&§ <= 0)
            {
               this.§-8§(§9!u§);
            }
         }
      }
      
      private function §-8§(param1:String) : void
      {
         if(param1 == §>v§)
         {
            this.§2!P§();
            this.§2"3§.gotoAndPlay("mini_menu_dropdown");
            if(this.§%"3§)
            {
               this.§#!k§(new §?"%§(§?"%§.§-!^§));
            }
         }
         else if(param1 == §9!u§)
         {
            this.§2"3§.y = §-p§;
            this.§3R§(null);
         }
         this.§4h§ = param1;
      }
      
      private function §5!M§(param1:MouseEvent) : void
      {
         if(this.§4h§ != §>v§)
         {
            this.§-8§(§>v§);
            this.§?"&§ = 0;
         }
         else
         {
            this.§-8§(§9!u§);
         }
      }
      
      private function §+&§(param1:MouseEvent) : void
      {
         this.§?"&§ = 0;
      }
      
      private function §3R§(param1:MouseEvent) : void
      {
         this.§2"3§.y = §-p§;
         this.§2"3§.addEventListener(Event.ENTER_FRAME,this.§6x§,false,0,true);
         this.§4h§ = §9!u§;
         this.§#!k§(new §?"%§(§?"%§.§[!I§));
      }
      
      private function §@""§(param1:String, param2:DisplayObjectContainer) : DisplayObject
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
               if(_loc5_ = this.§@""§(param1,_loc4_ as DisplayObjectContainer))
               {
                  return _loc5_;
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      protected function §6!c§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.O && param1.ctrlKey)
         {
            this.load();
         }
      }
      
      private function load() : void
      {
         this.§,!O§ = new FileReference();
         this.§,!O§.browse([new FileFilter("Quests (*.xml): ","*.xml")]);
         this.§,!O§.addEventListener(Event.SELECT,this.§ case§);
      }
      
      private function § case§(param1:Event) : void
      {
         §0"#§ = this.§,!O§.name;
         this.§,!O§.removeEventListener(Event.SELECT,this.§ case§);
         this.§,!O§.addEventListener(Event.COMPLETE,this.§'![§);
         this.§,!O§.addEventListener(IOErrorEvent.IO_ERROR,this.§"""§);
         this.§,!O§.load();
      }
      
      protected function §"""§(param1:IOErrorEvent) : void
      {
      }
      
      private function §'![§(param1:Event) : void
      {
         this.§,!O§.removeEventListener(Event.COMPLETE,this.§'![§);
         var _loc2_:XML = new XML((param1.target as FileReference).data);
         this.dispatchEvent(new Event(Event.SELECT));
         §]?§.§9j§.§&!m§.§7"0§();
         §,"1§.§9j§.§`-§(_loc2_);
      }
      
      public function §#!k§(param1:Event = null) : void
      {
         var _loc2_:TextField = null;
         var _loc7_:String = null;
         var _loc8_:* = false;
         var _loc9_:MovieClip = null;
         if(param1 && param1.type == §?"%§.§-!^§)
         {
            this.§@W§ = this.§2"3§.getChildByName("Container_DropMenu") as MovieClip;
            _loc2_ = this.§@W§.TaskList.text as TextField;
            this.§2"3§.MovieClip_MouseArea.y = 477;
            this.§2"3§.MovieClip_MouseArea.height = 182;
         }
         else
         {
            this.§2"3§.MovieClip_MouseArea.y = 420;
            this.§2"3§.MovieClip_MouseArea.height = this.§2"3§.Container_MainQuest.height;
         }
         var _loc3_:int = 0;
         if(_loc2_)
         {
            _loc2_.text = "";
         }
         var _loc4_:Vector.<String> = this.§%"3§.§8!E§();
         var _loc5_:int = 1;
         while(_loc5_ <= 3)
         {
            _loc8_ = (_loc7_ = _loc4_[_loc5_ - 1]).indexOf("[done]") > -1;
            _loc3_ += !!_loc8_ ? 1 : 0;
            if(_loc2_)
            {
               _loc9_ = this.§@""§("TaskCheck" + _loc5_.toString(),this.§@W§) as MovieClip;
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
      
      public function §["+§(param1:Event = null) : void
      {
         var _loc5_:MovieClip = null;
         var _loc2_:Vector.<§0!r§> = this.§%"3§.§<",§();
         var _loc3_:Boolean = true;
         var _loc4_:int = 1;
         while(_loc4_ < 3)
         {
            if(_loc2_.length > 0)
            {
               _loc2_.pop();
            }
            else
            {
               _loc3_ = false;
            }
            (_loc5_ = this.§@""§("SurpriseStar" + _loc4_.toString(),this.mClip.Container_QuestMenu.Container_MainQuest) as MovieClip).gotoAndStop(!!_loc3_ ? 2 : 1);
            _loc4_++;
         }
      }
      
      public function hide() : void
      {
         this.§2"3§.visible = false;
      }
      
      public function show() : void
      {
         this.§2"3§.visible = true;
         this.§?"&§ = 2000;
         this.§-8§(§>v§);
      }
      
      private function §2!P§() : void
      {
         if(this.§2"3§.hasEventListener(Event.ENTER_FRAME))
         {
            this.§2"3§.removeEventListener(Event.ENTER_FRAME,this.§6x§);
         }
      }
      
      protected function §6x§(param1:Event) : void
      {
         if(this.§2"3§.currentFrame == 1)
         {
            this.§2!P§();
         }
         else
         {
            this.§2"3§.prevFrame();
         }
      }
      
      public function §[6§() : Boolean
      {
         return this.§`!K§;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§@!C§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§@!C§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§@!C§.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§@!C§.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§@!C§.willTrigger(param1);
      }
   }
}
