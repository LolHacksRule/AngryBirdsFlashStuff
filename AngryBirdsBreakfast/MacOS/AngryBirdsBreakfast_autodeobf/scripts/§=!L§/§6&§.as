package §=!L§
{
   import §#"&§.§4!W§;
   import §48§.§1k§;
   import §7g§.PopupClosedEvent;
   import §[!i§.§,!X§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §6&§ extends §4k§
   {
       
      
      private var §=<§:Vector.<§,!X§>;
      
      public function §6&§(param1:§1k§, param2:§4!W§, param3:int, param4:§!!u§ = null, param5:§1!T§ = null)
      {
         super(param1,param2,param3,param4,param5);
         this.§=<§ = new Vector.<§,!X§>();
      }
      
      protected function §""#§(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean, param6:Boolean) : §,!X§
      {
         return new §,!X§(§7!`§,param4,param1,param2,param3,param5,param6);
      }
      
      override protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         §^!8§.userProgress.saveTutorialSeen(param2);
         var _loc9_:Boolean = param5;
         var _loc10_:§,!X§ = this.§""#§(param1,param2,param3,param4,_loc9_,param6);
         this.§=<§.push(_loc10_);
         _loc10_.addEventListener(PopupClosedEvent.§,!=§,this.§"2§);
         §-G§.openPopup(_loc10_,param5,param6,param7,param8);
      }
      
      override public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§!!u§ = null, param8:Boolean = true) : void
      {
         var _loc10_:* = false;
         if(!param5)
         {
            if(§^!8§.userProgress.hasTutorialBeenSeen(param1))
            {
               return;
            }
         }
         if(param7 != null)
         {
            §!B§ = param7;
         }
         var _loc9_:MovieClip = §!B§.solve(param1);
         param8 = !param8 && §-G§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc9_)
         {
            _loc10_ = !§^!8§.userProgress.hasTutorialBeenSeen(param1);
            this.openPopup(_loc9_,param1,_loc10_,param2,param3,param4,param6,param8);
         }
      }
      
      private function §"2§(param1:Event) : void
      {
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§=<§.length)
         {
            if(this.§=<§[_loc3_] == param1.target)
            {
               _loc2_ = _loc3_;
            }
            _loc3_++;
         }
         if(_loc2_ >= 0)
         {
            this.§=<§.splice(_loc2_,1);
         }
      }
   }
}
