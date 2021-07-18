package §0!!§
{
   import §;8§.Base64;
   import §>e§.§%u§;
   import §>e§.§6T§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §4C§
   {
       
      
      public function §4C§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §84§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = § 1§(param1);
         return §%u§.encode(_loc2_);
      }
      
      public static function §#X§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = § 1§(param1);
         var _loc4_:§6T§;
         return (_loc4_ = new §6T§(param2)).encode(_loc3_);
      }
      
      public static function § 1§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(!(_loc3_ && §4C§))
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function §2!'§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = "data:image/png;base64,";
         if(!(_loc5_ && param2))
         {
            §§push(param1);
            if(_loc6_ || _loc3_)
            {
               §§push(_loc3_);
               if(_loc6_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc6_)
                     {
                        addr52:
                        §§push(param1);
                        if(_loc6_ || param1)
                        {
                           addr71:
                           §§push(§§pop().substr(_loc3_.length));
                        }
                        param1 = §§pop();
                     }
                  }
                  var _loc4_:ByteArray = Base64.§4U§(param1);
                  if(!(_loc5_ && _loc3_))
                  {
                     §9!G§(_loc4_,param2);
                  }
                  return;
               }
            }
            §§goto(addr71);
         }
         §§goto(addr52);
      }
      
      public static function §9!G§(param1:ByteArray, param2:Function) : void
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
                  addr121:
                  while(_loc5_ || _loc3_)
                  {
                     §§push(§§newactivation());
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        addr116:
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop2;
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
   }
}
