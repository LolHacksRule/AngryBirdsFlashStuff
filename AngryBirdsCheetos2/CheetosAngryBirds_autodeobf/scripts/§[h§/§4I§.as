package §[h§
{
   import §>^§.§7]§;
   
   public class §4I§
   {
      
      public static const §43§:String = "en";
      
      public static const §%N§:String = "tr";
      
      public static const §+s§:String = "ru";
      
      private static const §3U§:String = "ru";
      
      private static var §]!R§:Class;
      
      private static var xml:XML;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §43§ = "en";
         }
         loop0:
         while(true)
         {
            §%N§ = "tr";
            loop1:
            while(true)
            {
               §+s§ = "ru";
               loop2:
               while(true)
               {
                  §3U§ = §+s§;
                  while(!_loc2_)
                  {
                     §]!R§ = §8r§;
                     while(!(_loc2_ && _loc1_))
                     {
                        if(!_loc2_)
                        {
                           xml = §7]§.§#!I§(§]!R§);
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           continue;
                           continue;
                        }
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §4I§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function getText(param1:String) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc8_)
         {
            §§pop().§§slot[1] = param1;
            if(!_loc8_)
            {
               addr29:
               var text:String = "";
            }
            try
            {
               §§push(§§newactivation());
               if(!(_loc8_ && param1))
               {
                  §§pop().§§slot[2] = xml.text.(if(_loc8_ && _loc3_)
                  {
                     continue loop0;
                  }, §§push(@name == id), if(_loc9_)
                  {
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           addr86:
                           §§pop();
                           if(!_loc9_)
                           {
                              continue loop0;
                           }
                           §§push(@lang == §3U§);
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           _loc3_[_loc4_] = _loc6_;
                        }
                     }
                     continue loop0;
                  }, §§goto(addr86), false);
                  addr134:
               }
            }
            catch(e:Error)
            {
               §§goto(addr134);
            }
            return §§pop().§§slot[2];
         }
         §§goto(addr29);
      }
   }
}
