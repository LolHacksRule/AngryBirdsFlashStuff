package §_-04w§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §_-Nu§
   {
      
      private static var §_-D8§:Array;
      
      private static var §_-Sx§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-Sx§ = false;
         }
      }
      
      public function §_-Nu§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function encode(param1:BitmapData) : ByteArray
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc2_:ByteArray = new ByteArray();
         if(!_loc8_)
         {
            _loc2_.writeUnsignedInt(2303741511);
            if(!(_loc8_ && §_-Nu§))
            {
               _loc2_.writeUnsignedInt(218765834);
            }
         }
         var _loc3_:ByteArray = new ByteArray();
         if(!_loc8_)
         {
            _loc3_.writeInt(param1.width);
         }
         loop0:
         while(true)
         {
            _loc3_.writeInt(param1.height);
            loop1:
            while(true)
            {
               _loc3_.writeUnsignedInt(134610944);
               loop2:
               while(true)
               {
                  addr65:
                  while(true)
                  {
                     _loc3_.writeByte(0);
                     addr69:
                     while(!_loc8_)
                     {
                        continue loop1;
                     }
                     continue loop2;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private static function §_-0Cz§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         if(!_loc12_)
         {
            if(!§_-Sx§)
            {
               loop0:
               while(true)
               {
                  §_-Sx§ = true;
                  addr245:
                  while(true)
                  {
                     §_-D8§ = [];
                     continue loop0;
                  }
               }
            }
            §§goto(addr256);
         }
         §§goto(addr239);
      }
   }
}
