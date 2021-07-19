package §6g§
{
   import §;!2§.§ set§;
   import §;!2§.include;
   import §@B§.§8V§;
   
   public class §3+§
   {
      
      public static const §4!M§:int = 365;
      
      public static const §@!?§:String = "ABEagles";
      
      private static var §[v§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §4!M§ = 365;
            do
            {
               §@!?§ = "ABEagles";
            }
            while(_loc2_);
            
         }
      }
      
      public function §3+§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function getValue(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(§[v§ == null)
            {
               if(!_loc2_)
               {
                  addr39:
                  §#!=§();
               }
            }
            return §[v§[param1];
         }
         §§goto(addr39);
      }
      
      public static function §9z§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(§[v§ == null)
            {
               while(true)
               {
                  §#!=§();
                  addr49:
                  while(true)
                  {
                  }
               }
               addr47:
            }
            while(true)
            {
               §[v§[param1] = param2;
               if(!_loc4_)
               {
                  continue;
               }
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr47);
            }
            return;
         }
         §§goto(addr49);
      }
      
      private static function §#!=§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var returnObject:String = §8V§.§^^§("readCookie",§@!?§);
         try
         {
            §[v§ = new include(returnObject,false).getValue();
         }
         catch(e:Error)
         {
            if(!(_loc4_ && _loc3_))
            {
               §[v§ = new Object();
            }
         }
      }
      
      public static function flush() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:String = null;
         if(_loc2_ || §3+§)
         {
            if(§[v§ != null)
            {
               if(!_loc3_)
               {
                  _loc1_ = new § set§(§[v§).getString();
                  do
                  {
                     §8V§.§^^§("createCookie",§@!?§,_loc1_,§4!M§);
                  }
                  while(!(_loc2_ || _loc3_));
                  
                  addr77:
               }
               §§goto(addr77);
            }
            return;
         }
         §§goto(addr77);
      }
   }
}
