package §1"?§
{
   import § ^§.§0c§;
   import §7!g§.§?!i§;
   import §=%§.§<A§;
   import §catch§.§"L§;
   import §catch§.§-!m§;
   import com.rovio.assets.§=#§;
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
   
   public class §>"=§ extends Sprite
   {
      
      private static const §`"§:int = 3;
      
      private static const §9!x§:int = 2000;
      
      private static const §#5§:Number = 0.2;
       
      
      private var §,4§:§<A§;
      
      private var §"!o§:MovieClip;
      
      private var § "?§:Vector.<§6!4§>;
      
      private var §@!W§:DisplayObjectContainer;
      
      private var §2i§:DisplayObject;
      
      private var §^m§:§-!m§;
      
      private var §"!'§:Timer;
      
      private var §+o§:Boolean = false;
      
      private var §'!n§:TextField;
      
      public function §>"=§(param1:§<A§)
      {
         this.§ "?§ = new Vector.<§6!4§>();
         super();
         this.§,4§ = param1;
         var _loc2_:Class = §=#§.§1v§("thoughtBubble");
         this.§"!o§ = new _loc2_();
         this.§2i§ = this.§"!o§.getChildByName("content") as DisplayObject;
         this.§2i§.visible = false;
         this.§@!W§ = new Sprite();
         addChild(this.§"!o§);
         addChild(this.§@!W§);
         this.§'!n§ = new TextField();
         this.§'!n§.defaultTextFormat = new TextFormat("AngryBirdsPiggies",128,10873088);
         this.§'!n§.filters = [new GlowFilter(4530696,1,3,3,10)];
         this.§'!n§.autoSize = "center";
         this.§'!n§.text = "!";
         this.§'!n§.x = (this.§2i§.width - this.§'!n§.width) / 2 + this.§2i§.x;
         this.§'!n§.y = (this.§2i§.height - this.§'!n§.height) / 2 + this.§2i§.y;
         this.§'!n§.selectable = false;
         this.§"!o§.addChild(this.§'!n§);
         this.§"!o§.graphics.beginFill(0,0);
         this.§"!o§.graphics.drawRect(0,0,-this.§"!o§.width,-this.§"!o§.height);
         this.§"!o§.graphics.endFill();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§+!;§);
         addEventListener(MouseEvent.ROLL_OVER,this.§<"8§);
         addEventListener(MouseEvent.ROLL_OUT,this.§4`§);
         §0c§.§7!?§.§^!'§.addEventListener(§?!i§.§]`§,this.onPhysicsEnabled);
         §0c§.§7!?§.§^!'§.addEventListener(§?!i§.§@!+§,this.§5C§);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         visible = false;
      }
      
      private function §5C§(param1:Event) : void
      {
         visible = true;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§0!T§();
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function §+!;§(param1:Event) : void
      {
         if(this.§"!'§)
         {
            this.§"!'§.stop();
         }
         if(this.§^m§)
         {
            this.§^m§.stop();
         }
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§,4§.§7" §())
         {
            return;
         }
         var _loc2_:Point = this.§,4§.§0h§();
         x = _loc2_.x;
         y = _loc2_.y;
      }
      
      private function §0!T§() : void
      {
         this.§"!'§ = new Timer(§9!x§,1);
         this.§"!'§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§4`§);
         this.§"!'§.start();
      }
      
      private function §4`§(param1:Event = null) : void
      {
         if(this.§+o§)
         {
            return;
         }
         if(this.§"!'§)
         {
            this.§"!'§.stop();
         }
         if(this.§^m§)
         {
            this.§^m§.stop();
         }
         this.§@!W§.visible = false;
         this.§'!n§.visible = true;
         var _loc2_:Number = §#5§ / this.§"!o§.scaleX;
         this.§^m§ = §"L§.§7!?§.§4!P§(this,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },{
            "scaleX":scaleX,
            "scaleY":scaleY
         },0.3,§"L§.§;§);
         this.§^m§.play();
      }
      
      private function §<"8§(param1:Event = null) : void
      {
         if(this.§+o§)
         {
            return;
         }
         if(this.§"!'§)
         {
            this.§"!'§.stop();
         }
         if(this.§^m§)
         {
            this.§^m§.stop();
         }
         this.§@!W§.visible = true;
         this.§'!n§.visible = false;
         this.§^m§ = §"L§.§7!?§.§4!P§(this,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":scaleX,
            "scaleY":scaleY
         },0.3,§"L§.§;§);
         this.§^m§.play();
      }
      
      public function §92§(param1:String, param2:Boolean) : void
      {
         var _loc7_:§6!4§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         this.§ "?§.push(new §6!4§(param1,param2));
         var _loc3_:int = 0;
         while(_loc3_ < this.§ "?§.length)
         {
            _loc7_ = this.§ "?§[_loc3_];
            _loc8_ = 0;
            _loc9_ = 0;
            switch(_loc3_)
            {
               case 1:
                  _loc8_ = _loc7_.width / 2 + this.§ "?§[0].width / 2;
                  _loc9_ = _loc7_.height / 2 + §`"§ / 2;
                  break;
               case 2:
                  _loc8_ = 0;
                  _loc9_ = _loc7_.height / 2 + this.§ "?§[0].height / 2 + §`"§;
                  break;
               case 3:
                  _loc8_ = this.§ "?§[0].width / 2 + this.§ "?§[1].width + _loc7_.width / 2;
                  _loc9_ = 0;
                  break;
               case 4:
                  _loc8_ = this.§ "?§[0].width / 2 + this.§ "?§[1].width + _loc7_.width / 2;
                  _loc9_ = _loc7_.height / 2 + this.§ "?§[0].height / 2 + §`"§;
                  break;
            }
            _loc7_.x = _loc8_;
            _loc7_.y = _loc9_;
            this.§@!W§.addChild(_loc7_);
            _loc3_++;
         }
         this.§"!o§.scaleX = this.§"!o§.scaleY = 1;
         var _loc4_:Number = this.§@!W§.width / this.§2i§.width;
         var _loc5_:Number = this.§@!W§.height / this.§2i§.height;
         var _loc6_:Number = Math.max(0.4,Math.max(_loc4_,_loc5_));
         this.§"!o§.scaleY = _loc6_;
         this.§"!o§.scaleX = _loc6_;
         this.§@!W§.x = (this.§2i§.width * _loc6_ - this.§@!W§.width) / 2 + this.§2i§.x * _loc6_;
         this.§@!W§.y = (this.§2i§.height * _loc6_ - this.§@!W§.height) / 2 + this.§2i§.y * _loc6_;
      }
      
      public function update(param1:Vector.<§<A§>) : void
      {
         var _loc4_:§6!4§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc2_:Boolean = this.§+o§;
         var _loc3_:Boolean = true;
         for each(_loc4_ in this.§ "?§)
         {
            _loc5_ = _loc4_.§7!'§;
            _loc4_.§8"-§(!_loc4_.§%=§);
            _loc6_ = param1.length - 1;
            while(_loc6_ >= 0)
            {
               if(param1[_loc6_].getName() == _loc4_.§,5§)
               {
                  _loc4_.§8"-§(_loc4_.§%=§);
                  param1.splice(_loc6_,1);
                  break;
               }
               _loc6_--;
            }
            if(_loc4_.§7!'§ != _loc5_)
            {
               this.§<"8§();
               this.§0!T§();
            }
            if(!_loc4_.§7!'§)
            {
               _loc3_ = false;
            }
         }
         this.§+o§ = _loc3_;
         if(this.§+o§ != _loc2_)
         {
            if(this.§+o§)
            {
               if(this.§^m§)
               {
                  this.§^m§.stop();
               }
               if(this.§"!'§)
               {
                  this.§"!'§.stop();
               }
               this.§^m§ = §"L§.§7!?§.§4!P§(this,{
                  "scaleX":0,
                  "scaleY":0
               },{
                  "scaleX":scaleX,
                  "scaleY":scaleY
               },0.3,§"L§.§;§);
               this.§^m§.play();
            }
            else
            {
               this.§<"8§();
               this.§0!T§();
            }
         }
      }
   }
}
