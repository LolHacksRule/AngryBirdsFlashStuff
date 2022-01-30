package §#@§
{
   import §%9§.§-!s§;
   import §??§.PopupClosedEvent;
   import §?N§.§+!J§;
   import §[j§.§-?§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §85§ extends §^!^§
   {
       
      
      private var §`!I§:Vector.<§-!s§>;
      
      public function §85§(param1:§+!J§, param2:§-?§, param3:int, param4:§ "&§ = null, param5:§49§ = null)
      {
         super(param1,param2,param3,param4,param5);
         this.§`!I§ = new Vector.<§-!s§>();
      }
      
      protected function §'8§(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean, param6:Boolean) : §-!s§
      {
         return new §-!s§(§<u§,param4,param1,param2,param3,param5,param6);
      }
      
      override protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         §^!g§.userProgress.saveTutorialSeen(param2);
         var _loc9_:Boolean = param5;
         var _loc10_:Boolean = param6;
         var _loc11_:§-!s§ = this.§'8§(param1,param2,param3,param4,_loc9_,_loc10_);
         this.§`!I§.push(_loc11_);
         _loc11_.addEventListener(PopupClosedEvent.§ b§,this.§'"&§);
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§<<§(false);
         §'!`§.openPopup(_loc11_,param5,param6,param7,param8);
      }
      
      override public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§ "&§ = null, param8:Boolean = true) : void
      {
         var _loc10_:* = false;
         if(!param5)
         {
            if(§^!g§.userProgress.hasTutorialBeenSeen(param1))
            {
               return;
            }
         }
         if(param7 != null)
         {
            §%!6§ = param7;
         }
         var _loc9_:MovieClip = §%!6§.solve(param1);
         param8 = !param8 && §'!`§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc9_)
         {
            _loc10_ = !§^!g§.userProgress.hasTutorialBeenSeen(param1);
            this.openPopup(_loc9_,param1,_loc10_,param2,param3,param4,param6,param8);
         }
      }
      
      private function §'"&§(param1:Event) : void
      {
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§`!I§.length)
         {
            if(this.§`!I§[_loc3_] == param1.target)
            {
               _loc2_ = _loc3_;
            }
            _loc3_++;
         }
         if(_loc2_ >= 0)
         {
            this.§`!I§.splice(_loc2_,1);
         }
         if(this.§`!I§.length == 0)
         {
            if((§-!l§.§"x§ as AngryBirdsCustom).§catch§)
            {
               if((§-!l§.§"x§ as AngryBirdsCustom).§catch§.§4!2§())
               {
                  (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§!!g§(true);
               }
               else
               {
                  (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§<<§(true);
               }
            }
         }
      }
   }
}
