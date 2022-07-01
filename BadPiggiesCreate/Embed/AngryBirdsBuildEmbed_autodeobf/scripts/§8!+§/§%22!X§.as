package §8!+§
{
   import §#b§.b2Shape;
   import §&!m§.§&m§;
   import §&!m§.§;5§;
   import §+]§.§"U§;
   import §+]§.§"^§;
   import §+]§.§7&§;
   import §6C§.§ set§;
   import §<!<§.§7E§;
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §>!'§.§<!3§;
   import §`a§.§^7§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.ui.Keyboard;
   
   public class §"!X§ extends §]p§
   {
      
      private static const §9!%§:Number = §7E§.§8!'§ / 100;
      
      private static const §%T§:Number = §9!%§ * 30;
      
      private static const §;!s§:Number = 1.005;
       
      
      public var §&!@§:Point;
      
      private var §``§:Number = 0;
      
      private var §7;§:Number = 0;
      
      private var §;!c§:Boolean = false;
      
      private var §^"§:Boolean = true;
      
      private var §+A§:Boolean = false;
      
      public var §<!$§:Number;
      
      public var §`Z§:Number;
      
      public function §"!X§(param1:§"U§)
      {
         super(param1);
      }
      
      override public function update(param1:int) : void
      {
         super.update(param1);
         if(Math.abs(this.§``§) > 0 || Math.abs(this.§7;§) > 0)
         {
            if(Math.abs(this.§``§) < §%T§)
            {
               this.§``§ *= Math.pow(§;!s§,param1);
            }
            if(Math.abs(this.§7;§) < §%T§)
            {
               this.§7;§ *= Math.pow(§;!s§,param1);
            }
            this.§,Y§(this.§``§ * param1,this.§7;§ * param1);
         }
         if(this.§+A§)
         {
            this.§>!t§();
         }
         this.§'!§();
      }
      
      override public function deActivate() : void
      {
         this.stopObjectDrag();
         this.§2!W§();
         super.deActivate();
      }
      
      public function isDragging() : Boolean
      {
         return this.§+A§;
      }
      
      override public function onKeyDown(param1:int) : void
      {
         var _loc2_:Vector.<§;5§> = null;
         var _loc3_:§;5§ = null;
         if(param1 == Keyboard.SHIFT)
         {
            this.§;!c§ = true;
         }
         else if(param1 == Keyboard.UP)
         {
            this.§7;§ = Math.min(this.§7;§,-§9!%§);
         }
         else if(param1 == Keyboard.DOWN)
         {
            this.§7;§ = Math.max(this.§7;§,§9!%§);
         }
         else if(param1 == Keyboard.LEFT)
         {
            this.§``§ = Math.min(this.§``§,-§9!%§);
         }
         else if(param1 == Keyboard.RIGHT)
         {
            this.§``§ = Math.max(this.§``§,§9!%§);
         }
         else if(param1 == Keyboard.SPACE)
         {
            §%!3§.setTool(§-!k§);
         }
         else if(param1 == Keyboard.DELETE)
         {
            §%!3§.deleteSelectedObjectsFromLevel();
         }
         else if(param1 == Keyboard.C)
         {
            §%!3§.copyObjectsToClipboard();
         }
         else if(param1 == Keyboard.V)
         {
            _loc2_ = §%!3§.pasteSelectedObjectsIntoLevel();
            if(_loc2_.length > 0)
            {
               this.clearSelection();
               for each(_loc3_ in _loc2_)
               {
                  §;;§(_loc3_,true);
               }
               this.§6=§();
            }
         }
         else if(param1 == Keyboard.J)
         {
            §&m§.§9_§(§4!-§,§%!3§.getLevelMain().objects);
         }
         else if(param1 == Keyboard.U)
         {
            §&m§.§3c§(§4!-§,§%!3§.getLevelMain().objects);
         }
         super.onKeyDown(param1);
      }
      
      override public function clearSelection() : void
      {
         this.stopObjectDrag();
         super.clearSelection();
      }
      
      override public function onKeyUp(param1:int) : void
      {
         if(param1 == Keyboard.SHIFT)
         {
            this.§;!c§ = false;
         }
         else if(param1 == 38)
         {
            this.§7;§ = Math.max(0,this.§7;§);
            dispatchEvent(new Event(Event.COMPLETE));
         }
         else if(param1 == 40)
         {
            this.§7;§ = Math.min(0,this.§7;§);
            dispatchEvent(new Event(Event.COMPLETE));
         }
         else if(param1 == 37)
         {
            this.§``§ = Math.max(0,this.§``§);
            dispatchEvent(new Event(Event.COMPLETE));
         }
         else if(param1 == 39)
         {
            this.§``§ = Math.min(0,this.§``§);
            dispatchEvent(new Event(Event.COMPLETE));
         }
         super.onKeyUp(param1);
      }
      
      override public function onMouseDown() : void
      {
         var _loc1_:§;5§ = §;5§.§9!6§(§%!3§.getObjectFromCoordinate(§%!3§.mMousePosition));
         if(§4!-§.indexOf(_loc1_) > -1)
         {
            if(this.§;!c§)
            {
               §!!K§(_loc1_);
            }
         }
         else if(_loc1_ != null)
         {
            §;;§(_loc1_,this.§;!c§);
         }
         if(_loc1_ != null && !this.§;!c§)
         {
            this.§6=§();
         }
         else if(!this.§;!c§ && !this.§+A§)
         {
            this.clearSelection();
            this.startAreaSelection();
         }
      }
      
      private function §,x§(param1:Object) : Boolean
      {
         var _loc2_:§;5§ = null;
         for each(_loc2_ in §4!-§)
         {
            if(_loc2_.getObject() == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override public function onMouseUp() : void
      {
         this.stopObjectDrag();
         this.§2!W§();
      }
      
      private function §>!t§() : void
      {
         var _loc1_:Point = §%!3§.mMousePositionB2;
         var _loc2_:Number = _loc1_.x - this.§<!$§;
         var _loc3_:Number = _loc1_.y - this.§`Z§;
         if(this.§+A§)
         {
            this.§1!;§(_loc2_,_loc3_);
         }
      }
      
      public function §6=§() : void
      {
         var _loc1_:§;5§ = null;
         this.§+A§ = true;
         this.§<!$§ = §%!3§.mMousePositionB2.x;
         this.§`Z§ = §%!3§.mMousePositionB2.y;
         for each(_loc1_ in §4!-§)
         {
            §%!3§.storeTransformationForObject(_loc1_);
         }
      }
      
      public function stopObjectDrag() : void
      {
         this.§+A§ = false;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §,Y§(param1:Number, param2:Number) : void
      {
         if(this.§+A§)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < §4!-§.length)
         {
            §%!3§.storeTransformationForObject(§4!-§[_loc3_]);
            _loc3_++;
         }
         this.§1!;§(param1,param2,true);
      }
      
      public function §1!;§(param1:Number = 0, param2:Number = 0, param3:Boolean = false) : void
      {
         var _loc9_:int = 0;
         var _loc10_:§;5§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Rectangle = null;
         var _loc14_:b2Transform = null;
         var _loc15_:Rectangle = null;
         var _loc16_:int = 0;
         var _loc17_:b2Vec2 = null;
         var _loc18_:Rectangle = null;
         var _loc19_:Point = null;
         if(param1 == 0 && param2 == 0)
         {
            return;
         }
         dispatchEvent(new Event(Event.CHANGE));
         var _loc8_:Boolean = this.§^"§ && §7&§.§=n§().§4V§(§7&§.§4!K§) && !param3;
         _loc9_ = 0;
         while(_loc9_ < §4!-§.length)
         {
            _loc10_ = §4!-§[_loc9_];
            (_loc13_ = §%!3§.getCamera().getCameraLimits()).y = -0.15;
            _loc13_.height += §^7§.§;l§;
            _loc11_ = (_loc14_ = §%!3§.getOriginalTransformForObject(_loc10_)).position.x + param1;
            _loc12_ = _loc14_.position.y + param2;
            _loc15_ = _loc10_.§]!5§();
            _loc13_.width -= _loc15_.width;
            _loc13_.height += _loc15_.height;
            _loc13_.x += _loc15_.width / 2;
            _loc13_.y -= _loc15_.height / 2;
            if(_loc10_.isTexture())
            {
               _loc13_.y += _loc15_.height;
            }
            if(_loc10_.§%P§())
            {
               _loc13_.left = 10;
            }
            if(_loc10_.§;L§())
            {
               _loc13_.y += 0.5;
               _loc13_.right = 15;
            }
            if(_loc10_.§<P§())
            {
               _loc13_.y -= 5;
               _loc13_.right = 0;
               _loc13_.left = 0;
            }
            _loc11_ = Math.max(_loc13_.x,Math.min(_loc13_.x + _loc13_.width,_loc11_));
            _loc12_ = Math.min(_loc13_.y,Math.max(_loc13_.height + _loc13_.y,_loc12_));
            _loc10_.setPosition(new b2Vec2(_loc11_,_loc12_));
            §&m§.§3i§(_loc10_.getObject() as §<!3§,§%!3§.getLevelMain().objects);
            _loc9_++;
         }
         if(_loc8_ && §4!-§.length == 1)
         {
            this.§=!Y§();
         }
         if(§8e§ && §8e§.mouseEnabled)
         {
            _loc16_ = 5;
            _loc17_ = §>!p§();
            _loc18_ = §%!3§.getCamera().getCurrentBorders();
            _loc19_ = new Point(_loc18_.x + _loc18_.width / 2,_loc18_.y + _loc18_.height / 2);
            if(_loc17_.x > _loc18_.x + _loc18_.width - _loc16_)
            {
               _loc19_.x = _loc17_.x - _loc18_.width / 2 + _loc16_;
            }
            else if(_loc17_.x < _loc18_.x + _loc16_)
            {
               _loc19_.x = _loc17_.x + _loc18_.width / 2 - _loc16_;
            }
            if(_loc17_.y > _loc18_.y + _loc18_.height - _loc16_)
            {
               _loc19_.y = _loc17_.y - _loc18_.height / 2 + _loc16_;
            }
            else if(_loc17_.y < _loc18_.y + _loc16_)
            {
               _loc19_.y = _loc17_.y + _loc18_.height / 2 - _loc16_;
            }
            §%!3§.getCamera().dragTo(_loc19_.x,_loc19_.y);
         }
      }
      
      public function §=!Y§() : Boolean
      {
         var _loc3_:§;5§ = null;
         var _loc4_:b2Shape = null;
         var _loc5_:b2Transform = null;
         var _loc6_:Rectangle = null;
         var _loc7_:int = 0;
         var _loc8_:§;5§ = null;
         var _loc9_:b2Shape = null;
         var _loc10_:b2Transform = null;
         var _loc11_:Rectangle = null;
         var _loc12_:§ set§ = null;
         var _loc13_:b2Vec2 = null;
         var _loc14_:§;5§ = null;
         var _loc15_:b2Vec2 = null;
         var _loc1_:§ set§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §4!-§.length)
         {
            _loc3_ = §4!-§[_loc2_];
            _loc4_ = null;
            _loc5_ = null;
            _loc6_ = null;
            if(_loc3_ && (_loc3_.§;!Z§() || _loc3_.§%P§()))
            {
               _loc4_ = _loc3_.getBody().§7!Y§().GetShape().Copy();
               _loc5_ = _loc3_.getBody().§>!H§();
               _loc6_ = §"^§.§3Q§(_loc4_,_loc5_,§"^§.§]z§);
               _loc7_ = 0;
               while(_loc7_ < §%!3§.getLevelMain().objects.getObjectCount())
               {
                  _loc9_ = (_loc8_ = §;5§.§9!6§(§%!3§.getLevelMain().objects.getObject(_loc7_))).getBody().§7!Y§().GetShape().Copy();
                  _loc10_ = _loc8_.getBody().§>!H§();
                  _loc11_ = §"^§.§3Q§(_loc9_,_loc10_,§"^§.§]z§);
                  if(!(_loc8_ == _loc3_ || §4!-§.indexOf(_loc8_) != -1 || _loc8_.isGround()))
                  {
                     if(_loc6_.intersects(_loc11_))
                     {
                        if((_loc12_ = §"^§.§ each§(_loc4_,_loc5_,_loc9_,_loc10_)) != null)
                        {
                           if((_loc13_ = _loc12_.§4!<§).§#!^§() <= §"^§.§]z§)
                           {
                              if(_loc12_.rotation <= §"^§.§]_§)
                              {
                                 if(_loc1_ == null)
                                 {
                                    _loc1_ = _loc12_;
                                 }
                                 else if(_loc1_.§0J§ != _loc12_.§0J§)
                                 {
                                    if(_loc12_.§0J§)
                                    {
                                       _loc1_ = _loc12_;
                                    }
                                 }
                                 else if(_loc13_.§#!^§() < _loc1_.§4!<§.§#!^§())
                                 {
                                    _loc1_ = _loc12_;
                                 }
                              }
                           }
                        }
                     }
                  }
                  _loc7_++;
               }
            }
            _loc2_++;
         }
         if(_loc1_ != null && !isNaN(_loc1_.§^Y§.x) && !isNaN(_loc1_.§^Y§.y))
         {
            for each(_loc14_ in §4!-§)
            {
            }
            _loc15_ = _loc14_.getPosition().Copy();
            _loc15_.x += _loc1_.§^Y§.x;
            _loc15_.y += _loc1_.§^Y§.y;
            _loc14_.setPosition(_loc15_);
            return true;
         }
         return false;
      }
      
      protected function startAreaSelection() : void
      {
         this.§&!@§ = new Point();
         this.§&!@§.x = §%!3§.mMousePositionB2.x;
         this.§&!@§.y = §%!3§.mMousePositionB2.y;
      }
      
      public function §2!W§() : void
      {
         this.§&!@§ = null;
         this.§'!§();
      }
      
      public function §4_§() : Boolean
      {
         return this.§&!@§ != null;
      }
      
      public function §'!§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§&!@§ == null)
         {
            §%!3§.mEditorUI.updateSelectionArea(null);
            return;
         }
         if(this.§&!@§.y <= §%!3§.mMousePositionB2.y)
         {
            _loc1_ = this.§&!@§.y;
            _loc2_ = §%!3§.mMousePositionB2.y;
         }
         else
         {
            _loc1_ = §%!3§.mMousePositionB2.y;
            _loc2_ = this.§&!@§.y;
         }
         if(this.§&!@§.x <= §%!3§.mMousePositionB2.x)
         {
            _loc3_ = this.§&!@§.x;
            _loc4_ = §%!3§.mMousePositionB2.x;
         }
         else
         {
            _loc3_ = §%!3§.mMousePositionB2.x;
            _loc4_ = this.§&!@§.x;
         }
         var _loc5_:Point = new Point(_loc3_,_loc1_);
         var _loc6_:Point = new Point(_loc4_,_loc2_);
         var _loc7_:Array = (_loc7_ = §%!3§.getLevelMain().objects.getObjectsWithinBoundingBox(_loc5_,_loc6_)).concat(§%!3§.getLevelMain().slingshot.getObjectsWithinBoundingBox(_loc5_,_loc6_));
         var _loc8_:Number = 0;
         _loc8_ = 0;
         while(_loc8_ < §4!-§.length)
         {
            if(_loc7_.indexOf(§4!-§[_loc8_].getObject()) == -1)
            {
               §!!K§(§;5§.§9!6§(§4!-§[_loc8_]));
            }
            _loc8_++;
         }
         _loc8_ = 0;
         while(_loc8_ < _loc7_.length)
         {
            if(§4!-§.indexOf(§;5§.§9!6§(_loc7_[_loc8_])) == -1)
            {
               §;;§(§;5§.§9!6§(_loc7_[_loc8_]),true);
            }
            _loc8_++;
         }
         var _loc9_:Point = §%!3§.getLevelMain().box2DToScreen(_loc5_.x,_loc5_.y);
         var _loc10_:Point = §%!3§.getLevelMain().box2DToScreen(_loc6_.x,_loc6_.y);
         var _loc11_:Rectangle = new Rectangle(_loc9_.x,_loc9_.y,_loc10_.x - _loc9_.x,_loc10_.y - _loc9_.y);
         §%!3§.mEditorUI.updateSelectionArea(_loc11_);
      }
   }
}
