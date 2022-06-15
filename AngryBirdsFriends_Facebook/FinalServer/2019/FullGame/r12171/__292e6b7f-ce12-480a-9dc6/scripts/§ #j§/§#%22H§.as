package § #j§
{
   import § $0§.§,#@§;
   import § $0§.§=!C§;
   import §,#,§.§3#J§;
   import flash.display.MovieClip;
   
   public class §#"H§
   {
      
      protected static var § $1§:Class = §`#@§;
      
      protected static var § #r§:Class = §0#O§;
       
      
      protected var §6"F§:§=!C§;
      
      protected var §#!h§:§3#J§;
      
      protected var §68§:§]"n§;
      
      protected var §&!0§:§6z§;
      
      protected var §'!r§:int;
      
      protected var §-!K§:§[#=§;
      
      public function §#"H§(param1:§=!C§, param2:§3#J§, param3:int, param4:§]"n§ = null, param5:§6z§ = null, param6:§[#=§ = null)
      {
         super();
         this.init(param1,param2,param3,param4,param5,param6);
      }
      
      public function get §@!Z§() : §]"n§
      {
         return this.§68§;
      }
      
      public function set §@!Z§(param1:§]"n§) : void
      {
         this.§68§ = param1;
      }
      
      public function get §'"7§() : §6z§
      {
         return this.§&!0§;
      }
      
      public function set §'"7§(param1:§6z§) : void
      {
         this.§&!0§ = param1;
      }
      
      public function get §^#x§() : §[#=§
      {
         return this.§-!K§;
      }
      
      public function set §^#x§(param1:§[#=§) : void
      {
         this.§-!K§ = param1;
      }
      
      protected function init(param1:§=!C§, param2:§3#J§, param3:int, param4:§]"n§ = null, param5:§6z§ = null, param6:§[#=§ = null) : void
      {
         this.§6"F§ = param1;
         this.§#!h§ = param2;
         this.§'!r§ = param3;
         this.§68§ = param4 || new §"#'§();
         this.§&!0§ = param5 || new §8$@§();
         this.§-!K§ = param6 || new §2#K§();
      }
      
      protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §,#@§
      {
         return new TutorialPopup(this.§'!r§,param4,param1,param2,this.§^#x§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§#!h§.userProgress.saveTutorialSeen(param2);
         this.§6"F§.openPopup(this.getTutorialPopup(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function §3$'§(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§]"n§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§#!h§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§68§ = param7;
         }
         var _loc10_:MovieClip = this.§68§.solve(param1);
         param8 = !param8 && this.§6"F§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function §-#V§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§]"n§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§#!h§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§68§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         param7 = !param7 && this.§6"F§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§68§.solve(_loc12_))
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
      
      public function §<!"§(param1:Boolean = true) : void
      {
         this.§6"F§.closePopup(this.§'!r§,param1,true,false);
      }
   }
}
