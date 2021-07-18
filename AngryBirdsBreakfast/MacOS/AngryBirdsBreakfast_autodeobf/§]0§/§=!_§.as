package §]0§
{
   import § ^§.§`!2§;
   import flash.net.SharedObject;
   
   public class §=!_§
   {
       
      
      private var §,!w§:String = "";
      
      private var §&"$§:Object;
      
      public function §=!_§(param1:String)
      {
         super();
         this.§,!w§ = param1;
         this.§8",§();
      }
      
      private function clear() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§,!w§);
         }
         catch(e:*)
         {
         }
         mySO.clear();
      }
      
      public function load() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.§&"$§.tutorials)
         {
            (§6!!§.singleton as §4!=§).§?!b§.setTutorialSeen(_loc1_);
         }
         if(this.§&"$§.levelProfile)
         {
            §`!2§.levelProfile = this.§&"$§.levelProfile;
         }
         else
         {
            this.§+U§();
         }
         if(this.§&"$§.soundsEnabled == undefined)
         {
            this.§&"$§.soundsEnabled = true;
         }
         (§6!!§.singleton as §4!=§).§<=§(this.§&"$§.soundsEnabled);
      }
      
      private function §8",§() : void
      {
         var mySO:SharedObject = null;
         try
         {
            mySO = SharedObject.getLocal(this.§,!w§);
            this.§&"$§ = mySO.data;
         }
         catch(e:Error)
         {
            §&"$§ = new Object();
         }
         if(!this.§&"$§.tutorials)
         {
            this.§&"$§.tutorials = [];
         }
         if(!this.§&"$§.levelProfile)
         {
            this.§+U§();
         }
      }
      
      private function §+U§() : void
      {
         var _loc1_:Object = new Object();
         _loc1_.bestScore = 0;
         _loc1_.levelId = "1-1";
         _loc1_.score = 0;
         _loc1_.stars = 0;
         var _loc2_:Array = [];
         _loc2_[0] = _loc1_;
         §`!2§.levelProfile = _loc2_;
         this.§&"$§.levelProfile = _loc2_;
         this.§&"$§.selectedLanguage = null;
         this.§%w§();
      }
      
      public function setScoreForLevel(param1:String, param2:Number) : void
      {
         var _loc3_:Array = §`!2§.levelProfile;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.length)
         {
            if(_loc3_[_loc5_].levelId == param1)
            {
               if(param2 > _loc3_[_loc5_].bestScore)
               {
                  _loc3_[_loc5_].bestScore = param2;
               }
               _loc3_[_loc5_].score = param2;
               _loc3_[_loc5_].stars = (§6!!§.singleton as §4!=§).§?!b§.§9"+§(param1,_loc3_[_loc5_].bestScore);
            }
            _loc5_++;
         }
         this.§&"$§.levelProfile = _loc3_;
         this.§%w§();
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.§&"$§.tutorials[param1] = param2;
         this.§%w§();
      }
      
      public function §<=§(param1:Boolean) : void
      {
         this.§&"$§.soundsEnabled = param1;
         this.§%w§();
      }
      
      public function §[o§(param1:String) : void
      {
         this.§&"$§.selectedLanguage = param1;
         this.§%w§();
      }
      
      public function §'!]§() : String
      {
         if(this.§&"$§ && this.§&"$§.selectedLanguage)
         {
            return this.§&"$§.selectedLanguage;
         }
         return "";
      }
      
      private function §%w§() : void
      {
         var mySO:SharedObject = null;
         var i:String = null;
         try
         {
            mySO = SharedObject.getLocal(this.§,!w§);
            for(i in this.§&"$§)
            {
               mySO.data[i] = this.§&"$§[i];
            }
            mySO.flush();
         }
         catch(e:Error)
         {
         }
      }
   }
}
