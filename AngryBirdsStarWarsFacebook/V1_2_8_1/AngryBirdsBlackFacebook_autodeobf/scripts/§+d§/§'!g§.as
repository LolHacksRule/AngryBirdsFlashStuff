package §+d§
{
   public class §'!g§
   {
       
      
      public function §'!g§()
      {
         super();
      }
      
      public static function §7I§(param1:Array) : Array
      {
         if(!param1)
         {
            return [];
         }
         return §?">§(param1,param1.length);
      }
      
      public static function §?">§(param1:Array, param2:int) : Array
      {
         if(!param1)
         {
            return [];
         }
         var _loc3_:Array = [];
         param1 = param1.concat();
         while(param1.length > 0 && _loc3_.length < param2)
         {
            _loc3_.push(param1.splice(Math.round(Math.random() * (param1.length - 1)),1)[0]);
         }
         return _loc3_;
      }
   }
}
