package §#v§
{
   import §>!#§.§'"R§;
   
   public class §=!Z§
   {
       
      
      protected var §%"4§:String = "";
      
      protected var §2!4§:String = "";
      
      protected var §&"M§:String = "";
      
      protected var §"]§:String = "";
      
      protected var §^"'§:String = "";
      
      protected var §+#<§:Vector.<int> = null;
      
      protected var §3l§:int = 0;
      
      protected var §!#K§:Array = null;
      
      protected var §=#,§:Array;
      
      protected var §7!w§:Array;
      
      protected var §`$!§:int = 0;
      
      protected var §6#u§:§'"R§;
      
      protected var §`%§:Boolean = false;
      
      protected var §'<§:Boolean = false;
      
      protected var §4#T§:Boolean = false;
      
      protected var §>#_§:§'"R§;
      
      public function §=!Z§(param1:Array)
      {
         var _loc2_:String = null;
         this.§6#u§ = new §'"R§();
         this.§>#_§ = new §'"R§();
         super();
         if(param1)
         {
            this.§!#K§ = [];
            for each(_loc2_ in param1)
            {
               this.§!#K§.push(_loc2_.toLowerCase());
            }
         }
      }
      
      public function §`"y§() : int
      {
         return this.§5"L§ * this.levelsPerPage;
      }
      
      public function § use§(param1:String) : int
      {
         this.§9"I§();
         return int(this.§!#K§.indexOf(param1));
      }
      
      public function §%#7§(param1:int) : String
      {
         this.§9"I§();
         if(param1 >= 0 && param1 < this.§!#K§.length)
         {
            return this.§!#K§[param1];
         }
         return null;
      }
      
      public function §?p§(param1:int) : Object
      {
         return this.§=#,§[param1];
      }
      
      public function §<8§(param1:int) : String
      {
         return this.§7!w§[param1];
      }
      
      public function §[#+§(param1:String) : Boolean
      {
         this.§9"I§();
         return this.§!#K§.indexOf(param1) != -1;
      }
      
      public function §4W§(param1:String) : Boolean
      {
         this.§9"I§();
         if(this.§!#K§.indexOf(param1) >= 0)
         {
            return false;
         }
         this.§!#K§.push(param1);
         return true;
      }
      
      public function §=#e§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         this.§9"I§();
         var _loc2_:Array = new Array();
         if(param1 >= 0 && param1 < this.§5"L§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.levelsPerPage)
            {
               _loc4_ = this.§!#K§[_loc3_ + param1 * this.levelsPerPage];
               _loc2_.push(_loc4_);
               _loc3_++;
            }
         }
         return _loc2_;
      }
      
      protected function §@l§(param1:int) : Array
      {
         var _loc4_:String = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < this.levelsPerPage)
         {
            _loc4_ = param1 + "-" + (_loc3_ + 1);
            _loc2_.push(_loc4_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected function §9"I§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(!this.isTournament && this.§!#K§ && this.§!#K§.length < this.§`"y§())
         {
            throw new Error("Not enough level names defined for episode: " + this.§!#K§.length + " names, " + this.§`"y§() + " levels");
         }
         if(this.§!#K§ == null)
         {
            if(this.isTournament)
            {
               this.§!#K§ = new Array();
            }
            else
            {
               _loc1_ = new Array();
               for each(_loc2_ in this.§+#<§)
               {
                  _loc3_ = this.§@l§(_loc2_);
                  for each(_loc4_ in _loc3_)
                  {
                     _loc1_.push(_loc4_);
                  }
               }
               this.§!#K§ = _loc1_;
            }
         }
      }
      
      public function getLevelNames() : Array
      {
         this.§9"I§();
         return this.§!#K§.concat();
      }
      
      public function §5"@§(param1:String) : int
      {
         var _loc2_:int = this.§!#K§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ / this.§3l§;
         }
         return -1;
      }
      
      public function §43§(param1:String) : int
      {
         var _loc2_:int = this.§!#K§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            return _loc2_ % this.§3l§;
         }
         return -1;
      }
      
      public function getNextLevelId(param1:String) : String
      {
         this.§9"I§();
         var _loc2_:int = this.§ use§(param1);
         if(_loc2_ >= 0 && _loc2_ < this.§!#K§.length - 1)
         {
            return this.§!#K§[_loc2_ + 1];
         }
         return null;
      }
      
      public function get name() : String
      {
         return this.§2!4§;
      }
      
      public function set name(param1:String) : void
      {
         this.§2!4§ = param1;
      }
      
      public function get menuImage() : String
      {
         return this.§&"M§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§&"M§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§3l§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§3l§ = param1;
      }
      
      public function set §&!§(param1:Array) : void
      {
         this.§=#,§ = param1;
      }
      
      public function get currentPage() : int
      {
         return this.§`$!§;
      }
      
      public function set currentPage(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.§5"L§)
         {
            this.§`$!§ = param1;
         }
      }
      
      public function get §5"L§() : int
      {
         return this.§+#<§.length;
      }
      
      public function getPageIndex(param1:int) : int
      {
         if(param1 >= 0 && param1 < this.§5"L§)
         {
            return this.§+#<§[param1];
         }
         return -1;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         var _loc2_:String = null;
         this.§+#<§ = new Vector.<int>();
         for each(_loc2_ in param1)
         {
            this.§+#<§.push(parseInt(_loc2_));
         }
      }
      
      public function §"#w§(param1:String, param2:String) : void
      {
         this.§6#u§[param1] = param2;
      }
      
      public function getCutScene(param1:String) : String
      {
         return this.§6#u§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§7!w§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§7!w§ = param1;
      }
      
      public function get §4"5§() : String
      {
         return this.§"]§;
      }
      
      public function set §4"5§(param1:String) : void
      {
         this.§"]§ = param1;
      }
      
      public function get §&q§() : String
      {
         return this.§^"'§;
      }
      
      public function set §&q§(param1:String) : void
      {
         this.§^"'§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§%"4§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§%"4§ = param1;
      }
      
      public function addLevel(param1:String, param2:§-"R§) : void
      {
         this.§>#_§[param1] = param2;
      }
      
      public function §!#?§(param1:String) : §-"R§
      {
         return this.§>#_§[param1];
      }
      
      public function get §]#>§() : Boolean
      {
         return this.§`%§;
      }
      
      public function set §]#>§(param1:Boolean) : void
      {
         this.§`%§ = param1;
      }
      
      public function get §&#]§() : Boolean
      {
         return this.§'<§;
      }
      
      public function set §&#]§(param1:Boolean) : void
      {
         this.§'<§ = param1;
      }
      
      public function get isTournament() : Boolean
      {
         return this.§4#T§;
      }
      
      public function set isTournament(param1:Boolean) : void
      {
         this.§4#T§ = param1;
      }
   }
}
