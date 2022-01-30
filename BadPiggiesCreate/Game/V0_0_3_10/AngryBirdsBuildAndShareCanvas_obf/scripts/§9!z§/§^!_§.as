package §9!z§
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §^!_§ extends Sprite
   {
       
      
      public function §^!_§()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§>!=§);
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
      
      public function §>!=§(param1:Event) : void
      {
      }
   }
}
