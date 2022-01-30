package §!!i§
{
   import §!!`§.§12§;
   import §3@§.§`!h§;
   import §4;§.PopupClosedEvent;
   import §@!l§.§;]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §4y§ extends §>!j§
   {
       
      
      private var § !v§:Vector.<§;]§>;
      
      public function §4y§(param1:§12§, param2:§`!h§, param3:int, param4:§0<§ = null, param5:§%!U§ = null)
      {
         super(param1,param2,param3,param4,param5);
         this.§ !v§ = new Vector.<§;]§>();
      }
      
      protected function §`S§(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean, param6:Boolean) : §;]§
      {
         return new §;]§(§2B§,param4,param1,param2,param3,param5,param6);
      }
      
      override protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         §`p§.userProgress.saveTutorialSeen(param2);
         var _loc9_:Boolean = param5;
         var _loc10_:Boolean = param6;
         var _loc11_:§;]§ = this.§`S§(param1,param2,param3,param4,_loc9_,_loc10_);
         this.§ !v§.push(_loc11_);
         _loc11_.addEventListener(PopupClosedEvent.§-!!§,this.§!n§);
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§9!X§(false);
         §`Z§.openPopup(_loc11_,param5,param6,param7,param8);
      }
      
      override public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§0<§ = null, param8:Boolean = true) : void
      {
         var _loc10_:* = false;
         if(!param5)
         {
            if(§`p§.userProgress.hasTutorialBeenSeen(param1))
            {
               return;
            }
         }
         if(param7 != null)
         {
            §#_§ = param7;
         }
         var _loc9_:MovieClip = §#_§.solve(param1);
         param8 = !param8 && §`Z§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc9_)
         {
            _loc10_ = !§`p§.userProgress.hasTutorialBeenSeen(param1);
            this.openPopup(_loc9_,param1,_loc10_,param2,param3,param4,param6,param8);
         }
      }
      
      private function §!n§(param1:Event) : void
      {
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§ !v§.length)
         {
            if(this.§ !v§[_loc3_] == param1.target)
            {
               _loc2_ = _loc3_;
            }
            _loc3_++;
         }
         if(_loc2_ >= 0)
         {
            this.§ !v§.splice(_loc2_,1);
         }
         if(this.§ !v§.length == 0)
         {
            if((§,!X§.§>!G§ as AngryBirdsCustom).§@b§)
            {
               if((§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§^D§())
               {
                  (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§?q§(true);
               }
               else
               {
                  (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§9!X§(true);
               }
            }
         }
      }
   }
}
