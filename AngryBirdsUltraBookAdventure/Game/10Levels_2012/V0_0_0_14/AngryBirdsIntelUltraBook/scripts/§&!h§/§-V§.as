package §&!h§
{
   import §6z§.Base64;
   import §;e§.§4!t§;
   import §;e§.§if§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §-V§
   {
       
      
      public function §-V§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §-!#§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §[![§(param1);
         return §4!t§.encode(_loc2_);
      }
      
      public static function §%0§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §[![§(param1);
         var _loc4_:§if§;
         return (_loc4_ = new §if§(param2)).encode(_loc3_);
      }
      
      public static function §[![§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(!(_loc4_ && §-V§))
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function §[O§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = "data:image/png;base64,";
         if(_loc5_ || param1)
         {
            §§push(param1);
            if(!(_loc6_ && §-V§))
            {
               §§push(_loc3_);
               if(!_loc6_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(!_loc6_)
                     {
                        addr73:
                        §§push(param1);
                        if(!(_loc6_ && param1))
                        {
                           §§push(_loc3_);
                        }
                        param1 = §§pop();
                     }
                     §§goto(addr74);
                  }
                  addr74:
                  var _loc4_:ByteArray = Base64.§"E§(param1);
                  if(!(_loc6_ && §-V§))
                  {
                     §&V§(_loc4_,param2);
                  }
                  return;
               }
               §§push(§§pop().substr(§§pop().length));
            }
         }
         §§goto(addr73);
      }
      
      public static function §&V§(param1:ByteArray, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
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
                  addr136:
                  while(!_loc4_)
                  {
                     §§push(§§newactivation());
                     continue loop0;
                  }
                  continue loop1;
                  addr80:
                  if(!(_loc5_ || param1))
                  {
                     continue;
                  }
                  §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
                  {
                     loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
                     callback(loader.content as Bitmap);
                  });
                  while(_loc5_ || _loc3_)
                  {
                     addr100:
                     §§push(§§newactivation());
                     if(_loc5_ || param1)
                     {
                        §§pop().§§slot[3].loadBytes(bytes);
                        if(_loc4_ && param2)
                        {
                           continue;
                        }
                        §§goto(addr46);
                        continue;
                     }
                     loop8:
                     while(true)
                     {
                        if(_loc4_ && §-V§)
                        {
                           loop6:
                           while(_loc5_)
                           {
                              §§pop().§§slot[3] = new Loader();
                              do
                              {
                                 §§push(§§newactivation());
                                 continue loop8;
                              }
                              while(_loc4_ && param1);
                              
                              addr53:
                              if(_loc4_ && §-V§)
                              {
                                 while(true)
                                 {
                                    continue loop6;
                                    continue loop8;
                                    §§goto(addr53);
                                 }
                                 addr131:
                              }
                              return;
                           }
                           continue loop0;
                        }
                        §§goto(addr80);
                     }
                     continue loop2;
                  }
                  §§goto(addr136);
               }
            }
         }
      }
   }
}
