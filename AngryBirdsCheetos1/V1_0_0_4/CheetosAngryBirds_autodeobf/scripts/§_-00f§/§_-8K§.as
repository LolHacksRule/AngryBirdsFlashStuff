package §_-00f§
{
   import §_-4I§.§_-v8§;
   import §_-r6§.§_-Oy§;
   import flash.utils.Dictionary;
   
   public class §_-8K§
   {
      
      private static var §_-i8§:Array = [];
      
      private static var §_-NF§:Dictionary = new Dictionary();
       
      
      public function §_-8K§()
      {
         super();
      }
      
      public static function §_-Vu§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§_-PY§ = null;
         for(_loc2_ in param1)
         {
            if(!§_-NF§[_loc2_])
            {
               _loc3_ = new §_-PY§(param1[_loc2_],_loc2_);
               §_-Oy§.log("Initializing cutScene: " + _loc2_);
               §_-NF§[_loc2_] = _loc3_;
               if(§_-i8§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§_-zh§ = §_-PY§.§_-ql§;
               }
            }
         }
      }
      
      public static function §_-vG§(param1:String, param2:§_-v8§) : §_-PY§
      {
         var _loc3_:§_-PY§ = §_-NF§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §_-nT§(param1:String) : §_-PY§
      {
         var _loc2_:§_-PY§ = §_-NF§[param1];
         if(_loc2_ && §_-i8§.indexOf(param1))
         {
            _loc2_.§_-zh§ = §_-PY§.§_-ql§;
         }
         return _loc2_;
      }
      
      public static function §_-pq§(param1:String) : void
      {
         if(§_-i8§.indexOf(param1) < 0)
         {
            §_-i8§.push(param1);
         }
      }
   }
}
