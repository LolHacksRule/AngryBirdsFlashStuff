package §9I§
{
   import §@R§.set;
   
   public class §]0§
   {
      
      public static const §2U§:String = "en";
      
      public static const §`!Y§:String = "zh";
      
      private static const §&!b§:String = "en";
      
      private static var §5z§:Class;
      
      private static var §0!F§:XML;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §]0§)
         {
            §2U§ = "en";
            while(true)
            {
               §`!Y§ = "zh";
               addr47:
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               return;
               addr54:
            }
         }
         while(true)
         {
            §&!b§ = §2U§;
            while(_loc2_ || _loc2_)
            {
               §5z§ = §+!5§;
               while(!_loc1_)
               {
                  §0!F§ = set.§=!^§(§5z§);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr47);
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §]0§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
         }
      }
      
      public static function getText(param1:String) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(§§newactivation());
         if(_loc8_ || _loc3_)
         {
            §§pop().§§slot[1] = param1;
            if(_loc8_ || _loc2_)
            {
               addr38:
               var text:String = "";
            }
            try
            {
               §§push(§§newactivation());
               if(_loc8_ || param1)
               {
                  §§pop().§§slot[2] = §0!F§.text.(if(_loc8_)
                  {
                     §§push(@name == id);
                     if(!(_loc9_ && §]0§))
                     {
                        if(§§pop())
                        {
                           if(!(_loc9_ && _loc2_))
                           {
                              §§pop();
                              addr114:
                              if(!(_loc9_ && _loc3_))
                              {
                                 §§push(@lang == §&!b§);
                              }
                              _loc3_[_loc4_] = _loc6_;
                              continue loop0;
                           }
                        }
                     }
                     if(!§§pop())
                     {
                        continue loop0;
                     }
                     if(_loc9_)
                     {
                        continue loop0;
                     }
                  }, §§goto(addr114), false);
                  addr153:
               }
            }
            catch(e:Error)
            {
               §§goto(addr153);
            }
            return §§pop().§§slot[2];
         }
         §§goto(addr38);
      }
   }
}
