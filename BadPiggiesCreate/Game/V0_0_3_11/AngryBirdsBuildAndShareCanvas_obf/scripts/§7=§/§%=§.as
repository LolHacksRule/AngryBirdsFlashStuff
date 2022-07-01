package §7=§
{
   import §2!5§.§0!X§;
   import §;!§.§8V§;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import §@!P§.§?"%§;
   import com.rovio.assets.§]!S§;
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
   
   public class §%=§ extends Sprite
   {
      
      private static const §?!0§:int = 3;
      
      private static const §'!h§:int = 2000;
      
      private static const §`!6§:Number = 0.2;
       
      
      private var §>D§:§?"%§;
      
      private var §18§:MovieClip;
      
      private var §=!z§:Vector.<§,!m§>;
      
      private var §;"3§:DisplayObjectContainer;
      
      private var §1I§:DisplayObject;
      
      private var §#",§:§8!K§;
      
      private var §<C§:Timer;
      
      private var §1l§:Boolean = false;
      
      private var §<!U§:TextField;
      
      public function §%=§(param1:§?"%§)
      {
         this.§=!z§ = new Vector.<§,!m§>();
         super();
         this.§>D§ = param1;
         var _loc2_:Class = §]!S§.§?! §("thoughtBubble");
         this.§18§ = new _loc2_();
         this.§1I§ = this.§18§.getChildByName("content") as DisplayObject;
         this.§1I§.visible = false;
         this.§;"3§ = new Sprite();
         addChild(this.§18§);
         addChild(this.§;"3§);
         this.§<!U§ = new TextField();
         this.§<!U§.defaultTextFormat = new TextFormat("AngryBirdsPiggies",128,10873088);
         this.§<!U§.filters = [new GlowFilter(4530696,1,3,3,10)];
         this.§<!U§.autoSize = "center";
         this.§<!U§.text = "!";
         this.§<!U§.x = (this.§1I§.width - this.§<!U§.width) / 2 + this.§1I§.x;
         this.§<!U§.y = (this.§1I§.height - this.§<!U§.height) / 2 + this.§1I§.y;
         this.§<!U§.selectable = false;
         this.§18§.addChild(this.§<!U§);
         this.§18§.graphics.beginFill(0,0);
         this.§18§.graphics.drawRect(0,0,-this.§18§.width,-this.§18§.height);
         this.§18§.graphics.endFill();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§3M§);
         addEventListener(MouseEvent.ROLL_OVER,this.§-"5§);
         addEventListener(MouseEvent.ROLL_OUT,this.§+!n§);
         §0!X§.§if §.§0!y§.addEventListener(§8V§.§#!u§,this.onPhysicsEnabled);
         §0!X§.§if §.§0!y§.addEventListener(§8V§.§[!F§,this.§9!,§);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         visible = false;
      }
      
      private function §9!,§(param1:Event) : void
      {
         visible = true;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§'!+§();
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function §3M§(param1:Event) : void
      {
         if(this.§<C§)
         {
            this.§<C§.stop();
         }
         if(this.§#",§)
         {
            this.§#",§.stop();
         }
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§>D§.§ W§())
         {
            return;
         }
         var _loc2_:Point = this.§>D§.§<!<§();
         x = _loc2_.x;
         y = _loc2_.y;
      }
      
      private function §'!+§() : void
      {
         this.§<C§ = new Timer(§'!h§,1);
         this.§<C§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§+!n§);
         this.§<C§.start();
      }
      
      private function §+!n§(param1:Event = null) : void
      {
         if(this.§1l§)
         {
            return;
         }
         if(this.§<C§)
         {
            this.§<C§.stop();
         }
         if(this.§#",§)
         {
            this.§#",§.stop();
         }
         this.§;"3§.visible = false;
         this.§<!U§.visible = true;
         var _loc2_:Number = §`!6§ / this.§18§.scaleX;
         this.§#",§ = §%!Z§.§if §.§"<§(this,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },{
            "scaleX":scaleX,
            "scaleY":scaleY
         },0.3,§%!Z§.§&e§);
         this.§#",§.play();
      }
      
      private function §-"5§(param1:Event = null) : void
      {
         if(this.§1l§)
         {
            return;
         }
         if(this.§<C§)
         {
            this.§<C§.stop();
         }
         if(this.§#",§)
         {
            this.§#",§.stop();
         }
         this.§;"3§.visible = true;
         this.§<!U§.visible = false;
         this.§#",§ = §%!Z§.§if §.§"<§(this,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":scaleX,
            "scaleY":scaleY
         },0.3,§%!Z§.§&e§);
         this.§#",§.play();
      }
      
      public function §""9§(param1:String, param2:Boolean) : void
      {
         var _loc7_:§,!m§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         this.§=!z§.push(new §,!m§(param1,param2));
         var _loc3_:int = 0;
         while(_loc3_ < this.§=!z§.length)
         {
            _loc7_ = this.§=!z§[_loc3_];
            _loc8_ = 0;
            _loc9_ = 0;
            switch(_loc3_)
            {
               case 1:
                  _loc8_ = _loc7_.width / 2 + this.§=!z§[0].width / 2;
                  _loc9_ = _loc7_.height / 2 + §?!0§ / 2;
                  break;
               case 2:
                  _loc8_ = 0;
                  _loc9_ = _loc7_.height / 2 + this.§=!z§[0].height / 2 + §?!0§;
                  break;
               case 3:
                  _loc8_ = this.§=!z§[0].width / 2 + this.§=!z§[1].width + _loc7_.width / 2;
                  _loc9_ = 0;
                  break;
               case 4:
                  _loc8_ = this.§=!z§[0].width / 2 + this.§=!z§[1].width + _loc7_.width / 2;
                  _loc9_ = _loc7_.height / 2 + this.§=!z§[0].height / 2 + §?!0§;
                  break;
            }
            _loc7_.x = _loc8_;
            _loc7_.y = _loc9_;
            this.§;"3§.addChild(_loc7_);
            _loc3_++;
         }
         this.§18§.scaleX = this.§18§.scaleY = 1;
         var _loc4_:Number = this.§;"3§.width / this.§1I§.width;
         var _loc5_:Number = this.§;"3§.height / this.§1I§.height;
         var _loc6_:Number = Math.max(0.4,Math.max(_loc4_,_loc5_));
         this.§18§.scaleY = _loc6_;
         this.§18§.scaleX = _loc6_;
         this.§;"3§.x = (this.§1I§.width * _loc6_ - this.§;"3§.width) / 2 + this.§1I§.x * _loc6_;
         this.§;"3§.y = (this.§1I§.height * _loc6_ - this.§;"3§.height) / 2 + this.§1I§.y * _loc6_;
      }
      
      public function update(param1:Vector.<§?"%§>) : void
      {
         var _loc4_:§,!m§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc2_:Boolean = this.§1l§;
         var _loc3_:Boolean = true;
         for each(_loc4_ in this.§=!z§)
         {
            _loc5_ = _loc4_.§?f§;
            _loc4_.§-!<§(!_loc4_.§@"9§);
            _loc6_ = param1.length - 1;
            while(_loc6_ >= 0)
            {
               if(param1[_loc6_].getName() == _loc4_.§>0§)
               {
                  _loc4_.§-!<§(_loc4_.§@"9§);
                  param1.splice(_loc6_,1);
                  break;
               }
               _loc6_--;
            }
            if(_loc4_.§?f§ != _loc5_)
            {
               this.§-"5§();
               this.§'!+§();
            }
            if(!_loc4_.§?f§)
            {
               _loc3_ = false;
            }
         }
         this.§1l§ = _loc3_;
         if(this.§1l§ != _loc2_)
         {
            if(this.§1l§)
            {
               if(this.§#",§)
               {
                  this.§#",§.stop();
               }
               if(this.§<C§)
               {
                  this.§<C§.stop();
               }
               this.§#",§ = §%!Z§.§if §.§"<§(this,{
                  "scaleX":0,
                  "scaleY":0
               },{
                  "scaleX":scaleX,
                  "scaleY":scaleY
               },0.3,§%!Z§.§&e§);
               this.§#",§.play();
            }
            else
            {
               this.§-"5§();
               this.§'!+§();
            }
         }
      }
   }
}
