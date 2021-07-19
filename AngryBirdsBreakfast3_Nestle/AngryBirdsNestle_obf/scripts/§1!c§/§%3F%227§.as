package §1!c§
{
   import §%!B§.§0![§;
   import §%8§.§4O§;
   import §'!3§.§]A§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §4!i§.§@"#§;
   import §4[§.§4Z§;
   import §;V§.§%c§;
   
   public class §?"7§ extends §7X§
   {
      
      public static const §8"%§:String = "CountrySelectionState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §8"%§ = "CountrySelectionState";
         }
      }
      
      private var §#!T§:Boolean = true;
      
      public function §?"7§(param1:§0![§, param2:§+f§, param3:§4O§, param4:Boolean = true, param5:String = "CountrySelectionState")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super(param1,param4,param5,param2);
         }
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §7I§.§7!%§.Views.ViewCountrySelection[0];
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            while(true)
            {
               §^!T§ = new §9%§(this);
               while(_loc1_ || _loc2_)
               {
                  §^!T§.init(this.§'!,§());
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.activate(param1);
            while(true)
            {
               §@!S§.§2A§.§`!V§(false);
               addr120:
               if(!(_loc2_ || param1))
               {
                  continue;
               }
               addr127:
               §§push(§ !4§.§%"7§);
               if(_loc2_ || _loc3_)
               {
                  addr93:
                  §§push(§§pop().§+!J§);
                  if(_loc2_ || _loc3_)
                  {
                     §§pop().openPopup(new §]A§(§^!T§.container),false,false,true,true);
                     loop8:
                     while(true)
                     {
                        AngryBirdsCustom.§get §();
                        loop9:
                        while(true)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              if(!this.§#!T§)
                              {
                                 break;
                              }
                              if(_loc2_)
                              {
                                 continue loop8;
                              }
                              addr59:
                              while(_loc2_)
                              {
                                 this.§#!T§ = false;
                                 if(!_loc3_)
                                 {
                                    break loop9;
                                 }
                              }
                              continue;
                           }
                           loop4:
                           while(true)
                           {
                              §§push(§ !4§.§%"7§);
                              addr114:
                              while(!_loc3_)
                              {
                                 §§push(§§pop().§+!J§);
                                 §§goto(addr127);
                              }
                              addr135:
                              while(true)
                              {
                                 (§§pop() as AngryBirdsCustom).§+!a§(false);
                                 addr139:
                                 while(true)
                                 {
                                    this.updateLocalization();
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        return;
                     }
                  }
                  while(true)
                  {
                     §§pop().closeAllPopups();
                     §§goto(addr118);
                     §§goto(addr93);
                  }
               }
               §§goto(addr114);
            }
         }
         §§goto(addr155);
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §@"#§.§,2§.updateTextFields(§^!T§.container,"CountrySelectionState");
         }
      }
      
      private function §>0§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§@"#§.§,2§);
            loop0:
            while(true)
            {
               §§pop().setLanguage(param1);
               addr85:
               while(true)
               {
                  §8&§.setLanguage(param1);
                  continue loop0;
               }
            }
         }
         §§goto(addr47);
      }
      
      private function §@v§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§4Z§ = (§ !4§.§%"7§ as AngryBirdsCustom).§6!"§;
         if(!_loc2_)
         {
            if(_loc1_.§8"§())
            {
               if(_loc3_ || _loc3_)
               {
                  §§push(§@"#§.§,2§);
                  loop0:
                  while(true)
                  {
                     §§push(_loc1_.country);
                     addr96:
                     while(true)
                     {
                        §§pop().§7!3§(§§pop());
                        continue loop0;
                     }
                  }
                  addr94:
               }
               loop2:
               while(true)
               {
                  §§push(§@"#§.§,2§);
                  if(!_loc2_)
                  {
                     §§push(_loc1_.language);
                     if(!(_loc2_ && this))
                     {
                        §§pop().setLanguage(§§pop());
                        while(true)
                        {
                           §7"6§(§%!<§.§8"%§);
                           if(!(_loc2_ && _loc1_))
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                        }
                        addr27:
                        return;
                        addr71:
                     }
                  }
                  else
                  {
                     §§goto(addr94);
                  }
                  §§goto(addr96);
               }
            }
            §§goto(addr27);
         }
         §§goto(addr71);
      }
   }
}
