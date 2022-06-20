package com.angrybirds.data
{
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.model.ParticleManager;
   import com.rovio.graphics.cutscenes.CutSceneManager;
   import com.rovio.loader.PackageLoader;
   import com.rovio.utils.LuaUtils;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class PackageManager extends PackageLoader
   {
       
      
      protected var mLevelManager:LevelManager;
      
      protected var mLoader:Loader;
      
      protected var mAssetXMLQueue:Vector.<XML>;
      
      public function PackageManager(levelManager:LevelManager)
      {
         this.mAssetXMLQueue = new Vector.<XML>();
         super();
         this.mLevelManager = levelManager;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.mLevelManager = null;
      }
      
      override protected function clear() : void
      {
         super.clear();
         if(this.mLoader)
         {
            this.mLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onInitSWF);
            this.mLoader = null;
         }
      }
      
      override protected function initializeFile(fileName:String) : void
      {
         var levelName:String = null;
         var levelNameResults:Array = fileName.match(/^levels\/(.*)\.json$/i);
         if(levelNameResults)
         {
            levelName = levelNameResults[1].toLowerCase().substr("level".length);
            this.initializeLevelFile(levelName,fileName);
         }
         var particleNameResults:Array = fileName.match(/^particle_emitters\/(.*)\.pex$/i);
         if(particleNameResults)
         {
            this.initializeParticleEmitter(particleNameResults[1]);
         }
         var cutSceneNameResults:Array = fileName.match(/cutscenes.lua$/i);
         if(cutSceneNameResults)
         {
            this.initializeCutScenes(fileName);
         }
         var swfCutSceneNameResults:Array = fileName.match(/cutscene.swf$/i);
         if(swfCutSceneNameResults)
         {
            this.initializeSwfCutScene(fileName);
         }
         if(fileName.toLowerCase() == "assetmap.xml")
         {
            this.loadSWF(fileName);
         }
         if(fileName.toLowerCase() == "episodes.json")
         {
            this.initializeEpisodesFile(fileName);
         }
         super.initializeFile(fileName);
      }
      
      protected function initializeLevelFile(levelName:String, fileName:String) : void
      {
         if(!this.mLevelManager.getLevelForId(levelName))
         {
            this.mLevelManager.addLevel(levelName,LevelModel.createFromClassicJSON(getFileAsString(fileName)));
         }
      }
      
      protected function initializeEpisodesFile(fileName:String) : void
      {
         this.mLevelManager.initEpisodes(JSON.parse(getFileAsString(fileName)));
      }
      
      private function loadSWF(assetFileName:String) : void
      {
         var loaderContext:LoaderContext = null;
         ++mUnitializedItems;
         var assetXML:XML = new XML(getFileAsString(assetFileName));
         this.mAssetXMLQueue.push(assetXML);
         if(this.mAssetXMLQueue.length == 1)
         {
            this.mLoader = new Loader();
            this.mLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onInitSWF);
            loaderContext = new LoaderContext(false,ApplicationDomain.currentDomain);
            loaderContext.allowCodeImport = true;
            this.mLoader.loadBytes(getFileData(assetXML.Library.@swf),loaderContext);
         }
      }
      
      private function onInitSWF(e:Event) : void
      {
         this.mLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onInitSWF);
         var assetXML:XML = this.mAssetXMLQueue.shift();
         if(this.mAssetXMLQueue.length > 0)
         {
            this.mLoader = new Loader();
            this.mLoader.contentLoaderInfo.addEventListener(Event.INIT,this.onInitSWF);
            this.mLoader.loadBytes(getFileData(this.mAssetXMLQueue[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         handleItemInitialization();
      }
      
      private function initializeCutScenes(fileName:String) : void
      {
         var cutSceneData:Object = LuaUtils.luaToObject(getFileAsString(fileName));
         CutSceneManager.initializeCutScenes(cutSceneData);
      }
      
      private function initializeSwfCutScene(fileName:String) : void
      {
         CutSceneManager.addSwfCutscene(mActivePackageName,getFileData(fileName,mActivePackageName));
      }
      
      protected function initializeParticleEmitter(id:String) : void
      {
         var onComplete:Function = function(image:Bitmap):void
         {
            ParticleManager.registerParticleEmitter(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),image.bitmapData);
            handleItemInitialization();
         };
         ++mUnitializedItems;
         getFileAsBitmap("particle_emitters/" + id + ".png",onComplete);
      }
   }
}
