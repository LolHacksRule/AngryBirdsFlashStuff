package GameUiAssets_fla
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   
   public dynamic class MainTimeline extends MovieClip
   {
       
      
      public var Icon_GoldMedal:MovieClip;
      
      public var Button_FacebookShare:MovieClip;
      
      public var Button_PublishLevel:MovieClip;
      
      public var LoadingIcon:MovieClip;
      
      public var Button_ThemeSelect_Exit:MovieClip;
      
      public var Icon_LevelOfTheDay:MovieClip;
      
      public var Button_TestPlay:MovieClip;
      
      public var Icon_SilverMedla:MovieClip;
      
      public var Button_Random:MovieClip;
      
      public var Button_LevelOfTheDay_Competition:MovieClip;
      
      public var Button_Like:MovieClip;
      
      public var Button_Save:MovieClip;
      
      public var Button_Replay:MovieClip;
      
      public var Button_Embed:MovieClip;
      
      public var Button_SetCameraConfirmation_Confirm:MovieClip;
      
      public var Button_ThumbDown:MovieClip;
      
      public var Icon_BronzeMedal:MovieClip;
      
      public function MainTimeline()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.__setPerspectiveProjection_);
      }
      
      public function __setPerspectiveProjection_(param1:Event) : void
      {
         root.transform.perspectiveProjection.fieldOfView = 74.265168;
         root.transform.perspectiveProjection.projectionCenter = new Point(275,200);
      }
   }
}
