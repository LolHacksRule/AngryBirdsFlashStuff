package §@"5§
{
   import flash.events.Event;
   
   public class §1k§ extends Event
   {
      
      public static const §1!+§:String = "surpriseChanged";
      
      public static const §1j§:String = "startUpdate";
      
      public static const §]!]§:String = "startLoad";
      
      public static const §=!P§:String = "finishLoad";
      
      public static const §"!'§:String = "questsFetched";
      
      public static const §3!u§:String = "conditionChange";
      
      public static const §1g§:String = "stateChange";
      
      public static const §7p§:String = "stabilityCompleted";
      
      public static const §?s§:String = "stabilityFail";
      
      public static const §-V§:String = "questCompleted";
      
      public static const §<M§:String = "questError";
      
      public static var §6f§:String;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1!+§ = "surpriseChanged";
            while(true)
            {
               §1j§ = "startUpdate";
               loop1:
               while(true)
               {
                  §]!]§ = "startLoad";
                  addr128:
                  while(true)
                  {
                     §=!P§ = "finishLoad";
                     continue loop1;
                  }
               }
               addr79:
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §?s§ = "stabilityFail";
               loop8:
               while(true)
               {
                  §-V§ = "questCompleted";
                  for(; !_loc1_; §<M§ = "questError",if(_loc1_ && §1k§)
                  {
                     continue;
                  },if(_loc1_)
                  {
                     continue loop8;
                  },if(!_loc1_)
                  {
                     §§goto(addr39);
                  },loop7:
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        §§goto(addr79);
                     }
                     addr91:
                     while(true)
                     {
                        §7p§ = "stabilityCompleted";
                        continue loop7;
                     }
                  },§§goto(addr106))
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr96);
               }
            }
         }
         §§goto(addr91);
      }
      
      private var §[c§:String;
      
      private var §8!1§:String;
      
      private var §&!A§:String;
      
      public function §1k§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super(param1,param2,param3);
         }
      }
      
      public function get §04§() : String
      {
         return this.§&!A§;
      }
      
      public function set §04§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!A§ = param1;
         }
      }
      
      public function get §'4§() : String
      {
         return this.§[c§;
      }
      
      public function set §'4§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[c§ = param1;
         }
      }
      
      public function get §-",§() : String
      {
         return this.§8!1§;
      }
      
      public function set §-",§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§8!1§ = param1;
         }
      }
   }
}
