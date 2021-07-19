package com.rovio.factory
{
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class MouseCursorController extends Sprite
   {
      
      private static var smActivated:Boolean = false;
      
      private static const CURSOR_ASSET_NAME:String = "Mouse_Cursors";
      
      private static var smCursorClipContainer:Sprite;
      
      private static var smCursorsClip:MovieClip;
      
      private static var smActiveCursorName:String;
      
      private static var smLastActiveCursorName:String = "";
      
      private static var smActiveCursorStates:Boolean = false;
       
      
      public function MouseCursorController()
      {
         super();
      }
      
      public static function setCursor(param1:String) : Boolean
      {
         if(smActiveCursorName == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         smActiveCursorName = "";
         smActiveCursorStates = false;
         if(!smActivated || !smCursorsClip)
         {
            if(!loadAssets())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < smCursorsClip.numChildren)
         {
            smCursorsClip.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = smCursorsClip.getChildByName(param1) as Sprite))
         {
            smCursorsClip.visible = false;
            Mouse.show();
            return false;
         }
         smActiveCursorName = param1;
         smCursorsClip.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(smActiveCursorName + "_Up"))
         {
            smActiveCursorStates = true;
         }
         if(smActiveCursorStates)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(smActiveCursorName + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function loadAssets() : Boolean
      {
         var _loc1_:Class = AssetCache.getAssetFromCache(CURSOR_ASSET_NAME);
         smCursorsClip = new _loc1_();
         if(smCursorsClip)
         {
            smCursorClipContainer.addChild(smCursorsClip);
            smCursorClipContainer.mouseChildren = false;
            smCursorsClip.mouseEnabled = false;
            smCursorClipContainer.mouseEnabled = false;
            smCursorsClip.enabled = false;
            smCursorsClip.cacheAsBitmap = true;
         }
         return smCursorsClip != null;
      }
      
      public static function mouseDown() : Boolean
      {
         return changeCursorState("_Down");
      }
      
      public static function mouseUp() : Boolean
      {
         return changeCursorState("_Up");
      }
      
      private static function changeCursorState(param1:String) : Boolean
      {
         if(!smCursorsClip || smActiveCursorName.length < 1 || !smActiveCursorStates)
         {
            return false;
         }
         var _loc2_:Sprite = smCursorsClip.getChildByName(smActiveCursorName) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(smActiveCursorName + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(smActiveCursorName + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(smActivated)
         {
            return null;
         }
         smCursorClipContainer = new Sprite();
         smActivated = true;
         return smCursorClipContainer;
      }
      
      public static function mouseMove(param1:Number, param2:Number) : void
      {
         if(!smActivated || !smCursorsClip || !smCursorsClip.visible)
         {
            return;
         }
         smCursorClipContainer.x = param1;
         smCursorClipContainer.y = param2;
      }
      
      public static function cursorHide() : void
      {
         if(smCursorsClip)
         {
            if(smCursorsClip.visible)
            {
               smLastActiveCursorName = smActiveCursorName;
            }
            setCursor("");
         }
      }
      
      public static function cursorShow() : void
      {
         if(smCursorsClip)
         {
            if(!smCursorsClip.visible)
            {
               setCursor(smLastActiveCursorName);
            }
         }
      }
   }
}
