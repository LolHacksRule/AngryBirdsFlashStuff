package §8!+§
{
   import § !u§.§0m§;
   import §&!m§.§;5§;
   import §+]§.§"U§;
   import §<!B§.b2Vec2;
   import §`a§.§ !U§;
   import §`a§.§^7§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]p§ extends EventDispatcher
   {
       
      
      protected var §4!-§:Vector.<§;5§>;
      
      protected var §%!3§:§"U§;
      
      protected var §8W§:Boolean = false;
      
      protected var §8e§:§0m§;
      
      private var §0"§:Boolean = false;
      
      public function §]p§(param1:§"U§)
      {
         this.§4!-§ = new Vector.<§;5§>();
         super();
         this.§%!3§ = param1;
         addEventListener(Event.CHANGE,this.§1!?§);
         addEventListener(Event.COMPLETE,this.onComplete);
      }
      
      private function §1!?§(param1:Event) : void
      {
         if(!this.§0"§)
         {
            this.§0"§ = true;
            this.§%!3§.§]! §();
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         if(this.§0"§)
         {
            this.§0"§ = false;
            this.§%!3§.§9V§();
            this.§%!3§.mEditorUI.§[!t§(true);
         }
      }
      
      public function § do§(param1:§0m§) : void
      {
         this.§8e§ = param1;
      }
      
      public function update(param1:int) : void
      {
      }
      
      public function activate() : void
      {
         var _loc1_:§;5§ = null;
         this.§8W§ = true;
         this.§%!3§.mEditorUI.§ do§(this.§8e§);
         for each(_loc1_ in this.§4!-§)
         {
            this.§%!3§.§^?§(true,_loc1_);
         }
      }
      
      public function §7,§() : Sprite
      {
         return this.§8e§;
      }
      
      public function deActivate() : void
      {
         var _loc1_:§;5§ = null;
         dispatchEvent(new Event(Event.COMPLETE));
         this.§8W§ = false;
         this.§%!3§.mEditorUI.§ do§(null);
         for each(_loc1_ in this.§4!-§)
         {
            this.§%!3§.§^?§(false,_loc1_);
         }
      }
      
      public function onMouseDown() : void
      {
      }
      
      public function onMouseUp() : void
      {
      }
      
      public function onMouseMove() : void
      {
      }
      
      public function onMouseWheel(param1:int) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:§^7§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc2_:Number = § !U§.§#!-§;
         this.§%!3§.getCamera().zoom(param1);
         if(param1 > 0)
         {
            _loc3_ = this.§%!3§.getLevelMain().camera.§3!p§;
            if(_loc4_ = this.§%!3§.getCamera())
            {
               if(this.§",§() == 0)
               {
                  _loc5_ = this.§%!3§.mMousePositionB2.x - _loc4_.xCenterB2;
                  _loc6_ = this.§%!3§.mMousePositionB2.y - _loc4_.yCenterB2;
                  _loc4_.§8!B§ = this.§%!3§.mMousePositionB2.x - _loc2_ / _loc3_ * _loc5_;
                  _loc4_.§package§ = this.§%!3§.mMousePositionB2.y - _loc2_ / _loc3_ * _loc6_;
               }
               else
               {
                  _loc5_ = ((_loc7_ = this.§>!p§()).x - _loc4_.xCenterB2) / 1.3;
                  _loc6_ = (_loc7_.y - _loc4_.yCenterB2) / 1.3;
                  _loc4_.§8!B§ = _loc7_.x - _loc2_ / _loc3_ * _loc5_;
                  _loc4_.§package§ = _loc7_.y - _loc2_ / _loc3_ * _loc6_;
               }
            }
         }
      }
      
      public function onKeyDown(param1:int) : void
      {
      }
      
      public function onKeyUp(param1:int) : void
      {
      }
      
      public function setSelection(param1:Vector.<§;5§>) : void
      {
         var _loc2_:§;5§ = null;
         if(this.§8W§)
         {
            for each(_loc2_ in this.§4!-§)
            {
               this.§%!3§.§^?§(false,_loc2_);
            }
            for each(_loc2_ in param1)
            {
               this.§%!3§.§^?§(true,_loc2_);
            }
         }
         this.§4!-§ = param1;
      }
      
      public function §;;§(param1:§;5§, param2:Boolean) : void
      {
         if(!param2)
         {
            this.clearSelection();
         }
         if(this.§4!-§.indexOf(param1) > -1)
         {
            return;
         }
         if(param1.isGround())
         {
            return;
         }
         this.§%!3§.§^?§(true,param1);
         this.§4!-§.push(param1);
      }
      
      public function §!!K§(param1:§;5§) : void
      {
         if(this.§4!-§.indexOf(param1) > -1)
         {
            this.§4!-§.splice(this.§4!-§.indexOf(param1),1);
            this.§%!3§.§^?§(false,param1);
         }
      }
      
      public function clearSelection() : void
      {
         var _loc1_:§;5§ = null;
         for each(_loc1_ in this.§4!-§)
         {
            this.§%!3§.§^?§(false,_loc1_);
         }
         this.§4!-§ = new Vector.<§;5§>();
      }
      
      public function §",§() : int
      {
         return this.§4!-§.length;
      }
      
      public function §0j§() : Point
      {
         var _loc1_:b2Vec2 = this.§>!p§();
         return this.§%!3§.§-!M§(_loc1_.x,_loc1_.y);
      }
      
      public function §>!p§() : b2Vec2
      {
         var _loc2_:Rectangle = null;
         var _loc1_:b2Vec2 = new b2Vec2();
         if(this.§4!-§.length > 0)
         {
            _loc2_ = this.§!!d§(this.§4!-§);
            _loc1_.x = _loc2_.x + _loc2_.width / 2;
            _loc1_.y = _loc2_.y + _loc2_.height / 2;
         }
         else
         {
            _loc1_.x = 0;
            _loc1_.y = 0;
         }
         return _loc1_;
      }
      
      public function getSelectedObjects() : Vector.<§;5§>
      {
         return this.§4!-§;
      }
      
      protected function §!!d§(param1:Vector.<§;5§>, param2:Number = 0) : Rectangle
      {
         var _loc8_:Point = null;
         var _loc3_:Number = Number.MAX_VALUE;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:Number = -Number.MAX_VALUE;
         var _loc6_:Number = -Number.MAX_VALUE;
         var _loc7_:int = 0;
         while(_loc7_ < param1.length)
         {
            _loc8_ = param1[_loc7_].getCenter();
            _loc3_ = Math.min(_loc3_,_loc8_.x);
            _loc5_ = Math.max(_loc5_,_loc8_.x);
            _loc4_ = Math.min(_loc4_,_loc8_.y);
            _loc6_ = Math.max(_loc6_,_loc8_.y);
            _loc7_++;
         }
         return new Rectangle(_loc3_ - param2,_loc4_ - param2,_loc5_ - _loc3_ + param2,_loc6_ - _loc4_ + param2);
      }
   }
}
