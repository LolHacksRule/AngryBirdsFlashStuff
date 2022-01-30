package §7;§
{
   import §1!s§.§5a§;
   import §2!,§.§1S§;
   import §4!4§.PopupClosedEvent;
   import §?u§.override;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §1!m§ extends § K§
   {
       
      
      private var §0!B§:Vector.<§1S§>;
      
      public function §1!m§(param1:§5a§, param2:override, param3:int, param4:§'!K§ = null, param5:§8!R§ = null)
      {
         super(param1,param2,param3,param4,param5);
         this.§0!B§ = new Vector.<§1S§>();
      }
      
      protected function §4!n§(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean, param6:Boolean) : §1S§
      {
         return new §1S§(§#!;§,param4,param1,param2,param3,param5,param6);
      }
      
      override public function openMultipleTutorialPopups(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§'!K§ = null, param7:Boolean = true, param8:Boolean = true) : void
      {
         super.openMultipleTutorialPopups(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§"x§(param1);
      }
      
      protected function §"x§(param1:Vector.<String>) : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = "";
         _loc3_ = param1.length - 1;
         while(_loc3_ >= 0)
         {
            if(§+!L§.userProgress.hasTutorialBeenSeen(param1[_loc3_]))
            {
               param1.splice(_loc3_,1);
            }
            _loc3_--;
         }
         _loc3_ = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ += param1[_loc3_];
            if(_loc3_ != param1.length - 1)
            {
               _loc2_ += ",";
            }
            _loc3_++;
         }
         if(_loc2_.length > 0)
         {
            §+!L§.userProgress.saveTutorialSeen(_loc2_);
         }
      }
      
      override protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         var _loc9_:Boolean = param5;
         var _loc10_:Boolean = param6;
         var _loc11_:§1S§ = this.§4!n§(param1,param2,param3,param4,_loc9_,_loc10_);
         this.§0!B§.push(_loc11_);
         _loc11_.addEventListener(PopupClosedEvent.§3!%§,this.§`!G§);
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§%"-§(false);
         §,#§.openPopup(_loc11_,param5,param6,param7,param8);
      }
      
      override public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§'!K§ = null, param8:Boolean = true) : void
      {
         var _loc10_:* = false;
         if(!param5)
         {
            if(§+!L§.userProgress.hasTutorialBeenSeen(param1))
            {
               return;
            }
         }
         if(param7 != null)
         {
            §@"'§ = param7;
         }
         var _loc9_:MovieClip = §@"'§.solve(param1);
         param8 = !param8 && §,#§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc9_)
         {
            _loc10_ = !§+!L§.userProgress.hasTutorialBeenSeen(param1);
            this.openPopup(_loc9_,param1,_loc10_,param2,param3,param4,param6,param8);
            if(!§+!L§.userProgress.hasTutorialBeenSeen(param1))
            {
               §+!L§.userProgress.saveTutorialSeen(param1);
            }
         }
      }
      
      private function §`!G§(param1:Event) : void
      {
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§0!B§.length)
         {
            if(this.§0!B§[_loc3_] == param1.target)
            {
               _loc2_ = _loc3_;
            }
            _loc3_++;
         }
         if(_loc2_ >= 0)
         {
            this.§0!B§.splice(_loc2_,1);
         }
         if(this.§0!B§.length == 0)
         {
            if((§-!2§.§7O§ as AngryBirdsCustom).§6!<§)
            {
               if((§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§;9§())
               {
                  (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!§(true);
               }
               else
               {
                  (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§%"-§(true);
               }
            }
         }
      }
   }
}
