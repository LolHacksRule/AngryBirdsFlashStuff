package §<a§
{
   import §2h§.§1!^§;
   import §2h§.§2u§;
   import §6o§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §+!l§
   {
       
      
      public function §+!l§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §=d§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §6l§(param1);
         return §2u§.encode(_loc2_);
      }
      
      public static function §@"7§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §6l§(param1);
         var _loc4_:§1!^§;
         return (_loc4_ = new §1!^§(param2)).encode(_loc3_);
      }
      
      public static function §6l§(param1:DisplayObject) : BitmapData
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
      
      public static function §16§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = "data:image/png;base64,";
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(_loc3_);
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        addr62:
                        §§push(param1);
                        if(!(_loc5_ && §+!l§))
                        {
                           addr74:
                           param1 = §§pop().substr(_loc3_.length);
                        }
                        §§goto(addr74);
                     }
                  }
                  var _loc4_:ByteArray = Base64.§%V§(param1);
                  if(_loc6_)
                  {
                     §7b§(_loc4_,param2);
                  }
                  return;
               }
            }
            §§goto(addr74);
         }
         §§goto(addr62);
      }
      
      public static function §7b§(param1:ByteArray, param2:Function) : void
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
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        loop5:
                        while(!(_loc4_ && param2))
                        {
                           §§push(§§newactivation());
                           loop6:
                           while(!_loc4_)
                           {
                              §§pop().§§slot[3] = new Loader();
                              do
                              {
                                 §§push(§§newactivation());
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
                                       {
                                          loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
                                          callback(loader.content as Bitmap);
                                       });
                                       continue;
                                    }
                                    continue loop6;
                                 }
                                 continue loop2;
                              }
                              while(_loc4_);
                              
                              if(_loc5_)
                              {
                                 if(_loc5_)
                                 {
                                    break loop3;
                                 }
                                 continue loop3;
                              }
                              continue loop5;
                           }
                           continue loop4;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
      }
   }
}
