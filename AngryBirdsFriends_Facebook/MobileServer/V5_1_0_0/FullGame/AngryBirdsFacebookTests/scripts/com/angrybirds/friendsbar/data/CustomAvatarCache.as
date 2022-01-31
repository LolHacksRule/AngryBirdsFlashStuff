package com.angrybirds.friendsbar.data
{
   public class CustomAvatarCache
   {
      
      private static var cache:Array = [];
       
      
      public function CustomAvatarCache()
      {
         super();
      }
      
      public static function addIntoCache(avatarObject:AvatarVO, overwrite:Boolean = true, clearAvatar:Boolean = false) : void
      {
         var av:Object = null;
         var found:Boolean = false;
         var i:int = 0;
         for each(av in cache)
         {
            if(av.id == avatarObject.id)
            {
               if(!overwrite)
               {
                  found = true;
                  return;
               }
               if(avatarObject.avatarString != null && avatarObject.avatarString != "" || clearAvatar)
               {
                  cache[i] = avatarObject;
               }
            }
            i++;
         }
         if(!found)
         {
            cache.push(avatarObject);
         }
      }
      
      public static function getFromCache(id:String) : String
      {
         var av:AvatarVO = null;
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
