package BlackFaceBookCredits_fla
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   
   public dynamic class MainTimeline extends MovieClip
   {
       
      
      public function MainTimeline()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.__setPerspectiveProjection_);
      }
      
      public function __setPerspectiveProjection_(param1:Event) : void
      {
         root.transform.perspectiveProjection.fieldOfView = 60;
         root.transform.perspectiveProjection.projectionCenter = new Point(512,384);
      }
   }
}
