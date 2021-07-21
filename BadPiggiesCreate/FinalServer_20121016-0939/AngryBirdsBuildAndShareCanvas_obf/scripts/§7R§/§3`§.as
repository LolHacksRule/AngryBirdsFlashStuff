package §7r§
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Shape;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3`§
   {
      
      private static const §=L§:Class;
      
      public static const §>K§:Bitmap;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §=L§ = §8!a§;
            do
            {
               §>K§ = new §=L§();
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function §3`§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function § !`§(param1:BitmapData, param2:BitmapData) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Shape = new Shape();
         if(_loc7_)
         {
            _loc3_.graphics.beginBitmapFill(param2);
            loop0:
            while(true)
            {
               addr38:
               while(true)
               {
                  _loc3_.graphics.drawRect(0,0,param1.width,param1.height);
                  continue loop0;
               }
            }
            addr53:
         }
         while(true)
         {
            _loc3_.graphics.endFill();
            if(!(_loc7_ || _loc3_))
            {
               continue;
            }
            if(_loc7_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr53);
            }
            §§goto(addr38);
         }
         var _loc4_:BitmapData;
         (_loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0)).draw(_loc3_);
         var _loc5_:Rectangle = new Rectangle(0,0,_loc4_.width,_loc4_.height);
         if(_loc7_ || param2)
         {
            _loc4_.copyChannel(_loc4_,_loc5_,new Point(),BitmapDataChannel.RED,BitmapDataChannel.ALPHA);
         }
         var _loc6_:BitmapData;
         (_loc6_ = new BitmapData(param1.width,param1.height,true,0)).copyPixels(param1,new Rectangle(0,0,param1.width,param1.height),new Point(),_loc4_,new Point(),false);
         if(!(_loc8_ && _loc3_))
         {
            param1.copyPixels(_loc6_,_loc5_,new Point(),null,null,false);
         }
      }
   }
}
