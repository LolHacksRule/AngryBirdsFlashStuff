package §<!1§
{
   import §6U§.§-!U§;
   import §6U§.§="4§;
   import §6]§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §-#§
   {
       
      
      public function §-#§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §1B§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §3O§(param1);
         return §="4§.encode(_loc2_);
      }
      
      public static function §5o§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §3O§(param1);
         var _loc4_:§-!U§;
         return (_loc4_ = new §-!U§(param2)).encode(_loc3_);
      }
      
      public static function §3O§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(!_loc4_)
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function §;"!§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = "data:image/png;base64,";
         if(!(_loc5_ && param2))
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(_loc3_);
               if(_loc6_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc6_ || param2)
                     {
                        addr52:
                        §§push(param1);
                        if(_loc6_)
                        {
                           addr56:
                           §§push(§§pop().substr(_loc3_.length));
                        }
                        param1 = §§pop();
                     }
                  }
                  var _loc4_:ByteArray = Base64.§,!O§(param1);
                  if(!_loc5_)
                  {
                     §6!Y§(_loc4_,param2);
                  }
                  return;
               }
            }
            §§goto(addr56);
         }
         §§goto(addr52);
      }
      
      public static function §6!Y§(param1:ByteArray, param2:Function) : void
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
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        while(!_loc5_)
                        {
                           if(_loc4_)
                           {
                              §§push(§§newactivation());
                              while(_loc4_)
                              {
                                 continue loop0;
                                 loop8:
                                 while(_loc4_ || §-#§)
                                 {
                                    §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
                                    {
                                       loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
                                       callback(loader.content as Bitmap);
                                    });
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc5_)
                                       {
                                          continue;
                                       }
                                       continue loop8;
                                    }
                                    continue loop2;
                                 }
                              }
                              continue loop4;
                           }
                           continue loop1;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
      }
   }
}
