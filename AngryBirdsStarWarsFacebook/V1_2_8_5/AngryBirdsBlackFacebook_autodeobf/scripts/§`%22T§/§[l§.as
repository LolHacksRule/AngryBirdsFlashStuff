package §`"T§
{
   import §+"x§.§&!Y§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §9"U§.§'!;§;
   import flash.display.MovieClip;
   
   public class §[l§
   {
      
      protected static var §,"3§:Class = §5!f§;
      
      protected static var §@"?§:Class = §21§;
       
      
      protected var §?"Q§:§&!Y§;
      
      protected var §?!$§:§'!;§;
      
      protected var §'"a§:§'!s§;
      
      protected var § "s§:§8"%§;
      
      protected var §%"0§:int;
      
      protected var §-!$§:§6";§;
      
      public function §[l§(param1:§&!Y§, param2:§'!;§, param3:int, param4:§'!s§ = null, param5:§8"%§ = null, param6:§6";§ = null)
      {
         super();
         this.§?"Q§ = param1;
         this.§?!$§ = param2;
         this.§%"0§ = param3;
         this.§'"a§ = param4 || new §>!n§();
         this.§ "s§ = param5 || new §#"-§();
         this.§-!$§ = param6 || new §"!y§();
      }
      
      public function get §%"B§() : §'!s§
      {
         return this.§'"a§;
      }
      
      public function set §%"B§(param1:§'!s§) : void
      {
         this.§'"a§ = param1;
      }
      
      public function get §9"Y§() : §8"%§
      {
         return this.§ "s§;
      }
      
      public function set §9"Y§(param1:§8"%§) : void
      {
         this.§ "s§ = param1;
      }
      
      public function get §6"O§() : §6";§
      {
         return this.§-!$§;
      }
      
      public function set §6"O§(param1:§6";§) : void
      {
         this.§-!$§ = param1;
      }
      
      protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §3!§
      {
         return new TutorialPopup(this.§%"0§,param4,param1,param2,this.§6"O§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§?!$§.userProgress.saveTutorialSeen(param2);
         this.§?"Q§.openPopup(this.getTutorialPopup(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function §!"+§(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§'!s§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§?!$§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§'"a§ = param7;
         }
         var _loc10_:MovieClip = this.§'"a§.solve(param1);
         param8 = !param8 && this.§?"Q§.isPopupOpenById(TutorialPopup.§-"§) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function openMultipleTutorialPopups(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§'!s§ = null, param7:Boolean = true, param8:Boolean = true) : void
      {
         var _loc11_:MovieClip = null;
         var _loc12_:String = null;
         var _loc9_:Vector.<Boolean> = new Vector.<Boolean>(param1.length);
         var _loc10_:int = 0;
         while(_loc10_ < _loc9_.length)
         {
            _loc9_[_loc10_] = true;
            _loc10_++;
         }
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            if(this.§?!$§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
            {
               if(!param5)
               {
                  param1.splice(_loc10_,1);
                  _loc9_.splice(_loc10_,1);
               }
               else
               {
                  _loc9_[_loc10_] = false;
               }
            }
            _loc10_--;
         }
         if(param1.length == 0)
         {
            return;
         }
         if(param6 != null)
         {
            this.§'"a§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = §2!s§.§@"$§;
         param7 = !param7 && this.§?"Q§.isPopupOpenById(TutorialPopup.§-"§) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§'"a§.solve(_loc12_))
            {
               if(_loc16_ != 0)
               {
                  if(param8)
                  {
                     _loc13_ = false;
                  }
                  _loc15_ = false;
                  _loc18_ = §2!s§.DEFAULT;
               }
               if(_loc16_ == param1.length - 1 - _loc17_)
               {
                  _loc14_ = param3;
               }
               this.openPopup(_loc11_,_loc12_,_loc9_[_loc10_],_loc18_,_loc13_,_loc14_,_loc15_,param7);
               _loc16_++;
            }
            else
            {
               _loc17_++;
            }
            _loc10_--;
         }
      }
      
      public function §,"Y§(param1:Boolean = true) : void
      {
         this.§?"Q§.closePopup(this.§%"0§,param1,true,false);
      }
   }
}
