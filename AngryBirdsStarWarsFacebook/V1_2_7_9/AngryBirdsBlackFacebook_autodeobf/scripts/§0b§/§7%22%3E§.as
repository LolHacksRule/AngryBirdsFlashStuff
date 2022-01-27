package §0b§
{
   import §4m§.§&N§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §`"8§.§4"K§;
   import flash.display.MovieClip;
   
   public class §7">§
   {
      
      protected static var §<"1§:Class = §@#+§;
      
      protected static var §4T§:Class = §'"<§;
       
      
      protected var §"q§:§&N§;
      
      protected var §]S§:§4"K§;
      
      protected var §""-§:§`!S§;
      
      protected var §]?§:§[e§;
      
      protected var §5S§:int;
      
      protected var §[!U§:§=#&§;
      
      public function §7">§(param1:§&N§, param2:§4"K§, param3:int, param4:§`!S§ = null, param5:§[e§ = null, param6:§=#&§ = null)
      {
         super();
         this.§"q§ = param1;
         this.§]S§ = param2;
         this.§5S§ = param3;
         this.§""-§ = param4 || new §["p§();
         this.§]?§ = param5 || new §^6§();
         this.§[!U§ = param6 || new §>"+§();
      }
      
      public function get §;,§() : §`!S§
      {
         return this.§""-§;
      }
      
      public function set §;,§(param1:§`!S§) : void
      {
         this.§""-§ = param1;
      }
      
      public function get §4!H§() : §[e§
      {
         return this.§]?§;
      }
      
      public function set §4!H§(param1:§[e§) : void
      {
         this.§]?§ = param1;
      }
      
      public function get §8"^§() : §=#&§
      {
         return this.§[!U§;
      }
      
      public function set §8"^§(param1:§=#&§) : void
      {
         this.§[!U§ = param1;
      }
      
      protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §5!R§
      {
         return new TutorialPopup(this.§5S§,param4,param1,param2,this.§8"^§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§]S§.userProgress.saveTutorialSeen(param2);
         this.§"q§.openPopup(this.getTutorialPopup(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function §,"7§(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§`!S§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§]S§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§""-§ = param7;
         }
         var _loc10_:MovieClip = this.§""-§.solve(param1);
         param8 = !param8 && this.§"q§.isPopupOpenById(TutorialPopup.§^"3§) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function openMultipleTutorialPopups(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§`!S§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§]S§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§""-§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = §^T§.§0O§;
         param7 = !param7 && this.§"q§.isPopupOpenById(TutorialPopup.§^"3§) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§""-§.solve(_loc12_))
            {
               if(_loc16_ != 0)
               {
                  if(param8)
                  {
                     _loc13_ = false;
                  }
                  _loc15_ = false;
                  _loc18_ = §^T§.DEFAULT;
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
      
      public function §-g§(param1:Boolean = true) : void
      {
         this.§"q§.closePopup(this.§5S§,param1,true,false);
      }
   }
}
