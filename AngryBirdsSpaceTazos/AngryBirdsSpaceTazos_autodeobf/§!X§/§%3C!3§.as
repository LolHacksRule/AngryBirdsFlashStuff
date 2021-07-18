package §!X§
{
   import §!?§.§=!_§;
   import §7!H§.§3z§;
   import §7!H§.§8"6§;
   import §7!H§.§>1§;
   import flash.display.MovieClip;
   
   public class §<!3§
   {
       
      
      protected var §'d§:§>1§;
      
      protected var §3u§:§=!_§;
      
      protected var §5U§:§&"E§;
      
      protected var §;l§:§^"&§;
      
      protected var §?"<§:int;
      
      protected var §&!i§:§#"#§;
      
      public function §<!3§(param1:§>1§, param2:§=!_§, param3:int, param4:§&"E§ = null, param5:§^"&§ = null, param6:§#"#§ = null)
      {
         super();
         this.§'d§ = param1;
         this.§3u§ = param2;
         this.§?"<§ = param3;
         this.§5U§ = param4 || new §8!o§();
         this.§;l§ = param5 || new §5p§();
         this.§&!i§ = param6 || new §7!R§();
      }
      
      public function get §6v§() : §&"E§
      {
         return this.§5U§;
      }
      
      public function set §6v§(param1:§&"E§) : void
      {
         this.§5U§ = param1;
      }
      
      public function get §+!Q§() : §^"&§
      {
         return this.§;l§;
      }
      
      public function set §+!Q§(param1:§^"&§) : void
      {
         this.§;l§ = param1;
      }
      
      public function get §[=§() : §#"#§
      {
         return this.§&!i§;
      }
      
      public function set §[=§(param1:§#"#§) : void
      {
         this.§&!i§ = param1;
      }
      
      protected function §,B§(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §3z§
      {
         return new TutorialPopup(this.§?"<§,param4,param1,param2,this.§[=§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§3u§.userProgress.saveTutorialSeen(param2);
         this.§'d§.openPopup(this.§,B§(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§&"E§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§3u§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§5U§ = param7;
         }
         var _loc10_:MovieClip = this.§5U§.solve(param1);
         param8 = !param8 && this.§'d§.isPopupOpenById(TutorialPopup.§[!U§) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function §#!s§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§&"E§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§3u§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§5U§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = §8"6§.§8p§;
         param7 = !param7 && this.§'d§.isPopupOpenById(TutorialPopup.§[!U§) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§5U§.solve(_loc12_))
            {
               if(_loc16_ != 0)
               {
                  if(param8)
                  {
                     _loc13_ = false;
                  }
                  _loc15_ = false;
                  _loc18_ = §8"6§.§ K§;
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
      
      public function §2!Q§(param1:Boolean = true) : void
      {
         this.§'d§.closePopup(this.§?"<§,param1,true,false);
      }
   }
}
