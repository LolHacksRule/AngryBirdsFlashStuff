package §>P§
{
   import §%B§.§^k§;
   import §3!t§.b2Vec2;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §[""§ extends Sprite
   {
      
      private static const § !5§:int = 20;
       
      
      private var §'Z§:Vector.<§`1§>;
      
      private var §@!g§:int;
      
      public function §[""§(param1:Point, param2:Point)
      {
         var _loc4_:§`1§ = null;
         super();
         this.§'Z§ = new Vector.<§`1§>();
         var _loc3_:int = 0;
         while(_loc3_ < § !5§)
         {
            _loc4_ = new §`1§(new b2Vec2(param1.x,param1.y),new b2Vec2(param2.x,param2.y),_loc3_ == 0);
            this.§'Z§.push(_loc4_);
            addChild(_loc4_);
            _loc3_++;
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§@!g§ = getTimer();
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§1?§);
         §^k§.playSound("Sound_Star_Pig");
      }
      
      private function §1?§(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§1?§);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:§`1§ = null;
         var _loc2_:int = getTimer() - this.§@!g§;
         this.§@!g§ = getTimer();
         for each(_loc3_ in this.§'Z§)
         {
            _loc3_.update(_loc2_);
         }
         if(!this.§'Z§[0].parent)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            §^k§.playSound("Sound_Star_Pig");
         }
         if(numChildren == 0)
         {
            parent.removeChild(this);
         }
      }
   }
}
