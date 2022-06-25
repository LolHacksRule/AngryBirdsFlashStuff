package §7p§
{
   import §6b§.Base64;
   import §?![§.JPGEncoder;
   import §?![§.PNGEncoder;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class ImageDataUtils
   {
       
      
      public function ImageDataUtils()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §#i§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §4!;§(param1);
         return PNGEncoder.encode(_loc2_);
      }
      
      public static function §?!;§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §4!;§(param1);
         var _loc4_:JPGEncoder = new JPGEncoder(param2);
         return _loc4_.encode(_loc3_);
      }
      
      public static function §4!;§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(_loc4_)
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function §[!'§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = "data:image/png;base64,";
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_ || param2)
            {
               §§push(_loc3_);
               if(!(_loc6_ && param2))
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc5_)
                     {
                        §§push(param1);
                        if(!_loc6_)
                        {
                           addr66:
                           §§push(§§pop().substr(_loc3_.length));
                        }
                        param1 = §§pop();
                     }
                  }
                  §§goto(addr70);
               }
            }
            §§goto(addr66);
         }
         addr70:
         var _loc4_:ByteArray = Base64.§8C§(param1);
         if(_loc5_ || param2)
         {
            §,U§(_loc4_,param2);
         }
      }
      
      public static function §,U§(param1:ByteArray, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[3] = null;
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  addr125:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop2;
                  }
               }
            }
            if(!(_loc4_ || param1))
            {
               continue;
            }
            §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
            {
               loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
               callback(loader.content as Bitmap);
            });
            §§goto(addr75);
         }
      }
   }
}
