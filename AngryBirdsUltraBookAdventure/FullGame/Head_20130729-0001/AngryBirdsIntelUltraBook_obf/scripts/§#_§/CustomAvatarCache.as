package §#_§
{
   public class CustomAvatarCache
   {
      
      private static var cache:Array = [];
       
      
      public function CustomAvatarCache()
      {
         super();
      }
      
      public static function §[h§(avatarObject:§3a§, overwrite:Boolean = true, clearAvatar:Boolean = false) : void
      {
         var av:Object = null;
         var found:Boolean = false;
         var i:int = 0;
         for(var _loc7_:int = 0,var _loc8_:* = cache; §§hasnext(_loc8_,_loc7_); i++)
         {
            av = §§nextvalue(_loc7_,_loc8_);
            if(av.id == avatarObject.id)
            {
               if(!overwrite)
               {
                  found = true;
               }
               if(avatarObject.avatarString != null && avatarObject.avatarString != "" || clearAvatar)
               {
                  cache[i] = avatarObject;
               }
               continue;
               return;
            }
         }
         if(!found)
         {
            cache.push(avatarObject);
         }
      }
      
      public static function §9!B§(id:String) : String
      {
         var av:§3a§ = null;
         for each(av in cache)
         {
            if(id == av.id)
            {
               return av.avatarString;
            }
         }
         return "";
      }
   }
}
