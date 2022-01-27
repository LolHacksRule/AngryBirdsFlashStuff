package § "A§
{
   import §%!P§.§@o§;
   import §-!r§.§'!h§;
   import §-!r§.§+!B§;
   import §-!r§.§=!n§;
   import flash.display.MovieClip;
   
   public class §,";§
   {
       
      
      protected var §&!W§:§=!n§;
      
      protected var §7W§:§@o§;
      
      protected var §'K§:§@!R§;
      
      protected var §%!Z§:§^!+§;
      
      protected var §-!w§:int;
      
      protected var §6"3§:§?q§;
      
      public function §,";§(param1:§=!n§, param2:§@o§, param3:int, param4:§@!R§ = null, param5:§^!+§ = null, param6:§?q§ = null)
      {
         super();
         this.§&!W§ = param1;
         this.§7W§ = param2;
         this.§-!w§ = param3;
         this.§'K§ = param4 || new §3!t§();
         this.§%!Z§ = param5 || new §#!E§();
         this.§6"3§ = param6 || new §!`§();
      }
      
      public function get §`y§() : §@!R§
      {
         return this.§'K§;
      }
      
      public function set §`y§(param1:§@!R§) : void
      {
         this.§'K§ = param1;
      }
      
      public function get §[!g§() : §^!+§
      {
         return this.§%!Z§;
      }
      
      public function set §[!g§(param1:§^!+§) : void
      {
         this.§%!Z§ = param1;
      }
      
      public function get §21§() : §?q§
      {
         return this.§6"3§;
      }
      
      public function set §21§(param1:§?q§) : void
      {
         this.§6"3§ = param1;
      }
      
      protected function §'!]§(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §+!B§
      {
         return new TutorialPopup(this.§-!w§,param4,param1,param2,this.§21§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§7W§.userProgress.saveTutorialSeen(param2);
         this.§&!W§.openPopup(this.§'!]§(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§@!R§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§7W§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§'K§ = param7;
         }
         var _loc10_:MovieClip = this.§'K§.solve(param1);
         param8 = !param8 && this.§&!W§.isPopupOpenById(TutorialPopup.§<!M§) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function §8j§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§@!R§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§7W§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§'K§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = §'!h§.§%H§;
         param7 = !param7 && this.§&!W§.isPopupOpenById(TutorialPopup.§<!M§) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§'K§.solve(_loc12_))
            {
               if(_loc16_ != 0)
               {
                  if(param8)
                  {
                     _loc13_ = false;
                  }
                  _loc15_ = false;
                  _loc18_ = §'!h§.§3"4§;
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
      
      public function §9!I§(param1:Boolean = true) : void
      {
         this.§&!W§.closePopup(this.§-!w§,param1,true,false);
      }
   }
}
