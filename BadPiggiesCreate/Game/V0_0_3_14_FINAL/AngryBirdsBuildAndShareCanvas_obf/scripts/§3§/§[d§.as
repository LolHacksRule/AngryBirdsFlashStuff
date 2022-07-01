package §3§
{
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'i§.§'!;§;
   import §62§.§0!t§;
   import §7r§.§=q§;
   import com.rovio.assets.§>!]§;
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
   
   public class §[d§ extends Sprite
   {
      
      private static const §0I§:int = 3;
      
      private static const §=!N§:int = 2000;
      
      private static const §function§:Number = 0.2;
       
      
      private var §?N§:§=q§;
      
      private var §7!N§:MovieClip;
      
      private var §9a§:Vector.<§!!!§>;
      
      private var §%z§:DisplayObjectContainer;
      
      private var §;!F§:DisplayObject;
      
      private var §8!g§:§3^§;
      
      private var §-U§:Timer;
      
      private var §#[§:Boolean = false;
      
      private var §#A§:TextField;
      
      public function §[d§(param1:§=q§)
      {
         this.§9a§ = new Vector.<§!!!§>();
         super();
         this.§?N§ = param1;
         var _loc2_:Class = §>!]§.§1!8§("thoughtBubble");
         this.§7!N§ = new _loc2_();
         this.§;!F§ = this.§7!N§.getChildByName("content") as DisplayObject;
         this.§;!F§.visible = false;
         this.§%z§ = new Sprite();
         addChild(this.§7!N§);
         addChild(this.§%z§);
         this.§#A§ = new TextField();
         this.§#A§.defaultTextFormat = new TextFormat("AngryBirdsPiggies",128,10873088);
         this.§#A§.filters = [new GlowFilter(4530696,1,3,3,10)];
         this.§#A§.autoSize = "center";
         this.§#A§.text = "!";
         this.§#A§.x = (this.§;!F§.width - this.§#A§.width) / 2 + this.§;!F§.x;
         this.§#A§.y = (this.§;!F§.height - this.§#A§.height) / 2 + this.§;!F§.y;
         this.§#A§.selectable = false;
         this.§7!N§.addChild(this.§#A§);
         this.§7!N§.graphics.beginFill(0,0);
         this.§7!N§.graphics.drawRect(0,0,-this.§7!N§.width,-this.§7!N§.height);
         this.§7!N§.graphics.endFill();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§?!N§);
         addEventListener(MouseEvent.ROLL_OVER,this.§`j§);
         addEventListener(MouseEvent.ROLL_OUT,this.§''§);
         §'!;§.§2=§.§1?§.addEventListener(§0!t§.§1y§,this.onPhysicsEnabled);
         §'!;§.§2=§.§1?§.addEventListener(§0!t§.§0!_§,this.§0!h§);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         this.§`j§();
      }
      
      private function §0!h§(param1:Event) : void
      {
         this.§''§();
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§`j§();
         this.§`+§();
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function §?!N§(param1:Event) : void
      {
         if(this.§-U§)
         {
            this.§-U§.stop();
         }
         if(this.§8!g§)
         {
            this.§8!g§.stop();
         }
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§?N§.§&!5§())
         {
            visible = false;
            return;
         }
         visible = true;
         var _loc2_:Point = this.§?N§.§ Q§();
         x = _loc2_.x;
         y = _loc2_.y;
      }
      
      private function §`+§() : void
      {
         this.§-U§ = new Timer(§=!N§,1);
         this.§-U§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§''§);
         this.§-U§.start();
      }
      
      private function §''§(param1:Event = null) : void
      {
         if(this.§#[§)
         {
            return;
         }
         if(this.§-U§)
         {
            this.§-U§.stop();
         }
         if(this.§8!g§)
         {
            this.§8!g§.stop();
         }
         this.§%z§.visible = false;
         this.§#A§.visible = true;
         var _loc2_:Number = §function§ / this.§7!N§.scaleX;
         this.§8!g§ = §7!E§.§2=§.§<!C§(this,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },{
            "scaleX":scaleX,
            "scaleY":scaleY
         },0.3,§7!E§.§5!+§);
         this.§8!g§.play();
      }
      
      private function §`j§(param1:Event = null) : void
      {
         if(this.§#[§)
         {
            return;
         }
         if(this.§-U§)
         {
            this.§-U§.stop();
         }
         if(this.§8!g§)
         {
            this.§8!g§.stop();
         }
         this.§%z§.visible = true;
         this.§#A§.visible = false;
         this.§8!g§ = §7!E§.§2=§.§<!C§(this,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":scaleX,
            "scaleY":scaleY
         },0.3,§7!E§.§5!+§);
         this.§8!g§.play();
      }
      
      public function §9%§(param1:String, param2:Boolean) : void
      {
         var _loc7_:§!!!§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         this.§9a§.push(new §!!!§(param1,param2));
         var _loc3_:int = 0;
         while(_loc3_ < this.§9a§.length)
         {
            _loc7_ = this.§9a§[_loc3_];
            _loc8_ = 0;
            _loc9_ = 0;
            switch(_loc3_)
            {
               case 1:
                  _loc8_ = _loc7_.width / 2 + this.§9a§[0].width / 2;
                  _loc9_ = _loc7_.height / 2 + §0I§ / 2;
                  break;
               case 2:
                  _loc8_ = 0;
                  _loc9_ = _loc7_.height / 2 + this.§9a§[0].height / 2 + §0I§;
                  break;
               case 3:
                  _loc8_ = this.§9a§[0].width / 2 + this.§9a§[1].width + _loc7_.width / 2;
                  _loc9_ = 0;
                  break;
               case 4:
                  _loc8_ = this.§9a§[0].width / 2 + this.§9a§[1].width + _loc7_.width / 2;
                  _loc9_ = _loc7_.height / 2 + this.§9a§[0].height / 2 + §0I§;
                  break;
            }
            _loc7_.x = _loc8_;
            _loc7_.y = _loc9_;
            this.§%z§.addChild(_loc7_);
            _loc3_++;
         }
         this.§7!N§.scaleX = this.§7!N§.scaleY = 1;
         var _loc4_:Number = this.§%z§.width / this.§;!F§.width;
         var _loc5_:Number = this.§%z§.height / this.§;!F§.height;
         var _loc6_:Number = Math.max(0.4,Math.max(_loc4_,_loc5_));
         this.§7!N§.scaleY = _loc6_;
         this.§7!N§.scaleX = _loc6_;
         this.§%z§.x = (this.§;!F§.width * _loc6_ - this.§%z§.width) / 2 + this.§;!F§.x * _loc6_;
         this.§%z§.y = (this.§;!F§.height * _loc6_ - this.§%z§.height) / 2 + this.§;!F§.y * _loc6_;
      }
      
      public function update(param1:Vector.<§=q§>) : void
      {
         var _loc4_:§!!!§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc2_:Boolean = this.§#[§;
         var _loc3_:Boolean = true;
         for each(_loc4_ in this.§9a§)
         {
            _loc5_ = _loc4_.§7!q§;
            _loc4_.§,!$§(!_loc4_.§,"8§);
            _loc6_ = param1.length - 1;
            while(_loc6_ >= 0)
            {
               if(param1[_loc6_].getName() == _loc4_.§@!h§)
               {
                  _loc4_.§,!$§(_loc4_.§,"8§);
                  param1.splice(_loc6_,1);
                  break;
               }
               _loc6_--;
            }
            if(_loc4_.§7!q§ != _loc5_)
            {
               this.§`j§();
               this.§`+§();
            }
            if(!_loc4_.§7!q§)
            {
               _loc3_ = false;
            }
         }
         this.§#[§ = _loc3_;
         if(this.§#[§ != _loc2_)
         {
            if(this.§#[§)
            {
               if(this.§8!g§)
               {
                  this.§8!g§.stop();
               }
               if(this.§-U§)
               {
                  this.§-U§.stop();
               }
               this.§8!g§ = §7!E§.§2=§.§<!C§(this,{
                  "scaleX":0,
                  "scaleY":0
               },{
                  "scaleX":scaleX,
                  "scaleY":scaleY
               },0.3,§7!E§.§5!+§);
               this.§8!g§.play();
            }
            else
            {
               this.§`j§();
               this.§`+§();
            }
         }
      }
   }
}
