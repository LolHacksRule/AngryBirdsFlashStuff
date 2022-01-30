package §6`§
{
   import §?!h§.b2Vec2;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §4j§ extends Sprite
   {
      
      private static const §1!e§:int = 20;
       
      
      private var §9&§:Vector.<§2u§>;
      
      private var §"!?§:int;
      
      public function §4j§(param1:Point, param2:Point)
      {
         var _loc4_:§2u§ = null;
         super();
         this.§9&§ = new Vector.<§2u§>();
         var _loc3_:int = 0;
         while(_loc3_ < §1!e§)
         {
            _loc4_ = new §2u§(new b2Vec2(param1.x,param1.y),new b2Vec2(param2.x,param2.y),_loc3_ == 0);
            this.§9&§.push(_loc4_);
            addChild(_loc4_);
            _loc3_++;
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§"!?§ = getTimer();
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§>!=§);
      }
      
      private function §>!=§(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§>!=§);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:§2u§ = null;
         var _loc2_:int = getTimer() - this.§"!?§;
         this.§"!?§ = getTimer();
         for each(_loc3_ in this.§9&§)
         {
            _loc3_.update(_loc2_);
         }
         if(!this.§9&§[0].parent)
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
