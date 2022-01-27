package §>!X§
{
   import §+"2§.§-"F§;
   import §+"2§.§<!X§;
   import §+"2§.§`B§;
   import §5R§.§6"7§;
   import flash.display.MovieClip;
   
   public class §1i§
   {
       
      
      protected var §;R§:§-"F§;
      
      protected var §,!P§:§6"7§;
      
      protected var §7O§:§'!&§;
      
      protected var §&a§:§>"+§;
      
      protected var §=!y§:int;
      
      protected var §""8§:§&!5§;
      
      public function §1i§(param1:§-"F§, param2:§6"7§, param3:int, param4:§'!&§ = null, param5:§>"+§ = null, param6:§&!5§ = null)
      {
         super();
         this.§;R§ = param1;
         this.§,!P§ = param2;
         this.§=!y§ = param3;
         this.§7O§ = param4 || new §!X§();
         this.§&a§ = param5 || new §`l§();
         this.§""8§ = param6 || new §9"=§();
      }
      
      public function get §=!W§() : §'!&§
      {
         return this.§7O§;
      }
      
      public function set §=!W§(param1:§'!&§) : void
      {
         this.§7O§ = param1;
      }
      
      public function get §'">§() : §>"+§
      {
         return this.§&a§;
      }
      
      public function set §'">§(param1:§>"+§) : void
      {
         this.§&a§ = param1;
      }
      
      public function get §`![§() : §&!5§
      {
         return this.§""8§;
      }
      
      public function set §`![§(param1:§&!5§) : void
      {
         this.§""8§ = param1;
      }
      
      protected function §+C§(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §<!X§
      {
         return new TutorialPopup(this.§=!y§,param4,param1,param2,this.§`![§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§,!P§.userProgress.saveTutorialSeen(param2);
         this.§;R§.openPopup(this.§+C§(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§'!&§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§,!P§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§7O§ = param7;
         }
         var _loc10_:MovieClip = this.§7O§.solve(param1);
         param8 = !param8 && this.§;R§.isPopupOpenById(TutorialPopup.§var§) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function §[!?§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§'!&§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§,!P§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§7O§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = §`B§.§[s§;
         param7 = !param7 && this.§;R§.isPopupOpenById(TutorialPopup.§var§) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§7O§.solve(_loc12_))
            {
               if(_loc16_ != 0)
               {
                  if(param8)
                  {
                     _loc13_ = false;
                  }
                  _loc15_ = false;
                  _loc18_ = §`B§.§-! §;
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
      
      public function §5!K§(param1:Boolean = true) : void
      {
         this.§;R§.closePopup(this.§=!y§,param1,true,false);
      }
   }
}
