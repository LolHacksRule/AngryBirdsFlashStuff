package com.angrybirds.data
{
   import com.rovio.utils.LuaUtils;
   import com.rovio.graphics.cutscenes.CutSceneManager;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.model.ParticleManager;
   import com.rovio.loader.PackageLoader;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   [SecureSWF(codeWrap="max",rename="true",statementLevel="true",controlFlow="100")]
   public class PackageManager extends PackageLoader
   {
       
      
      protected var mLevelManager:LevelManager;
      
      protected var mLoader:Loader;
      
      protected var mAssetXMLQueue:Vector.<XML>;
      
      public function PackageManager(param1:LevelManager)
      {
         this.mAssetXMLQueue = new Vector.<XML>();
         super();
         this.mLevelManager = param1;
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
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc6_:String = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.json$/i);
         if(_loc2_)
         {
            _loc6_ = _loc2_[1].toLowerCase().substr("level".length);
            this.initializeLevelFile(_loc6_,param1);
         }
         var _loc3_:Array = param1.match(/^particle_emitters\/(.*)\.pex$/i);
         if(_loc3_)
         {
            this.initializeParticleEmitter(_loc3_[1]);
         }
         var _loc4_:Array;
         if(_loc4_ = param1.match(/cutscenes.lua$/i))
         {
            this.initializeCutScenes(param1);
         }
         var _loc5_:Array;
         if(_loc5_ = param1.match(/cutscene.swf$/i))
         {
            this.initializeSwfCutScene(param1);
         }
         if(param1.toLowerCase() == "assetmap.xml")
         {
            this.loadSWF(param1);
         }
         if(param1.toLowerCase() == "episodes.json")
         {
            this.initializeEpisodesFile(param1);
         }
         super.initializeFile(param1);
      }
      
      protected function initializeLevelFile(param1:String, param2:String) : void
      {
         if(!this.mLevelManager.getLevelForId(param1))
         {
            this.mLevelManager.addLevel(param1,LevelModel.createFromClassicJSON(getFileAsString(param2)));
         }
      }
      
      protected function initializeEpisodesFile(param1:String) : void
      {
         this.mLevelManager.initEpisodes(JSON.parse(getFileAsString(param1)));
      }
      
      private function loadSWF(param1:String) : void
      {
         ++mUnitializedItems;
         var _loc2_:XML = new XML(getFileAsString(param1));
         this.mAssetXMLQueue.push(_loc2_);
         if(this.mAssetXMLQueue.length == 1)
         {
            this.mLoader = new Loader();
            this.mLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onInitSWF);
            this.mLoader.loadBytes(getFileData(_loc2_.Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
      }
      
      private function onInitSWF(param1:Event) : void
      {
         this.mLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onInitSWF);
         var _loc2_:XML = this.mAssetXMLQueue.shift();
         if(this.mAssetXMLQueue.length > 0)
         {
            this.mLoader = new Loader();
            this.mLoader.contentLoaderInfo.addEventListener(Event.INIT,this.onInitSWF);
            this.mLoader.loadBytes(getFileData(this.mAssetXMLQueue[0].Library.@swf),new LoaderContext(false,ApplicationDomain.currentDomain));
         }
         handleItemInitialization();
      }
      
      private function initializeCutScenes(param1:String) : void
      {
         var _loc2_:Object = LuaUtils.luaToObject(getFileAsString(param1));
         CutSceneManager.initializeCutScenes(_loc2_);
      }
      
      private function initializeSwfCutScene(param1:String) : void
      {
         CutSceneManager.addSwfCutscene(mActivePackageName,getFileData(param1,mActivePackageName));
      }
      
      protected function initializeParticleEmitter(param1:String) : void
      {
         var id:String = param1;
         var onComplete:Function = function(param1:Bitmap):void
         {
            ParticleManager.registerParticleEmitter(id,XML(getFileAsString("particle_emitters/" + id + ".pex")),param1.bitmapData);
            handleItemInitialization();
         };
         ++mUnitializedItems;
         getFileAsBitmap("particle_emitters/" + id + ".png",onComplete);
      }
   }
}
