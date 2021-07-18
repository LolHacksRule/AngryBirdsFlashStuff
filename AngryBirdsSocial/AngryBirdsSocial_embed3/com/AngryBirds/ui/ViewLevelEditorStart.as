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
       
      
      public function ViewLevelEditorStart(newStateBase:StateBase)
      {
         super(newStateBase);
      }
      
      override public function init(data:XML) : void
      {
         super.init(ViewXMLLibrary.mLibrary.Views.View_LevelEditorStart[0]);
      }
      
      override public function listenerEventOccured(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         super.listenerEventOccured(eventIndex,eventName,component);
      }
      
      override public function getRepeaterDataXML(repeaterName:String) : Array
      {
         if(repeaterName == "Repeater_LevelSelection")
         {
            return null;
         }
         return this.getRepeaterTemplatesXML();
      }
      
      public function getRepeaterTemplatesXML() : Array
      {
         var but:XML = null;
         var clip:MovieClip = null;
         var templateXml:XML = null;
         var data:String = null;
         var imgcls:Class = null;
         var img:MovieClip = null;
         var list:Array = new Array();
         list[0] = new Array();
         var c:Class = AssetCache.getAssetFromCache("TemplateSelect_Component");
         var templates:Array = StateLevelLoad.getTemplateLevels();
         for(var i:int = 0; i < templates.length; i++)
         {
            templateXml = templates[i] as XML;
            but = <Button/>;
            but.@name = templateXml.@id;
            but.@MouseUp = templateXml.@id;
            clip = new c();
            if(templateXml.imgData.toString().length > 0)
            {
               data = templateXml.imgData.toString();
               clip.addChildAt(LevelEditor.decodeImageData(data),0);
            }
            else
            {
               imgcls = AssetCache.getAssetFromCache("Container_TemplateThumbnail");
               img = new imgcls();
               clip.addChildAt(img,0);
            }
            list[0].push(new Array(but,null,clip));
         }
         return list;
      }
   }
}
