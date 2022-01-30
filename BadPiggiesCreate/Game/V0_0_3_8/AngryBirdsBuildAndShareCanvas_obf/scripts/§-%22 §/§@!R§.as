package §-" §
{
   import §"!0§.§"!5§;
   import §"!0§.§;!5§;
   import §,m§.§?"%§;
   import §]!b§.§]?§;
   import com.rovio.assets.§%"4§;
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
   import §true§.§>"-§;
   
   public class §@!R§ extends Sprite
   {
      
      private static const §7!s§:int = 3;
      
      private static const §5c§:int = 2000;
      
      private static const § !'§:Number = 0.2;
       
      
      private var §0h§:§>"-§;
      
      private var §=!=§:MovieClip;
      
      private var §&!%§:Vector.<§1Y§>;
      
      private var § a§:DisplayObjectContainer;
      
      private var §^!-§:DisplayObject;
      
      private var §@!N§:§;!5§;
      
      private var §-!R§:Timer;
      
      private var §[;§:Boolean = false;
      
      private var §,F§:TextField;
      
      public function §@!R§(param1:§>"-§)
      {
         this.§&!%§ = new Vector.<§1Y§>();
         super();
         this.§0h§ = param1;
         var _loc2_:Class = §%"4§.§>!v§("thoughtBubble");
         this.§=!=§ = new _loc2_();
         this.§^!-§ = this.§=!=§.getChildByName("content") as DisplayObject;
         this.§^!-§.visible = false;
         this.§ a§ = new Sprite();
         addChild(this.§=!=§);
         addChild(this.§ a§);
         this.§,F§ = new TextField();
         this.§,F§.defaultTextFormat = new TextFormat("AngryBirdsPiggies",128,16638875);
         this.§,F§.filters = [new GlowFilter(12412965,1,3,3,10)];
         this.§,F§.autoSize = "center";
         this.§,F§.text = "!";
         this.§,F§.x = (this.§^!-§.width - this.§,F§.width) / 2 + this.§^!-§.x;
         this.§,F§.y = (this.§^!-§.height - this.§,F§.height) / 2 + this.§^!-§.y;
         this.§,F§.selectable = false;
         this.§=!=§.addChild(this.§,F§);
         this.§=!=§.graphics.beginFill(0,0);
         this.§=!=§.graphics.drawRect(0,0,-this.§=!=§.width,-this.§=!=§.height);
         this.§=!=§.graphics.endFill();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§49§);
         addEventListener(MouseEvent.ROLL_OVER,this.§3"+§);
         addEventListener(MouseEvent.ROLL_OUT,this.§>!"§);
         §]?§.§9j§.§5;§.addEventListener(§?"%§.§['§,this.onPhysicsEnabled);
         §]?§.§9j§.§5;§.addEventListener(§?"%§.§!![§,this.§]X§);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         visible = false;
      }
      
      private function §]X§(param1:Event) : void
      {
         visible = true;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§7b§();
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function §49§(param1:Event) : void
      {
         if(this.§-!R§)
         {
            this.§-!R§.stop();
         }
         if(this.§@!N§)
         {
            this.§@!N§.stop();
         }
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§0h§.§3'§())
         {
            return;
         }
         var _loc2_:Point = this.§0h§.§46§();
         x = _loc2_.x;
         y = _loc2_.y;
      }
      
      private function §7b§() : void
      {
         this.§-!R§ = new Timer(§5c§,1);
         this.§-!R§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§>!"§);
         this.§-!R§.start();
      }
      
      private function §>!"§(param1:Event = null) : void
      {
         if(this.§[;§)
         {
            return;
         }
         if(this.§-!R§)
         {
            this.§-!R§.stop();
         }
         if(this.§@!N§)
         {
            this.§@!N§.stop();
         }
         this.§ a§.visible = false;
         this.§,F§.visible = true;
         var _loc2_:Number = § !'§ / this.§=!=§.scaleX;
         this.§@!N§ = §"!5§.§9j§.§4!p§(this,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },{
            "scaleX":scaleX,
            "scaleY":scaleY
         },0.3,§"!5§.§+!F§);
         this.§@!N§.play();
      }
      
      private function §3"+§(param1:Event = null) : void
      {
         if(this.§[;§)
         {
            return;
         }
         if(this.§-!R§)
         {
            this.§-!R§.stop();
         }
         if(this.§@!N§)
         {
            this.§@!N§.stop();
         }
         this.§ a§.visible = true;
         this.§,F§.visible = false;
         this.§@!N§ = §"!5§.§9j§.§4!p§(this,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":scaleX,
            "scaleY":scaleY
         },0.3,§"!5§.§+!F§);
         this.§@!N§.play();
      }
      
      public function §?"-§(param1:String, param2:Boolean) : void
      {
         var _loc7_:§1Y§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         this.§&!%§.push(new §1Y§(param1,param2));
         var _loc3_:int = 0;
         while(_loc3_ < this.§&!%§.length)
         {
            _loc7_ = this.§&!%§[_loc3_];
            _loc8_ = 0;
            _loc9_ = 0;
            switch(_loc3_)
            {
               case 1:
                  _loc8_ = _loc7_.width / 2 + this.§&!%§[0].width / 2;
                  _loc9_ = _loc7_.height / 2 + §7!s§ / 2;
                  break;
               case 2:
                  _loc8_ = 0;
                  _loc9_ = _loc7_.height / 2 + this.§&!%§[0].height / 2 + §7!s§;
                  break;
               case 3:
                  _loc8_ = this.§&!%§[0].width / 2 + this.§&!%§[1].width + _loc7_.width / 2;
                  _loc9_ = 0;
                  break;
               case 4:
                  _loc8_ = this.§&!%§[0].width / 2 + this.§&!%§[1].width + _loc7_.width / 2;
                  _loc9_ = _loc7_.height / 2 + this.§&!%§[0].height / 2 + §7!s§;
                  break;
            }
            _loc7_.x = _loc8_;
            _loc7_.y = _loc9_;
            this.§ a§.addChild(_loc7_);
            _loc3_++;
         }
         this.§=!=§.scaleX = this.§=!=§.scaleY = 1;
         var _loc4_:Number = this.§ a§.width / this.§^!-§.width;
         var _loc5_:Number = this.§ a§.height / this.§^!-§.height;
         var _loc6_:Number = Math.max(0.4,Math.max(_loc4_,_loc5_));
         this.§=!=§.scaleY = _loc6_;
         this.§=!=§.scaleX = _loc6_;
         this.§ a§.x = (this.§^!-§.width * _loc6_ - this.§ a§.width) / 2 + this.§^!-§.x * _loc6_;
         this.§ a§.y = (this.§^!-§.height * _loc6_ - this.§ a§.height) / 2 + this.§^!-§.y * _loc6_;
      }
      
      public function update(param1:Vector.<§>"-§>) : void
      {
         var _loc4_:§1Y§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc2_:Boolean = this.§[;§;
         var _loc3_:Boolean = true;
         for each(_loc4_ in this.§&!%§)
         {
            _loc5_ = _loc4_.§[!#§;
            _loc4_.§-!<§(!_loc4_.§^c§);
            _loc6_ = param1.length - 1;
            while(_loc6_ >= 0)
            {
               if(param1[_loc6_].getName() == _loc4_.§@Q§)
               {
                  _loc4_.§-!<§(_loc4_.§^c§);
                  param1.splice(_loc6_,1);
                  break;
               }
               _loc6_--;
            }
            if(_loc4_.§[!#§ != _loc5_)
            {
               this.§3"+§();
               this.§7b§();
            }
            if(!_loc4_.§[!#§)
            {
               _loc3_ = false;
            }
         }
         this.§[;§ = _loc3_;
         if(this.§[;§ != _loc2_)
         {
            if(this.§[;§)
            {
               if(this.§@!N§)
               {
                  this.§@!N§.stop();
               }
               if(this.§-!R§)
               {
                  this.§-!R§.stop();
               }
               this.§@!N§ = §"!5§.§9j§.§4!p§(this,{
                  "scaleX":0,
                  "scaleY":0
               },{
                  "scaleX":scaleX,
                  "scaleY":scaleY
               },0.3,§"!5§.§+!F§);
               this.§@!N§.play();
            }
            else
            {
               this.§3"+§();
               this.§7b§();
            }
         }
      }
   }
}
