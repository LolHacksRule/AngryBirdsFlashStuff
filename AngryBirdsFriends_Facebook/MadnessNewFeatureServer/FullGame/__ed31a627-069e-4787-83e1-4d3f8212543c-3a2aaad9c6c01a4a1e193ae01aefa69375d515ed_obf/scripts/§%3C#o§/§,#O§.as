package §<#o§
{
   import §!#C§.§#H§;
   import §0!s§.§5!-§;
   import §0!s§.§6!e§;
   import flash.display.MovieClip;
   
   public class §,#O§
   {
      
      protected static var §0#9§:Class = §6#g§;
      
      protected static var §"!r§:Class = §8![§;
       
      
      protected var §8<§:§6!e§;
      
      protected var §#!$§:§#H§;
      
      protected var §4#9§:§2!J§;
      
      protected var §?#n§:§3#j§;
      
      protected var §&"'§:int;
      
      protected var §%#]§:§3"3§;
      
      public function §,#O§(param1:§6!e§, param2:§#H§, param3:int, param4:§2!J§ = null, param5:§3#j§ = null, param6:§3"3§ = null)
      {
         super();
         this.init(param1,param2,param3,param4,param5,param6);
      }
      
      public function get §5W§() : §2!J§
      {
         return this.§4#9§;
      }
      
      public function set §5W§(param1:§2!J§) : void
      {
         this.§4#9§ = param1;
      }
      
      public function get §9"x§() : §3#j§
      {
         return this.§?#n§;
      }
      
      public function set §9"x§(param1:§3#j§) : void
      {
         this.§?#n§ = param1;
      }
      
      public function get §&"b§() : §3"3§
      {
         return this.§%#]§;
      }
      
      public function set §&"b§(param1:§3"3§) : void
      {
         this.§%#]§ = param1;
      }
      
      protected function init(param1:§6!e§, param2:§#H§, param3:int, param4:§2!J§ = null, param5:§3#j§ = null, param6:§3"3§ = null) : void
      {
         this.§8<§ = param1;
         this.§#!$§ = param2;
         this.§&"'§ = param3;
         this.§4#9§ = param4 || new §]"f§();
         this.§?#n§ = param5 || new §2$,§();
         this.§%#]§ = param6 || new §5#`§();
      }
      
      protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §5!-§
      {
         return new TutorialPopup(this.§&"'§,param4,param1,param2,this.§&"b§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§#!$§.userProgress.saveTutorialSeen(param2);
         this.§8<§.openPopup(this.getTutorialPopup(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function §0"D§(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§2!J§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§#!$§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§4#9§ = param7;
         }
         var _loc10_:MovieClip = this.§4#9§.solve(param1);
         param8 = !param8 && this.§8<§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function §%""§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§2!J§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§#!$§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§4#9§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         param7 = !param7 && this.§8<§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§4#9§.solve(_loc12_))
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
      
      public function §+g§(param1:Boolean = true) : void
      {
         this.§8<§.closePopup(this.§&"'§,param1,true,false);
      }
   }
}
