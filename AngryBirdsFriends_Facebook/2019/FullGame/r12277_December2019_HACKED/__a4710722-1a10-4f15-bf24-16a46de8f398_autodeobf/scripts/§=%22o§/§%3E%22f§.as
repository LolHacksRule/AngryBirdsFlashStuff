package §="o§
{
   import flash.geom.Point;
   
   public class §>"f§
   {
      
      private static var §]L§:uint;
      
      private static var §+"2§:uint;
      
      private static var counter:uint;
      
      private static var §-"^§:Vector.<§>"f§>;
      
      private static var §;!O§:§>"f§;
       
      
      public var §6V§:Number;
      
      public var §&$-§:Point;
      
      public function §>"f§()
      {
         super();
      }
      
      public static function init(param1:uint, param2:uint) : void
      {
         var _loc4_:§>"f§ = null;
         §]L§ = param1;
         §+"2§ = param2;
         counter = param1;
         §-"^§ = new Vector.<§>"f§>(§]L§);
         var _loc3_:uint = param1;
         while(--_loc3_ > -1)
         {
            (_loc4_ = new §>"f§()).§&$-§ = new Point();
            §-"^§[_loc3_] = _loc4_;
         }
      }
      
      public static function getObject() : §>"f§
      {
         var _loc2_:§>"f§ = null;
         if(counter > 0)
         {
            return §;!O§ = §-"^§[--counter];
         }
         var _loc1_:uint = §+"2§;
         while(--_loc1_ > -1)
         {
            _loc2_ = new §>"f§();
            _loc2_.§&$-§ = new Point();
            §-"^§.unshift(_loc2_);
         }
         counter = §+"2§;
         return getObject();
      }
      
      public static function §^$'§(param1:§>"f§) : void
      {
         var _loc2_:* = counter++;
         §-"^§[_loc2_] = param1;
      }
      
      public static function dispose() : void
      {
         var _loc1_:int = 0;
         if(§-"^§)
         {
            _loc1_ = 0;
            while(_loc1_ < §-"^§.length)
            {
               §-"^§[_loc1_];
               _loc1_++;
            }
         }
         §-"^§ = null;
         §;!O§ = null;
      }
   }
}
