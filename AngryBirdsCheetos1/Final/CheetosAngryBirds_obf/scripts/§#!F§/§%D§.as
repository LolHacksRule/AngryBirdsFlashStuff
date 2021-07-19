package §#!F§
{
   import § !G§.Base64;
   import §96§.§%V§;
   import §96§.§-D§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §%D§
   {
       
      
      public function §%D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §?![§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §6!?§(param1);
         return §%V§.encode(_loc2_);
      }
      
      public static function §=!K§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §6!?§(param1);
         var _loc4_:§-D§;
         return (_loc4_ = new §-D§(param2)).encode(_loc3_);
      }
      
      public static function §6!?§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(!(_loc3_ && §%D§))
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function §,&§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = "data:image/png;base64,";
         if(!(_loc6_ && §%D§))
         {
            §§push(param1);
            if(_loc5_ || param2)
            {
               §§push(_loc3_);
               if(!(_loc6_ && _loc3_))
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(!_loc6_)
                     {
                        §§push(param1);
                        if(!(_loc6_ && param2))
                        {
                           addr65:
                           §§push(§§pop().substr(_loc3_.length));
                        }
                        param1 = §§pop();
                     }
                  }
                  §§goto(addr69);
               }
            }
            §§goto(addr65);
         }
         addr69:
         var _loc4_:ByteArray = Base64.§[D§(param1);
         if(!(_loc6_ && _loc3_))
         {
            §;k§(_loc4_,param2);
         }
      }
      
      public static function §;k§(param1:ByteArray, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[3] = null;
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
                        addr103:
                        while(true)
                        {
                           §§push(§§newactivation());
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
