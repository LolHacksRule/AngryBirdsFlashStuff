package §4!y§
{
   import com.rovio.assets.§=#§;
   import flash.display.Sprite;
   
   public class MapPig extends Sprite
   {
       
      
      private var §@5§:§<U§;
      
      private var §1!i§:Number;
      
      public function MapPig(param1:§<U§)
      {
         super();
         this.§@5§ = param1;
         buttonMode = true;
      }
      
      public function §,!5§(param1:Number) : void
      {
         this.§1!i§ = param1;
         var _loc2_:§1">§ = this.§@5§.§2!@§(this.§1!i§);
         this.x = _loc2_.x;
         this.y = _loc2_.y;
         var _loc3_:Class = §=#§.§1v§("MapPig");
         addChild(new _loc3_());
         width = 50;
         scaleY = scaleX;
      }
   }
}
