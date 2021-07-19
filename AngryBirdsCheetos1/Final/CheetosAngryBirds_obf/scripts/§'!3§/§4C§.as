package §'!3§
{
   import § !G§.§+!7§;
   
   public class §4C§
   {
      
      public static const §?!C§:String = "en";
      
      public static const §1A§:String = "tr";
      
      public static const §+!Q§:String = "ru";
      
      private static const §@!@§:String = "tr";
      
      private static var §@q§:Class;
      
      private static var §7j§:XML;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §?!C§ = "en";
            while(true)
            {
               §1A§ = "tr";
            }
            addr89:
         }
         loop1:
         do
         {
            §+!Q§ = "ru";
            while(true)
            {
               §@!@§ = §1A§;
               for(; _loc2_; §@q§ = §16§,do
               {
                  §7j§ = §+!7§.§5]§(§@q§);
               }
               while(!_loc2_);
               ,if(!_loc1_)
               {
                  continue loop1;
               })
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr89);
               }
            }
         }
         while(_loc1_);
         
      }
      
      public function §4C§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
         }
      }
      
      public static function getText(param1:String) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(§§newactivation());
         if(_loc8_ || param1)
         {
            §§pop().§§slot[1] = param1;
            if(_loc8_ || _loc3_)
            {
               addr38:
               var text:String = "";
            }
            try
            {
               §§push(§§newactivation());
               if(_loc8_ || _loc2_)
               {
                  §§pop().§§slot[2] = §7j§.text.(if(_loc8_)
                  {
                     §§push(@name == id);
                     if(!_loc9_)
                     {
                        if(§§pop())
                        {
                           if(_loc8_)
                           {
                              addr90:
                              §§pop();
                              if(_loc9_ && _loc3_)
                              {
                                 continue loop0;
                              }
                              addr98:
                              §§push(@lang == §@!@§);
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc8_ || §4C§)
                           {
                              _loc3_[_loc4_] = _loc6_;
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr90);
                  }, §§goto(addr98), false);
                  addr148:
               }
            }
            catch(e:Error)
            {
               §§goto(addr148);
            }
            return §§pop().§§slot[2];
         }
         §§goto(addr38);
      }
   }
}
