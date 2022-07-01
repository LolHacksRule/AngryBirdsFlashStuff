package §-w§
{
   import §&_§.§>!D§;
   import §1l§.PopupClosedEvent;
   import §5u§.§4!m§;
   import §?!v§.§&r§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §3!M§ extends §;3§
   {
       
      
      private var § !q§:Vector.<§>!D§>;
      
      public function §3!M§(param1:§4!m§, param2:§&r§, param3:int, param4:§"!"§ = null, param5:§]!C§ = null)
      {
         super(param1,param2,param3,param4,param5);
         this.§ !q§ = new Vector.<§>!D§>();
      }
      
      protected function §;m§(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean, param6:Boolean) : §>!D§
      {
         return new §>!D§(§&D§,param4,param1,param2,param3,param5,param6);
      }
      
      override protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         §%0§.userProgress.saveTutorialSeen(param2);
         var _loc9_:Boolean = param5;
         var _loc10_:Boolean = param6;
         var _loc11_:§>!D§ = this.§;m§(param1,param2,param3,param4,_loc9_,_loc10_);
         this.§ !q§.push(_loc11_);
         _loc11_.addEventListener(PopupClosedEvent.§["%§,this.§8D§);
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§&!i§(false);
         §<M§.openPopup(_loc11_,param5,param6,param7,param8);
      }
      
      override public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§"!"§ = null, param8:Boolean = true) : void
      {
         var _loc10_:* = false;
         if(!param5)
         {
            if(§%0§.userProgress.hasTutorialBeenSeen(param1))
            {
               return;
            }
         }
         if(param7 != null)
         {
            §`!$§ = param7;
         }
         var _loc9_:MovieClip = §`!$§.solve(param1);
         param8 = !param8 && §<M§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc9_)
         {
            _loc10_ = !§%0§.userProgress.hasTutorialBeenSeen(param1);
            this.openPopup(_loc9_,param1,_loc10_,param2,param3,param4,param6,param8);
         }
      }
      
      private function §8D§(param1:Event) : void
      {
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§ !q§.length)
         {
            if(this.§ !q§[_loc3_] == param1.target)
            {
               _loc2_ = _loc3_;
            }
            _loc3_++;
         }
         if(_loc2_ >= 0)
         {
            this.§ !q§.splice(_loc2_,1);
         }
         if(this.§ !q§.length == 0)
         {
            if((§-!I§.§[f§ as AngryBirdsCustom).§=!F§)
            {
               if((§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§ !`§())
               {
                  (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§70§(true);
               }
               else
               {
                  (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§&!i§(true);
               }
            }
         }
      }
   }
}
