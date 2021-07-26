package §9#G§
{
   import flash.geom.Point;
   
   public class §[$#§
   {
      
      private static var §^$B§:uint;
      
      private static var §6#O§:uint;
      
      private static var counter:uint;
      
      private static var §'!E§:Vector.<§[$#§>;
      
      private static var §!p§:§[$#§;
       
      
      public var §56§:Number;
      
      public var §>#I§:Point;
      
      public function §[$#§()
      {
         super();
      }
      
      public static function init(param1:uint, param2:uint) : void
      {
         var _loc4_:§[$#§ = null;
         §^$B§ = param1;
         §6#O§ = param2;
         counter = param1;
         §'!E§ = new Vector.<§[$#§>(§^$B§);
         var _loc3_:uint = param1;
         while(--_loc3_ > -1)
         {
            (_loc4_ = new §[$#§()).§>#I§ = new Point();
            §'!E§[_loc3_] = _loc4_;
         }
      }
      
      public static function getObject() : §[$#§
      {
         var _loc2_:§[$#§ = null;
         if(counter > 0)
         {
            return §!p§ = §'!E§[--counter];
         }
         var _loc1_:uint = §6#O§;
         while(--_loc1_ > -1)
         {
            _loc2_ = new §[$#§();
            _loc2_.§>#I§ = new Point();
            §'!E§.unshift(_loc2_);
         }
         counter = §6#O§;
         return getObject();
      }
      
      public static function §#!Q§(param1:§[$#§) : void
      {
         var _loc2_:* = counter++;
         §'!E§[_loc2_] = param1;
      }
      
      public static function dispose() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§[$#§ = null;
         if(§'!E§)
         {
            _loc1_ = 0;
            while(_loc1_ < §'!E§.length)
            {
               _loc2_ = §'!E§[_loc1_];
               _loc2_ = null;
               _loc1_++;
            }
         }
         §'!E§ = null;
         §!p§ = null;
      }
   }
}
