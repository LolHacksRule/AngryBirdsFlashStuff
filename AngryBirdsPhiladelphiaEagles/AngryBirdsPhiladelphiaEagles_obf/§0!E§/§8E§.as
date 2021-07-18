package §0!E§
{
   import §7L§.§"!I§;
   import §7L§.§%!,§;
   import §`K§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §8E§
   {
       
      
      public function §8E§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §7U§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §^a§(param1);
         return §"!I§.encode(_loc2_);
      }
      
      public static function §3x§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §^a§(param1);
         var _loc4_:§%!,§;
         return (_loc4_ = new §%!,§(param2)).encode(_loc3_);
      }
      
      public static function §^a§(param1:DisplayObject) : BitmapData
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
      
      public static function §9! §(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = "data:image/png;base64,";
         if(!(_loc6_ && §8E§))
         {
            §§push(param1);
            if(_loc5_ || param2)
            {
               §§push(_loc3_);
               if(_loc5_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc5_)
                     {
                        §§push(param1);
                        if(!_loc6_)
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
         var _loc4_:ByteArray = Base64.§4U§(param1);
         if(_loc5_ || §8E§)
         {
            §"f§(_loc4_,param2);
         }
      }
      
      public static function §"f§(param1:ByteArray, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  addr128:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(!_loc4_)
                     {
                        §§pop().§§slot[2] = param2;
                        loop5:
                        while(true)
                        {
                           §§push(§§newactivation());
                           while(_loc5_)
                           {
                              §§pop().§§slot[3] = new Loader();
                              continue loop5;
                              if(_loc5_ || §8E§)
                              {
                                 continue loop0;
                              }
                           }
                           continue loop4;
                        }
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
   }
}
