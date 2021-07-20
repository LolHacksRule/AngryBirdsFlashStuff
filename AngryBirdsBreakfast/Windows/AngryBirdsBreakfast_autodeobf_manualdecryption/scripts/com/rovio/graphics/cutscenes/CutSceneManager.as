package com.rovio.graphics.cutscenes
{
   import com.rovio.graphics.TextureManager;
   import com.rovio.utils.HashMap;
   import com.rovio.factory.Log;
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
      
      public static function addSwfCutscene(param1:String, param2:ByteArray) : void
      {
         sSwfCutscenes[param1] = param2;
      }
      
      public static function getSwfCutscene(param1:String) : ByteArray
      {
         return sSwfCutscenes[param1];
      }
      
      public static function initializeCutScenes(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:CutScene = null;
         for(_loc2_ in param1)
         {
            if(!sCutScenes[_loc2_])
            {
               _loc3_ = new CutScene(param1[_loc2_],_loc2_);
               Log.log("Initializing cutScene: " + _loc2_);
               sCutScenes[_loc2_] = _loc3_;
               if(sFinalOutros.indexOf(_loc2_) >= 0)
               {
                  _loc3_.cutSceneType = CutScene.TYPE_FINAL_OUTRO;
               }
            }
         }
      }
      
      public static function getCutSceneClone(param1:String, param2:TextureManager) : CutScene
      {
         var _loc3_:CutScene = sCutScenes[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : CutScene
      {
         var _loc2_:CutScene = sCutScenes[param1];
         if(_loc2_ && sFinalOutros.indexOf(param1))
         {
            _loc2_.cutSceneType = CutScene.TYPE_FINAL_OUTRO;
         }
         return _loc2_;
      }
      
      public static function setFinalOutro(param1:String) : void
      {
         if(sFinalOutros.indexOf(param1) < 0)
         {
            sFinalOutros.push(param1);
         }
      }
   }
}
