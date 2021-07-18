package §,B§
{
   import com.rovio.assets.§>!]§;
   import flash.display.Sprite;
   
   public class MapPig extends Sprite
   {
       
      
      private var §?"6§:§9W§;
      
      private var §6!8§:Number;
      
      public function MapPig(param1:§9W§)
      {
         super();
         this.§?"6§ = param1;
         buttonMode = true;
      }
      
      public function §3!A§(param1:Number) : void
      {
         this.§6!8§ = param1;
         var _loc2_:§="9§ = this.§?"6§.§-C§(this.§6!8§);
         this.x = _loc2_.x;
         this.y = _loc2_.y;
         var _loc3_:Class = §>!]§.§1!8§("MapPig");
         addChild(new _loc3_());
         width = 50;
         scaleY = scaleX;
      }
   }
}
