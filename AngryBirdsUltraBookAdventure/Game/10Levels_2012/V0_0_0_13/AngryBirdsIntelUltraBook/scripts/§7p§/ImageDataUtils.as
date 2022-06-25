package §7p§
{
   import §6b§.Base64;
   import §?![§.JPGEncoder;
   import §?![§.PNGEncoder;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class ImageDataUtils
   {
       
      
      public function ImageDataUtils()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §#i§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §4!;§(param1);
         return PNGEncoder.encode(_loc2_);
      }
      
      public static function §?!;§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §4!;§(param1);
         var _loc4_:JPGEncoder = new JPGEncoder(param2);
         return _loc4_.encode(_loc3_);
      }
      
      public static function §4!;§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(!(_loc4_ && param1))
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function §[!'§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = "data:image/png;base64,";
         if(!(_loc5_ && param1))
         {
            §§push(param1);
            if(_loc6_)
            {
               §§push(_loc3_);
               if(_loc6_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc6_ || ImageDataUtils)
                     {
                        §§push(param1);
                        if(!_loc5_)
                        {
                           addr67:
                           §§push(§§pop().substr(_loc3_.length));
                        }
                        param1 = §§pop();
                     }
                  }
                  §§goto(addr71);
               }
            }
            §§goto(addr67);
         }
         addr71:
         var _loc4_:ByteArray = Base64.§8C§(param1);
         if(!_loc5_)
         {
            §,U§(_loc4_,param2);
         }
      }
      
      public static function §,U§(param1:ByteArray, param2:Function) : void
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
                     addr124:
                     while(true)
                     {
                        §§pop().§§slot[2] = param2;
                        addr126:
                        while(_loc4_ || param2)
                        {
                           if(_loc4_)
                           {
                              §§push(§§newactivation());
                              continue loop2;
                           }
                           continue loop1;
                        }
                        continue loop3;
                        addr73:
                        if(!(_loc5_ && param1))
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
   }
}
