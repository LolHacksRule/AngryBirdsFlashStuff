package § ^§
{
   import flash.events.EventDispatcher;
   
   public class §`!2§ extends EventDispatcher
   {
      
      private static var §0!K§:§[C§;
      
      private static var §!!5§:Array;
      
      private static var §7`§:String;
      
      private static const §]s§:Array;
      
      private static var §;!j§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §]s§ = [];
            do
            {
               §;!j§ = 1;
            }
            while(!(_loc2_ || §`!2§));
            
         }
      }
      
      public function §`!2§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function get §9!&§() : §[C§
      {
         return §0!K§;
      }
      
      public static function set §9!&§(param1:§[C§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §0!K§ = param1;
         }
      }
      
      public static function get §!!$§() : Object
      {
         return {
            "id":§0!K§.id,
            "nickName":§0!K§.name,
            "security":§0!K§.§4J§
         };
      }
      
      public static function get § !$§() : int
      {
         return §;!j§;
      }
      
      public static function set § !$§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §;!j§ = param1;
         }
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §!!5§ = param1;
         }
      }
      
      public static function §?>§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Object = null;
         for each(_loc1_ in §!!5§)
         {
            if(!_loc4_)
            {
               §§push(§6!!§.singleton);
               if(_loc5_)
               {
                  §§push((§§pop() as §4!=§).§?!b§);
                  if(_loc5_)
                  {
                     §§pop().setScoreForLevel(_loc1_.levelId,_loc1_.bestScore);
                     if(!_loc5_)
                     {
                        continue;
                     }
                     addr62:
                     §§push((§6!!§.singleton as §4!=§).§?!b§);
                  }
                  §§pop().§@!Q§(_loc1_.levelId,_loc1_.score);
                  continue;
               }
            }
            §§goto(addr62);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §!!5§;
      }
      
      public static function §+"#§(param1:String) : Object
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = §]s§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(!_loc5_)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc3_,_loc4_);
                  if(!_loc5_)
                  {
                     if(_loc2_.levelId != param1)
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        continue;
                     }
                  }
                  return _loc2_;
               }
               if(!(_loc5_ && _loc3_))
               {
                  if(!(_loc5_ && param1))
                  {
                     if(_loc6_ || §`!2§)
                     {
                        _loc3_ = 0;
                        if(_loc6_)
                        {
                           addr83:
                           _loc4_ = levelProfile;
                           while(true)
                           {
                              §§push(§§hasnext(_loc4_,_loc3_));
                              break loop0;
                           }
                           return _loc2_;
                           addr113:
                        }
                        addr116:
                     }
                     return null;
                  }
                  §§goto(addr83);
               }
               §§goto(addr116);
            }
            break;
         }
         while(true)
         {
            if(!§§pop())
            {
               §§goto(addr115);
            }
            else
            {
               _loc2_ = §§nextvalue(_loc3_,_loc4_);
               if(_loc6_)
               {
                  if(_loc2_.levelId != param1)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     continue;
                  }
               }
               §§goto(addr83);
            }
         }
      }
      
      public static function §`E§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = §]s§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(_loc2_.levelId == param1)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      public static function §'!d§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = §+"#§(param1);
         if(_loc3_)
         {
            if(_loc2_ == null)
            {
               if(!_loc4_)
               {
                  addr38:
                  §§push(false);
                  if(_loc3_ || §`!2§)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr57:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr57);
         }
         §§goto(addr38);
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §7`§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §7`§ = param1;
         }
      }
   }
}
