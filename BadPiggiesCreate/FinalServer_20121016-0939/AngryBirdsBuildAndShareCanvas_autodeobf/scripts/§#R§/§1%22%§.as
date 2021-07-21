package §#R§
{
   import §7r§.§,!<§;
   import §7r§.§3`§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1"%§ extends Sprite
   {
      
      private static const §5!I§:int = 20;
      
      private static const §=!R§:int = 20;
      
      private static const §;!"§:int = 10;
      
      private static const §-"§:int = 3;
       
      
      private var §!!<§:§,!<§;
      
      private var §<!K§:§,!<§;
      
      private var §&""§:Point;
      
      private var §'!E§:Point;
      
      public function §1"%§(param1:§,!<§, param2:§,!<§)
      {
         super();
         this.§!!<§ = param1;
         this.§<!K§ = param2;
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
            this.§'!E§ = null;
            this.§&""§ = null;
            return;
         }
         this.clear();
         graphics.lineStyle(§-"§,16777215,1);
         if(this.§'!E§)
         {
            _loc2_ = this.§&""§;
            _loc3_ = this.§'!E§;
            visible = true;
         }
         else
         {
            _loc2_ = this.§!!<§.position;
            _loc3_ = this.§<!K§.position;
            visible = false;
         }
         this.§&""§ = this.§!!<§.position;
         this.§'!E§ = this.§<!K§.position;
         graphics.moveTo(_loc2_.x,_loc2_.y);
         var _loc4_:Point;
         var _loc5_:Number = (_loc4_ = _loc3_.subtract(_loc2_)).length;
         var _loc6_:Point = new Point(-_loc4_.y,_loc4_.x);
         _loc4_.normalize(_loc5_ / 2);
         var _loc7_:Point = _loc2_.add(_loc4_);
         _loc6_.normalize(§;!"§);
         _loc7_ = _loc7_.add(_loc6_);
         graphics.curveTo(_loc7_.x,_loc7_.y,_loc3_.x,_loc3_.y);
         _loc6_.normalize(§;!"§ * 2);
         var _loc8_:Point;
         (_loc8_ = _loc3_.subtract(_loc2_.add(_loc6_))).normalize(§=!R§);
         var _loc9_:Point = _loc3_.subtract(_loc8_);
         (_loc6_ = new Point(-_loc8_.y,_loc8_.x)).normalize(§=!R§ / 2);
         _loc9_ = _loc9_.add(_loc6_);
         graphics.moveTo(_loc9_.x,_loc9_.y);
         graphics.lineTo(_loc3_.x,_loc3_.y);
         _loc9_ = (_loc9_ = _loc9_.subtract(_loc6_)).subtract(_loc6_);
         graphics.lineTo(_loc9_.x,_loc9_.y);
         var _loc10_:Rectangle = getBounds(this);
         var _loc11_:BitmapData = new BitmapData(width,height,true,0);
         var _loc12_:Point = new Point(-_loc10_.width,-_loc10_.height);
         _loc11_.draw(this,new Matrix(1,0,0,1,-_loc10_.x,-_loc10_.y));
         §3`§.§ !`§(_loc11_,§3`§.§>K§.bitmapData);
         var _loc13_:Bitmap = new Bitmap(_loc11_);
         graphics.clear();
         addChild(_loc13_);
         _loc13_.x = _loc10_.x;
         _loc13_.y = _loc10_.y;
      }
   }
}
