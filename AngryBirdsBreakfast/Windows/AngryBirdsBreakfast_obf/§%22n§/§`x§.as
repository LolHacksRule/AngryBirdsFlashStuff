package §"n§
{
   import §[O§.§0`§;
   import §[O§.§3!$§;
   import each.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §`x§
   {
       
      
      public function §`x§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §9!w§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §;a§(param1);
         return §3!$§.encode(_loc2_);
      }
      
      public static function §,!q§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §;a§(param1);
         var _loc4_:§0`§;
         return (_loc4_ = new §0`§(param2)).encode(_loc3_);
      }
      
      public static function §;a§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(!_loc3_)
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function §'!2§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = "data:image/png;base64,";
         if(!(_loc5_ && _loc3_))
         {
            §§push(param1);
            if(_loc6_ || param1)
            {
               §§push(_loc3_);
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc6_)
                     {
                        §§push(param1);
                        if(!_loc5_)
                        {
                           addr61:
                           §§push(§§pop().substr(_loc3_.length));
                        }
                        param1 = §§pop();
                        var _loc4_:ByteArray = Base64.§!,§(param1);
                     }
                  }
                  §§goto(addr65);
               }
            }
            §§goto(addr61);
         }
         addr65:
         if(!_loc5_)
         {
            §`!+§(_loc4_,param2);
         }
      }
      
      public static function §`!+§(param1:ByteArray, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
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
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        loop5:
                        while(!_loc5_)
                        {
                           if(!_loc4_)
                           {
                              continue loop1;
                           }
                           §§push(§§newactivation());
                           while(true)
                           {
                              §§pop().§§slot[3] = new Loader();
                              addr96:
                              while(_loc4_)
                              {
                                 §§push(§§newactivation());
                                 continue loop2;
                              }
                              continue loop5;
                           }
                        }
                        continue loop3;
                        addr36:
                        if(!(_loc4_ || param1))
                        {
                           continue;
                        }
                        addr43:
                        §§pop().§§slot[3].loadBytes(bytes);
                        if(_loc5_ && param2)
                        {
                           addr89:
                           while(true)
                           {
                              §§push(§§newactivation());
                              if(_loc5_ && param1)
                              {
                                 continue loop2;
                              }
                              if(_loc4_)
                              {
                                 §§goto(addr36);
                              }
                              else
                              {
                                 §§goto(addr92);
                              }
                           }
                           continue;
                           addr89:
                        }
                        if(_loc4_)
                        {
                           return;
                        }
                        §§goto(addr96);
                     }
                  }
               }
            }
            if(!(_loc4_ || param1))
            {
               continue;
            }
            §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
            {
               loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
               callback(loader.content as Bitmap);
            });
            §§goto(addr89);
         }
      }
   }
}
