package com.rovio.graphics.cutscenes
{
   import com.rovio.factory.Log;
   import com.rovio.graphics.TextureManager;
   import com.rovio.utils.HashMap;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class CutSceneManager
   {
      
      private static var sFinalOutros:Array = [];
      
      private static var sSwfCutscenes:HashMap = new HashMap();
      
      private static var sCutScenes:Dictionary = new Dictionary();
       
      
      public function CutSceneManager()
      {
         super();
      }
      
      public static function addSwfCutscene(cutsceneName:String, content:ByteArray) : void
      {
         sSwfCutscenes[cutsceneName] = content;
      }
      
      public static function getSwfCutscene(cutsceneName:String) : ByteArray
      {
         return sSwfCutscenes[cutsceneName];
      }
      
      public static function initializeCutScenes(data:Object) : void
      {
         var name:* = null;
         var cutScene:CutScene = null;
         for(name in data)
         {
            if(!sCutScenes[name])
            {
               cutScene = new CutScene(data[name],name);
               Log.log("Initializing cutScene: " + name);
               sCutScenes[name] = cutScene;
               if(sFinalOutros.indexOf(name) >= 0)
               {
                  cutScene.cutSceneType = CutScene.TYPE_FINAL_OUTRO;
               }
            }
         }
      }
      
      public static function getCutSceneClone(name:String, textureManager:TextureManager) : CutScene
      {
         var cutScene:CutScene = sCutScenes[name];
         if(cutScene)
         {
            cutScene = cutScene.clone(textureManager);
         }
         return cutScene;
      }
      
      public static function getCutScene(name:String) : CutScene
      {
         var cutScene:CutScene = sCutScenes[name];
         if(cutScene && sFinalOutros.indexOf(name))
         {
            cutScene.cutSceneType = CutScene.TYPE_FINAL_OUTRO;
         }
         return cutScene;
      }
      
      public static function isOnFinalOutroList(name:String) : Boolean
      {
         return sFinalOutros.indexOf(name) >= 0;
      }
      
      public static function setFinalOutro(name:String) : void
      {
         if(sFinalOutros.indexOf(name) < 0)
         {
            sFinalOutros.push(name);
         }
      }
   }
}
