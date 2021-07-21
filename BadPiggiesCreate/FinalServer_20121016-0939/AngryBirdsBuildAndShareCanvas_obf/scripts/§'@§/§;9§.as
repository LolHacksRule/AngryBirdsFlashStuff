package §'@§
{
   import §3!t§.§4v§;
   import §3!t§.include;
   import §=!M§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §;9§
   {
       
      
      public function §;9§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §-!J§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §1!u§(param1);
         return include.encode(_loc2_);
      }
      
      public static function §4u§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §1!u§(param1);
         var _loc4_:§4v§;
         return (_loc4_ = new §4v§(param2)).encode(_loc3_);
      }
      
      public static function §1!u§(param1:DisplayObject) : BitmapData
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
      
      public static function §+-§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = "data:image/png;base64,";
         if(!_loc5_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(_loc3_);
               if(_loc6_ || §;9§)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        §§push(param1);
                        if(_loc6_)
                        {
                           addr56:
                           §§push(§§pop().substr(_loc3_.length));
                        }
                        param1 = §§pop();
                     }
                  }
                  §§goto(addr60);
               }
            }
            §§goto(addr56);
         }
         addr60:
         var _loc4_:ByteArray = Base64.§[!P§(param1);
         if(!(_loc5_ && _loc3_))
         {
            §4W§(_loc4_,param2);
         }
      }
      
      public static function §4W§(param1:ByteArray, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
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
                  addr128:
                  addr52:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop2;
                  }
                  if(!_loc4_)
                  {
                     break loop1;
                  }
                  continue loop1;
               }
            }
            return;
            if(_loc4_ && §;9§)
            {
               continue;
            }
            §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
            {
               loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
               callback(loader.content as Bitmap);
            });
            §§goto(addr87);
         }
      }
   }
}
