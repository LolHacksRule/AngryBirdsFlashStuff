package §7A§
{
   public class §2#0§
   {
       
      
      public function §2#0§()
      {
         super();
      }
      
      public static function §#"M§(param1:Array) : Array
      {
         if(!param1)
         {
            return [];
         }
         return §[!_§(param1,param1.length);
      }
      
      public static function §[!_§(param1:Array, param2:int) : Array
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
