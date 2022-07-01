package §#V§
{
   import §+L§.b2Vec2;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §4g§ extends Sprite
   {
      
      private static const §`"-§:int = 20;
       
      
      private var §>$§:Vector.<§ a§>;
      
      private var §>&§:int;
      
      public function §4g§(param1:Point, param2:Point)
      {
         var _loc4_:§ a§ = null;
         super();
         this.§>$§ = new Vector.<§ a§>();
         var _loc3_:int = 0;
         while(_loc3_ < §`"-§)
         {
            _loc4_ = new § a§(new b2Vec2(param1.x,param1.y),new b2Vec2(param2.x,param2.y),_loc3_ == 0);
            this.§>$§.push(_loc4_);
            addChild(_loc4_);
            _loc3_++;
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§>&§ = getTimer();
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§3M§);
      }
      
      private function §3M§(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§3M§);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:§ a§ = null;
         var _loc2_:int = getTimer() - this.§>&§;
         this.§>&§ = getTimer();
         for each(_loc3_ in this.§>$§)
         {
            _loc3_.update(_loc2_);
         }
         if(!this.§>$§[0].parent)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
         if(numChildren == 0)
         {
            parent.removeChild(this);
         }
      }
   }
}
