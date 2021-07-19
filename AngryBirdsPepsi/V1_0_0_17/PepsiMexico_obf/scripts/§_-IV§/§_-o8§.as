package §_-IV§
{
   import §_-e3§.Base64;
   import §_-tM§.§_-Rj§;
   import §_-tM§.§_-jf§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §_-o8§
   {
       
      
      public function §_-o8§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §_-4P§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §_-Ph§(param1);
         return §_-Rj§.encode(_loc2_);
      }
      
      public static function §_-Uw§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §_-Ph§(param1);
         var _loc4_:§_-jf§;
         return (_loc4_ = new §_-jf§(param2)).encode(_loc3_);
      }
      
      public static function §_-Ph§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(_loc3_ || _loc3_)
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function §_-wz§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = "data:image/png;base64,";
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc5_ || param2)
            {
               §§push(_loc3_);
               if(_loc5_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc5_ || §_-o8§)
                     {
                        addr57:
                        §§push(param1);
                        if(_loc5_ || §_-o8§)
                        {
                           §§push(_loc3_);
                        }
                        param1 = §§pop();
                     }
                     §§goto(addr58);
                  }
                  addr58:
                  var _loc4_:ByteArray = Base64.§_-bs§(param1);
                  if(!(_loc6_ && param2))
                  {
                     §_-yG§(_loc4_,param2);
                  }
                  return;
               }
               §§push(§§pop().substr(§§pop().length));
            }
         }
         §§goto(addr57);
      }
      
      public static function §_-yG§(param1:ByteArray, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_ || _loc3_)
         {
            §§pop().§§slot[3] = null;
            if(!_loc5_)
            {
               §§push(§§newactivation());
               if(_loc4_)
               {
                  §§pop().§§slot[1] = param1;
                  if(!(_loc5_ && param2))
                  {
                     §§push(§§newactivation());
                     if(!(_loc5_ && param1))
                     {
                        §§pop().§§slot[2] = param2;
                        if(!_loc5_)
                        {
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              addr64:
                              §§pop().§§slot[3] = new Loader();
                              if(_loc4_ || param2)
                              {
                                 addr75:
                                 §§push(§§newactivation());
                                 if(!_loc5_)
                                 {
                                    §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
                                    {
                                       loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
                                       callback(loader.content as Bitmap);
                                    });
                                    addr78:
                                    if(!_loc4_)
                                    {
                                    }
                                    §§goto(addr98);
                                 }
                                 §§goto(addr94);
                              }
                           }
                           §§goto(addr94);
                        }
                        addr94:
                        §§pop().§§slot[3].loadBytes(bytes);
                        addr98:
                        return;
                        §§push(§§newactivation());
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr98);
               }
               §§goto(addr94);
            }
            §§goto(addr75);
         }
         §§goto(addr78);
      }
   }
}
