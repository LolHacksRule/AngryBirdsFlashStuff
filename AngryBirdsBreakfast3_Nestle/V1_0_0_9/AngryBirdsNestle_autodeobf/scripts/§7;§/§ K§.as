package §7;§
{
   import §1!s§.§+!y§;
   import §1!s§.§5a§;
   import §?u§.override;
   import flash.display.MovieClip;
   
   public class § K§
   {
      
      protected static var § do§:Class = § ",§;
      
      protected static var §&!Q§:Class = §&![§;
       
      
      protected var §,#§:§5a§;
      
      protected var §+!L§:override;
      
      protected var §@"'§:§'!K§;
      
      protected var §,e§:§8!R§;
      
      protected var §#!;§:int;
      
      protected var §^!@§:§8"5§;
      
      public function § K§(param1:§5a§, param2:override, param3:int, param4:§'!K§ = null, param5:§8!R§ = null, param6:§8"5§ = null)
      {
         super();
         this.§,#§ = param1;
         this.§+!L§ = param2;
         this.§#!;§ = param3;
         this.§@"'§ = param4 || new §?S§();
         this.§,e§ = param5 || new §6!%§();
         this.§^!@§ = param6 || new §>!U§();
      }
      
      public function get §?!u§() : §'!K§
      {
         return this.§@"'§;
      }
      
      public function set §?!u§(param1:§'!K§) : void
      {
         this.§@"'§ = param1;
      }
      
      public function get §"!1§() : §8!R§
      {
         return this.§,e§;
      }
      
      public function set §"!1§(param1:§8!R§) : void
      {
         this.§,e§ = param1;
      }
      
      public function get §]!v§() : §8"5§
      {
         return this.§^!@§;
      }
      
      public function set §]!v§(param1:§8"5§) : void
      {
         this.§^!@§ = param1;
      }
      
      protected function §[!f§(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §+!y§
      {
         return new TutorialPopup(this.§#!;§,param4,param1,param2,this.§]!v§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§+!L§.userProgress.saveTutorialSeen(param2);
         this.§,#§.openPopup(this.§[!f§(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§'!K§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§+!L§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§@"'§ = param7;
         }
         var _loc10_:MovieClip = this.§@"'§.solve(param1);
         param8 = !param8 && this.§,#§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function openMultipleTutorialPopups(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§'!K§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§+!L§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§@"'§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         param7 = !param7 && this.§,#§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§@"'§.solve(_loc12_))
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
      
      public function §%!u§(param1:Boolean = true) : void
      {
         this.§,#§.closePopup(this.§#!;§,param1,true,false);
      }
   }
}
