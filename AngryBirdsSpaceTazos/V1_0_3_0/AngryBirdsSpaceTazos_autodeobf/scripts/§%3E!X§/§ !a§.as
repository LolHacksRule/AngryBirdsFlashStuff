package §>!X§
{
   import §+"2§.§-"F§;
   import §+"2§.§<!X§;
   import §+"C§.§^!^§;
   import §1!C§.PopupClosedEvent;
   import §5R§.§6"7§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class § !a§ extends §1i§
   {
       
      
      private var §5"6§:Vector.<§^!^§>;
      
      public function § !a§(param1:§-"F§, param2:§6"7§, param3:int, param4:§'!&§ = null, param5:§>"+§ = null)
      {
         super(param1,param2,param3,param4,param5);
         this.§5"6§ = new Vector.<§^!^§>();
      }
      
      protected function §8!d§(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean) : §<!X§
      {
         return new §^!^§(§=!y§,param4,param1,param2,param3,param5);
      }
      
      override protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         §,!P§.userProgress.saveTutorialSeen(param2);
         var _loc9_:Boolean = param5;
         var _loc10_:§<!X§ = this.§8!d§(param1,param2,param3,param4,_loc9_);
         this.§5"6§.push(_loc10_);
         _loc10_.addEventListener(PopupClosedEvent.§7H§,this.§5"0§);
         (§&"<§.§<!7§ as §["!§).§^"<§.§@R§(false);
         §;R§.openPopup(_loc10_,param5,param6,param7,param8);
      }
      
      override public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§'!&§ = null, param8:Boolean = true) : void
      {
         var _loc10_:* = false;
         if(!param5)
         {
            if(§,!P§.userProgress.hasTutorialBeenSeen(param1))
            {
               return;
            }
         }
         if(param7 != null)
         {
            §7O§ = param7;
         }
         var _loc9_:MovieClip = §7O§.solve(param1);
         param8 = !param8 && §;R§.isPopupOpenById(TutorialPopup.§var§) ? true : Boolean(param8);
         if(_loc9_)
         {
            _loc10_ = !§,!P§.userProgress.hasTutorialBeenSeen(param1);
            this.openPopup(_loc9_,param1,_loc10_,param2,param3,param4,param6,param8);
         }
      }
      
      private function §5"0§(param1:Event) : void
      {
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§5"6§.length)
         {
            if(this.§5"6§[_loc3_] == param1.target)
            {
               _loc2_ = _loc3_;
            }
            _loc3_++;
         }
         if(_loc2_ >= 0)
         {
            this.§5"6§.splice(_loc2_,1);
         }
         if(this.§5"6§.length == 0)
         {
            if((§&"<§.§<!7§ as §["!§).§^"<§.§<<§())
            {
               (§&"<§.§<!7§ as §["!§).§^"<§.§^"@§(true);
            }
            else
            {
               (§&"<§.§<!7§ as §["!§).§^"<§.§@R§(true);
            }
         }
      }
   }
}
