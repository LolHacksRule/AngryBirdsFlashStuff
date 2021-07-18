package §;$%§
{
   import flash.geom.Point;
   
   public class §"c§
   {
      
      private static var §9$2§:uint;
      
      private static var §,#y§:uint;
      
      private static var counter:uint;
      
      private static var §]!@§:Vector.<§"c§>;
      
      private static var §6#6§:§"c§;
       
      
      public var §-!i§:Number;
      
      public var §<#L§:Point;
      
      public function §"c§()
      {
         super();
      }
      
      public static function init(param1:uint, param2:uint) : void
      {
         var _loc4_:§"c§ = null;
         §9$2§ = param1;
         §,#y§ = param2;
         counter = param1;
         §]!@§ = new Vector.<§"c§>(§9$2§);
         var _loc3_:uint = param1;
         while(--_loc3_ > -1)
         {
            (_loc4_ = new §"c§()).§<#L§ = new Point();
            §]!@§[_loc3_] = _loc4_;
         }
      }
      
      public static function getObject() : §"c§
      {
         var _loc2_:§"c§ = null;
         if(counter > 0)
         {
            return §6#6§ = §]!@§[--counter];
         }
         var _loc1_:uint = §,#y§;
         while(--_loc1_ > -1)
         {
            _loc2_ = new §"c§();
            _loc2_.§<#L§ = new Point();
            §]!@§.unshift(_loc2_);
         }
         counter = §,#y§;
         return getObject();
      }
      
      public static function §8!^§(param1:§"c§) : void
      {
         var _loc2_:* = counter++;
         §]!@§[_loc2_] = param1;
      }
      
      public static function dispose() : void
      {
         var _loc1_:int = 0;
         null;
         if(§]!@§)
         {
            _loc1_ = 0;
            while(_loc1_ < §]!@§.length)
            {
               §]!@§[_loc1_];
               null;
               _loc1_++;
            }
         }
         §]!@§ = null;
         §6#6§ = null;
      }
   }
}
