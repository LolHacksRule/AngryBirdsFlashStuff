package §]+§
{
   import §"x§.Base64;
   import §+!3§.§!#§;
   import §+!3§.§>!c§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §@6§
   {
       
      
      public function §@6§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function § !$§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §4!W§(param1);
         return §!#§.encode(_loc2_);
      }
      
      public static function §&!y§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §4!W§(param1);
         var _loc4_:§>!c§;
         return (_loc4_ = new §>!c§(param2)).encode(_loc3_);
      }
      
      public static function §4!W§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(_loc3_ || param1)
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function §=w§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = "data:image/png;base64,";
         if(!(_loc6_ && param2))
         {
            §§push(param1);
            if(!(_loc6_ && _loc3_))
            {
               §§push(_loc3_);
               if(_loc5_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc5_ || param2)
                     {
                        addr66:
                        §§push(param1);
                        if(_loc5_ || §@6§)
                        {
                           addr75:
                           §§push(§§pop().substr(_loc3_.length));
                        }
                        param1 = §§pop();
                     }
                  }
                  var _loc4_:ByteArray = Base64.§0N§(param1);
                  if(!_loc6_)
                  {
                     §=8§(_loc4_,param2);
                  }
                  return;
               }
            }
            §§goto(addr75);
         }
         §§goto(addr66);
      }
      
      public static function §=8§(param1:ByteArray, param2:Function) : void
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
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        addr121:
                        while(_loc5_ || param2)
                        {
                           §§push(§§newactivation());
                           continue loop4;
                        }
                        continue loop1;
                     }
                  }
                  if(_loc4_ && param2)
                  {
                     continue;
                  }
                  §§pop().§§slot[3] = new Loader();
                  §§goto(addr116);
               }
            }
            if(!(_loc5_ || param1))
            {
               continue;
            }
            §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
            {
               loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
               callback(loader.content as Bitmap);
            });
            §§goto(addr81);
         }
      }
   }
}
