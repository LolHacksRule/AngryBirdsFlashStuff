package com.AngryBirds.ui
{
   import com.AngryBirds.LevelPlayer.LevelEditor;
   import com.AngryBirds.states.StateLevelLoad;
   import com.rovio.assets.AssetCache;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import flash.display.MovieClip;
   
   public class ViewLevelEditorStart extends UIView
   {
       
      
      public function ViewLevelEditorStart(param1:StateBase)
      {
         super(param1);
      }
      
      override public function init(param1:XML) : void
      {
         super.init(ViewXMLLibrary.mLibrary.Views.View_LevelEditorStart[0]);
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         super.listenerEventOccured(param1,param2,param3);
      }
      
      override public function getRepeaterDataXML(param1:String) : Array
      {
         return this.getRepeaterTemplatesXML();
      }
      
      public function getRepeaterTemplatesXML() : Array
      {
         var _loc2_:XML = null;
         var _loc3_:MovieClip = null;
         var _loc7_:XML = null;
         var _loc8_:String = null;
         var _loc9_:Class = null;
         var _loc10_:MovieClip = null;
         var _loc1_:Array = new Array();
         _loc1_[0] = new Array();
         var _loc4_:Class = AssetCache.getAssetFromCache("TemplateSelect_Component");
         var _loc5_:Array = StateLevelLoad.getTemplateLevels();
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_.length)
         {
            _loc7_ = _loc5_[_loc6_] as XML;
            _loc2_ = <Button/>;
            _loc2_.@name = _loc7_.@id;
            _loc2_.@MouseUp = _loc7_.@id;
            _loc3_ = new _loc4_();
            if(_loc7_.imgData.toString().length > 0)
            {
               _loc8_ = _loc7_.imgData.toString();
               _loc3_.addChildAt(LevelEditor.decodeImageData(_loc8_),0);
            }
            else
            {
               _loc10_ = new (_loc9_ = AssetCache.getAssetFromCache("Container_TemplateThumbnail"))();
               _loc3_.addChildAt(_loc10_,0);
            }
            _loc1_[0].push(new Array(_loc2_,null,_loc3_));
            _loc6_++;
         }
         return _loc1_;
      }
   }
}
