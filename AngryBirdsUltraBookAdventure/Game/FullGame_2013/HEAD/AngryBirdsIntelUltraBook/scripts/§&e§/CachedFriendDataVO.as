package §&e§
{
   public class CachedFriendDataVO
   {
       
      
      public var userID:String;
      
      public var name:String;
      
      public function CachedFriendDataVO(uID:String, username:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && uID)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     super();
                     loop3:
                     while(_loc3_)
                     {
                        loop4:
                        for(; _loc3_; if(_loc3_ || username)
                        {
                           if(!_loc4_)
                           {
                              return;
                              addr62:
                           }
                           continue loop3;
                        })
                        {
                           this.userID = uID;
                           while(true)
                           {
                              continue loop1;
                              addr67:
                              while(_loc3_ || uID)
                              {
                                 if(!(_loc4_ && uID))
                                 {
                                    addr41:
                                    if(!_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.name = username;
            §§goto(addr67);
         }
         §§goto(addr62);
      }
      
      public static function §<! §(obj:Object) : CachedFriendDataVO
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && CachedFriendDataVO)
         {
         }
         if(!_loc3_)
         {
         }
         while(_loc2_)
         {
         }
         §§push(CachedFriendDataVO);
         if(_loc3_ || obj)
         {
         }
         return new §§pop()(obj.u,obj.n);
      }
   }
}
