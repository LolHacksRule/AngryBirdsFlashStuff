package §^"!§
{
   import §'!3§.§62§;
   import §1![§.§`w§;
   import §1!i§.§^Q§;
   import §>G§.PopupClosedEvent;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §4!8§ extends §+!7§
   {
       
      
      private var §""3§:Vector.<§62§>;
      
      public function §4!8§(param1:§^Q§, param2:§`w§, param3:int, param4:§>!n§ = null, param5:§;w§ = null)
      {
         super(param1,param2,param3,param4,param5);
         this.§""3§ = new Vector.<§62§>();
      }
      
      protected function §]M§(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean, param6:Boolean) : §62§
      {
         return new §62§(§#W§,param4,param1,param2,param3,param5,param6);
      }
      
      override public function openMultipleTutorialPopups(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§>!n§ = null, param7:Boolean = true, param8:Boolean = true) : void
      {
         super.openMultipleTutorialPopups(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§>"0§(param1);
      }
      
      protected function §>"0§(param1:Vector.<String>) : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = "";
         _loc3_ = param1.length - 1;
         while(_loc3_ >= 0)
         {
            if(§6!4§.userProgress.hasTutorialBeenSeen(param1[_loc3_]))
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
            §6!4§.userProgress.saveTutorialSeen(_loc2_);
         }
      }
      
      override protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         var _loc9_:Boolean = param5;
         var _loc10_:Boolean = param6;
         var _loc11_:§62§ = this.§]M§(param1,param2,param3,param4,_loc9_,_loc10_);
         this.§""3§.push(_loc11_);
         _loc11_.addEventListener(PopupClosedEvent.§8!;§,this.§^!9§);
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§2!J§(false);
         §#!c§.openPopup(_loc11_,param5,param6,param7,param8);
      }
      
      override public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§>!n§ = null, param8:Boolean = true) : void
      {
         var _loc10_:* = false;
         if(!param5)
         {
            if(§6!4§.userProgress.hasTutorialBeenSeen(param1))
            {
               return;
            }
         }
         if(param7 != null)
         {
            §6@§ = param7;
         }
         var _loc9_:MovieClip = §6@§.solve(param1);
         param8 = !param8 && §#!c§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc9_)
         {
            _loc10_ = !§6!4§.userProgress.hasTutorialBeenSeen(param1);
            this.openPopup(_loc9_,param1,_loc10_,param2,param3,param4,param6,param8);
            if(!§6!4§.userProgress.hasTutorialBeenSeen(param1))
            {
               §6!4§.userProgress.saveTutorialSeen(param1);
            }
         }
      }
      
      private function §^!9§(param1:Event) : void
      {
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§""3§.length)
         {
            if(this.§""3§[_loc3_] == param1.target)
            {
               _loc2_ = _loc3_;
            }
            _loc3_++;
         }
         if(_loc2_ >= 0)
         {
            this.§""3§.splice(_loc2_,1);
         }
         if(this.§""3§.length == 0)
         {
            if((§ !4§.§%"7§ as AngryBirdsCustom).§<=§)
            {
               if((§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§8!E§())
               {
                  (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§;!I§(true);
               }
               else
               {
                  (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§2!J§(true);
               }
            }
         }
      }
   }
}
