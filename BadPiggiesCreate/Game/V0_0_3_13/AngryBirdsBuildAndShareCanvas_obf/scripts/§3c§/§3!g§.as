package §3c§
{
   import §1!z§.b2Vec2;
   import §>Z§.§5;§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §3!g§ extends Sprite
   {
      
      private static const §]a§:int = 20;
       
      
      private var §'E§:Vector.<§]@§>;
      
      private var §?"+§:int;
      
      public function §3!g§(param1:Point, param2:Point)
      {
         var _loc4_:§]@§ = null;
         super();
         this.§'E§ = new Vector.<§]@§>();
         var _loc3_:int = 0;
         while(_loc3_ < §]a§)
         {
            _loc4_ = new §]@§(new b2Vec2(param1.x,param1.y),new b2Vec2(param2.x,param2.y),_loc3_ == 0);
            this.§'E§.push(_loc4_);
            addChild(_loc4_);
            _loc3_++;
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§?"+§ = getTimer();
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§+!;§);
         §5;§.playSound("Sound_Star_Pig");
      }
      
      private function §+!;§(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§+!;§);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:§]@§ = null;
         var _loc2_:int = getTimer() - this.§?"+§;
         this.§?"+§ = getTimer();
         for each(_loc3_ in this.§'E§)
         {
            _loc3_.update(_loc2_);
         }
         if(!this.§'E§[0].parent)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            §5;§.playSound("Sound_Star_Pig");
         }
         if(numChildren == 0)
         {
            parent.removeChild(this);
         }
      }
   }
}
