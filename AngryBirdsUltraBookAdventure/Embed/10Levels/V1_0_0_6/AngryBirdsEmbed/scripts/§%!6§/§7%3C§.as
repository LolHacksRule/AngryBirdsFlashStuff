package §%!6§
{
   import §>K§.Base64;
   import §]!+§.§%@§;
   import §]!+§.§28§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §7<§
   {
       
      
      public function §7<§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §9!'§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §#$§(param1);
         return §28§.encode(_loc2_);
      }
      
      public static function §?N§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §#$§(param1);
         var _loc4_:§%@§;
         return (_loc4_ = new §%@§(param2)).encode(_loc3_);
      }
      
      public static function §#$§(param1:DisplayObject) : BitmapData
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
      
      public static function §['§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = "data:image/png;base64,";
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(_loc3_);
               if(!_loc6_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc5_ || param1)
                     {
                        §§push(param1);
                        if(!(_loc6_ && param1))
                        {
                           addr65:
                           §§push(§§pop().substr(_loc3_.length));
                        }
                        param1 = §§pop();
                     }
                  }
                  §§goto(addr69);
               }
            }
            §§goto(addr65);
         }
         addr69:
         var _loc4_:ByteArray = Base64.§#!J§(param1);
         if(_loc5_)
         {
            §[I§(_loc4_,param2);
         }
      }
      
      public static function §[I§(param1:ByteArray, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§pop().§§slot[3] = null;
            if(!(_loc5_ && §7<§))
            {
               §§push(§§newactivation());
               if(!_loc5_)
               {
                  §§pop().§§slot[1] = param1;
                  if(_loc4_)
                  {
                     §§push(§§newactivation());
                     if(_loc4_ || param1)
                     {
                        §§pop().§§slot[2] = param2;
                        if(!(_loc5_ && param1))
                        {
                           addr67:
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              §§goto(addr70);
                           }
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr91);
               }
               addr70:
               §§pop().§§slot[3] = new Loader();
               if(_loc4_ || param1)
               {
                  addr91:
                  §§push(§§newactivation());
                  if(_loc4_ || §7<§)
                  {
                     addr99:
                     §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
                     {
                        loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
                        callback(loader.content as Bitmap);
                     });
                     if(_loc4_ || _loc3_)
                     {
                        addr113:
                        loader.loadBytes(bytes);
                     }
                  }
                  §§goto(addr113);
               }
               return;
            }
            §§goto(addr67);
         }
         §§goto(addr99);
      }
   }
}
