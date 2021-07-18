package §1!F§
{
   import §!!8§.§-!D§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §+]§.§"U§;
   import §+]§.§7&§;
   import §-!0§.§2! §;
   import §1?§.§+!§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §@!i§.§@!n§;
   import §@!i§.StateLevelEditor;
   import §@!i§.StateLevelPreview;
   import flash.system.System;
   
   public class §6+§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "InitState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            STATE_NAME = "InitState";
         }
      }
      
      private var §7L§:Boolean = false;
      
      private var §?!_§:Boolean = true;
      
      public function §6+§(param1:Boolean = false, param2:String = "InitState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super(param1,param2);
            if(!(_loc4_ && param2))
            {
               §-!D§.§<!C§("loadLevel",this.§3[§);
               if(!_loc4_)
               {
                  §-!D§.§<!C§("loadFromMemory",this.§[!Q§);
                  if(_loc4_)
                  {
                  }
               }
               §§goto(addr73);
            }
            §-!D§.§<!C§("suspend",this.suspend);
         }
         addr73:
      }
      
      private function §3!N§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            System.setClipboard(param1);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.init();
            if(_loc1_ || _loc2_)
            {
               §§goto(addr52);
            }
            §§goto(addr64);
         }
         addr52:
         §+!$§ = new §2U§(this);
         if(_loc1_ || _loc1_)
         {
            addr64:
            §+!$§.init(§=!Z§.§;K§.Views.View_Initialize[0]);
            if(_loc1_ || _loc2_)
            {
               §7&§.init();
            }
         }
      }
      
      private function suspend() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §35§.§`!d§.§?8§().mNextState = STATE_NAME;
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr45);
            }
            §§goto(addr49);
         }
         addr45:
         §+!§.§'!Q§();
         if(_loc1_)
         {
            addr49:
            §'!V§.pause();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.activate();
            §7&§.§=n§().§^s§("{\"saveButton\":true}");
            if(this.§?!_§)
            {
               if(_loc1_)
               {
                  §-!D§.§?5§("onFlashInitialize");
                  this.§?!_§ = false;
                  if(_loc2_ && this)
                  {
                  }
                  §§goto(addr71);
               }
               this.§3[§("","edit");
            }
         }
         addr71:
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.deActivate();
         }
      }
      
      override public function getTargetFrameRate() : int
      {
         return 1;
      }
      
      private function §[!Q§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§2! § = §"U§.§4!;§();
         if(!_loc2_)
         {
            §§push(§@!n§);
            if(_loc3_)
            {
               §§pop().loadLevel(!!_loc1_ ? _loc1_ : new §2! §(),StateLevelEditor.STATE_NAME);
               if(_loc3_)
               {
                  addr49:
                  §35§.§`!d§.§?8§().mNextState = §@!n§.STATE_NAME;
               }
               return;
            }
            §§goto(addr38);
         }
         §§goto(addr49);
      }
      
      public function §3[§(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         if(!(_loc5_ && param1))
         {
            §§push(param1);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() == null);
               if(!(_loc5_ && param2))
               {
                  if(!§§pop())
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        addr62:
                        §§pop();
                        §§goto(addr82);
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc5_ && param2))
                     {
                        addr82:
                        if(_loc4_ || param1)
                        {
                           addr71:
                           §§push(param1.length == 0);
                        }
                        §@!n§.loadLevel(new §2! §(),StateLevelEditor.STATE_NAME);
                        if(!_loc5_)
                        {
                           addr123:
                           §35§.§`!d§.§?8§().mNextState = §@!n§.STATE_NAME;
                           addr100:
                        }
                        return;
                     }
                     §§goto(addr100);
                  }
                  else
                  {
                     _loc3_ = {
                        "edit":StateLevelEditor.STATE_NAME,
                        "play":StatePlayBS.STATE_NAME,
                        "preview":StateLevelPreview.STATE_NAME
                     };
                     if(!_loc5_)
                     {
                        §@!n§.loadLevel(§2! §.§%!G§(param1),_loc3_[param2]);
                     }
                  }
                  §§goto(addr123);
               }
               §§goto(addr62);
            }
            §§goto(addr71);
         }
         §§goto(addr62);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(mNextState.length > 0)
            {
               if(_loc3_ || this)
               {
                  §§goto(addr40);
               }
            }
            return §;!!§.STATE_STATUS_RUNNING;
         }
         addr40:
         return §;!!§.STATE_STATUS_COMPLETED;
      }
   }
}
