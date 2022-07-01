package §!!i§
{
   import §!!`§.§12§;
   import §!!`§.§3%§;
   import §!!`§.§4!f§;
   import §3@§.§`!h§;
   import flash.display.MovieClip;
   
   public class §>!j§
   {
      
      protected static var §8",§:Class = §7"$§;
      
      protected static var §#!A§:Class = §9!u§;
       
      
      protected var §`Z§:§12§;
      
      protected var §`p§:§`!h§;
      
      protected var §#_§:§0<§;
      
      protected var include:§%!U§;
      
      protected var §2B§:int;
      
      protected var §+!^§:§7" §;
      
      public function §>!j§(param1:§12§, param2:§`!h§, param3:int, param4:§0<§ = null, param5:§%!U§ = null, param6:§7" § = null)
      {
         super();
         this.§`Z§ = param1;
         this.§`p§ = param2;
         this.§2B§ = param3;
         this.§#_§ = param4 || new §@r§();
         this.include = param5 || new §5y§();
         this.§+!^§ = param6 || new §@!0§();
      }
      
      public function get §1!d§() : §0<§
      {
         return this.§#_§;
      }
      
      public function set §1!d§(param1:§0<§) : void
      {
         this.§#_§ = param1;
      }
      
      public function get §40§() : §%!U§
      {
         return this.include;
      }
      
      public function set §40§(param1:§%!U§) : void
      {
         this.include = param1;
      }
      
      public function get §!!r§() : §7" §
      {
         return this.§+!^§;
      }
      
      public function set §!!r§(param1:§7" §) : void
      {
         this.§+!^§ = param1;
      }
      
      protected function §`!!§(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §3%§
      {
         return new TutorialPopup(this.§2B§,param4,param1,param2,this.§!!r§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§`p§.userProgress.saveTutorialSeen(param2);
         this.§`Z§.openPopup(this.§`!!§(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§0<§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§`p§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§#_§ = param7;
         }
         var _loc10_:MovieClip = this.§#_§.solve(param1);
         param8 = !param8 && this.§`Z§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function §^u§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§0<§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§`p§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§#_§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = §4!f§.§`s§;
         param7 = !param7 && this.§`Z§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§#_§.solve(_loc12_))
            {
               if(_loc16_ != 0)
               {
                  if(param8)
                  {
                     _loc13_ = false;
                  }
                  _loc15_ = false;
                  _loc18_ = §4!f§.DEFAULT;
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
      
      public function §]6§(param1:Boolean = true) : void
      {
         this.§`Z§.closePopup(this.§2B§,param1,true,false);
      }
   }
}
