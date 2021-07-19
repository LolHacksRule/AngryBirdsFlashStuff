package §=! §
{
   import §-!R§.§&!%§;
   import §-!R§.§2!%§;
   import §@R§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §1!O§
   {
       
      
      public function §1!O§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §;f§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §[!f§(param1);
         return §2!%§.encode(_loc2_);
      }
      
      public static function §#!^§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §[!f§(param1);
         var _loc4_:§&!%§;
         return (_loc4_ = new §&!%§(param2)).encode(_loc3_);
      }
      
      public static function §[!f§(param1:DisplayObject) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         if(_loc3_ || §1!O§)
         {
            _loc2_.draw(param1);
         }
         return _loc2_;
      }
      
      public static function §=<§(param1:String, param2:Function) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = "data:image/png;base64,";
         if(!_loc5_)
         {
            §§push(param1);
            if(!(_loc5_ && param2))
            {
               §§push(_loc3_);
               if(_loc6_ || param2)
               {
                  if(§§pop().indexOf(§§pop()) == 0)
                  {
                     if(!_loc5_)
                     {
                        addr64:
                        §§push(param1);
                        if(!(_loc5_ && §1!O§))
                        {
                           §§push(_loc3_);
                        }
                        param1 = §§pop();
                        var _loc4_:ByteArray = Base64.§;t§(param1);
                     }
                     §§goto(addr65);
                  }
                  addr65:
                  if(!_loc5_)
                  {
                     §#!9§(_loc4_,param2);
                  }
                  return;
               }
               §§push(§§pop().substr(§§pop().length));
            }
         }
         §§goto(addr64);
      }
      
      public static function §#!9§(param1:ByteArray, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            addr117:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
   }
}
