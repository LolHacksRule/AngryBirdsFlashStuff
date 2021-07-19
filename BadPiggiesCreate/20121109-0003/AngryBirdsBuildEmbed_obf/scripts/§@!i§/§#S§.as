package §@!i§
{
   import § !r§.Base64;
   import §!!8§.§-!D§;
   import §!"§.§!!v§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §#!4§.§+!S§;
   import §+]§.§"U§;
   import §1!F§.§"![§;
   import §1?§.§+!§;
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §#S§ extends §"![§
   {
      
      public static const STATE_NAME:String = "LevelEndStateEditor";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            STATE_NAME = "LevelEndStateEditor";
         }
      }
      
      public function §#S§(param1:Boolean = false, param2:String = "LevelEndStateEditor")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.init();
            if(_loc1_)
            {
               §+!$§ = new §2U§(this);
               if(_loc1_)
               {
                  §+!$§.init(§=!Z§.§;K§.Views.View_LevelEndEditor[0]);
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.activate();
         if(§?!W§())
         {
            if(!(_loc1_ && _loc2_))
            {
               (§+!$§.getItemByName("BUTTON_PUBLISH") as §#!'§).setEnabled(true);
               if(!(_loc1_ && _loc1_))
               {
                  (§+!$§.getItemByName("BUTTON_PUBLISH") as §#!'§).mClip.filters = [];
                  if(_loc2_ || _loc2_)
                  {
                  }
                  §§goto(addr103);
               }
               addr93:
               (§+!$§.getItemByName("BUTTON_PUBLISH") as §#!'§).mClip.filters = [StateLevelEditor.§finally§()];
            }
         }
         else
         {
            (§+!$§.getItemByName("BUTTON_PUBLISH") as §#!'§).setEnabled(false);
            if(_loc2_ || this)
            {
               §§goto(addr93);
            }
         }
         addr103:
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:Object = null;
         var _loc5_:BitmapData = null;
         var _loc6_:ByteArray = null;
         var _loc7_:* = param2;
         if(_loc8_)
         {
            §§push("REPLAY");
            if(_loc8_)
            {
               §§push(_loc7_);
               if(!_loc9_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc8_)
                     {
                        addr152:
                        §§push(0);
                        if(!_loc8_)
                        {
                        }
                        §§goto(addr200);
                     }
                     else
                     {
                        §§goto(addr180);
                     }
                  }
                  else
                  {
                     §§push("MENU");
                     if(!(_loc9_ && param2))
                     {
                        addr174:
                        §§push(_loc7_);
                        if(_loc8_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc9_)
                              {
                                 addr180:
                                 §§push(1);
                                 if(_loc8_ || param3)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              addr191:
                              if("PUBLISH" !== _loc7_)
                              {
                                 addr200:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       §@!n§.§!=§(StateLevelEditorTestPlay.STATE_NAME);
                                       if(_loc9_)
                                       {
                                          addr50:
                                          §@!n§.§!=§(StateLevelEditor.STATE_NAME);
                                          if(_loc8_ || param3)
                                          {
                                             mNextState = §@!n§.STATE_NAME;
                                             if(_loc9_ && param2)
                                             {
                                             }
                                             break;
                                          }
                                          break;
                                       }
                                       mNextState = §@!n§.STATE_NAME;
                                       if(!_loc9_)
                                       {
                                          break;
                                       }
                                       break;
                                    case 1:
                                       §+!§.§'!Q§();
                                       if(_loc8_ || param1)
                                       {
                                          §§goto(addr50);
                                       }
                                       break;
                                    case 2:
                                       if(!(_loc4_ = §"U§.§4!Z§()).valid)
                                       {
                                          _loc4_ = new Object();
                                          if(_loc8_)
                                          {
                                             addr119:
                                             §-!D§.§?5§("onPublish",JSON.stringify(_loc4_));
                                             if(_loc8_ || param3)
                                             {
                                                addr132:
                                                super.uiInteractionHandler(param1,param2,param3);
                                             }
                                          }
                                          break;
                                       }
                                       _loc5_ = StateLevelEditorTestPlay.§^!`§();
                                       _loc6_ = §!!v§.encode(_loc5_);
                                       if(_loc8_ || param3)
                                       {
                                          _loc4_.screen = Base64.§=G§(_loc6_);
                                       }
                                       §§goto(addr119);
                                    default:
                                       §§goto(addr132);
                                 }
                                 return;
                                 §§push(3);
                              }
                           }
                           §§goto(addr200);
                           §§goto(addr200);
                        }
                     }
                     §§goto(addr191);
                  }
                  §§goto(addr200);
               }
               §§goto(addr191);
            }
            §§goto(addr174);
         }
         §§goto(addr152);
      }
   }
}
