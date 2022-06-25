package §4!H§
{
   import §+!"§.Base64;
   import §>Z§.§!-§;
   import §>Z§.§3!?§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §-2§
   {
       
      
      public function §-2§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §=]§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §[!C§(param1);
         return §!-§.encode(_loc2_);
      }
      
      public static function §?!!§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §[!C§(param1);
         var _loc4_:§3!?§;
         return (_loc4_ = new §3!?§(param2)).encode(_loc3_);
      }
      
      public static function §[!C§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(!(_loc3_ && §-2§))
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function §4X§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = "data:image/png;base64,";
         if(_loc6_)
         {
            §§push(param1);
            if(!(_loc5_ && param2))
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc6_)
                     {
                        addr57:
                        §§push(param1);
                        if(_loc6_ || §-2§)
                        {
                           addr69:
                           param1 = §§pop().substr(_loc3_.length);
                        }
                        §§goto(addr69);
                     }
                  }
                  var _loc4_:ByteArray = Base64.§71§(param1);
                  if(!(_loc5_ && _loc3_))
                  {
                     §^!8§(_loc4_,param2);
                  }
                  return;
               }
            }
            §§goto(addr69);
         }
         §§goto(addr57);
      }
      
      public static function §^!8§(param1:ByteArray, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[3] = null;
            if(!(_loc5_ && §-2§))
            {
               §§push(§§newactivation());
               if(_loc4_ || §-2§)
               {
                  §§pop().§§slot[1] = param1;
                  if(!_loc5_)
                  {
                     §§push(§§newactivation());
                     if(!_loc5_)
                     {
                        addr58:
                        §§pop().§§slot[2] = param2;
                        if(!(_loc5_ && param2))
                        {
                           addr67:
                           §§push(§§newactivation());
                           if(!(_loc5_ && param2))
                           {
                              §§pop().§§slot[3] = new Loader();
                              if(_loc4_ || param1)
                              {
                                 §§push(§§newactivation());
                                 if(_loc4_)
                                 {
                                    addr99:
                                    §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
                                    {
                                       loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
                                       callback(loader.content as Bitmap);
                                    });
                                    §§goto(addr112);
                                 }
                                 §§pop().§§slot[3].loadBytes(bytes);
                                 §§goto(addr112);
                              }
                              addr112:
                              if(!_loc5_)
                              {
                                 addr107:
                                 §§push(§§newactivation());
                              }
                              return;
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr67);
               }
               §§goto(addr58);
            }
         }
         §§goto(addr99);
      }
   }
}
