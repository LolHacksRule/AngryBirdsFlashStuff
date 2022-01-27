package §%r§
{
   import §,!7§.TextureManager;
   import §<u§.Log;
   import flash.utils.Dictionary;
   
   public class CutSceneManager
   {
      
      private static var §5!V§:Array = [];
      
      private static var §;g§:Dictionary = new Dictionary();
       
      
      public function CutSceneManager()
      {
         super();
      }
      
      public static function §!s§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:CutScene = null;
         for(_loc2_ in param1)
         {
            if(!§;g§[_loc2_])
            {
               _loc3_ = new CutScene(param1[_loc2_],_loc2_);
               Log.log("Initializing cutScene: " + _loc2_);
               §;g§[_loc2_] = _loc3_;
               if(§5!V§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§]p§ = CutScene.§[V§;
               }
            }
         }
      }
      
      public static function §?!&§(param1:String, param2:TextureManager) : CutScene
      {
         var _loc3_:CutScene = §;g§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §+B§(param1:String) : CutScene
      {
         var _loc2_:CutScene = §;g§[param1];
         if(_loc2_ && §5!V§.indexOf(param1))
         {
            _loc2_.§]p§ = CutScene.§[V§;
         }
         return _loc2_;
      }
      
      public static function §]O§(param1:String) : void
      {
         if(§5!V§.indexOf(param1) < 0)
         {
            §5!V§.push(param1);
         }
      }
   }
}
