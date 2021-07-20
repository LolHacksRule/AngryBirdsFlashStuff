package §1!E§
{
   import §5G§.StateConnecting;
   import flash.events.EventDispatcher;
   
   public class §>f§ extends EventDispatcher
   {
      
      private static var §^!e§:§class§;
      
      private static var §9!g§:Array;
      
      private static var §;!=§:String;
      
      private static var §-s§:int = 1;
      
      private static var §>$§:String;
      
      private static var §5!J§:Object;
      
      private static var §3a§:String;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-s§ = 1;
         }
      }
      
      public function §>f§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function get §%!-§() : String
      {
         return §3a§;
      }
      
      public static function set §%!-§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §3a§ = param1;
         }
      }
      
      public static function get §3;§() : Object
      {
         return §5!J§;
      }
      
      public static function set §3;§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §5!J§ = param1;
         }
      }
      
      public static function get §5!`§() : String
      {
         return §>$§;
      }
      
      public static function set §5!`§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §>$§ = param1;
         }
      }
      
      public static function get §%!`§() : §class§
      {
         return §^!e§;
      }
      
      public static function set §%!`§(param1:§class§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §^!e§ = param1;
         }
      }
      
      public static function get §[!b§() : Object
      {
         return {
            "id":§^!e§.§6!W§,
            "nickName":§^!e§.name,
            "security":§^!e§.§#]§
         };
      }
      
      public static function get §const§() : int
      {
         return §-s§;
      }
      
      public static function set §const§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §-s§ = param1;
         }
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         if(_loc5_)
         {
            §9!g§ = param1;
         }
         for each(_loc2_ in param1)
         {
            if(_loc5_)
            {
               §5!9§.§#%§.§6!X§(_loc2_.levelId,_loc2_.score);
            }
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §9!g§;
      }
      
      public static function §0!9§(param1:String) : Object
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         for each(_loc2_ in levelProfile)
         {
            if(_loc5_)
            {
               if(_loc2_.levelId == param1)
               {
                  if(_loc5_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §9v§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = true;
         var _loc3_:Object = §0!9§(param1);
         if(_loc4_ || param1)
         {
            if(_loc3_ != null)
            {
               if(_loc4_ || param1)
               {
                  if(_loc3_.unlocked)
                  {
                     if(_loc4_ || param1)
                     {
                        §§goto(addr60);
                     }
                  }
               }
            }
            §§goto(addr79);
         }
         addr60:
         §§push(false);
         if(_loc4_ || §>f§)
         {
            _loc2_ = §§pop();
            addr79:
            return _loc2_;
         }
      }
      
      public static function §^!a§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §0!9§(param1);
         §§push(_loc2_ == null);
         if(!_loc3_)
         {
            return !§§pop();
         }
      }
      
      public static function §]!H§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = §0!9§(param1);
         if(!(_loc4_ && §>f§))
         {
            if(_loc2_ != null)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr58:
                  _loc2_.unlocked = true;
               }
            }
            return;
         }
         §§goto(addr58);
      }
      
      public static function §1!P§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Object = null;
         for each(_loc1_ in §9!g§)
         {
            if(!_loc5_)
            {
               §5!9§.§#%§.§6!X§(_loc1_.levelId,_loc1_.bestScore);
            }
         }
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §;!=§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §;!=§ = param1;
         }
      }
      
      public static function logout() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>f§.§%!`§ = null;
            while(true)
            {
               §>f§.§5!`§ = null;
               addr53:
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               addr19:
               return;
               addr60:
            }
         }
         loop1:
         while(true)
         {
            §>f§.levelProfile = null;
            loop2:
            while(true)
            {
               §>f§.levelProfileSecurity = null;
               while(true)
               {
                  if(!(_loc2_ && §>f§))
                  {
                     if(_loc1_)
                     {
                        §§push(§5!9§.§-!O§);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(§5!9§.§-!O§);
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr53);
                           }
                           §§goto(addr19);
                        }
                        break;
                     }
                     continue loop1;
                  }
                  continue loop2;
               }
               §§pop().§;!;§(StateConnecting.§3!?§);
               §§goto(addr53);
            }
         }
         §§goto(addr60);
      }
   }
}
