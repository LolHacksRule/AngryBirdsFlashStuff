package §7t§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Shape;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-!7§
   {
      
      private static const §]d§:Class;
      
      public static const §;#§:Bitmap;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §]d§ = § ">§;
         }
         do
         {
            §;#§ = new §]d§();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function §-!7§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §[s§(param1:BitmapData, param2:BitmapData) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Shape = new Shape();
         if(!_loc7_)
         {
            _loc3_.graphics.beginBitmapFill(param2);
         }
         while(true)
         {
            while(true)
            {
               _loc3_.graphics.drawRect(0,0,param1.width,param1.height);
               do
               {
                  _loc3_.graphics.endFill();
               }
               while(!(_loc8_ || param2));
               
               if(!_loc7_)
               {
                  if(true)
                  {
                     var _loc4_:BitmapData;
                     (_loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0)).draw(_loc3_);
                     var _loc5_:Rectangle = new Rectangle(0,0,_loc4_.width,_loc4_.height);
                     if(_loc8_)
                     {
                        _loc4_.copyChannel(_loc4_,_loc5_,new Point(),BitmapDataChannel.RED,BitmapDataChannel.ALPHA);
                     }
                  }
                  continue;
                  var _loc6_:BitmapData;
                  (_loc6_ = new BitmapData(param1.width,param1.height,true,0)).copyPixels(param1,new Rectangle(0,0,param1.width,param1.height),new Point(),_loc4_,new Point(),false);
                  if(!(_loc7_ && param2))
                  {
                     param1.copyPixels(_loc6_,_loc5_,new Point(),null,null,false);
                  }
                  return;
               }
               break;
            }
         }
      }
   }
}
