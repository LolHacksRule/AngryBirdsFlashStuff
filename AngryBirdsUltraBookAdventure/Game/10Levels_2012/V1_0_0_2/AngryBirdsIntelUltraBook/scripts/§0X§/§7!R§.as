package §0X§
{
   import §7!J§.§!!k§;
   import §7!J§.§^[§;
   import §^_§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §7!R§
   {
       
      
      public function §7!R§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §41§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §%m§(param1);
         return §^[§.encode(_loc2_);
      }
      
      public static function § O§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §%m§(param1);
         var _loc4_:§!!k§;
         return (_loc4_ = new §!!k§(param2)).encode(_loc3_);
      }
      
      public static function §%m§(param1:DisplayObject) : BitmapData
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
      
      public static function §1X§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = "data:image/png;base64,";
         if(_loc5_ || param2)
         {
            §§push(param1);
            if(!(_loc6_ && §7!R§))
            {
               §§push(_loc3_);
               if(_loc5_ || _loc3_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(!(_loc6_ && param2))
                     {
                        addr78:
                        §§push(param1);
                        if(_loc5_)
                        {
                           §§push(_loc3_);
                        }
                        param1 = §§pop();
                     }
                     §§goto(addr79);
                  }
                  addr79:
                  var _loc4_:ByteArray = Base64.§@!$§(param1);
                  if(_loc5_)
                  {
                     §6O§(_loc4_,param2);
                  }
                  return;
               }
               §§push(§§pop().substr(§§pop().length));
            }
         }
         §§goto(addr78);
      }
      
      public static function §6O§(param1:ByteArray, param2:Function) : void
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
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  addr128:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        addr123:
                        while(true)
                        {
                           §§push(§§newactivation());
                           addr86:
                           while(_loc5_)
                           {
                              continue loop0;
                           }
                           continue loop4;
                        }
                     }
                  }
                  addr35:
                  if(_loc5_ || param1)
                  {
                     addr42:
                     §§pop().§§slot[3].loadBytes(bytes);
                     if(!(_loc5_ || §7!R§))
                     {
                        loop9:
                        while(true)
                        {
                           if(_loc5_)
                           {
                              if(!(_loc5_ || §7!R§))
                              {
                                 break;
                              }
                              addr83:
                              §§push(§§newactivation());
                              if(!(_loc4_ && param1))
                              {
                                 §§goto(addr35);
                              }
                              else
                              {
                                 while(!_loc4_)
                                 {
                                    §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
                                    {
                                       loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
                                       callback(loader.content as Bitmap);
                                    });
                                    continue loop9;
                                    §§goto(addr83);
                                 }
                                 §§goto(addr86);
                                 addr66:
                              }
                           }
                           else
                           {
                              while(_loc5_ || param1)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr66);
                                 §§push(§§newactivation());
                              }
                              addr109:
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr128);
                     }
                     return;
                  }
               }
            }
         }
      }
   }
}
