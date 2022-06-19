package §0t§
{
   public class §"I§
   {
      
      private static var §<! §:Array = [];
       
      
      public function §"I§()
      {
         super();
      }
      
      public static function §`!q§(param1:§1d§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc6_:Object = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         for each(_loc6_ in §<! §)
         {
            if(_loc6_.id == param1.id)
            {
               if(!param2)
               {
                  _loc4_ = true;
                  return;
               }
               if(param1.avatarString != null && param1.avatarString != "" || param3)
               {
                  §<! §[_loc5_] = param1;
               }
            }
            _loc5_++;
         }
         if(!_loc4_)
         {
            §<! §.push(param1);
         }
      }
      
      public static function §<!v§(param1:String) : String
      {
         var _loc2_:§1d§ = null;
         for each(_loc2_ in §<! §)
         {
            if(param1 == _loc2_.id)
            {
               return _loc2_.avatarString;
            }
         }
         return "";
      }
   }
}
