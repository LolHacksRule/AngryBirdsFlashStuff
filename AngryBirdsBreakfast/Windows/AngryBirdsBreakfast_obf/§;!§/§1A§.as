package §;!§
{
   import §"n§.§!!G§;
   import §,L§.§6!W§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import com.angrybirds.§&!"§;
   
   public class §1A§ extends §;" §
   {
      
      public static const §-!q§:String = "LegalState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-!q§ = "LegalState";
         }
      }
      
      public function §1A§(param1:§5!Y§, param2:§6h§, param3:Boolean = true, param4:String = "LegalState")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param3,param4,param2);
         }
      }
      
      protected function §`!K§() : XML
      {
         return §#"0§.§+#§.Views.ViewLegal[0];
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            while(true)
            {
               §?P§ = new §2W§(this);
               while(_loc2_)
               {
                  §?P§.init(this.§`!K§());
                  loop2:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        §?P§.movieClip.cacheAsBitmap = true;
                        if(!(_loc1_ && _loc2_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activate(param1);
            while(true)
            {
               §&!"§.§1!D§.§"!Q§(false);
               loop1:
               while(_loc3_)
               {
                  §6!!§.singleton.§%![§.§[!"§();
                  while(true)
                  {
                     this.updateLocalization();
                     if(!_loc2_)
                     {
                        if(_loc3_)
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
         §§goto(addr47);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param3))
         {
            if("AGREE" !== _loc4_)
            {
               if("DISAGREE" === _loc4_)
               {
                  §§goto(addr142);
               }
               else
               {
                  §§push(2);
               }
               addr165:
               switch(§§pop())
               {
                  case 0:
                     addr116:
                     §6!!§.singleton.§<f§(§4!9§.§-!q§);
                     §'!c§.§3!f§("Menu_Confirm");
                     break;
                     addr117:
                     addr114:
                     addr109:
                  case 1:
                     §§push(§6!!§.singleton);
                     loop0:
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           (§§pop() as §4!=§).§=D§(false);
                           while(_loc6_)
                           {
                              §§push(§6!!§.singleton);
                              continue loop0;
                           }
                           §§goto(addr117);
                           addr102:
                        }
                        else
                        {
                           §§goto(addr114);
                        }
                     }
                     §§goto(addr116);
               }
               return;
            }
            if(!_loc5_)
            {
               addr135:
               §§push(0);
               if(!_loc6_)
               {
               }
            }
            else
            {
               addr142:
               §§push(1);
               if(_loc6_ || param2)
               {
               }
            }
            §§goto(addr165);
            §§goto(addr142);
         }
         §§goto(addr135);
      }
      
      override public function updateLocalization() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!!G§.§2Z§.updateTextFields(§?P§.container,"LegalState");
         }
      }
   }
}
