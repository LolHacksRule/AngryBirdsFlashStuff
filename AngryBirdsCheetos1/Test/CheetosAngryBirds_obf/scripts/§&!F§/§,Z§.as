package §&!F§
{
   import §'!D§.§?!h§;
   import §7'§.§!y§;
   import §[h§.§4I§;
   import flash.display.MovieClip;
   import flash.utils.Dictionary;
   
   public class §,Z§
   {
      
      private static const §7&§:String = "WarmUp";
      
      private static const §5!7§:String = "AimHigh";
      
      private static const §"8§:String = "StarPlayer";
      
      private static const §>!3§:String = "GotTheSnacksBack";
      
      private static const §]3§:String = "OnFire";
      
      private static const §switch§:String = "AllStars";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §,Z§))
         {
            §7&§ = "WarmUp";
            do
            {
               §5!7§ = "AimHigh";
               do
               {
                  §"8§ = "StarPlayer";
                  loop2:
                  do
                  {
                     §>!3§ = "GotTheSnacksBack";
                     while(true)
                     {
                        §]3§ = "OnFire";
                        while(_loc1_ || _loc1_)
                        {
                           §switch§ = "AllStars";
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(_loc2_);
                  
               }
               while(!(_loc1_ || §,Z§));
               
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      private var §3y§:Dictionary;
      
      private var §"!=§:Dictionary;
      
      public function §,Z§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            do
            {
               this.§-!1§();
               do
               {
                  this.§6! §();
               }
               while(!(_loc2_ || this));
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      private function §-!1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§3y§ = new Dictionary();
            while(true)
            {
               this.§3y§[§7&§] = "TextWarmUp";
               addr71:
               if(!(_loc1_ || this))
               {
                  continue;
               }
               this.§3y§[§switch§] = "TextAllStars";
               addr78:
               if(_loc1_)
               {
                  addr36:
                  if(_loc1_)
                  {
                     addr38:
                     if(!_loc1_)
                     {
                        while(true)
                        {
                           this.§3y§[§5!7§] = "TextAimHigh";
                           while(true)
                           {
                              this.§3y§[§"8§] = "TextStarPlayer";
                              loop3:
                              while(true)
                              {
                                 this.§3y§[§>!3§] = "TextGotTheSnacksBack";
                                 addr85:
                                 while(true)
                                 {
                                    this.§3y§[§]3§] = "TextOnFire";
                                    continue loop3;
                                    §§goto(addr36);
                                 }
                                 §§goto(addr38);
                              }
                              if(!(_loc1_ || _loc2_))
                              {
                                 continue;
                              }
                              §§goto(addr71);
                           }
                        }
                        addr116:
                     }
                     return;
                  }
                  §§goto(addr85);
               }
               §§goto(addr47);
            }
         }
         §§goto(addr116);
      }
      
      private function §6! §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"!=§ = new Dictionary();
         }
      }
      
      public function §=D§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§3y§[param1])
            {
               if(!(_loc2_ && _loc3_))
               {
                  return null;
               }
            }
         }
         return §4I§.getText(this.§3y§[param1]);
      }
      
      public function §1!2§(param1:String, param2:§?!h§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:MovieClip = null;
         var _loc3_:String = "MovieClip_" + param1;
         if(_loc6_)
         {
            §§push(§!y§.§+,§(_loc3_));
            if(_loc6_)
            {
               if(§§pop())
               {
                  §§goto(addr43);
               }
               §§goto(addr73);
            }
            §§goto(addr74);
         }
         addr43:
         _loc4_ = new §!y§.§%!C§(_loc3_)();
         if(!_loc5_)
         {
            param2.changeMovieClip(_loc4_);
            if(_loc5_ && param1)
            {
               addr74:
               return false;
               addr73:
            }
         }
         return true;
      }
   }
}
