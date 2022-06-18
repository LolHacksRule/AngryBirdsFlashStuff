package §#"H§
{
   import §&"J§.§<&§;
   import §<#m§.§!"<§;
   import §<#m§.§0r§;
   import flash.display.MovieClip;
   
   public class § #P§
   {
      
      protected static var §+#7§:Class = §+"w§;
      
      protected static var §#"C§:Class = §8!B§;
       
      
      protected var §8,§:§0r§;
      
      protected var §5""§:§<&§;
      
      protected var §+,§:§]#u§;
      
      protected var §+3§:§=!<§;
      
      protected var §;!%§:int;
      
      protected var §'#s§:§6#T§;
      
      public function § #P§(param1:§0r§, param2:§<&§, param3:int, param4:§]#u§ = null, param5:§=!<§ = null, param6:§6#T§ = null)
      {
         super();
         this.init(param1,param2,param3,param4,param5,param6);
      }
      
      public function get §%"R§() : §]#u§
      {
         return this.§+,§;
      }
      
      public function set §%"R§(param1:§]#u§) : void
      {
         this.§+,§ = param1;
      }
      
      public function get §&$8§() : §=!<§
      {
         return this.§+3§;
      }
      
      public function set §&$8§(param1:§=!<§) : void
      {
         this.§+3§ = param1;
      }
      
      public function get §@R§() : §6#T§
      {
         return this.§'#s§;
      }
      
      public function set §@R§(param1:§6#T§) : void
      {
         this.§'#s§ = param1;
      }
      
      protected function init(param1:§0r§, param2:§<&§, param3:int, param4:§]#u§ = null, param5:§=!<§ = null, param6:§6#T§ = null) : void
      {
         this.§8,§ = param1;
         this.§5""§ = param2;
         this.§;!%§ = param3;
         this.§+,§ = param4 || new §8#+§();
         this.§+3§ = param5 || new §["R§();
         this.§'#s§ = param6 || new §%#<§();
      }
      
      protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §!"<§
      {
         return new TutorialPopup(this.§;!%§,param4,param1,param2,this.§@R§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         this.§5""§.userProgress.saveTutorialSeen(param2);
         this.§8,§.openPopup(this.getTutorialPopup(param1,param2,param3,param4),param5,param6,param7,param8);
      }
      
      public function §;#0§(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§]#u§ = null, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         if(this.§5""§.userProgress.hasTutorialBeenSeen(param1))
         {
            if(!param5)
            {
               return;
            }
            _loc9_ = false;
         }
         if(param7 != null)
         {
            this.§+,§ = param7;
         }
         var _loc10_:MovieClip = this.§+,§.solve(param1);
         param8 = !param8 && this.§8,§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param8);
         if(_loc10_)
         {
            this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
         }
      }
      
      public function §1#Y§(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§]#u§ = null, param7:Boolean = true, param8:Boolean = true) : void
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
            if(this.§5""§.userProgress.hasTutorialBeenSeen(param1[_loc10_]))
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
            this.§+,§ = param6;
         }
         var _loc13_:Boolean = param2;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = param4;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         param7 = !param7 && this.§8,§.isPopupOpenById(TutorialPopup.ID) ? true : Boolean(param7);
         _loc10_ = param1.length - 1;
         while(_loc10_ >= 0)
         {
            _loc12_ = param1[_loc10_];
            if(_loc11_ = this.§+,§.solve(_loc12_))
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
      
      public function §]=§(param1:Boolean = true) : void
      {
         this.§8,§.closePopup(this.§;!%§,param1,true,false);
      }
   }
}
