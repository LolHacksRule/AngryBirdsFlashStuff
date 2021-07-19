package §7!B§
{
   import flash.events.EventDispatcher;
   
   public class §@!^§ extends EventDispatcher
   {
      
      private static var §^!o§:§?A§;
      
      private static var §6!1§:Array;
      
      private static var §5"<§:String;
      
      private static const §9!f§:Array;
      
      private static var §]5§:int = 1;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §@!^§)
         {
            §9!f§ = [];
         }
         do
         {
            §]5§ = 1;
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function §@!^§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function get §2j§() : §?A§
      {
         return §^!o§;
      }
      
      public static function set §2j§(param1:§?A§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §^!o§ = param1;
         }
      }
      
      public static function get §[!Q§() : Object
      {
         return {
            "id":§^!o§.id,
            "nickName":§^!o§.name,
            "security":§^!o§.§,!0§,
            "episodeScore1":§^!o§.episodeScore1,
            "episodeScore2":§^!o§.episodeScore2,
            "episodeScore3":§^!o§.episodeScore3,
            "episodeStars1":§^!o§.episodeStars1,
            "episodeStars2":§^!o§.episodeStars2,
            "episodeStars3":§^!o§.episodeStars3,
            "stars":§^!o§.stars,
            "starsNeededToUnlockEpisode2":§^!o§.starsNeededToUnlockEpisode2,
            "starsNeededToUnlockEpisode3":§^!o§.starsNeededToUnlockEpisode3
         };
      }
      
      public static function get §'"=§() : int
      {
         return §]5§;
      }
      
      public static function set §'"=§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §]5§ = param1;
         }
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §6!1§ = param1;
         }
      }
      
      public static function §;!Y§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         for each(_loc1_ in §6!1§)
         {
            if(_loc5_ || _loc2_)
            {
               §§push(§ !g§.§;!'§);
               if(!_loc4_)
               {
                  §§push((§§pop() as §`Y§).§]]§);
                  if(!(_loc4_ && _loc1_))
                  {
                     §§pop().§%P§(_loc1_.levelId,_loc1_.bestScore);
                     if(!_loc5_)
                     {
                        continue;
                     }
                     addr72:
                     §§push((§ !g§.§;!'§ as §`Y§).§]]§);
                  }
                  §§pop().§4!e§(_loc1_.levelId,_loc1_.score);
                  continue;
               }
            }
            §§goto(addr72);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §6!1§;
      }
      
      public static function §<k§(param1:String) : Object
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = §9!f§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(!_loc6_)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc3_,_loc4_);
                  if(!_loc6_)
                  {
                     if(_loc2_.levelId != param1)
                     {
                        continue;
                     }
                     if(!(_loc5_ || _loc3_))
                     {
                        continue;
                     }
                  }
                  return _loc2_;
               }
               if(!(_loc6_ && _loc2_))
               {
                  if(!_loc6_)
                  {
                     if(!_loc6_)
                     {
                        _loc3_ = 0;
                        if(!(_loc6_ && param1))
                        {
                           addr82:
                           _loc4_ = levelProfile;
                           while(true)
                           {
                              §§push(§§hasnext(_loc4_,_loc3_));
                              break loop0;
                           }
                           return _loc2_;
                           addr117:
                        }
                        addr120:
                     }
                     return null;
                  }
                  §§goto(addr82);
               }
               §§goto(addr120);
            }
            break;
         }
         while(true)
         {
            if(!§§pop())
            {
               §§goto(addr119);
            }
            else
            {
               _loc2_ = §§nextvalue(_loc3_,_loc4_);
               if(!(_loc6_ && _loc3_))
               {
                  if(_loc2_.levelId != param1)
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     continue;
                  }
               }
               §§goto(addr82);
            }
         }
      }
      
      public static function §5u§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         for each(_loc2_ in §9!f§)
         {
            if(_loc6_ || §@!^§)
            {
               if(_loc2_.levelId == param1)
               {
                  if(_loc6_)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public static function §#^§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = §<k§(param1);
         if(_loc3_ || §@!^§)
         {
            if(_loc2_ == null)
            {
               if(!_loc4_)
               {
                  addr43:
                  §§push(false);
                  if(!(_loc4_ && _loc2_))
                  {
                     return §§pop();
                  }
                  addr67:
                  return !§§pop();
               }
               else
               {
                  addr62:
                  §§push(_loc2_ == null);
                  if(_loc3_)
                  {
                     §§goto(addr67);
                  }
               }
               return §§pop();
            }
            §§goto(addr62);
         }
         §§goto(addr43);
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §5"<§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §5"<§ = param1;
         }
      }
   }
}
