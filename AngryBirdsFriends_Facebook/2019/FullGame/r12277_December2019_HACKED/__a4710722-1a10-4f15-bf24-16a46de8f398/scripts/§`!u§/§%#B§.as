package §`!u§
{
   import §9!6§.§8#v§;
   import §9!6§.§?!y§;
   import §>#Y§.§@!p§;
   import flash.display.MovieClip;
   
   public class §%#B§
   {
      
      protected static var §7r§:Class = §>"y§;
      
      protected static var §]!Y§:Class = §<$-§;
       
      
      protected var §,#O§:§8#v§;
      
      protected var §'"G§:§@!p§;
      
      protected var § +§:§,"4§;
      
      protected var §1$1§:§3#A§;
      
      protected var §4!B§:int;
      
      protected var §!"c§:§-"w§;
      
      public function §%#B§(param1:§8#v§, param2:§@!p§, param3:int, param4:§,"4§ = null, param5:§3#A§ = null, param6:§-"w§ = null)
      {
         super();
         this.init(param1,param2,param3,param4,param5,param6);
      }
      
      public function get §"!z§() : §,"4§
      {
         return this.§ +§;
      }
      
      public function set §"!z§(param1:§,"4§) : void
      {
         this.§ +§ = param1;
      }
      
      public function get §#"x§() : §3#A§
      {
         return this.§1$1§;
      }
      
      public function set §#"x§(param1:§3#A§) : void
      {
         this.§1$1§ = param1;
      }
      
      public function get §"r§() : §-"w§
      {
         return this.§!"c§;
      }
      
      public function set §"r§(param1:§-"w§) : void
      {
         this.§!"c§ = param1;
      }
      
      protected function init(param1:§8#v§, param2:§@!p§, param3:int, param4:§,"4§ = null, param5:§3#A§ = null, param6:§-"w§ = null) : void
      {
         this.§,#O§ = param1;
         this.§'"G§ = param2;
         this.§4!B§ = param3;
         this.§ +§ = param4 || new §6"W§();
         this.§1$1§ = param5 || new §"!x§();
         this.§!"c§ = param6 || new §2#G§();
      }
      
      protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §?!y§
      {
         return new TutorialPopup(this.§4!B§,param4,param1,param2,this.§"r§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§'"G§.userProgress.saveTutorialSeen(param2);
         this.§,#O§.openPopup(this.getTutorialPopup(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function §-"y§(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§,"4§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§'"G§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§ +§ = param7;
         }
         var _loc10_:MovieClip = this.§ +§.solve(param1);
         param8 = !param8 && this.§,#O§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function §8#g§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§,"4§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§'"G§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§ +§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         param7 = !param7 && this.§,#O§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§ +§.solve(_loc12_))
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
      
      public function §0"<§(param1:Boolean = true) : void
      {
         this.§,#O§.closePopup(this.§4!B§,param1,true,false);
      }
   }
}
