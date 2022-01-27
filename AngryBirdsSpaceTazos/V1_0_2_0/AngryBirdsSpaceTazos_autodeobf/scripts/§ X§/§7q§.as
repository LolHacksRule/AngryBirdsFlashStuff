package § X§
{
   import §""%§.§extends§;
   import §"_§.§!!r§;
   import §"_§.§0"1§;
   import §"_§.§3o§;
   import flash.display.MovieClip;
   
   public class §7q§
   {
       
      
      protected var §+k§:§!!r§;
      
      protected var § #§:§extends§;
      
      protected var §%"0§:§ m§;
      
      protected var §#_§:§2!q§;
      
      protected var §%u§:int;
      
      protected var §@"5§:§+z§;
      
      public function §7q§(param1:§!!r§, param2:§extends§, param3:int, param4:§ m§ = null, param5:§2!q§ = null, param6:§+z§ = null)
      {
         super();
         this.§+k§ = param1;
         this.§ #§ = param2;
         this.§%u§ = param3;
         this.§%"0§ = param4 || new §0"7§();
         this.§#_§ = param5 || new §9!n§();
         this.§@"5§ = param6 || new §"i§();
      }
      
      public function get §0a§() : § m§
      {
         return this.§%"0§;
      }
      
      public function set §0a§(param1:§ m§) : void
      {
         this.§%"0§ = param1;
      }
      
      public function get §`Q§() : §2!q§
      {
         return this.§#_§;
      }
      
      public function set §`Q§(param1:§2!q§) : void
      {
         this.§#_§ = param1;
      }
      
      public function get §`"8§() : §+z§
      {
         return this.§@"5§;
      }
      
      public function set §`"8§(param1:§+z§) : void
      {
         this.§@"5§ = param1;
      }
      
      protected function §2h§(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §0"1§
      {
         return new TutorialPopup(this.§%u§,param4,param1,param2,this.§`"8§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§ #§.userProgress.saveTutorialSeen(param2);
         this.§+k§.openPopup(this.§2h§(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§ m§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§ #§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§%"0§ = param7;
         }
         var _loc10_:MovieClip = this.§%"0§.solve(param1);
         param8 = !param8 && this.§+k§.isPopupOpenById(TutorialPopup.§'t§) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function §^"9§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§ m§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§ #§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§%"0§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = §3o§.§%!V§;
         param7 = !param7 && this.§+k§.isPopupOpenById(TutorialPopup.§'t§) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§%"0§.solve(_loc12_))
            {
               if(_loc16_ != 0)
               {
                  if(param8)
                  {
                     _loc13_ = false;
                  }
                  _loc15_ = false;
                  _loc18_ = §3o§.§0!n§;
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
      
      public function §=!d§(param1:Boolean = true) : void
      {
         this.§+k§.closePopup(this.§%u§,param1,true,false);
      }
   }
}
