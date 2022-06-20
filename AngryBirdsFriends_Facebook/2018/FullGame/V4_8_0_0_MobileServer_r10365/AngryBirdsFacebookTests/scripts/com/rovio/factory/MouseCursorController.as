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
      
      public static function setCursor(instanceName:String) : Boolean
      {
         if(smActiveCursorName == instanceName)
         {
            return true;
         }
         var foundClip:Boolean = false;
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
         for(var i:int = 0; i < smCursorsClip.numChildren; i++)
         {
            smCursorsClip.getChildAt(i).visible = false;
         }
         var cursor:Sprite = smCursorsClip.getChildByName(instanceName) as Sprite;
         if(!cursor)
         {
            smCursorsClip.visible = false;
            Mouse.show();
            return false;
         }
         smActiveCursorName = instanceName;
         smCursorsClip.visible = true;
         cursor.visible = true;
         foundClip = true;
         Mouse.hide();
         if(cursor.numChildren > 1 && cursor.getChildByName(smActiveCursorName + "_Up"))
         {
            smActiveCursorStates = true;
         }
         if(smActiveCursorStates)
         {
            for(i = 0; i < cursor.numChildren; i++)
            {
               cursor.getChildAt(i).visible = false;
            }
            cursor.getChildByName(smActiveCursorName + "_Up").visible = true;
         }
         return foundClip;
      }
      
      private static function loadAssets() : Boolean
      {
         var temp:Class = AssetCache.getAssetFromCache(CURSOR_ASSET_NAME);
         smCursorsClip = new temp();
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
      
      private static function changeCursorState(stateName:String) : Boolean
      {
         if(!smCursorsClip || smActiveCursorName.length < 1 || !smActiveCursorStates)
         {
            return false;
         }
         var cursor:Sprite = smCursorsClip.getChildByName(smActiveCursorName) as Sprite;
         if(!cursor || !cursor.getChildByName(smActiveCursorName + stateName))
         {
            return false;
         }
         for(var i:int = 0; i < cursor.numChildren; i++)
         {
            cursor.getChildAt(i).visible = false;
         }
         cursor.getChildByName(smActiveCursorName + stateName).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(smActivated)
         {
            return smCursorClipContainer;
         }
         smCursorClipContainer = new Sprite();
         smActivated = true;
         return smCursorClipContainer;
      }
      
      public static function mouseMove(newX:Number, newY:Number) : void
      {
         if(!smActivated || !smCursorsClip || !smCursorsClip.visible)
         {
            return;
         }
         smCursorClipContainer.x = newX;
         smCursorClipContainer.y = newY;
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
