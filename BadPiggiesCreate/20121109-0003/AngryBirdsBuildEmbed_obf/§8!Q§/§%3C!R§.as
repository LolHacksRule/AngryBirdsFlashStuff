package §8!Q§
{
   import § !r§.Base64;
   import §!"§.§!!v§;
   import §!"§.§9o§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §<!R§
   {
       
      
      public function §<!R§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §&J§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §;B§(param1);
         return §!!v§.encode(_loc2_);
      }
      
      public static function §+"§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §;B§(param1);
         var _loc4_:§9o§;
         return (_loc4_ = new §9o§(param2)).encode(_loc3_);
      }
      
      public static function §;B§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(_loc3_ || _loc2_)
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function §,7§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = "data:image/png;base64,";
         if(_loc5_ || _loc3_)
         {
            §§push(param1);
            if(_loc5_ || _loc3_)
            {
               §§push(_loc3_);
               if(_loc5_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(!_loc6_)
                     {
                        addr68:
                        §§push(param1);
                        if(_loc5_)
                        {
                           §§push(_loc3_);
                        }
                        param1 = §§pop();
                     }
                     §§goto(addr69);
                  }
                  addr69:
                  var _loc4_:ByteArray = Base64.§>!s§(param1);
                  if(_loc5_)
                  {
                     § J§(_loc4_,param2);
                  }
                  return;
               }
               §§push(§§pop().substr(§§pop().length));
            }
         }
         §§goto(addr68);
      }
      
      public static function § J§(param1:ByteArray, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§pop().§§slot[3] = null;
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§newactivation());
               if(!(_loc5_ && _loc3_))
               {
                  §§pop().§§slot[1] = param1;
                  if(!(_loc5_ && param2))
                  {
                     §§push(§§newactivation());
                     if(!(_loc5_ && param1))
                     {
                        §§pop().§§slot[2] = param2;
                        if(!(_loc5_ && param1))
                        {
                           §§push(§§newactivation());
                           if(_loc4_ || param1)
                           {
                              §§pop().§§slot[3] = new Loader();
                              if(_loc5_ && param2)
                              {
                              }
                              §§goto(addr127);
                           }
                           addr123:
                           §§pop().§§slot[3].loadBytes(bytes);
                           §§goto(addr127);
                        }
                        §§push(§§newactivation());
                        if(_loc4_)
                        {
                           addr109:
                           §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
                           {
                              loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
                              callback(loader.content as Bitmap);
                           });
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§newactivation());
                           }
                           §§goto(addr127);
                        }
                     }
                  }
                  §§goto(addr127);
               }
               §§goto(addr123);
            }
            addr127:
            return;
         }
         §§goto(addr109);
      }
   }
}
