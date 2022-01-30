package §=!k§
{
   import § S§.§!H§;
   import §#!n§.§+!o§;
   import §=&§.PopupClosedEvent;
   import §?I§.§&7§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §"M§ extends §[!4§
   {
       
      
      private var §8"$§:Vector.<§&7§>;
      
      public function §"M§(param1:§!H§, param2:§+!o§, param3:int, param4:§;z§ = null, param5:§;!P§ = null)
      {
         super(param1,param2,param3,param4,param5);
         this.§8"$§ = new Vector.<§&7§>();
      }
      
      protected function §,"2§(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean, param6:Boolean) : §&7§
      {
         return new §&7§(§+!j§,param4,param1,param2,param3,param5,param6);
      }
      
      override public function openMultipleTutorialPopups(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§;z§ = null, param7:Boolean = true, param8:Boolean = true) : void
      {
         super.openMultipleTutorialPopups(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§"i§(param1);
      }
      
      protected function §"i§(param1:Vector.<String>) : *
      {
         var _loc3_:int = 0;
         var _loc2_:* = "";
         _loc3_ = param1.length - 1;
         while(_loc3_ >= 0)
         {
            if(§%""§.userProgress.hasTutorialBeenSeen(param1[_loc3_]))
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
            §%""§.userProgress.saveTutorialSeen(_loc2_);
         }
      }
      
      override protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         var _loc9_:Boolean = param5;
         var _loc10_:Boolean = param6;
         var _loc11_:§&7§ = this.§,"2§(param1,param2,param3,param4,_loc9_,_loc10_);
         this.§8"$§.push(_loc11_);
         _loc11_.addEventListener(PopupClosedEvent.§3!X§,this.§import§);
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+$§(false);
         §3X§.openPopup(_loc11_,param5,param6,param7,param8);
      }
      
      override public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§;z§ = null, param8:Boolean = true) : void
      {
         var _loc10_:* = false;
         if(!param5)
         {
            if(§%""§.userProgress.hasTutorialBeenSeen(param1))
            {
               return;
            }
         }
         if(param7 != null)
         {
            §1t§ = param7;
         }
         var _loc9_:MovieClip = §1t§.solve(param1);
         param8 = !param8 && §3X§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc9_)
         {
            _loc10_ = !§%""§.userProgress.hasTutorialBeenSeen(param1);
            this.openPopup(_loc9_,param1,_loc10_,param2,param3,param4,param6,param8);
            if(!§%""§.userProgress.hasTutorialBeenSeen(param1))
            {
               §%""§.userProgress.saveTutorialSeen(param1);
            }
         }
      }
      
      private function §import§(param1:Event) : void
      {
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§8"$§.length)
         {
            if(this.§8"$§[_loc3_] == param1.target)
            {
               _loc2_ = _loc3_;
            }
            _loc3_++;
         }
         if(_loc2_ >= 0)
         {
            this.§8"$§.splice(_loc2_,1);
         }
         if(this.§8"$§.length == 0)
         {
            if((§-O§.§5!1§ as AngryBirdsCustom).§9]§)
            {
               if((§-O§.§5!1§ as AngryBirdsCustom).§9]§.§`!E§())
               {
                  (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+;§(true);
               }
               else
               {
                  (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+$§(true);
               }
            }
         }
      }
   }
}
