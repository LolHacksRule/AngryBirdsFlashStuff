package
{
   import com.angrybirds.PreLoaderLoadingIndicator;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.URLRequest;
   
   [SWF(frameRate="60",backgroundColor="#000000",width="980",height="570")]
   public class PreLoader extends Sprite
   {
       
      
      private var preloader:MovieClip;
      
      private var mGameLoader:Loader;
      
      public function PreLoader()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function onAddedToStage(e:Event) : void
      {
         this.preloader = new PreLoaderLoadingIndicator();
         this.align();
         addChild(this.preloader);
         this.mGameLoader = new Loader();
         this.mGameLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onGameLoaded);
         this.mGameLoader.load(new URLRequest("flash/AngryBirdsNestle.swf?serverVersion=" + loaderInfo.parameters.serverVersion));
         stage.addEventListener(Event.RESIZE,this.onResize);
      }
      
      private function onResize(e:Event) : void
      {
         this.align();
      }
      
      protected function align() : void
      {
         this.preloader.x = Math.round(stage.stageWidth / 2);
         this.preloader.y = Math.round(stage.stageHeight / 2);
      }
      
      private function onGameLoaded(e:Event) : void
      {
         removeChild(this.preloader);
         addChild(this.mGameLoader);
      }
   }
}
