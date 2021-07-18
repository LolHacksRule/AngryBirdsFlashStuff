package §+V§
{
   import §7t§.§-!7§;
   import §7t§.§<^§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4!z§ extends Sprite
   {
      
      private static const §3!;§:int = 20;
      
      private static const §2!F§:int = 20;
      
      private static const §7!A§:int = 10;
      
      private static const §5p§:int = 3;
       
      
      private var § !F§:§<^§;
      
      private var §7!n§:§<^§;
      
      private var §^k§:Point;
      
      private var §#v§:Point;
      
      public function §4!z§(param1:§<^§, param2:§<^§)
      {
         super();
         this.§ !F§ = param1;
         this.§7!n§ = param2;
         mouseEnabled = false;
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function clear() : void
      {
         graphics.clear();
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Point = null;
         var _loc3_:Point = null;
         if(!stage)
         {
            this.§#v§ = null;
            this.§^k§ = null;
            return;
         }
         this.clear();
         graphics.lineStyle(§5p§,16777215,1);
         if(this.§#v§)
         {
            _loc2_ = this.§^k§;
            _loc3_ = this.§#v§;
            visible = true;
         }
         else
         {
            _loc2_ = this.§ !F§.position;
            _loc3_ = this.§7!n§.position;
            visible = false;
         }
         this.§^k§ = this.§ !F§.position;
         this.§#v§ = this.§7!n§.position;
         graphics.moveTo(_loc2_.x,_loc2_.y);
         var _loc4_:Point;
         var _loc5_:Number = (_loc4_ = _loc3_.subtract(_loc2_)).length;
         var _loc6_:Point = new Point(-_loc4_.y,_loc4_.x);
         _loc4_.normalize(_loc5_ / 2);
         var _loc7_:Point = _loc2_.add(_loc4_);
         _loc6_.normalize(§7!A§);
         _loc7_ = _loc7_.add(_loc6_);
         graphics.curveTo(_loc7_.x,_loc7_.y,_loc3_.x,_loc3_.y);
         _loc6_.normalize(§7!A§ * 2);
         var _loc8_:Point;
         (_loc8_ = _loc3_.subtract(_loc2_.add(_loc6_))).normalize(§2!F§);
         var _loc9_:Point = _loc3_.subtract(_loc8_);
         (_loc6_ = new Point(-_loc8_.y,_loc8_.x)).normalize(§2!F§ / 2);
         _loc9_ = _loc9_.add(_loc6_);
         graphics.moveTo(_loc9_.x,_loc9_.y);
         graphics.lineTo(_loc3_.x,_loc3_.y);
         _loc9_ = (_loc9_ = _loc9_.subtract(_loc6_)).subtract(_loc6_);
         graphics.lineTo(_loc9_.x,_loc9_.y);
         var _loc10_:Rectangle = getBounds(this);
         var _loc11_:BitmapData = new BitmapData(width,height,true,0);
         var _loc12_:Point = new Point(-_loc10_.width,-_loc10_.height);
         _loc11_.draw(this,new Matrix(1,0,0,1,-_loc10_.x,-_loc10_.y));
         §-!7§.§[s§(_loc11_,§-!7§.§;#§.bitmapData);
         var _loc13_:Bitmap = new Bitmap(_loc11_);
         graphics.clear();
         addChild(_loc13_);
         _loc13_.x = _loc10_.x;
         _loc13_.y = _loc10_.y;
      }
   }
}
