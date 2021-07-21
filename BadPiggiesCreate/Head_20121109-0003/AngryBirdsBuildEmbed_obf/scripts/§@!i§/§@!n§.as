package §@!i§
{
   import § !r§.§`![§;
   import §!!8§.§"!i§;
   import §!!8§.§-!D§;
   import §+]§.§"U§;
   import §-!0§.§2! §;
   import §-!0§.§=J§;
   import §1!F§.§4!&§;
   import §1j§.§=q§;
   import §?!-§.§'!V§;
   import §`a§.§^7§;
   
   public class §@!n§ extends §4!&§
   {
      
      public static const STATE_NAME:String = "LevelLoadStateEditor";
      
      private static var §9!p§:§2! § = null;
      
      private static var §3w§:String = null;
      
      private static var §=!6§:String = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            STATE_NAME = "LevelLoadStateEditor";
            if(!_loc1_)
            {
               §§goto(addr34);
            }
            §§goto(addr44);
         }
         addr34:
         if(_loc2_)
         {
            §3w§ = null;
            if(!_loc1_)
            {
               addr44:
               §=!6§ = null;
            }
         }
      }
      
      public function §@!n§(param1:Boolean = true, param2:String = "LevelLoadStateEditor")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param1,param2);
         }
      }
      
      public static function loadLevel(param1:§2! §, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §>V§ = §8-§;
            if(!(_loc4_ && param1))
            {
               §9!p§ = param1;
               if(_loc3_ || param1)
               {
                  §3w§ = param2;
                  if(_loc3_ || param2)
                  {
                     addr73:
                     §^7§.§>!B§(param2 == StateLevelEditor.STATE_NAME);
                  }
               }
               return;
            }
         }
         §§goto(addr73);
      }
      
      public static function §%!]§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §>V§ = §8-§;
            if(_loc2_)
            {
               §§goto(addr38);
            }
            §§goto(addr49);
         }
         addr38:
         §9!p§ = new §2! §();
         if(!(_loc3_ && param1))
         {
            addr49:
            §3w§ = param1;
         }
      }
      
      public static function §'p§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §>V§ = §8-§;
            if(!(_loc3_ && _loc3_))
            {
               §9!p§ = §"U§.getCurrentLevelData();
               if(_loc2_)
               {
                  addr44:
                  §3w§ = param1;
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public static function §,c§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §>V§ = §8-§;
            if(_loc3_ || §@!n§)
            {
               addr53:
               §=!6§ = param2;
               if(_loc3_)
               {
                  §3w§ = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr68:
                     §9!p§ = null;
                  }
                  return;
               }
            }
            §§goto(addr68);
         }
         §§goto(addr53);
      }
      
      public static function §!=§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §>V§ = §8-§;
            if(_loc3_)
            {
               addr24:
               §3w§ = param1;
            }
            return;
         }
         §§goto(addr24);
      }
      
      override protected function initLevelLoad() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§=!6§);
            if(!_loc2_)
            {
               §§push(§§pop() == null);
               if(_loc1_)
               {
                  §§push(!§§pop());
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc1_)
                        {
                        }
                     }
                     §§goto(addr59);
                  }
                  §§pop();
                  if(!_loc2_)
                  {
                     addr56:
                     addr59:
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           §"!i§.loadLevel(§=!6§,this.§[O§,this.§"!2§);
                           if(!(_loc2_ && this))
                           {
                              §=!6§ = null;
                              if(_loc1_)
                              {
                                 addr81:
                              }
                           }
                        }
                        §§goto(addr81);
                     }
                     else
                     {
                        this.initLevelMain(§9!p§);
                     }
                     return;
                     §§push(§=!6§.length > 0);
                  }
               }
               §§goto(addr59);
            }
            §§goto(addr56);
         }
         §§goto(addr81);
      }
      
      override public function isReady() : Boolean
      {
         return §'!V§.§1!2§.mReadyToRun;
      }
      
      override public function onLevelLoadReady() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(§3w§ != null)
            {
               if(!_loc2_)
               {
                  mNextState = §3w§;
                  if(!_loc2_)
                  {
                     addr53:
                     §3w§ = null;
                     if(_loc1_ || _loc2_)
                     {
                     }
                  }
                  §§goto(addr73);
               }
               addr70:
               §-!D§.§?5§("onLevelLoaded");
            }
            else
            {
               mNextState = StateLevelEditor.STATE_NAME;
               if(_loc1_)
               {
                  §§goto(addr70);
               }
            }
            addr73:
            return;
         }
         §§goto(addr53);
      }
      
      public function §[O§(param1:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §9!p§ = §=J§.§%!G§(param1 as String);
            if(!(_loc3_ && _loc3_))
            {
               addr43:
               this.initLevelMain(§9!p§);
            }
            var _loc2_:Object = JSON.parse(param1 as String);
            if(!(_loc3_ && this))
            {
               _loc2_.thumbnail = null;
               if(_loc4_ || this)
               {
                  addr80:
                  _loc2_.data = null;
                  if(_loc4_ || _loc2_)
                  {
                     §-!D§.§?5§("onLevelChange",_loc2_);
                  }
               }
               return;
            }
            §§goto(addr80);
         }
         §§goto(addr43);
      }
      
      override protected function initLevelMain(param1:§2! §) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.initLevelMain(param1);
            if(!(_loc3_ && _loc2_))
            {
               if(param1 is §=J§)
               {
                  if(_loc2_ || _loc3_)
                  {
                     §"U§.§=O§ = (param1 as §=J§).info;
                     if(_loc2_ || _loc3_)
                     {
                        addr72:
                        §=q§.§]!j§(param1 as §=J§);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr72);
      }
      
      public function §"!2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`![§.log("LEVEL LOAD FAILED!!");
         }
      }
   }
}
