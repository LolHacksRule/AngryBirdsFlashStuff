package §?$§
{
   import §'N§.Log;
   import §8!?§.TextureManager;
   import flash.utils.Dictionary;
   
   public class CutSceneManager
   {
      
      private static var §'4§:Array = [];
      
      private static var §#i§:Dictionary = new Dictionary();
       
      
      public function CutSceneManager()
      {
         super();
      }
      
      public static function §+[§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:CutScene = null;
         for(_loc2_ in param1)
         {
            if(!§#i§[_loc2_])
            {
               _loc3_ = new CutScene(param1[_loc2_],_loc2_);
               Log.log("Initializing cutScene: " + _loc2_);
               §#i§[_loc2_] = _loc3_;
               if(§'4§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§%p§ = CutScene.§@s§;
               }
            }
         }
      }
      
      public static function §5h§(param1:String, param2:TextureManager) : CutScene
      {
         var _loc3_:CutScene = §#i§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §#L§(param1:String) : CutScene
      {
         var _loc2_:CutScene = §#i§[param1];
         if(_loc2_ && §'4§.indexOf(param1))
         {
            _loc2_.§%p§ = CutScene.§@s§;
         }
         return _loc2_;
      }
      
      public static function §2!C§(param1:String) : void
      {
         if(§'4§.indexOf(param1) < 0)
         {
            §'4§.push(param1);
         }
      }
   }
}
