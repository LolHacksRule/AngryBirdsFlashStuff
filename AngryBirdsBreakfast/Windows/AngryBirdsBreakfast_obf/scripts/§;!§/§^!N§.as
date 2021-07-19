package §;!§
{
   import §"n§.§!!G§;
   import §&v§.§#!R§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §<G§.§2C§;
   import §[!i§.§-!`§;
   import com.angrybirds.§&!"§;
   
   public class §^!N§ extends §;" §
   {
      
      public static const §-!q§:String = "LanguageSelectionState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-!q§ = "LanguageSelectionState";
         }
      }
      
      public function §^!N§(param1:§5!Y§, param2:§6h§, param3:§#!R§, param4:Boolean = true, param5:String = "LanguageSelectionState")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            super(param1,param4,param5,param2);
         }
      }
      
      protected function §`!K§() : XML
      {
         var _loc1_:XML = §#"0§.§+#§.Views.ViewLanguageSelection[0];
         return §4!=§.§'!u§(_loc1_);
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
               §?P§ = new §2W§(this);
               addr45:
               if(_loc2_ && this)
               {
                  continue;
               }
               return;
               addr52:
            }
         }
         while(true)
         {
            §?P§.init(this.§`!K§());
            while(!(_loc2_ && this))
            {
               §?P§.movieClip.cacheAsBitmap = true;
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr45);
            }
         }
         §§goto(addr52);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.activate(param1);
         }
         §§push((§6!!§.singleton as §4!=§).§?!b§.§'!]§());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            if(!_loc2_)
            {
               while(true)
               {
                  §&!"§.§1!D§.§"!Q§(false);
                  loop1:
                  while(_loc4_ || this)
                  {
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           this.updateLocalization();
                           loop3:
                           while(true)
                           {
                              if(!(_loc4_ || param1))
                              {
                                 addr145:
                                 §!!G§.§2Z§.setLanguage(_loc2_);
                                 break;
                              }
                              §§push(§6!!§.singleton);
                              while(true)
                              {
                                 §§pop().§%![§.openPopup(new §-!`§(§?P§.container));
                                 §§push(§6!!§.singleton);
                                 addr90:
                                 continue loop3;
                                 if(!(_loc3_ && param1))
                                 {
                                    (§§pop() as §4!=§).§"!<§();
                                    if(_loc4_)
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          return;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           §-!]§.setLanguage(_loc2_);
                        }
                        addr116:
                     }
                     §<f§(§`B§.§-!q§);
                     break;
                  }
                  return;
               }
            }
            §§goto(addr145);
         }
         §§goto(addr116);
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §!!G§.§2Z§.updateTextFields(§?P§.container,"LanguageSelectionState");
         }
      }
      
      private function §0t§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(§!!G§.§2Z§);
            loop0:
            while(true)
            {
               §§pop().setLanguage(param1);
               addr91:
               while(true)
               {
                  §-!]§.setLanguage(param1);
                  continue loop0;
               }
            }
         }
         §§goto(addr71);
      }
   }
}
