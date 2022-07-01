package §50§
{
   import com.rovio.assets.§69§;
   import flash.display.Sprite;
   
   public class MapPig extends Sprite
   {
       
      
      private var §"d§:§8!e§;
      
      private var § "=§:Number;
      
      public function MapPig(param1:§8!e§)
      {
         super();
         this.§"d§ = param1;
         buttonMode = true;
      }
      
      public function §4R§(param1:Number) : void
      {
         this.§ "=§ = param1;
         var _loc2_:§+!&§ = this.§"d§.§^<§(this.§ "=§);
         this.x = _loc2_.x;
         this.y = _loc2_.y;
         var _loc3_:Class = §69§.§ 0§("MapPig");
         addChild(new _loc3_());
         width = 50;
         scaleY = scaleX;
      }
   }
}
