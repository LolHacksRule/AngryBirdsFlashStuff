package §#@§
{
   import §?N§.§+!J§;
   import §?N§.§;!E§;
   import §?N§.§>!H§;
   import §[j§.§-?§;
   import flash.display.MovieClip;
   
   public class §^!^§
   {
      
      protected static var §%8§:Class = §?"#§;
      
      protected static var §&!f§:Class = § D§;
       
      
      protected var §'!`§:§+!J§;
      
      protected var §^!g§:§-?§;
      
      protected var §%!6§:§ "&§;
      
      protected var §<!O§:§49§;
      
      protected var §<u§:int;
      
      protected var §"!X§:§ set§;
      
      public function §^!^§(param1:§+!J§, param2:§-?§, param3:int, param4:§ "&§ = null, param5:§49§ = null, param6:§ set§ = null)
      {
         super();
         this.§'!`§ = param1;
         this.§^!g§ = param2;
         this.§<u§ = param3;
         this.§%!6§ = param4 || new §7!i§();
         this.§<!O§ = param5 || new §?w§();
         this.§"!X§ = param6 || new §2!;§();
      }
      
      public function get §>!e§() : § "&§
      {
         return this.§%!6§;
      }
      
      public function set §>!e§(param1:§ "&§) : void
      {
         this.§%!6§ = param1;
      }
      
      public function get §-"4§() : §49§
      {
         return this.§<!O§;
      }
      
      public function set §-"4§(param1:§49§) : void
      {
         this.§<!O§ = param1;
      }
      
      public function get §2V§() : § set§
      {
         return this.§"!X§;
      }
      
      public function set §2V§(param1:§ set§) : void
      {
         this.§"!X§ = param1;
      }
      
      protected function §%!'§(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §;!E§
      {
         return new TutorialPopup(this.§<u§,param4,param1,param2,this.§2V§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§^!g§.userProgress.saveTutorialSeen(param2);
         this.§'!`§.openPopup(this.§%!'§(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§ "&§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§^!g§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§%!6§ = param7;
         }
         var _loc10_:MovieClip = this.§%!6§.solve(param1);
         param8 = !param8 && this.§'!`§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function §-!#§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§ "&§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§^!g§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§%!6§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = §>!H§.§,"0§;
         param7 = !param7 && this.§'!`§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§%!6§.solve(_loc12_))
            {
               if(_loc16_ != 0)
               {
                  if(param8)
                  {
                     _loc13_ = false;
                  }
                  _loc15_ = false;
                  _loc18_ = §>!H§.DEFAULT;
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
      
      public function §+!z§(param1:Boolean = true) : void
      {
         this.§'!`§.closePopup(this.§<u§,param1,true,false);
      }
   }
}
