package §5§#7
{
   import §,"N§.§@>§;
   import §[!m§.§;a§;
   import §[!m§.§[!j§;
   import flash.display.MovieClip;
   
   public class §0#2§
   {
      
      protected static var §+!§:Class = §6!"§;
      
      protected static var §%o§:Class = §2#`§;
       
      
      protected var §5M§:§;a§;
      
      protected var §4#J§:§@>§;
      
      protected var §8#&§:§6!X§;
      
      protected var §6"l§:§3"8§;
      
      protected var §1`§:int;
      
      protected var § !U§:§3!c§;
      
      public function §0#2§(param1:§;a§, param2:§@>§, param3:int, param4:§6!X§ = null, param5:§3"8§ = null, param6:§3!c§ = null)
      {
         super();
         this.§5M§ = param1;
         this.§4#J§ = param2;
         this.§1`§ = param3;
         this.§8#&§ = param4 || new §&"s§();
         this.§6"l§ = param5 || new §-">§();
         this.§ !U§ = param6 || new §#!D§();
      }
      
      public function get § "?§() : §6!X§
      {
         return this.§8#&§;
      }
      
      public function set § "?§(param1:§6!X§) : void
      {
         this.§8#&§ = param1;
      }
      
      public function get §>?§() : §3"8§
      {
         return this.§6"l§;
      }
      
      public function set §>?§(param1:§3"8§) : void
      {
         this.§6"l§ = param1;
      }
      
      public function get §#"N§() : §3!c§
      {
         return this.§ !U§;
      }
      
      public function set §#"N§(param1:§3!c§) : void
      {
         this.§ !U§ = param1;
      }
      
      protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §[!j§
      {
         return new TutorialPopup(this.§1`§,param4,param1,param2,this.§#"N§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§4#J§.userProgress.saveTutorialSeen(param2);
         this.§5M§.openPopup(this.getTutorialPopup(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function §,!c§(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§6!X§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§4#J§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§8#&§ = param7;
         }
         var _loc10_:MovieClip = this.§8#&§.solve(param1);
         param8 = !param8 && this.§5M§.isPopupOpenById(TutorialPopup.§%!h§) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function openMultipleTutorialPopups(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§6!X§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§4#J§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§8#&§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         param7 = !param7 && this.§5M§.isPopupOpenById(TutorialPopup.§%!h§) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§8#&§.solve(_loc12_))
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
      
      public function §%#U§(param1:Boolean = true) : void
      {
         this.§5M§.closePopup(this.§1`§,param1,true,false);
      }
   }
}
