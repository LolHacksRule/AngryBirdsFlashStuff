package §+!B§
{
   import §3a§.Base64;
   import §>`§.§'!C§;
   import §>`§.§'&§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §<8§
   {
       
      
      public function §<8§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §^!G§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §`!I§(param1);
         return §'!C§.encode(_loc2_);
      }
      
      public static function §#+§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §`!I§(param1);
         var _loc4_:§'&§;
         return (_loc4_ = new §'&§(param2)).encode(_loc3_);
      }
      
      public static function §`!I§(param1:DisplayObject) : BitmapData
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
      
      public static function §^8§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = "data:image/png;base64,";
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(_loc3_);
               if(_loc6_ || _loc3_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc6_)
                     {
                        addr57:
                        §§push(param1);
                        if(!_loc5_)
                        {
                           addr64:
                           param1 = §§pop().substr(_loc3_.length);
                        }
                        §§goto(addr64);
                     }
                  }
                  var _loc4_:ByteArray = Base64.§5!+§(param1);
                  if(!(_loc5_ && param1))
                  {
                     §%!=§(_loc4_,param2);
                  }
                  return;
               }
            }
            §§goto(addr64);
         }
         §§goto(addr57);
      }
      
      public static function §%!=§(param1:ByteArray, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§pop().§§slot[3] = null;
            if(!_loc4_)
            {
               §§push(§§newactivation());
               if(_loc5_ || param1)
               {
                  §§pop().§§slot[1] = param1;
                  if(!(_loc4_ && §<8§))
                  {
                     addr56:
                     §§push(§§newactivation());
                     if(!_loc4_)
                     {
                        §§pop().§§slot[2] = param2;
                        if(_loc5_)
                        {
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              §§pop().§§slot[3] = new Loader();
                              if(_loc5_ || param1)
                              {
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr95);
                        }
                        §§push(§§newactivation());
                        if(!(_loc4_ && param2))
                        {
                           addr95:
                           §§pop().§§slot[3].contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
                           {
                              loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
                              callback(loader.content as Bitmap);
                           });
                           if(!_loc4_)
                           {
                              addr104:
                              loader.loadBytes(bytes);
                           }
                           §§goto(addr108);
                        }
                     }
                     §§goto(addr104);
                  }
                  addr108:
                  return;
               }
               §§goto(addr95);
            }
            §§goto(addr56);
         }
         §§goto(addr104);
      }
   }
}
