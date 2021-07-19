package §1!i§
{
   import §5t§.Base64;
   import §6!A§.§2!6§;
   import §6!A§.§`!4§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §^a§
   {
       
      
      public function §^a§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function § !z§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §&#@§(param1);
         return §`!4§.encode(_loc2_);
      }
      
      public static function §0!O§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §&#@§(param1);
         var _loc4_:§2!6§;
         return (_loc4_ = new §2!6§(param2)).encode(_loc3_);
      }
      
      public static function §&#@§(param1:DisplayObject) : BitmapData
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
      
      public static function §1"f§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = "data:image/png;base64,";
         if(!(_loc6_ && §^a§))
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(_loc3_);
               if(_loc5_)
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
                     }
                  }
                  §§goto(addr54);
               }
            }
            §§goto(addr50);
         }
         addr54:
         var _loc4_:ByteArray = Base64.§""y§(param1);
         if(_loc5_ || _loc3_)
         {
            §]#E§(_loc4_,param2);
         }
      }
      
      public static function §]#E§(param1:ByteArray, param2:Function) : void
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
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           while(_loc4_)
                           {
                              continue loop2;
                              loop8:
                              for(; _loc4_ || §^a§; §§push(§§newactivation()),if(_loc4_ || §^a§)
                              {
                                 if(!_loc5_)
                                 {
                                    §§pop().§§slot[3].loadBytes(bytes);
                                    if(_loc5_)
                                    {
                                       §§goto(addr68);
                                    }
                                    return;
                                 }
                                 continue loop0;
                              })
                              {
                                 §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
                                 {
                                    loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
                                    callback(loader.content as Bitmap);
                                 });
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop8;
                                       }
                                       continue loop3;
                                    }
                                    addr90:
                                    while(_loc4_)
                                    {
                                       §§push(§§newactivation());
                                       continue loop8;
                                    }
                                    continue loop1;
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop4;
                        }
                     }
                  }
               }
            }
         }
      }
   }
}
