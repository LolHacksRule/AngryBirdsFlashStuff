package § "A§
{
   import §%!P§.§@o§;
   import §-!r§.§+!B§;
   import §-!r§.§=!n§;
   import §8Y§.PopupClosedEvent;
   import §]!x§.§<"=§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §0!r§ extends §,";§
   {
       
      
      private var §-!g§:Vector.<§<"=§>;
      
      public function §0!r§(param1:§=!n§, param2:§@o§, param3:int, param4:§@!R§ = null, param5:§^!+§ = null)
      {
         super(param1,param2,param3,param4,param5);
         this.§-!g§ = new Vector.<§<"=§>();
      }
      
      protected function §=!i§(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean) : §+!B§
      {
         return new §<"=§(§-!w§,param4,param1,param2,param3,param5);
      }
      
      override protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         §7W§.userProgress.saveTutorialSeen(param2);
         var _loc9_:Boolean = param5;
         var _loc10_:§+!B§ = this.§=!i§(param1,param2,param3,param4,_loc9_);
         this.§-!g§.push(_loc10_);
         _loc10_.addEventListener(PopupClosedEvent.§6!F§,this.§+!Z§);
         (§2&§.§6o§ as §@T§).§56§.§&"C§(false);
         §&!W§.openPopup(_loc10_,param5,param6,param7,param8);
      }
      
      override public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§@!R§ = null, param8:Boolean = true) : void
      {
         var _loc10_:* = false;
         if(!param5)
         {
            if(§7W§.userProgress.hasTutorialBeenSeen(param1))
            {
               return;
            }
         }
         if(param7 != null)
         {
            §'K§ = param7;
         }
         var _loc9_:MovieClip = §'K§.solve(param1);
         param8 = !param8 && §&!W§.isPopupOpenById(TutorialPopup.§<!M§) ? true : Boolean(param8);
         if(_loc9_)
         {
            _loc10_ = !§7W§.userProgress.hasTutorialBeenSeen(param1);
            this.openPopup(_loc9_,param1,_loc10_,param2,param3,param4,param6,param8);
         }
      }
      
      private function §+!Z§(param1:Event) : void
      {
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§-!g§.length)
         {
            if(this.§-!g§[_loc3_] == param1.target)
            {
               _loc2_ = _loc3_;
            }
            _loc3_++;
         }
         if(_loc2_ >= 0)
         {
            this.§-!g§.splice(_loc2_,1);
         }
         if(this.§-!g§.length == 0)
         {
            if((§2&§.§6o§ as §@T§).§56§.§,1§())
            {
               (§2&§.§6o§ as §@T§).§56§.§,j§(true);
            }
            else
            {
               (§2&§.§6o§ as §@T§).§56§.§&"C§(true);
            }
         }
      }
   }
}
