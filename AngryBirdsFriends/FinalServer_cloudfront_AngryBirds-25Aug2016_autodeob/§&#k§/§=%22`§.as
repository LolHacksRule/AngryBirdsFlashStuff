package §&#k§
{
   import §%$!§.§,"n§;
   import §^!,§.;
   import §^!,§.§8!H§;
   import flash.display.MovieClip;
   
   public class §="`§
   {
      
      protected static var § !"§:Class = §@#O§;
      
      protected static var §4"o§:Class = §#!J§;
       
      
      protected var §8!e§:§#9§;
      
      protected var §'7§:§,"n§;
      
      protected var §;N§:§="F§;
      
      protected var §3"p§:§9"?§;
      
      protected var §]"E§:int;
      
      protected var §3! §:§@X§;
      
      public function §="`§(param1:§#9§, param2:§,"n§, param3:int, param4:§="F§ = null, param5:§9"?§ = null, param6:§@X§ = null)
      {
         super();
         this.init(param1,param2,param3,param4,param5,param6);
      }
      
      public function get §^!e§() : §="F§
      {
         return this.§;N§;
      }
      
      public function set §^!e§(param1:§="F§) : void
      {
         this.§;N§ = param1;
      }
      
      public function get §8#[§() : §9"?§
      {
         return this.§3"p§;
      }
      
      public function set §8#[§(param1:§9"?§) : void
      {
         this.§3"p§ = param1;
      }
      
      public function get §%!?§() : §@X§
      {
         return this.§3! §;
      }
      
      public function set §%!?§(param1:§@X§) : void
      {
         this.§3! § = param1;
      }
      
      protected function init(param1:§#9§, param2:§,"n§, param3:int, param4:§="F§ = null, param5:§9"?§ = null, param6:§@X§ = null) : void
      {
         this.§8!e§ = param1;
         this.§'7§ = param2;
         this.§]"E§ = param3;
         this.§;N§ = param4 || new §[#L§();
         this.§3"p§ = param5 || new §^$!§();
         this.§3! § = param6 || new §2!R§();
      }
      
      protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §8!H§
      {
         return new TutorialPopup(this.§]"E§,param4,param1,param2,this.§%!?§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§'7§.userProgress.saveTutorialSeen(param2);
         this.§8!e§.openPopup(this.getTutorialPopup(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function §=!&§(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§="F§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§'7§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§;N§ = param7;
         }
         var _loc10_:MovieClip = this.§;N§.solve(param1);
         param8 = !param8 && this.§8!e§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function §4j§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§="F§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§'7§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§;N§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         param7 = !param7 && this.§8!e§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§;N§.solve(_loc12_))
            {
               if(_loc16_ != 0)
               {
                  if(param8)
                  {
                     _loc13_ = false;
                  }
                  _loc15_ = false;
               }
               if(_loc16_ == param1.length - 1 - _loc17_)
               {
                  _loc14_ = param3;
               }
               this.openPopup(_loc11_,_loc12_,_loc9_[_loc10_],0,_loc13_,_loc14_,_loc15_,param7);
               _loc16_++;
            }
            else
            {
               _loc17_++;
            }
            _loc10_--;
         }
      }
      
      public function §]"!§(param1:Boolean = true) : void
      {
         this.§8!e§.closePopup(this.§]"E§,param1,true,false);
      }
   }
}
