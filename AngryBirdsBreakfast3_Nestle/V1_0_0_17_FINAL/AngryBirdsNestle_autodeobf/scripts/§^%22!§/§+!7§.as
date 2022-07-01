package §^"!§
{
   import §1![§.§`w§;
   import §1!i§.§?!a§;
   import §1!i§.§^Q§;
   import flash.display.MovieClip;
   
   public class §+!7§
   {
      
      protected static var §?%§:Class = §<M§;
      
      protected static var §6N§:Class = §6""§;
       
      
      protected var §#!c§:§^Q§;
      
      protected var §6!4§:§`w§;
      
      protected var §6@§:§>!n§;
      
      protected var §,!x§:§;w§;
      
      protected var §#W§:int;
      
      protected var §=n§:§4!I§;
      
      public function §+!7§(param1:§^Q§, param2:§`w§, param3:int, param4:§>!n§ = null, param5:§;w§ = null, param6:§4!I§ = null)
      {
         super();
         this.§#!c§ = param1;
         this.§6!4§ = param2;
         this.§#W§ = param3;
         this.§6@§ = param4 || new §6H§();
         this.§,!x§ = param5 || new §=r§();
         this.§=n§ = param6 || new § "6§();
      }
      
      public function get §7"$§() : §>!n§
      {
         return this.§6@§;
      }
      
      public function set §7"$§(param1:§>!n§) : void
      {
         this.§6@§ = param1;
      }
      
      public function get §+!k§() : §;w§
      {
         return this.§,!x§;
      }
      
      public function set §+!k§(param1:§;w§) : void
      {
         this.§,!x§ = param1;
      }
      
      public function get §6!N§() : §4!I§
      {
         return this.§=n§;
      }
      
      public function set §6!N§(param1:§4!I§) : void
      {
         this.§=n§ = param1;
      }
      
      protected function §1!Q§(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §?!a§
      {
         return new TutorialPopup(this.§#W§,param4,param1,param2,this.§6!N§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§6!4§.userProgress.saveTutorialSeen(param2);
         this.§#!c§.openPopup(this.§1!Q§(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§>!n§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§6!4§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§6@§ = param7;
         }
         var _loc10_:MovieClip = this.§6@§.solve(param1);
         param8 = !param8 && this.§#!c§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function openMultipleTutorialPopups(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§>!n§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§6!4§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§6@§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         param7 = !param7 && this.§#!c§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§6@§.solve(_loc12_))
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
      
      public function §=7§(param1:Boolean = true) : void
      {
         this.§#!c§.closePopup(this.§#W§,param1,true,false);
      }
   }
}
