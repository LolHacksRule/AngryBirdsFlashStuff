package §-w§
{
   import §5u§.§+!]§;
   import §5u§.§4!m§;
   import §5u§.§<!k§;
   import §?!v§.§&r§;
   import flash.display.MovieClip;
   
   public class §;3§
   {
      
      protected static var §4!4§:Class = §2!D§;
      
      protected static var §7%§:Class = §5!_§;
       
      
      protected var §<M§:§4!m§;
      
      protected var §%0§:§&r§;
      
      protected var §`!$§:§"!"§;
      
      protected var §2H§:§]!C§;
      
      protected var §&D§:int;
      
      protected var §+!f§:§&f§;
      
      public function §;3§(param1:§4!m§, param2:§&r§, param3:int, param4:§"!"§ = null, param5:§]!C§ = null, param6:§&f§ = null)
      {
         super();
         this.§<M§ = param1;
         this.§%0§ = param2;
         this.§&D§ = param3;
         this.§`!$§ = param4 || new §'R§();
         this.§2H§ = param5 || new §;!t§();
         this.§+!f§ = param6 || new §!!b§();
      }
      
      public function get §`!"§() : §"!"§
      {
         return this.§`!$§;
      }
      
      public function set §`!"§(param1:§"!"§) : void
      {
         this.§`!$§ = param1;
      }
      
      public function get §-!#§() : §]!C§
      {
         return this.§2H§;
      }
      
      public function set §-!#§(param1:§]!C§) : void
      {
         this.§2H§ = param1;
      }
      
      public function get §7![§() : §&f§
      {
         return this.§+!f§;
      }
      
      public function set §7![§(param1:§&f§) : void
      {
         this.§+!f§ = param1;
      }
      
      protected function §93§(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §<!k§
      {
         return new TutorialPopup(this.§&D§,param4,param1,param2,this.§7![§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§%0§.userProgress.saveTutorialSeen(param2);
         this.§<M§.openPopup(this.§93§(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§"!"§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§%0§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§`!$§ = param7;
         }
         var _loc10_:MovieClip = this.§`!$§.solve(param1);
         param8 = !param8 && this.§<M§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function §"!4§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§"!"§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§%0§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§`!$§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = §+!]§.§4Y§;
         param7 = !param7 && this.§<M§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§`!$§.solve(_loc12_))
            {
               if(_loc16_ != 0)
               {
                  if(param8)
                  {
                     _loc13_ = false;
                  }
                  _loc15_ = false;
                  _loc18_ = §+!]§.DEFAULT;
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
      
      public function §!d§(param1:Boolean = true) : void
      {
         this.§<M§.closePopup(this.§&D§,param1,true,false);
      }
   }
}
