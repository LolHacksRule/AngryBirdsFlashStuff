package §8!+§
{
   import §&!m§.§;5§;
   import §+]§.§"U§;
   import §<!B§.b2Vec2;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §6!W§ extends §]p§
   {
       
      
      private const §#l§:Number = 22.5;
      
      private const §`!Q§:int = 20;
      
      private var §1G§:Point;
      
      public function §6!W§(param1:§"U§)
      {
         super(param1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§1G§ = §%!3§.mMousePosition.clone();
      }
      
      override public function onMouseUp() : void
      {
         §%!3§.setTool(§"!X§);
      }
      
      override public function onMouseMove() : void
      {
         var _loc1_:Point = null;
         var _loc2_:int = 0;
         if(this.§1G§)
         {
            _loc1_ = this.§1G§.subtract(§%!3§.mMousePosition);
            if(_loc1_.length > this.§`!Q§)
            {
               dispatchEvent(new Event(Event.CHANGE));
               if(Math.abs(_loc1_.x) > Math.abs(_loc1_.y))
               {
                  _loc2_ = _loc1_.x < 0 ? -1 : 1;
                  if(§%!3§.mMousePosition.y > §0j§().y)
                  {
                     _loc2_ *= -1;
                  }
               }
               else
               {
                  _loc2_ = _loc1_.y < 0 ? 1 : -1;
                  if(§%!3§.mMousePosition.x > §0j§().x)
                  {
                     _loc2_ *= -1;
                  }
               }
               this.§1G§ = §%!3§.mMousePosition.clone();
               §%!3§.addAction(this.§ !9§,this.§#l§ * _loc2_);
            }
         }
      }
      
      public function § !9§(param1:Number) : void
      {
         var _loc5_:§;5§ = null;
         var _loc3_:b2Vec2 = §>!p§();
         var _loc4_:Point = new Point(_loc3_.x,_loc3_.y);
         for each(_loc5_ in §4!-§)
         {
            _loc5_.§ !-§(param1,_loc4_);
         }
      }
   }
}
