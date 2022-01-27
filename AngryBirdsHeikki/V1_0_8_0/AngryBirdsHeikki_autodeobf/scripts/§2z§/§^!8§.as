package §2z§
{
   public class §^!8§
   {
      
      public static const §<E§:String = "damage";
      
      public static const §8K§:String = "removed";
      
      public static const §;>§:String = "extraBird";
      
      private static var §`g§:Array;
      
      private static var §&!e§:Array;
      
      private static var §[T§:Array;
       
      
      public function §^!8§()
      {
         super();
         init();
      }
      
      public static function init() : void
      {
         §`g§ = [];
         §&!e§ = [];
         §[T§ = [];
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         if(param1 == 0)
         {
            return;
         }
         switch(param2)
         {
            case §<E§:
               §`g§.push(param1);
               break;
            case §8K§:
               §&!e§.push(param1);
               break;
            case §;>§:
               §[T§.push(param1);
         }
      }
      
      public static function §;!4§() : String
      {
         var _loc1_:* = "";
         _loc1_ = §`g§.toString();
         if(§&!e§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §&!e§.toString();
         }
         if(§[T§.length > 0)
         {
            _loc1_ += ",0,";
            _loc1_ += §[T§.toString();
         }
         return _loc1_;
      }
   }
}
