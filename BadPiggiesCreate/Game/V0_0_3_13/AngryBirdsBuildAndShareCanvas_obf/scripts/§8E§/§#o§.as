package §8E§
{
   import §=%§.§0!+§;
   import §=%§.§0L§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#o§ extends Sprite
   {
      
      private static const §"!"§:int = 20;
      
      private static const §8!M§:int = 20;
      
      private static const §+!p§:int = 10;
      
      private static const §]!P§:int = 3;
       
      
      private var §56§:§0L§;
      
      private var §>7§:§0L§;
      
      private var §^!K§:Point;
      
      private var §%!D§:Point;
      
      public function §#o§(param1:§0L§, param2:§0L§)
      {
         super();
         this.§56§ = param1;
         this.§>7§ = param2;
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
            this.§%!D§ = null;
            this.§^!K§ = null;
            return;
         }
         this.clear();
         graphics.lineStyle(§]!P§,16777215,1);
         if(this.§%!D§)
         {
            _loc2_ = this.§^!K§;
            _loc3_ = this.§%!D§;
            visible = true;
         }
         else
         {
            _loc2_ = this.§56§.position;
            _loc3_ = this.§>7§.position;
            visible = false;
         }
         this.§^!K§ = this.§56§.position;
         this.§%!D§ = this.§>7§.position;
         graphics.moveTo(_loc2_.x,_loc2_.y);
         var _loc4_:Point;
         var _loc5_:Number = (_loc4_ = _loc3_.subtract(_loc2_)).length;
         var _loc6_:Point = new Point(-_loc4_.y,_loc4_.x);
         _loc4_.normalize(_loc5_ / 2);
         var _loc7_:Point = _loc2_.add(_loc4_);
         _loc6_.normalize(§+!p§);
         _loc7_ = _loc7_.add(_loc6_);
         graphics.curveTo(_loc7_.x,_loc7_.y,_loc3_.x,_loc3_.y);
         _loc6_.normalize(§+!p§ * 2);
         var _loc8_:Point;
         (_loc8_ = _loc3_.subtract(_loc2_.add(_loc6_))).normalize(§8!M§);
         var _loc9_:Point = _loc3_.subtract(_loc8_);
         (_loc6_ = new Point(-_loc8_.y,_loc8_.x)).normalize(§8!M§ / 2);
         _loc9_ = _loc9_.add(_loc6_);
         graphics.moveTo(_loc9_.x,_loc9_.y);
         graphics.lineTo(_loc3_.x,_loc3_.y);
         _loc9_ = (_loc9_ = _loc9_.subtract(_loc6_)).subtract(_loc6_);
         graphics.lineTo(_loc9_.x,_loc9_.y);
         var _loc10_:Rectangle = getBounds(this);
         var _loc11_:BitmapData = new BitmapData(width,height,true,0);
         var _loc12_:Point = new Point(-_loc10_.width,-_loc10_.height);
         _loc11_.draw(this,new Matrix(1,0,0,1,-_loc10_.x,-_loc10_.y));
         §0!+§.§'G§(_loc11_,§0!+§.§`!Z§.bitmapData);
         var _loc13_:Bitmap = new Bitmap(_loc11_);
         graphics.clear();
         addChild(_loc13_);
         _loc13_.x = _loc10_.x;
         _loc13_.y = _loc10_.y;
      }
   }
}
