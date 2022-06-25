package §;L§
{
   public class CachedFriendDataVO
   {
       
      
      public var userID:String;
      
      public var name:String;
      
      public function CachedFriendDataVO(uID:String, username:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && uID)
         {
         }
         if(_loc3_ && username)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  super();
                  loop3:
                  for(; _loc4_; if(!(_loc3_ && _loc3_))
                  {
                     continue loop0;
                  })
                  {
                     loop4:
                     while(true)
                     {
                        this.userID = uID;
                        while(true)
                        {
                           if(_loc4_)
                           {
                              continue loop3;
                           }
                           continue loop4;
                           addr107:
                           do
                           {
                              this.name = username;
                              while(!(_loc4_ || this))
                              {
                              }
                           }
                           while(!_loc4_);
                           
                           if(!_loc3_)
                           {
                              continue loop2;
                           }
                        }
                        continue loop3;
                     }
                  }
                  continue loop1;
               }
            }
            if(!(_loc4_ || _loc3_))
            {
               continue;
            }
            §§goto(addr107);
         }
      }
      
      public static function §"!h§(obj:Object) : CachedFriendDataVO
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc2_)
         {
         }
         while(!_loc2_)
         {
         }
         §§push(CachedFriendDataVO);
         if(_loc3_)
         {
         }
         return new §§pop()(obj.u,obj.n);
      }
   }
}
