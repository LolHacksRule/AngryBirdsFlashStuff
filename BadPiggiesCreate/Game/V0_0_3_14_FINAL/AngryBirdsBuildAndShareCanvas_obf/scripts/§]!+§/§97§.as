package §]!+§
{
   import §-!n§.§5!U§;
   import §2"=§.b2Vec2;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §97§ extends Sprite
   {
      
      private static const §7!<§:int = 20;
       
      
      private var §^!r§:Vector.<§7"3§>;
      
      private var §7!3§:int;
      
      public function §97§(param1:Point, param2:Point)
      {
         var _loc4_:§7"3§ = null;
         super();
         this.§^!r§ = new Vector.<§7"3§>();
         var _loc3_:int = 0;
         while(_loc3_ < §7!<§)
         {
            _loc4_ = new §7"3§(new b2Vec2(param1.x,param1.y),new b2Vec2(param2.x,param2.y),_loc3_ == 0);
            this.§^!r§.push(_loc4_);
            addChild(_loc4_);
            _loc3_++;
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§7!3§ = getTimer();
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§?!N§);
         §5!U§.playSound("Sound_Star_Pig");
      }
      
      private function §?!N§(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§?!N§);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:§7"3§ = null;
         var _loc2_:int = getTimer() - this.§7!3§;
         this.§7!3§ = getTimer();
         for each(_loc3_ in this.§^!r§)
         {
            _loc3_.update(_loc2_);
         }
         if(!this.§^!r§[0].parent)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            §5!U§.playSound("Sound_Star_Pig");
         }
         if(numChildren == 0)
         {
            parent.removeChild(this);
         }
      }
   }
}
