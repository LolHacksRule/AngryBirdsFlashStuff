package §9!!§
{
   import §'N§.Base64;
   import §`R§.JPGEncoder;
   import §`R§.PNGEncoder;
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
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §3!!§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §^§(param1);
         return PNGEncoder.encode(_loc2_);
      }
      
      public static function §<!i§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §^§(param1);
         var _loc4_:JPGEncoder = new JPGEncoder(param2);
         return _loc4_.encode(_loc3_);
      }
      
      public static function §^§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(_loc4_ || param1)
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function §;j§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = "data:image/png;base64,";
         if(_loc5_ || ImageDataUtils)
         {
            §§push(param1);
            if(!(_loc6_ && _loc3_))
            {
               §§push(_loc3_);
               if(!(_loc6_ && param1))
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc5_)
                     {
                        addr74:
                        §§push(param1);
                        if(!_loc6_)
                        {
                           §§push(_loc3_);
                        }
                        param1 = §§pop();
                     }
                     §§goto(addr75);
                  }
                  addr75:
                  var _loc4_:ByteArray = Base64.§@b§(param1);
                  if(_loc5_)
                  {
                     §,[§(_loc4_,param2);
                  }
                  return;
               }
               §§push(§§pop().substr(§§pop().length));
            }
         }
         §§goto(addr74);
      }
      
      public static function §,[§(param1:ByteArray, param2:Function) : void
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
               loop2:
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  while(_loc4_)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(_loc4_)
                           {
                              §§pop().§§slot[3] = new Loader();
                              while(_loc4_)
                              {
                                 §§push(§§newactivation());
                                 continue loop6;
                                 loop8:
                                 while(_loc4_ || _loc3_)
                                 {
                                    §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
                                    {
                                       loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
                                       callback(loader.content as Bitmap);
                                    });
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc4_ || param2)
                                       {
                                          continue loop4;
                                       }
                                       continue loop8;
                                       addr48:
                                       §§pop().§§slot[3].loadBytes(bytes);
                                       if(!(_loc4_ || param2))
                                       {
                                          continue;
                                       }
                                       §§goto(addr70);
                                    }
                                    continue loop0;
                                 }
                                 if(!(_loc5_ && ImageDataUtils))
                                 {
                                    if(!(_loc5_ && ImageDataUtils))
                                    {
                                       break loop5;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                        return;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
   }
}
