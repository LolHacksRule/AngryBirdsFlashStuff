package §!X§
{
   import §!?§.§=!_§;
   import §3C§.§0Y§;
   import §4"§.PopupClosedEvent;
   import §7!H§.§3z§;
   import §7!H§.§>1§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §?1§ extends §<!3§
   {
       
      
      private var §7!<§:Vector.<§0Y§>;
      
      public function §?1§(param1:§>1§, param2:§=!_§, param3:int, param4:§&"E§ = null, param5:§^"&§ = null)
      {
         super(param1,param2,param3,param4,param5);
         this.§7!<§ = new Vector.<§0Y§>();
      }
      
      protected function §2#§(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean) : §3z§
      {
         return new §0Y§(§?"<§,param4,param1,param2,param3,param5);
      }
      
      override protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         §3u§.userProgress.saveTutorialSeen(param2);
         var _loc9_:Boolean = param5;
         var _loc10_:§3z§ = this.§2#§(param1,param2,param3,param4,_loc9_);
         this.§7!<§.push(_loc10_);
         _loc10_.addEventListener(PopupClosedEvent.§`T§,this.§4!T§);
         (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(false);
         §'d§.openPopup(_loc10_,param5,param6,param7,param8);
      }
      
      override public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§&"E§ = null, param8:Boolean = true) : void
      {
         var _loc10_:* = false;
         if(!param5)
         {
            if(§3u§.userProgress.hasTutorialBeenSeen(param1))
            {
               return;
            }
         }
         if(param7 != null)
         {
            §5U§ = param7;
         }
         var _loc9_:MovieClip = §5U§.solve(param1);
         param8 = !param8 && §'d§.isPopupOpenById(TutorialPopup.§[!U§) ? true : Boolean(param8);
         if(_loc9_)
         {
            _loc10_ = !§3u§.userProgress.hasTutorialBeenSeen(param1);
            this.openPopup(_loc9_,param1,_loc10_,param2,param3,param4,param6,param8);
         }
      }
      
      private function §4!T§(param1:Event) : void
      {
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§7!<§.length)
         {
            if(this.§7!<§[_loc3_] == param1.target)
            {
               _loc2_ = _loc3_;
            }
            _loc3_++;
         }
         if(_loc2_ >= 0)
         {
            this.§7!<§.splice(_loc2_,1);
         }
         if(this.§7!<§.length == 0)
         {
            if((§ !g§.§;!'§ as §`Y§).§&,§.§ w§())
            {
               (§ !g§.§;!'§ as §`Y§).§&,§.§4"1§(true);
            }
            else
            {
               (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(true);
            }
         }
      }
   }
}
