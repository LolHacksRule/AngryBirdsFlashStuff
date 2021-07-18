package §4[§
{
   import flash.events.EventDispatcher;
   
   public class §2P§ extends EventDispatcher
   {
      
      private static var §6§:§<!o§;
      
      private static var §4y§:Array;
      
      private static var §=g§:String;
      
      private static const §=!h§:Array;
      
      private static var §5!S§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §2P§))
         {
            §=!h§ = [];
         }
         do
         {
            §5!S§ = 1;
         }
         while(_loc1_ && §2P§);
         
      }
      
      public function §2P§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function get §[!$§() : §<!o§
      {
         return §6§;
      }
      
      public static function set §[!$§(param1:§<!o§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §6§ = param1;
         }
      }
      
      public static function get §8!e§() : Object
      {
         return {
            "id":§6§.id,
            "nickName":§6§.name,
            "security":§6§.§&"!§
         };
      }
      
      public static function get §&![§() : int
      {
         return §5!S§;
      }
      
      public static function set §&![§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §5!S§ = param1;
         }
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §4y§ = param1;
         }
      }
      
      public static function §-l§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         var _loc3_:* = §4y§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc2_)
            {
               §§push(§ !4§.§%"7§);
               if(_loc5_ || _loc3_)
               {
                  §§push((§§pop() as AngryBirdsCustom).§+Y§);
                  if(_loc5_)
                  {
                     §§pop().setScoreForLevel(_loc1_.levelId,_loc1_.bestScore);
                     if(!_loc5_)
                     {
                        continue;
                     }
                     addr72:
                     §§push((§ !4§.§%"7§ as AngryBirdsCustom).§+Y§);
                  }
                  §§pop().§9!k§(_loc1_.levelId,_loc1_.score);
                  continue;
               }
            }
            §§goto(addr72);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §4y§;
      }
      
      public static function §<!i§(param1:String) : Object
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = §=!h§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(_loc6_)
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
                     if(_loc5_ && _loc2_)
                     {
                        continue;
                     }
                  }
                  return _loc2_;
               }
               if(_loc6_)
               {
                  if(!_loc5_)
                  {
                     if(_loc6_)
                     {
                        _loc3_ = 0;
                        if(!_loc5_)
                        {
                           _loc4_ = levelProfile;
                           while(true)
                           {
                              §§push(§§hasnext(_loc4_,_loc3_));
                              break loop0;
                           }
                           addr111:
                           return _loc2_;
                           addr113:
                        }
                        addr116:
                     }
                     return null;
                  }
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
               if(_loc6_ || _loc2_)
               {
                  if(_loc2_.levelId != param1)
                  {
                     continue;
                  }
                  if(_loc5_ && param1)
                  {
                     continue;
                  }
               }
               §§goto(addr111);
            }
         }
      }
      
      public static function §@!i§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         for each(_loc2_ in §=!h§)
         {
            if(_loc5_)
            {
               if(_loc2_.levelId == param1)
               {
                  if(!_loc6_)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public static function §0!a§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §<!i§(param1);
         if(!(_loc3_ && _loc2_))
         {
            if(_loc2_ == null)
            {
               if(!(_loc3_ && §2P§))
               {
                  §§push(false);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  §§push(_loc2_ == null);
                  if(!(_loc3_ && param1))
                  {
                     return !§§pop();
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr53);
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §=g§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §=g§ = param1;
         }
      }
   }
}
