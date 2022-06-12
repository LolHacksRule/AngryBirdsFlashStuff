package §%%§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Shape;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3!T§
   {
      
      private static const §9"3§:Class = §&H§;
      
      public static const §2K§:Bitmap = new §9"3§();
       
      
      public function §3!T§()
      {
         super();
      }
      
      public static function §&v§(param1:BitmapData, param2:BitmapData) : void
      {
         var _loc3_:Shape = new Shape();
         _loc3_.graphics.beginBitmapFill(param2);
         _loc3_.graphics.drawRect(0,0,param1.width,param1.height);
         _loc3_.graphics.endFill();
         var _loc4_:BitmapData;
         (_loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0)).draw(_loc3_);
         var _loc5_:Rectangle = new Rectangle(0,0,_loc4_.width,_loc4_.height);
         _loc4_.copyChannel(_loc4_,_loc5_,new Point(),BitmapDataChannel.RED,BitmapDataChannel.ALPHA);
         var _loc6_:BitmapData;
         (_loc6_ = new BitmapData(param1.width,param1.height,true,0)).copyPixels(param1,new Rectangle(0,0,param1.width,param1.height),new Point(),_loc4_,new Point(),false);
         param1.copyPixels(_loc6_,_loc5_,new Point(),null,null,false);
      }
   }
}
