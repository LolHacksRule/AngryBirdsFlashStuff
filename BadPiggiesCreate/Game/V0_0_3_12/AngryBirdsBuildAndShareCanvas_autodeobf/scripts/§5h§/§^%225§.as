package §5h§
{
   import §,!x§.§]S§;
   import §-=§.§8"1§;
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §1!N§.§"!k§;
   import com.rovio.assets.§!"'§;
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
   
   public class §^"5§ extends Sprite
   {
      
      private static const §1]§:int = 3;
      
      private static const §,!6§:int = 2000;
      
      private static const §'!w§:Number = 0.2;
       
      
      private var §[!V§:§"!k§;
      
      private var §+"§:MovieClip;
      
      private var §,!8§:Vector.<§>!!§>;
      
      private var §?q§:DisplayObjectContainer;
      
      private var §%8§:DisplayObject;
      
      private var §2,§:§+I§;
      
      private var §,"%§:Timer;
      
      private var §3!X§:Boolean = false;
      
      private var §^b§:TextField;
      
      public function §^"5§(param1:§"!k§)
      {
         this.§,!8§ = new Vector.<§>!!§>();
         super();
         this.§[!V§ = param1;
         var _loc2_:Class = §!"'§.§%!Q§("thoughtBubble");
         this.§+"§ = new _loc2_();
         this.§%8§ = this.§+"§.getChildByName("content") as DisplayObject;
         this.§%8§.visible = false;
         this.§?q§ = new Sprite();
         addChild(this.§+"§);
         addChild(this.§?q§);
         this.§^b§ = new TextField();
         this.§^b§.defaultTextFormat = new TextFormat("AngryBirdsPiggies",128,10873088);
         this.§^b§.filters = [new GlowFilter(4530696,1,3,3,10)];
         this.§^b§.autoSize = "center";
         this.§^b§.text = "!";
         this.§^b§.x = (this.§%8§.width - this.§^b§.width) / 2 + this.§%8§.x;
         this.§^b§.y = (this.§%8§.height - this.§^b§.height) / 2 + this.§%8§.y;
         this.§^b§.selectable = false;
         this.§+"§.addChild(this.§^b§);
         this.§+"§.graphics.beginFill(0,0);
         this.§+"§.graphics.drawRect(0,0,-this.§+"§.width,-this.§+"§.height);
         this.§+"§.graphics.endFill();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§1?§);
         addEventListener(MouseEvent.ROLL_OVER,this.§&u§);
         addEventListener(MouseEvent.ROLL_OUT,this.§8",§);
         §]S§.§ "!§.§;!]§.addEventListener(§8"1§.§-!V§,this.onPhysicsEnabled);
         §]S§.§ "!§.§;!]§.addEventListener(§8"1§.§1!e§,this.§'l§);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         visible = false;
      }
      
      private function §'l§(param1:Event) : void
      {
         visible = true;
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§[!u§();
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function §1?§(param1:Event) : void
      {
         if(this.§,"%§)
         {
            this.§,"%§.stop();
         }
         if(this.§2,§)
         {
            this.§2,§.stop();
         }
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§[!V§.§4!X§())
         {
            return;
         }
         var _loc2_:Point = this.§[!V§.§"'§();
         x = _loc2_.x;
         y = _loc2_.y;
      }
      
      private function §[!u§() : void
      {
         this.§,"%§ = new Timer(§,!6§,1);
         this.§,"%§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§8",§);
         this.§,"%§.start();
      }
      
      private function §8",§(param1:Event = null) : void
      {
         if(this.§3!X§)
         {
            return;
         }
         if(this.§,"%§)
         {
            this.§,"%§.stop();
         }
         if(this.§2,§)
         {
            this.§2,§.stop();
         }
         this.§?q§.visible = false;
         this.§^b§.visible = true;
         var _loc2_:Number = §'!w§ / this.§+"§.scaleX;
         this.§2,§ = §-!M§.§ "!§.§+d§(this,{
            "scaleX":_loc2_,
            "scaleY":_loc2_
         },{
            "scaleX":scaleX,
            "scaleY":scaleY
         },0.3,§-!M§.§5",§);
         this.§2,§.play();
      }
      
      private function §&u§(param1:Event = null) : void
      {
         if(this.§3!X§)
         {
            return;
         }
         if(this.§,"%§)
         {
            this.§,"%§.stop();
         }
         if(this.§2,§)
         {
            this.§2,§.stop();
         }
         this.§?q§.visible = true;
         this.§^b§.visible = false;
         this.§2,§ = §-!M§.§ "!§.§+d§(this,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":scaleX,
            "scaleY":scaleY
         },0.3,§-!M§.§5",§);
         this.§2,§.play();
      }
      
      public function §@"§(param1:String, param2:Boolean) : void
      {
         var _loc7_:§>!!§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         this.§,!8§.push(new §>!!§(param1,param2));
         var _loc3_:int = 0;
         while(_loc3_ < this.§,!8§.length)
         {
            _loc7_ = this.§,!8§[_loc3_];
            _loc8_ = 0;
            _loc9_ = 0;
            switch(_loc3_)
            {
               case 1:
                  _loc8_ = _loc7_.width / 2 + this.§,!8§[0].width / 2;
                  _loc9_ = _loc7_.height / 2 + §1]§ / 2;
                  break;
               case 2:
                  _loc8_ = 0;
                  _loc9_ = _loc7_.height / 2 + this.§,!8§[0].height / 2 + §1]§;
                  break;
               case 3:
                  _loc8_ = this.§,!8§[0].width / 2 + this.§,!8§[1].width + _loc7_.width / 2;
                  _loc9_ = 0;
                  break;
               case 4:
                  _loc8_ = this.§,!8§[0].width / 2 + this.§,!8§[1].width + _loc7_.width / 2;
                  _loc9_ = _loc7_.height / 2 + this.§,!8§[0].height / 2 + §1]§;
                  break;
            }
            _loc7_.x = _loc8_;
            _loc7_.y = _loc9_;
            this.§?q§.addChild(_loc7_);
            _loc3_++;
         }
         this.§+"§.scaleX = this.§+"§.scaleY = 1;
         var _loc4_:Number = this.§?q§.width / this.§%8§.width;
         var _loc5_:Number = this.§?q§.height / this.§%8§.height;
         var _loc6_:Number = Math.max(0.4,Math.max(_loc4_,_loc5_));
         this.§+"§.scaleY = _loc6_;
         this.§+"§.scaleX = _loc6_;
         this.§?q§.x = (this.§%8§.width * _loc6_ - this.§?q§.width) / 2 + this.§%8§.x * _loc6_;
         this.§?q§.y = (this.§%8§.height * _loc6_ - this.§?q§.height) / 2 + this.§%8§.y * _loc6_;
      }
      
      public function update(param1:Vector.<§"!k§>) : void
      {
         var _loc4_:§>!!§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc2_:Boolean = this.§3!X§;
         var _loc3_:Boolean = true;
         for each(_loc4_ in this.§,!8§)
         {
            _loc5_ = _loc4_.§while§;
            _loc4_.§3!^§(!_loc4_.§@!v§);
            _loc6_ = param1.length - 1;
            while(_loc6_ >= 0)
            {
               if(param1[_loc6_].getName() == _loc4_.§%!;§)
               {
                  _loc4_.§3!^§(_loc4_.§@!v§);
                  param1.splice(_loc6_,1);
                  break;
               }
               _loc6_--;
            }
            if(_loc4_.§while§ != _loc5_)
            {
               this.§&u§();
               this.§[!u§();
            }
            if(!_loc4_.§while§)
            {
               _loc3_ = false;
            }
         }
         this.§3!X§ = _loc3_;
         if(this.§3!X§ != _loc2_)
         {
            if(this.§3!X§)
            {
               if(this.§2,§)
               {
                  this.§2,§.stop();
               }
               if(this.§,"%§)
               {
                  this.§,"%§.stop();
               }
               this.§2,§ = §-!M§.§ "!§.§+d§(this,{
                  "scaleX":0,
                  "scaleY":0
               },{
                  "scaleX":scaleX,
                  "scaleY":scaleY
               },0.3,§-!M§.§5",§);
               this.§2,§.play();
            }
            else
            {
               this.§&u§();
               this.§[!u§();
            }
         }
      }
   }
}
