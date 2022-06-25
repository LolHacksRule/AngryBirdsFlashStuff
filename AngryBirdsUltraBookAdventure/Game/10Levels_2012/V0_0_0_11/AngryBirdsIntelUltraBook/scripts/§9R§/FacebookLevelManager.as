package §9r§
{
   import §"L§.ChapterModel;
   import §"L§.LevelManager;
   
   public class FacebookLevelManager extends LevelManager
   {
       
      
      public function FacebookLevelManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               while(_loc1_)
               {
                  if(!_loc2_)
                  {
                     return;
                     addr27:
                  }
               }
            }
         }
         §§goto(addr27);
      }
      
      public static function §%!P§(levelId:String) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || split)
         {
         }
         var chapter:ChapterModel = null;
         var split:Array = null;
         var levelNumber:int = 0;
         var pageId:String = null;
         var pageNumber:int = 0;
         if(!(_loc8_ && FacebookLevelManager))
         {
            loop0:
            while(true)
            {
               addr102:
               while(true)
               {
               }
               loop3:
               while(true)
               {
                  if(_loc8_ && chapter)
                  {
                     continue loop0;
                  }
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        addr67:
                        loop6:
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 addr71:
                                 if(_loc9_ || split)
                                 {
                                    if(_loc9_)
                                    {
                                       if(!(_loc8_ && FacebookLevelManager))
                                       {
                                          if(_loc9_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop4;
                                       }
                                       continue;
                                    }
                                    §§goto(addr102);
                                 }
                                 break;
                              }
                              continue loop5;
                           }
                           addr99:
                           while(true)
                           {
                              break loop6;
                              §§goto(addr71);
                           }
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
         §§goto(addr99);
      }
   }
}
