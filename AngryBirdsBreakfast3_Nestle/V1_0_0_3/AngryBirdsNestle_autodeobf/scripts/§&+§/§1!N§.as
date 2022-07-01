package §&+§
{
   import §#!`§.§+"#§;
   import §%!9§.PopupClosedEvent;
   import §[<§.§5t§;
   import §`q§.§-!l§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §1!N§ extends §?J§
   {
       
      
      private var §0!a§:Vector.<§-!l§>;
      
      public function §1!N§(param1:§5t§, param2:§+"#§, param3:int, param4:§2;§ = null, param5:§&^§ = null)
      {
         super(param1,param2,param3,param4,param5);
         this.§0!a§ = new Vector.<§-!l§>();
      }
      
      protected function §#!H§(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean, param6:Boolean) : §-!l§
      {
         return new §-!l§(§`y§,param4,param1,param2,param3,param5,param6);
      }
      
      override protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         §'c§.userProgress.saveTutorialSeen(param2);
         var _loc9_:Boolean = param5;
         var _loc10_:Boolean = param6;
         var _loc11_:§-!l§ = this.§#!H§(param1,param2,param3,param4,_loc9_,_loc10_);
         this.§0!a§.push(_loc11_);
         _loc11_.addEventListener(PopupClosedEvent.§#!&§,this.§7a§);
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§"B§(false);
         §+h§.openPopup(_loc11_,param5,param6,param7,param8);
      }
      
      override public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§2;§ = null, param8:Boolean = true) : void
      {
         var _loc10_:* = false;
         if(!param5)
         {
            if(§'c§.userProgress.hasTutorialBeenSeen(param1))
            {
               return;
            }
         }
         if(param7 != null)
         {
            §extends§ = param7;
         }
         var _loc9_:MovieClip = §extends§.solve(param1);
         param8 = !param8 && §+h§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc9_)
         {
            _loc10_ = !§'c§.userProgress.hasTutorialBeenSeen(param1);
            this.openPopup(_loc9_,param1,_loc10_,param2,param3,param4,param6,param8);
         }
      }
      
      private function §7a§(param1:Event) : void
      {
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < this.§0!a§.length)
         {
            if(this.§0!a§[_loc3_] == param1.target)
            {
               _loc2_ = _loc3_;
            }
            _loc3_++;
         }
         if(_loc2_ >= 0)
         {
            this.§0!a§.splice(_loc2_,1);
         }
         if(this.§0!a§.length == 0)
         {
            if((§&N§.§#Y§ as AngryBirdsCustom).§#A§)
            {
               if((§&N§.§#Y§ as AngryBirdsCustom).§#A§.§`"1§())
               {
                  (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§,v§(true);
               }
               else
               {
                  (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§"B§(true);
               }
            }
         }
      }
   }
}
