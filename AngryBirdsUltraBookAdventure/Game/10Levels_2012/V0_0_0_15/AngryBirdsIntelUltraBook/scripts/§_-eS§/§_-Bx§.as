package §_-eS§
{
   import §_-04w§.§_-Nu§;
   import §_-04w§.§_-xS§;
   import §_-0BH§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §_-Bx§
   {
       
      
      public function §_-Bx§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §_-wD§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §_-n5§(param1);
         return §_-Nu§.encode(_loc2_);
      }
      
      public static function §_-RH§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §_-n5§(param1);
         var _loc4_:§_-xS§;
         return (_loc4_ = new §_-xS§(param2)).encode(_loc3_);
      }
      
      public static function §_-n5§(param1:DisplayObject) : BitmapData
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
      
      public static function §_-60§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = "data:image/png;base64,";
         if(_loc6_ || _loc3_)
         {
            §§push(param1);
            if(!(_loc5_ && _loc3_))
            {
               §§push(_loc3_);
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(!(_loc5_ && param1))
                     {
                        addr72:
                        §§push(param1);
                        if(_loc6_ || _loc3_)
                        {
                           addr84:
                           param1 = §§pop().substr(_loc3_.length);
                        }
                        §§goto(addr84);
                     }
                  }
                  var _loc4_:ByteArray = Base64.§_-72§(param1);
                  if(!_loc5_)
                  {
                     §_-R7§(_loc4_,param2);
                  }
                  return;
               }
            }
            §§goto(addr84);
         }
         §§goto(addr72);
      }
      
      public static function §_-R7§(param1:ByteArray, param2:Function) : void
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
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           loop6:
                           for(; !_loc4_; while(_loc5_ || param2)
                           {
                              continue loop0;
                              §§goto(addr97);
                           })
                           {
                              §§pop().§§slot[3] = new Loader();
                              loop7:
                              while(!(_loc4_ && param1))
                              {
                                 §§push(§§newactivation());
                                 continue loop6;
                                 while(true)
                                 {
                                    if(!(_loc4_ && §_-Bx§))
                                    {
                                       if(_loc4_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc5_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && param1))
                                          {
                                             continue loop4;
                                          }
                                          continue loop6;
                                          addr97:
                                       }
                                       continue loop1;
                                    }
                                    continue loop7;
                                 }
                                 continue loop3;
                              }
                              continue loop5;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            if(!(_loc5_ || §_-Bx§))
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
