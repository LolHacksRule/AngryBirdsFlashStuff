package §<-§
{
   import §1!B§.Base64;
   import §9-§.§,!q§;
   import §9-§.§4y§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §?K§
   {
       
      
      public function §?K§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §9S§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §%!7§(param1);
         return §4y§.encode(_loc2_);
      }
      
      public static function §,!r§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §%!7§(param1);
         var _loc4_:§,!q§;
         return (_loc4_ = new §,!q§(param2)).encode(_loc3_);
      }
      
      public static function §%!7§(param1:DisplayObject) : BitmapData
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
      
      public static function §'3§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = "data:image/png;base64,";
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc6_ || param2)
            {
               §§push(_loc3_);
               if(!(_loc5_ && param2))
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(!(_loc5_ && param2))
                     {
                        addr57:
                        §§push(param1);
                        if(!(_loc5_ && param1))
                        {
                           addr79:
                           param1 = §§pop().substr(_loc3_.length);
                        }
                        §§goto(addr79);
                     }
                  }
                  var _loc4_:ByteArray = Base64.§?!8§(param1);
                  if(_loc6_ || §?K§)
                  {
                     §&B§(_loc4_,param2);
                  }
                  return;
               }
            }
            §§goto(addr79);
         }
         §§goto(addr57);
      }
      
      public static function §&B§(param1:ByteArray, param2:Function) : void
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
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        addr120:
                        while(_loc4_ || param2)
                        {
                           §§push(§§newactivation());
                           continue loop4;
                        }
                        continue loop1;
                     }
                  }
                  if(!(_loc5_ && §?K§))
                  {
                     continue loop0;
                  }
               }
            }
         }
      }
   }
}
