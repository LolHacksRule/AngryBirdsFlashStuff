package §]" §
{
   import §#";§.§0"#§;
   import §<!a§.b2Vec2;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §+!d§ extends Sprite
   {
      
      private static const § "$§:int = 20;
       
      
      private var §]!r§:Vector.<§4!F§>;
      
      private var §1"6§:int;
      
      public function §+!d§(param1:Point, param2:Point, param3:Boolean)
      {
         var _loc5_:* = false;
         var _loc6_:§4!F§ = null;
         super();
         this.§]!r§ = new Vector.<§4!F§>();
         var _loc4_:int = 0;
         while(_loc4_ < § "$§)
         {
            _loc5_ = _loc4_ == § "$§ - 1;
            _loc6_ = new §4!F§(new b2Vec2(param1.x,param1.y),new b2Vec2(param2.x,param2.y),_loc5_,param3);
            this.§]!r§.push(_loc6_);
            addChild(_loc6_);
            _loc4_++;
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.§1"6§ = getTimer();
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§8!_§);
         §0"#§.§9"2§("Sound_Star_Pig");
      }
      
      private function §8!_§(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§8!_§);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:§4!F§ = null;
         var _loc2_:int = getTimer() - this.§1"6§;
         this.§1"6§ = getTimer();
         for each(_loc3_ in this.§]!r§)
         {
            _loc3_.update(_loc2_);
         }
         if(!this.§]!r§[0].parent)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            §0"#§.§9"2§("Sound_Star_Pig");
         }
         if(numChildren == 0)
         {
            parent.removeChild(this);
         }
      }
   }
}
