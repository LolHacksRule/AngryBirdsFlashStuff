package §2L§
{
   import com.rovio.assets.§!"'§;
   import flash.display.Sprite;
   
   public class MapPig extends Sprite
   {
       
      
      private var §2h§:§-!j§;
      
      private var §0!E§:Number;
      
      public function MapPig(param1:§-!j§)
      {
         super();
         this.§2h§ = param1;
         buttonMode = true;
      }
      
      public function §!"=§(param1:Number) : void
      {
         this.§0!E§ = param1;
         var _loc2_:§%b§ = this.§2h§.§"7§(this.§0!E§);
         this.x = _loc2_.x;
         this.y = _loc2_.y;
         var _loc3_:Class = §!"'§.§%!Q§("MapPig");
         addChild(new _loc3_());
         width = 50;
         scaleY = scaleX;
      }
   }
}
