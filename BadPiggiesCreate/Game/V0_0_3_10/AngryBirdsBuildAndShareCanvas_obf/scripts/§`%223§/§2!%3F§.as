package §`"3§
{
   import §!q§.§84§;
   import §3;§.§#!C§;
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   import §?^§.§0Q§;
   import com.rovio.assets.§5!+§;
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
   
   public class §2!?§ extends Sprite
   {
      
      private static const §'y§:int = 3;
      
      private static const §21§:int = 2000;
      
      private static const §?!g§:Number = 0.2;
       
      
      private var §6"3§:§0Q§;
      
      private var §2!$§:MovieClip;
      
      private var §`K§:Vector.<§[,§>;
      
      private var §"!%§:DisplayObjectContainer;
      
      private var §[!m§:DisplayObject;
      
      private var §-3§:§^F§;
      
      private var §'!U§:Timer;
      
      private var §3!9§:Boolean = false;
      
      private var §1!F§:TextField;
      
      public function §2!?§(param1:§0Q§)
      {
         this.§`K§ = new Vector.<§[,§>();
         super();
         this.§6"3§ = param1;
         var _loc2_:Class = §5!+§.§,]§("thoughtBubble");
         this.§2!$§ = new _loc2_();
         this.§[!m§ = this.§2!$§.getChildByName("content") as DisplayObject;
         this.§[!m§.visible = false;
         this.§"!%§ = new Sprite();
         addChild(this.§2!$§);
         addChild(this.§"!%§);
         this.§1!F§ = new TextField();
         this.§1!F§.defaultTextFormat = new TextFormat("AngryBirdsPiggies",128,16638875);
         this.§1!F§.filters = [new GlowFilter(12412965,1,3,3,10)];
         this.§1!F§.autoSize = "center";
         this.§1!F§.text = "!";
         this.§1!F§.x = (this.§[!m§.width - this.§1!F§.width) / 2 + this.§[!m§.x;
         this.§1!F§.y = (this.§[!m§.height - this.§1!F§.height) / 2 + this.§[!m§.y;
         this.§1!F§.selectable = false;
         this.§2!$§.addChild(this.§1!F§);
         this.§2!$§.graphics.beginFill(0,0);
         this.§2!$§.graphics.drawRect(0,0,-this.§2!$§.width,-this.§2!$§.height);
         this.§2!$§.graphics.endFill();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§>!=§);
         addEventListener(MouseEvent.ROLL_OVER,this.§<!$§);
         addEventListener(MouseEvent.ROLL_OUT,this.§""5§);
         §84§.§,l§.§4!v§.addEventListener(§#!C§.§""2§,this.onPhysicsEnabled);
         §84§.§,l§.§4!v§.addEventListener(§#!C§.§+q§,this.§>!$§);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         visible = false;
      }
      
      private function §>!$§(param1:Event) : void
      {
         visible = true;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§"!n§();
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function §>!=§(param1:Event) : void
      {
         if(this.§'!U§)
         {
            this.§'!U§.stop();
         }
         if(this.§-3§)
         {
            this.§-3§.stop();
         }
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§6"3§.§'",§())
         {
            return;
         }
         var _loc2_:Point = this.§6"3§.§[=§();
         x = _loc2_.x;
         y = _loc2_.y;
      }
      
      private function §"!n§() : void
      {
         this.§'!U§ = new Timer(§21§,1);
         this.§'!U§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§""5§);
         this.§'!U§.start();
      }
      
      private function §""5§(param1:Event = null) : void
      {
         if(this.§3!9§)
         {
            return;
         }
         if(this.§'!U§)
         {
            this.§'!U§.stop();
         }
         if(this.§-3§)
         {
            this.§-3§.stop();
         }
         this.§"!%§.visible = false;
         this.§1!F§.visible = true;
         var _loc2_:Number = §?!g§ / this.§2!$§.scaleX;
         this.§-3§ = §<y§.§,l§.§]!C§(this,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },{
            "scaleX":scaleX,
            "scaleY":scaleY
         },0.3,§<y§.§-!]§);
         this.§-3§.play();
      }
      
      private function §<!$§(param1:Event = null) : void
      {
         if(this.§3!9§)
         {
            return;
         }
         if(this.§'!U§)
         {
            this.§'!U§.stop();
         }
         if(this.§-3§)
         {
            this.§-3§.stop();
         }
         this.§"!%§.visible = true;
         this.§1!F§.visible = false;
         this.§-3§ = §<y§.§,l§.§]!C§(this,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":scaleX,
            "scaleY":scaleY
         },0.3,§<y§.§-!]§);
         this.§-3§.play();
      }
      
      public function §!!S§(param1:String, param2:Boolean) : void
      {
         var _loc7_:§[,§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         this.§`K§.push(new §[,§(param1,param2));
         var _loc3_:int = 0;
         while(_loc3_ < this.§`K§.length)
         {
            _loc7_ = this.§`K§[_loc3_];
            _loc8_ = 0;
            _loc9_ = 0;
            switch(_loc3_)
            {
               case 1:
                  _loc8_ = _loc7_.width / 2 + this.§`K§[0].width / 2;
                  _loc9_ = _loc7_.height / 2 + §'y§ / 2;
                  break;
               case 2:
                  _loc8_ = 0;
                  _loc9_ = _loc7_.height / 2 + this.§`K§[0].height / 2 + §'y§;
                  break;
               case 3:
                  _loc8_ = this.§`K§[0].width / 2 + this.§`K§[1].width + _loc7_.width / 2;
                  _loc9_ = 0;
                  break;
               case 4:
                  _loc8_ = this.§`K§[0].width / 2 + this.§`K§[1].width + _loc7_.width / 2;
                  _loc9_ = _loc7_.height / 2 + this.§`K§[0].height / 2 + §'y§;
                  break;
            }
            _loc7_.x = _loc8_;
            _loc7_.y = _loc9_;
            this.§"!%§.addChild(_loc7_);
            _loc3_++;
         }
         this.§2!$§.scaleX = this.§2!$§.scaleY = 1;
         var _loc4_:Number = this.§"!%§.width / this.§[!m§.width;
         var _loc5_:Number = this.§"!%§.height / this.§[!m§.height;
         var _loc6_:Number = Math.max(0.4,Math.max(_loc4_,_loc5_));
         this.§2!$§.scaleY = _loc6_;
         this.§2!$§.scaleX = _loc6_;
         this.§"!%§.x = (this.§[!m§.width * _loc6_ - this.§"!%§.width) / 2 + this.§[!m§.x * _loc6_;
         this.§"!%§.y = (this.§[!m§.height * _loc6_ - this.§"!%§.height) / 2 + this.§[!m§.y * _loc6_;
      }
      
      public function update(param1:Vector.<§0Q§>) : void
      {
         var _loc4_:§[,§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc2_:Boolean = this.§3!9§;
         var _loc3_:Boolean = true;
         for each(_loc4_ in this.§`K§)
         {
            _loc5_ = _loc4_.§5D§;
            _loc4_.§&! §(!_loc4_.§<"4§);
            _loc6_ = param1.length - 1;
            while(_loc6_ >= 0)
            {
               if(param1[_loc6_].getName() == _loc4_.§+6§)
               {
                  _loc4_.§&! §(_loc4_.§<"4§);
                  param1.splice(_loc6_,1);
                  break;
               }
               _loc6_--;
            }
            if(_loc4_.§5D§ != _loc5_)
            {
               this.§<!$§();
               this.§"!n§();
            }
            if(!_loc4_.§5D§)
            {
               _loc3_ = false;
            }
         }
         this.§3!9§ = _loc3_;
         if(this.§3!9§ != _loc2_)
         {
            if(this.§3!9§)
            {
               if(this.§-3§)
               {
                  this.§-3§.stop();
               }
               if(this.§'!U§)
               {
                  this.§'!U§.stop();
               }
               this.§-3§ = §<y§.§,l§.§]!C§(this,{
                  "scaleX":0,
                  "scaleY":0
               },{
                  "scaleX":scaleX,
                  "scaleY":scaleY
               },0.3,§<y§.§-!]§);
               this.§-3§.play();
            }
            else
            {
               this.§<!$§();
               this.§"!n§();
            }
         }
      }
   }
}
