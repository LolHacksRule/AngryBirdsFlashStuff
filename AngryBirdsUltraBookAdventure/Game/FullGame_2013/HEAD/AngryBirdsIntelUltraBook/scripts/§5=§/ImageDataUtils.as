package §5=§
{
   import §<u§.Base64;
   import §^!Y§.JPGEncoder;
   import §^!Y§.PNGEncoder;
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §+T§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §=!d§(param1);
         return PNGEncoder.encode(_loc2_);
      }
      
      public static function §35§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §=!d§(param1);
         var _loc4_:JPGEncoder = new JPGEncoder(param2);
         return _loc4_.encode(_loc3_);
      }
      
      public static function §=!d§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(!(_loc3_ && ImageDataUtils))
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function §6p§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = "data:image/png;base64,";
         if(!(_loc5_ && _loc3_))
         {
            §§push(param1);
            if(_loc6_ || ImageDataUtils)
            {
               §§push(_loc3_);
               if(!(_loc5_ && param1))
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc6_)
                     {
                        addr58:
                        §§push(param1);
                        if(_loc6_ || ImageDataUtils)
                        {
                           addr80:
                           param1 = §§pop().substr(_loc3_.length);
                        }
                        §§goto(addr80);
                     }
                  }
                  var _loc4_:ByteArray = Base64.§3@§(param1);
                  if(!(_loc5_ && ImageDataUtils))
                  {
                     §;H§(_loc4_,param2);
                  }
                  return;
               }
            }
            §§goto(addr80);
         }
         §§goto(addr58);
      }
      
      public static function §;H§(param1:ByteArray, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  addr135:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop0;
                  }
                  loop6:
                  for(; !(_loc5_ && _loc3_); if(!(_loc5_ && ImageDataUtils))
                  {
                     if(_loc4_)
                     {
                        §§pop().§§slot[3].loadBytes(bytes);
                        if(!(_loc4_ || param1))
                        {
                           §§goto(addr83);
                        }
                        if(_loc4_ || ImageDataUtils)
                        {
                           return;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  })
                  {
                     §§pop().§§slot[3] = new Loader();
                     loop7:
                     while(_loc4_)
                     {
                        §§push(§§newactivation());
                        loop8:
                        while(true)
                        {
                           §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
                           {
                              loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
                              callback(loader.content as Bitmap);
                           });
                           addr83:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 continue loop7;
                              }
                              addr85:
                              if(!(_loc5_ && param1))
                              {
                                 continue loop8;
                              }
                              addr130:
                              while(true)
                              {
                                 continue loop6;
                                 §§goto(addr85);
                              }
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr135);
                  }
               }
            }
         }
      }
   }
}
