package § !Y§
{
   import §0N§.Base64;
   import §;R§.§@!g§;
   import §;R§.§^!"§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §#@§
   {
       
      
      public function §#@§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §=!9§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §[!z§(param1);
         return §^!"§.encode(_loc2_);
      }
      
      public static function §@"&§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §[!z§(param1);
         var _loc4_:§@!g§;
         return (_loc4_ = new §@!g§(param2)).encode(_loc3_);
      }
      
      public static function §[!z§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(_loc4_ || §#@§)
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function §#p§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = "data:image/png;base64,";
         if(!(_loc6_ && §#@§))
         {
            §§push(param1);
            if(!(_loc6_ && param2))
            {
               §§push(_loc3_);
               if(!_loc6_)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(_loc5_ || §#@§)
                     {
                        §§push(param1);
                        if(_loc5_)
                        {
                           addr60:
                           §§push(§§pop().substr(_loc3_.length));
                        }
                        param1 = §§pop();
                     }
                  }
                  §§goto(addr64);
               }
            }
            §§goto(addr60);
         }
         addr64:
         var _loc4_:ByteArray = Base64.§9!n§(param1);
         if(!(_loc6_ && _loc3_))
         {
            §57§(_loc4_,param2);
         }
      }
      
      public static function §57§(param1:ByteArray, param2:Function) : void
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
                     while(_loc5_)
                     {
                        §§pop().§§slot[2] = param2;
                        while(true)
                        {
                           §§push(§§newactivation());
                           addr93:
                           while(!_loc4_)
                           {
                              continue loop2;
                           }
                           continue loop4;
                           addr41:
                           if(!(_loc4_ && param2))
                           {
                              return;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
   }
}
