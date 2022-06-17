package §6W§
{
   import §;$5§.§8"6§;
   import §;$5§.§@#G§;
   import §]"'§.§""K§;
   import flash.display.MovieClip;
   
   public class §>"P§
   {
      
      protected static var §&q§:Class = §+!%§;
      
      protected static var §@$3§:Class = §%"5§;
       
      
      protected var §7$%§:§8"6§;
      
      protected var §]!v§:§""K§;
      
      protected var §'"o§:§^"t§;
      
      protected var §<#D§:§]!j§;
      
      protected var §%3§:int;
      
      protected var §"#f§:§0"5§;
      
      public function §>"P§(param1:§8"6§, param2:§""K§, param3:int, param4:§^"t§ = null, param5:§]!j§ = null, param6:§0"5§ = null)
      {
         super();
         this.init(param1,param2,param3,param4,param5,param6);
      }
      
      public function get §[X§() : §^"t§
      {
         return this.§'"o§;
      }
      
      public function set §[X§(param1:§^"t§) : void
      {
         this.§'"o§ = param1;
      }
      
      public function get §=!`§() : §]!j§
      {
         return this.§<#D§;
      }
      
      public function set §=!`§(param1:§]!j§) : void
      {
         this.§<#D§ = param1;
      }
      
      public function get §3$9§() : §0"5§
      {
         return this.§"#f§;
      }
      
      public function set §3$9§(param1:§0"5§) : void
      {
         this.§"#f§ = param1;
      }
      
      protected function init(param1:§8"6§, param2:§""K§, param3:int, param4:§^"t§ = null, param5:§]!j§ = null, param6:§0"5§ = null) : void
      {
         this.§7$%§ = param1;
         this.§]!v§ = param2;
         this.§%3§ = param3;
         this.§'"o§ = param4 || new §,!W§();
         this.§<#D§ = param5 || new §!]§();
         this.§"#f§ = param6 || new §>u§();
      }
      
      protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §@#G§
      {
         return new TutorialPopup(this.§%3§,param4,param1,param2,this.§3$9§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§]!v§.userProgress.saveTutorialSeen(param2);
         this.§7$%§.openPopup(this.getTutorialPopup(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function §1a§(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§^"t§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§]!v§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§'"o§ = param7;
         }
         var _loc10_:MovieClip = this.§'"o§.solve(param1);
         param8 = !param8 && this.§7$%§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function §&"I§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§^"t§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§]!v§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§'"o§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         param7 = !param7 && this.§7$%§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§'"o§.solve(_loc12_))
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
      
      public function §-#_§(param1:Boolean = true) : void
      {
         this.§7$%§.closePopup(this.§%3§,param1,true,false);
      }
   }
}
