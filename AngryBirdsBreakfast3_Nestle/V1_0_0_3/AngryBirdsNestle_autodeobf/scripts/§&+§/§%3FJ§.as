package §&+§
{
   import §#!`§.§+"#§;
   import §[<§.§#!q§;
   import §[<§.§5t§;
   import §[<§.§]!R§;
   import flash.display.MovieClip;
   
   public class §?J§
   {
      
      protected static var §7e§:Class = §,!+§;
      
      protected static var §-c§:Class = §+![§;
       
      
      protected var §+h§:§5t§;
      
      protected var §'c§:§+"#§;
      
      protected var §extends§:§2;§;
      
      protected var §!"#§:§&^§;
      
      protected var §`y§:int;
      
      protected var §]!+§:§@t§;
      
      public function §?J§(param1:§5t§, param2:§+"#§, param3:int, param4:§2;§ = null, param5:§&^§ = null, param6:§@t§ = null)
      {
         super();
         this.§+h§ = param1;
         this.§'c§ = param2;
         this.§`y§ = param3;
         this.§extends§ = param4 || new § !Y§();
         this.§!"#§ = param5 || new §1u§();
         this.§]!+§ = param6 || new §##§();
      }
      
      public function get §6[§() : §2;§
      {
         return this.§extends§;
      }
      
      public function set §6[§(param1:§2;§) : void
      {
         this.§extends§ = param1;
      }
      
      public function get §,!x§() : §&^§
      {
         return this.§!"#§;
      }
      
      public function set §,!x§(param1:§&^§) : void
      {
         this.§!"#§ = param1;
      }
      
      public function get §?!U§() : §@t§
      {
         return this.§]!+§;
      }
      
      public function set §?!U§(param1:§@t§) : void
      {
         this.§]!+§ = param1;
      }
      
      protected function §^!Q§(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §]!R§
      {
         return new TutorialPopup(this.§`y§,param4,param1,param2,this.§?!U§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§'c§.userProgress.saveTutorialSeen(param2);
         this.§+h§.openPopup(this.§^!Q§(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§2;§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§'c§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§extends§ = param7;
         }
         var _loc10_:MovieClip = this.§extends§.solve(param1);
         param8 = !param8 && this.§+h§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function §`4§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§2;§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§'c§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§extends§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = §#!q§.§"R§;
         param7 = !param7 && this.§+h§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§extends§.solve(_loc12_))
            {
               if(_loc16_ != 0)
               {
                  if(param8)
                  {
                     _loc13_ = false;
                  }
                  _loc15_ = false;
                  _loc18_ = §#!q§.DEFAULT;
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
      
      public function §9d§(param1:Boolean = true) : void
      {
         this.§+h§.closePopup(this.§`y§,param1,true,false);
      }
   }
}
