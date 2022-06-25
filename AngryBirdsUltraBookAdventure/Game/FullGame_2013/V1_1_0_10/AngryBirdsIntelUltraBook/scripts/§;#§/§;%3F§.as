package §;#§
{
   import §#!c§.§!I§;
   import §#!o§.§>!M§;
   import §#!o§.Items;
   
   public class §;?§
   {
      
      public static var §6!+§:String = "Tue 04/26";
      
      private static var §]R§:§!I§ = null;
      
      private static var §"!M§:Items = null;
      
      private static var §1U§:§>!M§ = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §;?§))
         {
            §6!+§ = "Tue 04/26";
            while(true)
            {
               §]R§ = null;
               loop1:
               while(_loc2_ || _loc2_)
               {
                  §"!M§ = null;
                  while(true)
                  {
                     §1U§ = null;
                     if(_loc2_)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §;?§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function get §,K§() : §!I§
      {
         return §]R§;
      }
      
      public static function set §,K§(param1:§!I§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §]R§ = param1;
         }
      }
      
      public static function §]0§() : Items
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(§"!M§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() == null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr51:
                     §"!M§ = new Items();
                  }
               }
               return §"!M§;
            }
         }
         §§goto(addr51);
      }
      
      public static function §6!V§() : §>!M§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§1U§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     §1U§ = new §>!M§();
                     addr44:
                     §§push(§1U§);
                  }
               }
               §§goto(addr44);
            }
            return §§pop();
         }
         §§goto(addr44);
      }
   }
}
