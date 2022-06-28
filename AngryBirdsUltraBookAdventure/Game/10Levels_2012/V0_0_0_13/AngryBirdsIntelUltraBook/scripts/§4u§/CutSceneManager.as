package §4u§
{
   import §,!_§.TextureManager;
   import §6b§.Log;
   import flash.utils.Dictionary;
   
   public class CutSceneManager
   {
      
      private static var §,!U§:Array = [];
      
      private static var §!!#§:Dictionary = new Dictionary();
       
      
      public function CutSceneManager()
      {
         super();
      }
      
      public static function §8!7§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:CutScene = null;
         for(_loc2_ in param1)
         {
            if(!§!!#§[_loc2_])
            {
               _loc3_ = new CutScene(param1[_loc2_],_loc2_);
               Log.log("Initializing cutScene: " + _loc2_);
               §!!#§[_loc2_] = _loc3_;
               if(§,!U§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§^!"§ = CutScene.§5!_§;
               }
            }
         }
      }
      
      public static function § _§(param1:String, param2:TextureManager) : CutScene
      {
         var _loc3_:CutScene = §!!#§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §9!Z§(param1:String) : CutScene
      {
         var _loc2_:CutScene = §!!#§[param1];
         if(_loc2_ && §,!U§.indexOf(param1))
         {
            _loc2_.§^!"§ = CutScene.§5!_§;
         }
         return _loc2_;
      }
      
      public static function §9!a§(param1:String) : void
      {
         if(§,!U§.indexOf(param1) < 0)
         {
            §,!U§.push(param1);
         }
      }
   }
}
