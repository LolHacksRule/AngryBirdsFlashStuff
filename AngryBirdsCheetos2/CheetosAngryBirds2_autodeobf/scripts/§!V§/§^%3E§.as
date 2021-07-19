package §!V§
{
   import §8"§.§0!8§;
   import §8"§.§^A§;
   import §>^§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §^>§
   {
       
      
      public function §^>§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §1`§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §8!,§(param1);
         return §0!8§.encode(_loc2_);
      }
      
      public static function §4!&§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §8!,§(param1);
         var _loc4_:§^A§;
         return (_loc4_ = new §^A§(param2)).encode(_loc3_);
      }
      
      public static function §8!,§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(!(_loc3_ && _loc3_))
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function §00§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = "data:image/png;base64,";
         if(!(_loc6_ && param1))
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(_loc3_);
               if(!(_loc6_ && §^>§))
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc5_)
                     {
                        addr51:
                        §§push(param1);
                        if(!_loc6_)
                        {
                           addr55:
                           §§push(§§pop().substr(_loc3_.length));
                        }
                        param1 = §§pop();
                     }
                  }
                  var _loc4_:ByteArray = Base64.§#?§(param1);
                  if(_loc5_ || param2)
                  {
                     §1!L§(_loc4_,param2);
                  }
                  return;
               }
            }
            §§goto(addr55);
         }
         §§goto(addr51);
      }
      
      public static function §1!L§(param1:ByteArray, param2:Function) : void
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
                  addr118:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop0;
                  }
                  addr32:
                  if(!(_loc5_ || param2))
                  {
                     continue;
                  }
                  §§pop().§§slot[3].loadBytes(bytes);
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        return;
                     }
                     loop7:
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           if(!(_loc5_ || param1))
                           {
                              break;
                           }
                           §§push(§§newactivation());
                           loop8:
                           while(true)
                           {
                              §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
                              {
                                 loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
                                 callback(loader.content as Bitmap);
                              });
                              addr66:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       continue;
                                    }
                                    addr69:
                                    while(_loc5_)
                                    {
                                       §§pop().§§slot[3] = new Loader();
                                       continue loop7;
                                    }
                                    continue loop0;
                                 }
                                 continue loop8;
                              }
                              continue loop2;
                           }
                        }
                        else
                        {
                           while(_loc5_ || _loc3_)
                           {
                              §§push(§§newactivation());
                           }
                           §§goto(addr118);
                           addr96:
                        }
                        §§goto(addr69);
                     }
                     continue loop1;
                  }
                  §§goto(addr66);
               }
            }
         }
      }
   }
}
