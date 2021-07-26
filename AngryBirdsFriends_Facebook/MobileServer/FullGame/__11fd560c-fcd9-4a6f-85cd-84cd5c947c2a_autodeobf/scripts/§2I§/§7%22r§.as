package §2I§
{
   import §1!=§.§%#;§;
   import §1!=§.§["+§;
   import §2G§.§3W§;
   import flash.display.MovieClip;
   
   public class §7"r§
   {
      
      protected static var §"#N§:Class = §'4§;
      
      protected static var §8$§:Class = §8"O§;
       
      
      protected var §0"#§:§["+§;
      
      protected var §#A§:§3W§;
      
      protected var §&"#§:§[!3§;
      
      protected var §0#j§:§!#E§;
      
      protected var §7$9§:int;
      
      protected var §%!;§:§5#j§;
      
      public function §7"r§(param1:§["+§, param2:§3W§, param3:int, param4:§[!3§ = null, param5:§!#E§ = null, param6:§5#j§ = null)
      {
         super();
         this.init(param1,param2,param3,param4,param5,param6);
      }
      
      public function get § !d§() : §[!3§
      {
         return this.§&"#§;
      }
      
      public function set § !d§(param1:§[!3§) : void
      {
         this.§&"#§ = param1;
      }
      
      public function get §>#i§() : §!#E§
      {
         return this.§0#j§;
      }
      
      public function set §>#i§(param1:§!#E§) : void
      {
         this.§0#j§ = param1;
      }
      
      public function get §2#;§() : §5#j§
      {
         return this.§%!;§;
      }
      
      public function set §2#;§(param1:§5#j§) : void
      {
         this.§%!;§ = param1;
      }
      
      protected function init(param1:§["+§, param2:§3W§, param3:int, param4:§[!3§ = null, param5:§!#E§ = null, param6:§5#j§ = null) : void
      {
         this.§0"#§ = param1;
         this.§#A§ = param2;
         this.§7$9§ = param3;
         this.§&"#§ = param4 || new §7"B§();
         this.§0#j§ = param5 || new §8$=§();
         this.§%!;§ = param6 || new §`",§();
      }
      
      protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §%#;§
      {
         return new TutorialPopup(this.§7$9§,param4,param1,param2,this.§2#;§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§#A§.userProgress.saveTutorialSeen(param2);
         this.§0"#§.openPopup(this.getTutorialPopup(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function §<"%§(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§[!3§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§#A§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§&"#§ = param7;
         }
         var _loc10_:MovieClip = this.§&"#§.solve(param1);
         param8 = !param8 && this.§0"#§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function §-$&§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§[!3§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§#A§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§&"#§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         param7 = !param7 && this.§0"#§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§&"#§.solve(_loc12_))
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
      
      public function §,"f§(param1:Boolean = true) : void
      {
         this.§0"#§.closePopup(this.§7$9§,param1,true,false);
      }
   }
}
