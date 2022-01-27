package § X§
{
   import §""%§.§extends§;
   import §"_§.§!!r§;
   import §"_§.§0"1§;
   import §1!]§.§#Z§;
   import §]!M§.PopupClosedEvent;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §!h§ extends §7q§
   {
       
      
      private var §2!0§:Vector.<§#Z§>;
      
      public function §!h§(param1:§!!r§, param2:§extends§, param3:int, param4:§ m§ = null, param5:§2!q§ = null)
      {
         super(param1,param2,param3,param4,param5);
         this.§2!0§ = new Vector.<§#Z§>();
      }
      
      protected function §`5§(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean) : §0"1§
      {
         return new §#Z§(§%u§,param4,param1,param2,param3,param5);
      }
      
      override protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         § #§.userProgress.saveTutorialSeen(param2);
         var _loc9_:Boolean = param5;
         var _loc10_:§0"1§ = this.§`5§(param1,param2,param3,param4,_loc9_);
         this.§2!0§.push(_loc10_);
         _loc10_.addEventListener(PopupClosedEvent.§2!J§,this.§[7§);
         (§&!h§.§ u§ as §^"=§).§?P§.§@!k§(false);
         §+k§.openPopup(_loc10_,param5,param6,param7,param8);
      }
      
      override public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§ m§ = null, param8:Boolean = true) : void
      {
         var _loc10_:* = false;
         if(!param5)
         {
            if(§ #§.userProgress.hasTutorialBeenSeen(param1))
            {
               return;
            }
         }
         if(param7 != null)
         {
            §%"0§ = param7;
         }
         var _loc9_:MovieClip = §%"0§.solve(param1);
         param8 = !param8 && §+k§.isPopupOpenById(TutorialPopup.§'t§) ? true : Boolean(param8);
         if(_loc9_)
         {
            _loc10_ = !§ #§.userProgress.hasTutorialBeenSeen(param1);
            this.openPopup(_loc9_,param1,_loc10_,param2,param3,param4,param6,param8);
         }
      }
      
      private function §[7§(param1:Event) : void
      {
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§2!0§.length)
         {
            if(this.§2!0§[_loc3_] == param1.target)
            {
               _loc2_ = _loc3_;
            }
            _loc3_++;
         }
         if(_loc2_ >= 0)
         {
            this.§2!0§.splice(_loc2_,1);
         }
         if(this.§2!0§.length == 0)
         {
            if((§&!h§.§ u§ as §^"=§).§?P§.§`!t§())
            {
               (§&!h§.§ u§ as §^"=§).§?P§.§;j§(true);
            }
            else
            {
               (§&!h§.§ u§ as §^"=§).§?P§.§@!k§(true);
            }
         }
      }
   }
}
