package §8!7§
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §3i§ extends Sprite
   {
       
      
      public function §3i§()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§4!_§);
      }
      
      public function setIcon(param1:DisplayObject) : void
      {
         removeChildren();
         addChild(param1);
      }
      
      public function onEnterGUI() : void
      {
      }
      
      public function onLeaveGUI() : void
      {
      }
      
      public function update(param1:int) : void
      {
         if(parent)
         {
            x = parent.mouseX;
            y = parent.mouseY;
         }
      }
      
      public function onAddedToStage(param1:Event) : void
      {
         if(parent)
         {
            x = parent.mouseX;
            y = parent.mouseY;
         }
      }
      
      public function §4!_§(param1:Event) : void
      {
      }
   }
}
