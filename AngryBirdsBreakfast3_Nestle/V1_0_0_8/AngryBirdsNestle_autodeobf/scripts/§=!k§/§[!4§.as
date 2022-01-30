package §=!k§
{
   import § S§.§ !+§;
   import § S§.§!H§;
   import § S§.§?!`§;
   import §#!n§.§+!o§;
   import flash.display.MovieClip;
   
   public class §[!4§
   {
      
      protected static var §9!C§:Class = §6!q§;
      
      protected static var §3!u§:Class = §]!P§;
       
      
      protected var §3X§:§!H§;
      
      protected var §%""§:§+!o§;
      
      protected var §1t§:§;z§;
      
      protected var §=_§:§;!P§;
      
      protected var §+!j§:int;
      
      protected var §0"3§:§`!d§;
      
      public function §[!4§(param1:§!H§, param2:§+!o§, param3:int, param4:§;z§ = null, param5:§;!P§ = null, param6:§`!d§ = null)
      {
         super();
         this.§3X§ = param1;
         this.§%""§ = param2;
         this.§+!j§ = param3;
         this.§1t§ = param4 || new §9"0§();
         this.§=_§ = param5 || new §&!F§();
         this.§0"3§ = param6 || new §`"$§();
      }
      
      public function get §'!_§() : §;z§
      {
         return this.§1t§;
      }
      
      public function set §'!_§(param1:§;z§) : void
      {
         this.§1t§ = param1;
      }
      
      public function get §@v§() : §;!P§
      {
         return this.§=_§;
      }
      
      public function set §@v§(param1:§;!P§) : void
      {
         this.§=_§ = param1;
      }
      
      public function get §8!U§() : §`!d§
      {
         return this.§0"3§;
      }
      
      public function set §8!U§(param1:§`!d§) : void
      {
         this.§0"3§ = param1;
      }
      
      protected function §]!#§(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §?!`§
      {
         return new TutorialPopup(this.§+!j§,param4,param1,param2,this.§8!U§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§%""§.userProgress.saveTutorialSeen(param2);
         this.§3X§.openPopup(this.§]!#§(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§;z§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§%""§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§1t§ = param7;
         }
         var _loc10_:MovieClip = this.§1t§.solve(param1);
         param8 = !param8 && this.§3X§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function openMultipleTutorialPopups(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§;z§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§%""§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§1t§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = § !+§.§3"8§;
         param7 = !param7 && this.§3X§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§1t§.solve(_loc12_))
            {
               if(_loc16_ != 0)
               {
                  if(param8)
                  {
                     _loc13_ = false;
                  }
                  _loc15_ = false;
                  _loc18_ = § !+§.DEFAULT;
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
      
      public function §8!`§(param1:Boolean = true) : void
      {
         this.§3X§.closePopup(this.§+!j§,param1,true,false);
      }
   }
}
