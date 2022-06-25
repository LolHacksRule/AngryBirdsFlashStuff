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
         if(!_loc1_)
         {
            §6!+§ = "Tue 04/26";
            while(true)
            {
               §]R§ = null;
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            §"!M§ = null;
            do
            {
               §1U§ = null;
            }
            while(_loc1_ && _loc1_);
            
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §;?§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
         if(!(_loc3_ && _loc2_))
         {
            §]R§ = param1;
         }
      }
      
      public static function §]0§() : Items
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§"!M§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     addr40:
                     §"!M§ = new Items();
                  }
               }
               return §"!M§;
            }
         }
         §§goto(addr40);
      }
      
      public static function §6!V§() : §>!M§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §;?§)
         {
            §§push(§1U§);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_ || _loc1_)
                  {
                     addr45:
                     §1U§ = new §>!M§();
                  }
               }
               return §1U§;
            }
         }
         §§goto(addr45);
      }
   }
}
