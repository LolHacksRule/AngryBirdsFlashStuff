package §"!+§
{
   import §@,§.§8!#§;
   
   public class §6!7§
   {
      
      public static const §5w§:String = "en";
      
      public static const §]!H§:String = "tr";
      
      public static const §^f§:String = "ru";
      
      private static const §'!3§:String = "tr";
      
      private static var §>X§:Class;
      
      private static var §!1§:XML;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §5w§ = "en";
            loop0:
            while(true)
            {
               §]!H§ = "tr";
               loop1:
               while(true)
               {
                  §^f§ = "ru";
                  while(true)
                  {
                     §'!3§ = §]!H§;
                     while(!_loc1_)
                     {
                        continue loop0;
                        loop4:
                        while(!(_loc1_ && _loc1_))
                        {
                           continue loop1;
                           while(true)
                           {
                              §!1§ = §8!#§.§9C§(§>X§);
                              if(!(_loc1_ && _loc1_))
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §6!7§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super();
         }
      }
      
      public static function getText(param1:String) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc9_)
         {
            §§pop().§§slot[1] = param1;
            if(_loc8_)
            {
               addr28:
               var text:String = "";
            }
            try
            {
               §§push(§§newactivation());
               if(_loc8_ || _loc3_)
               {
                  §§pop().§§slot[2] = §!1§.text.(if(!_loc8_)
                  {
                     continue loop0;
                  }, §§push(@name == id), if(!(_loc9_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc8_)
                        {
                           addr85:
                           §§pop();
                           if(!(_loc8_ || _loc2_))
                           {
                              continue loop0;
                           }
                           §§push(@lang == §'!3§);
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           _loc3_[_loc4_] = _loc6_;
                        }
                     }
                     continue loop0;
                  }, §§goto(addr85), false);
                  addr138:
               }
            }
            catch(e:Error)
            {
               §§goto(addr138);
            }
            return §§pop().§§slot[2];
         }
         §§goto(addr28);
      }
   }
}
