package §=!L§
{
   import §#"&§.§4!W§;
   import §48§.§1k§;
   import §48§.§["#§;
   import §48§.§]l§;
   import flash.display.MovieClip;
   
   public class §4k§
   {
      
      protected static var §1!c§:Class = §#!w§;
      
      protected static var §@!m§:Class = §9!?§;
       
      
      protected var §-G§:§1k§;
      
      protected var §^!8§:§4!W§;
      
      protected var §!B§:§!!u§;
      
      protected var §>w§:§1!T§;
      
      protected var §7!`§:int;
      
      protected var §7!'§:§7M§;
      
      public function §4k§(param1:§1k§, param2:§4!W§, param3:int, param4:§!!u§ = null, param5:§1!T§ = null, param6:§7M§ = null)
      {
         super();
         this.§-G§ = param1;
         this.§^!8§ = param2;
         this.§7!`§ = param3;
         this.§!B§ = param4 || new §8!I§();
         this.§>w§ = param5 || new §+!X§();
         this.§7!'§ = param6 || new § !W§();
      }
      
      public function get §7K§() : §!!u§
      {
         return this.§!B§;
      }
      
      public function set §7K§(param1:§!!u§) : void
      {
         this.§!B§ = param1;
      }
      
      public function get §2s§() : §1!T§
      {
         return this.§>w§;
      }
      
      public function set §2s§(param1:§1!T§) : void
      {
         this.§>w§ = param1;
      }
      
      public function get §'!E§() : §7M§
      {
         return this.§7!'§;
      }
      
      public function set §'!E§(param1:§7M§) : void
      {
         this.§7!'§ = param1;
      }
      
      protected function §&!?§(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §["#§
      {
         return new TutorialPopup(this.§7!`§,param4,param1,param2,this.§'!E§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§^!8§.userProgress.saveTutorialSeen(param2);
         this.§-G§.openPopup(this.§&!?§(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§!!u§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§^!8§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§!B§ = param7;
         }
         var _loc10_:MovieClip = this.§!B§.solve(param1);
         param8 = !param8 && this.§-G§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function §-z§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§!!u§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§^!8§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§!B§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = §]l§.§%!#§;
         param7 = !param7 && this.§-G§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§!B§.solve(_loc12_))
            {
               if(_loc16_ != 0)
               {
                  if(param8)
                  {
                     _loc13_ = false;
                  }
                  _loc15_ = false;
                  _loc18_ = §]l§.DEFAULT;
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
      
      public function §7k§(param1:Boolean = true) : void
      {
         this.§-G§.closePopup(this.§7!`§,param1,true,false);
      }
   }
}
