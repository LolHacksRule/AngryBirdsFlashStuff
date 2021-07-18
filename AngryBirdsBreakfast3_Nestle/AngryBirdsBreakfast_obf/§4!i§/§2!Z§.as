package §4!i§
{
   import §24§.Base64;
   import §?@§.§5"'§;
   import §?@§.§6!F§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §2!Z§
   {
       
      
      public function §2!Z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §=!$§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §"Y§(param1);
         return §6!F§.encode(_loc2_);
      }
      
      public static function §7-§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §"Y§(param1);
         var _loc4_:§5"'§;
         return (_loc4_ = new §5"'§(param2)).encode(_loc3_);
      }
      
      public static function §"Y§(param1:DisplayObject) : BitmapData
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
      
      public static function §-"+§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = "data:image/png;base64,";
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(_loc3_);
               if(!(_loc6_ && §2!Z§))
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc5_)
                     {
                        §§push(param1);
                        if(_loc5_)
                        {
                           addr50:
                           §§push(§§pop().substr(_loc3_.length));
                        }
                        param1 = §§pop();
                        var _loc4_:ByteArray = Base64.§`!q§(param1);
                     }
                  }
                  §§goto(addr54);
               }
            }
            §§goto(addr50);
         }
         addr54:
         if(_loc5_)
         {
            §;P§(_loc4_,param2);
         }
      }
      
      public static function §;P§(param1:ByteArray, param2:Function) : void
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
                  addr112:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop2;
                  }
               }
            }
            while(!(_loc5_ && _loc3_))
            {
               §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
               {
                  loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
                  callback(loader.content as Bitmap);
               });
               §§goto(addr72);
               §§goto(addr76);
            }
         }
      }
   }
}
