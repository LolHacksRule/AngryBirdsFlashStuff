package §7&§
{
   import §"_§.§!"8§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §1" §.§#!j§;
   import §7t§.§7a§;
   import com.rovio.assets.§69§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   
   public class §%""§ extends Sprite
   {
      
      private static const §0!c§:int = 3;
      
      private static const §8O§:int = 2000;
      
      private static const §@!4§:Number = 0.2;
       
      
      private var §&!4§:§7a§;
      
      private var §,!o§:MovieClip;
      
      private var §+!8§:Vector.<§"!-§>;
      
      private var §;!7§:DisplayObjectContainer;
      
      private var §>",§:DisplayObject;
      
      private var §,!c§:§=!r§;
      
      private var §>!M§:Timer;
      
      private var § !7§:Boolean = false;
      
      private var §'!2§:TextField;
      
      public function §%""§(param1:§7a§)
      {
         this.§+!8§ = new Vector.<§"!-§>();
         super();
         this.§&!4§ = param1;
         var _loc2_:Class = §69§.§ 0§("thoughtBubble");
         this.§,!o§ = new _loc2_();
         this.§>",§ = this.§,!o§.getChildByName("content") as DisplayObject;
         this.§>",§.visible = false;
         this.§;!7§ = new Sprite();
         addChild(this.§,!o§);
         addChild(this.§;!7§);
         this.§'!2§ = new TextField();
         this.§'!2§.defaultTextFormat = new TextFormat("AngryBirdsPiggies",128,10873088);
         this.§'!2§.filters = [new GlowFilter(4530696,1,3,3,10)];
         this.§'!2§.autoSize = "center";
         this.§'!2§.text = "!";
         this.§'!2§.x = (this.§>",§.width - this.§'!2§.width) / 2 + this.§>",§.x;
         this.§'!2§.y = (this.§>",§.height - this.§'!2§.height) / 2 + this.§>",§.y;
         this.§'!2§.selectable = false;
         this.§,!o§.addChild(this.§'!2§);
         this.§,!o§.graphics.beginFill(0,0);
         this.§,!o§.graphics.drawRect(0,0,-this.§,!o§.width,-this.§,!o§.height);
         this.§,!o§.graphics.endFill();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§8!_§);
         addEventListener(MouseEvent.ROLL_OVER,this.§-!u§);
         addEventListener(MouseEvent.ROLL_OUT,this.§!!%§);
         §#!j§.§[E§.§%8§.addEventListener(§!"8§.§4]§,this.onPhysicsEnabled);
         §#!j§.§[E§.§%8§.addEventListener(§!"8§.§3!?§,this.§@<§);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         this.§-!u§();
      }
      
      private function §@<§(param1:Event) : void
      {
         this.§!!%§();
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§-!u§();
         this.§>!n§();
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function §8!_§(param1:Event) : void
      {
         if(this.§>!M§)
         {
            this.§>!M§.stop();
         }
         if(this.§,!c§)
         {
            this.§,!c§.stop();
         }
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§&!4§.§@Z§())
         {
            visible = false;
            return;
         }
         visible = true;
         var _loc2_:Point = this.§&!4§.§!3§();
         x = _loc2_.x;
         y = _loc2_.y;
      }
      
      private function §>!n§() : void
      {
         this.§>!M§ = new Timer(§8O§,1);
         this.§>!M§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§!!%§);
         this.§>!M§.start();
      }
      
      private function §!!%§(param1:Event = null) : void
      {
         if(this.§ !7§)
         {
            return;
         }
         if(this.§>!M§)
         {
            this.§>!M§.stop();
         }
         if(this.§,!c§)
         {
            this.§,!c§.stop();
         }
         this.§;!7§.visible = false;
         this.§'!2§.visible = true;
         var _loc2_:Number = §@!4§ / this.§,!o§.scaleX;
         this.§,!c§ = §7I§.§[E§.§ ";§(this,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },{
            "scaleX":scaleX,
            "scaleY":scaleY
         },0.3,§7I§.§7L§);
         this.§,!c§.play();
      }
      
      private function §-!u§(param1:Event = null) : void
      {
         if(this.§ !7§)
         {
            return;
         }
         if(this.§>!M§)
         {
            this.§>!M§.stop();
         }
         if(this.§,!c§)
         {
            this.§,!c§.stop();
         }
         this.§;!7§.visible = true;
         this.§'!2§.visible = false;
         this.§,!c§ = §7I§.§[E§.§ ";§(this,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":scaleX,
            "scaleY":scaleY
         },0.3,§7I§.§7L§);
         this.§,!c§.play();
      }
      
      public function §,!D§(param1:String, param2:Boolean) : void
      {
         var _loc7_:§"!-§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         this.§+!8§.push(new §"!-§(param1,param2));
         var _loc3_:int = 0;
         while(_loc3_ < this.§+!8§.length)
         {
            _loc7_ = this.§+!8§[_loc3_];
            _loc8_ = 0;
            _loc9_ = 0;
            switch(_loc3_)
            {
               case 1:
                  _loc8_ = _loc7_.width / 2 + this.§+!8§[0].width / 2;
                  _loc9_ = _loc7_.height / 2 + §0!c§ / 2;
                  break;
               case 2:
                  _loc8_ = 0;
                  _loc9_ = _loc7_.height / 2 + this.§+!8§[0].height / 2 + §0!c§;
                  break;
               case 3:
                  _loc8_ = this.§+!8§[0].width / 2 + this.§+!8§[1].width + _loc7_.width / 2;
                  _loc9_ = 0;
                  break;
               case 4:
                  _loc8_ = this.§+!8§[0].width / 2 + this.§+!8§[1].width + _loc7_.width / 2;
                  _loc9_ = _loc7_.height / 2 + this.§+!8§[0].height / 2 + §0!c§;
                  break;
            }
            _loc7_.x = _loc8_;
            _loc7_.y = _loc9_;
            this.§;!7§.addChild(_loc7_);
            _loc3_++;
         }
         this.§,!o§.scaleX = this.§,!o§.scaleY = 1;
         var _loc4_:Number = this.§;!7§.width / this.§>",§.width;
         var _loc5_:Number = this.§;!7§.height / this.§>",§.height;
         var _loc6_:Number = Math.max(0.4,Math.max(_loc4_,_loc5_));
         this.§,!o§.scaleY = _loc6_;
         this.§,!o§.scaleX = _loc6_;
         this.§;!7§.x = (this.§>",§.width * _loc6_ - this.§;!7§.width) / 2 + this.§>",§.x * _loc6_;
         this.§;!7§.y = (this.§>",§.height * _loc6_ - this.§;!7§.height) / 2 + this.§>",§.y * _loc6_;
      }
      
      public function update(param1:Vector.<§7a§>) : void
      {
         var _loc4_:§"!-§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc2_:Boolean = this.§ !7§;
         var _loc3_:Boolean = true;
         for each(_loc4_ in this.§+!8§)
         {
            _loc5_ = _loc4_.§^8§;
            _loc4_.§2!T§(!_loc4_.§"">§);
            _loc6_ = param1.length - 1;
            while(_loc6_ >= 0)
            {
               if(param1[_loc6_].getName() == _loc4_.§#!+§)
               {
                  _loc4_.§2!T§(_loc4_.§"">§);
                  param1.splice(_loc6_,1);
                  break;
               }
               _loc6_--;
            }
            if(_loc4_.§^8§ != _loc5_)
            {
               this.§-!u§();
               this.§>!n§();
            }
            if(!_loc4_.§^8§)
            {
               _loc3_ = false;
            }
         }
         this.§ !7§ = _loc3_;
         if(this.§ !7§ != _loc2_)
         {
            if(this.§ !7§)
            {
               if(this.§,!c§)
               {
                  this.§,!c§.stop();
               }
               if(this.§>!M§)
               {
                  this.§>!M§.stop();
               }
               this.§,!c§ = §7I§.§[E§.§ ";§(this,{
                  "scaleX":0,
                  "scaleY":0
               },{
                  "scaleX":scaleX,
                  "scaleY":scaleY
               },0.3,§7I§.§7L§);
               this.§,!c§.play();
            }
            else
            {
               this.§-!u§();
               this.§>!n§();
            }
         }
      }
   }
}
