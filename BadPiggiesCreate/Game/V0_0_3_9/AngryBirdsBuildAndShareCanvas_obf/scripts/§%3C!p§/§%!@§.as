package §<!p§
{
   import §%%§.§7!O§;
   import §5!k§.§6"6§;
   import §7"2§.§;!5§;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import com.rovio.assets.§8!q§;
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
   
   public class §%!@§ extends Sprite
   {
      
      private static const §4F§:int = 3;
      
      private static const §>]§:int = 2000;
      
      private static const §4"%§:Number = 0.2;
       
      
      private var §75§:§7!O§;
      
      private var §@!<§:MovieClip;
      
      private var §1"$§:Vector.<§;8§>;
      
      private var §4W§:DisplayObjectContainer;
      
      private var final:DisplayObject;
      
      private var §2y§:§^!#§;
      
      private var §,_§:Timer;
      
      private var §!5§:Boolean = false;
      
      private var §11§:TextField;
      
      public function §%!@§(param1:§7!O§)
      {
         this.§1"$§ = new Vector.<§;8§>();
         super();
         this.§75§ = param1;
         var _loc2_:Class = §8!q§.§2^§("thoughtBubble");
         this.§@!<§ = new _loc2_();
         this.final = this.§@!<§.getChildByName("content") as DisplayObject;
         this.final.visible = false;
         this.§4W§ = new Sprite();
         addChild(this.§@!<§);
         addChild(this.§4W§);
         this.§11§ = new TextField();
         this.§11§.defaultTextFormat = new TextFormat("AngryBirdsPiggies",128,16638875);
         this.§11§.filters = [new GlowFilter(12412965,1,3,3,10)];
         this.§11§.autoSize = "center";
         this.§11§.text = "!";
         this.§11§.x = (this.final.width - this.§11§.width) / 2 + this.final.x;
         this.§11§.y = (this.final.height - this.§11§.height) / 2 + this.final.y;
         this.§11§.selectable = false;
         this.§@!<§.addChild(this.§11§);
         this.§@!<§.graphics.beginFill(0,0);
         this.§@!<§.graphics.drawRect(0,0,-this.§@!<§.width,-this.§@!<§.height);
         this.§@!<§.graphics.endFill();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§4!_§);
         addEventListener(MouseEvent.ROLL_OVER,this.§-!v§);
         addEventListener(MouseEvent.ROLL_OUT,this.§1"5§);
         §;!5§.§'!o§.§!!7§.addEventListener(§6"6§.§#§,this.onPhysicsEnabled);
         §;!5§.§'!o§.§!!7§.addEventListener(§6"6§.§]!'§,this.§?!o§);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         visible = false;
      }
      
      private function §?!o§(param1:Event) : void
      {
         visible = true;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§;!F§();
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function §4!_§(param1:Event) : void
      {
         if(this.§,_§)
         {
            this.§,_§.stop();
         }
         if(this.§2y§)
         {
            this.§2y§.stop();
         }
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§75§.§5"§())
         {
            return;
         }
         var _loc2_:Point = this.§75§.§[!u§();
         x = _loc2_.x;
         y = _loc2_.y;
      }
      
      private function §;!F§() : void
      {
         this.§,_§ = new Timer(§>]§,1);
         this.§,_§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§1"5§);
         this.§,_§.start();
      }
      
      private function §1"5§(param1:Event = null) : void
      {
         if(this.§!5§)
         {
            return;
         }
         if(this.§,_§)
         {
            this.§,_§.stop();
         }
         if(this.§2y§)
         {
            this.§2y§.stop();
         }
         this.§4W§.visible = false;
         this.§11§.visible = true;
         var _loc2_:Number = §4"%§ / this.§@!<§.scaleX;
         this.§2y§ = §"g§.§'!o§.§while§(this,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },{
            "scaleX":scaleX,
            "scaleY":scaleY
         },0.3,§"g§.§+!a§);
         this.§2y§.play();
      }
      
      private function §-!v§(param1:Event = null) : void
      {
         if(this.§!5§)
         {
            return;
         }
         if(this.§,_§)
         {
            this.§,_§.stop();
         }
         if(this.§2y§)
         {
            this.§2y§.stop();
         }
         this.§4W§.visible = true;
         this.§11§.visible = false;
         this.§2y§ = §"g§.§'!o§.§while§(this,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":scaleX,
            "scaleY":scaleY
         },0.3,§"g§.§+!a§);
         this.§2y§.play();
      }
      
      public function §;!7§(param1:String, param2:Boolean) : void
      {
         var _loc7_:§;8§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         this.§1"$§.push(new §;8§(param1,param2));
         var _loc3_:int = 0;
         while(_loc3_ < this.§1"$§.length)
         {
            _loc7_ = this.§1"$§[_loc3_];
            _loc8_ = 0;
            _loc9_ = 0;
            switch(_loc3_)
            {
               case 1:
                  _loc8_ = _loc7_.width / 2 + this.§1"$§[0].width / 2;
                  _loc9_ = _loc7_.height / 2 + §4F§ / 2;
                  break;
               case 2:
                  _loc8_ = 0;
                  _loc9_ = _loc7_.height / 2 + this.§1"$§[0].height / 2 + §4F§;
                  break;
               case 3:
                  _loc8_ = this.§1"$§[0].width / 2 + this.§1"$§[1].width + _loc7_.width / 2;
                  _loc9_ = 0;
                  break;
               case 4:
                  _loc8_ = this.§1"$§[0].width / 2 + this.§1"$§[1].width + _loc7_.width / 2;
                  _loc9_ = _loc7_.height / 2 + this.§1"$§[0].height / 2 + §4F§;
                  break;
            }
            _loc7_.x = _loc8_;
            _loc7_.y = _loc9_;
            this.§4W§.addChild(_loc7_);
            _loc3_++;
         }
         this.§@!<§.scaleX = this.§@!<§.scaleY = 1;
         var _loc4_:Number = this.§4W§.width / this.final.width;
         var _loc5_:Number = this.§4W§.height / this.final.height;
         var _loc6_:Number = Math.max(0.4,Math.max(_loc4_,_loc5_));
         this.§@!<§.scaleY = _loc6_;
         this.§@!<§.scaleX = _loc6_;
         this.§4W§.x = (this.final.width * _loc6_ - this.§4W§.width) / 2 + this.final.x * _loc6_;
         this.§4W§.y = (this.final.height * _loc6_ - this.§4W§.height) / 2 + this.final.y * _loc6_;
      }
      
      public function update(param1:Vector.<§7!O§>) : void
      {
         var _loc4_:§;8§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc2_:Boolean = this.§!5§;
         var _loc3_:Boolean = true;
         for each(_loc4_ in this.§1"$§)
         {
            _loc5_ = _loc4_.§?H§;
            _loc4_.§`w§(!_loc4_.§0! §);
            _loc6_ = param1.length - 1;
            while(_loc6_ >= 0)
            {
               if(param1[_loc6_].getName() == _loc4_.§3!q§)
               {
                  _loc4_.§`w§(_loc4_.§0! §);
                  param1.splice(_loc6_,1);
                  break;
               }
               _loc6_--;
            }
            if(_loc4_.§?H§ != _loc5_)
            {
               this.§-!v§();
               this.§;!F§();
            }
            if(!_loc4_.§?H§)
            {
               _loc3_ = false;
            }
         }
         this.§!5§ = _loc3_;
         if(this.§!5§ != _loc2_)
         {
            if(this.§!5§)
            {
               if(this.§2y§)
               {
                  this.§2y§.stop();
               }
               if(this.§,_§)
               {
                  this.§,_§.stop();
               }
               this.§2y§ = §"g§.§'!o§.§while§(this,{
                  "scaleX":0,
                  "scaleY":0
               },{
                  "scaleX":scaleX,
                  "scaleY":scaleY
               },0.3,§"g§.§+!a§);
               this.§2y§.play();
            }
            else
            {
               this.§-!v§();
               this.§;!F§();
            }
         }
      }
   }
}
