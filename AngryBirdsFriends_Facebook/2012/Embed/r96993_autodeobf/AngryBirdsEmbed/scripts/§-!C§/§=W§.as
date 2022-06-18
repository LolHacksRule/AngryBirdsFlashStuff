package §-!C§
{
   import flash.utils.Dictionary;
   
   public class §=W§
   {
       
      
      private var §22§:String = "";
      
      private var mName:String = "";
      
      private var §-@§:String = "";
      
      private var §0!§:String = "";
      
      private var §"`§:String = "";
      
      private var §7!!§:Array = null;
      
      private var §@'§:int = 0;
      
      private var §-U§:Array = null;
      
      private var §"-§:Array;
      
      private var §8s§:Array;
      
      private var §=X§:int = 0;
      
      private var §89§:Dictionary;
      
      public function §=W§()
      {
         this.§89§ = new Dictionary();
         super();
      }
      
      public function §<t§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §,H§(param1:String) : Array
      {
         var _loc4_:String = null;
         var _loc2_:Array = new Array();
         var _loc3_:Number = 0;
         while(_loc3_ < this.levelsPerPage)
         {
            _loc4_ = param1 + "-" + (_loc3_ + 1);
            _loc2_.push(_loc4_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function §?;§(param1:int) : Object
      {
         return this.§"-§[param1];
      }
      
      public function § R§(param1:int) : String
      {
         return this.§8s§[param1];
      }
      
      public function §+A§(param1:String) : Boolean
      {
         return this.§"z§().indexOf(param1) != -1;
      }
      
      public function §"z§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§-U§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§,H§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§-U§ = _loc1_;
            return _loc1_;
         }
         return this.§-U§;
      }
      
      public function §=u§(param1:String) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.pageIndexes.length)
         {
            _loc3_ = this.pageIndexes[_loc2_];
            if(param1.indexOf(_loc3_ + "-") == 0)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function §5N§(param1:String) : String
      {
         var _loc4_:int = 0;
         var _loc2_:String = param1.substring(0,param1.indexOf("-"));
         var _loc3_:int = parseInt(param1.substring(param1.indexOf("-") + 1));
         if(_loc3_ < this.levelsPerPage)
         {
            return _loc2_ + "-" + (_loc3_ + 1);
         }
         _loc4_ = 0;
         while(_loc4_ < this.pageIndexes.length)
         {
            if(this.pageIndexes[_loc4_] == _loc2_)
            {
               if(_loc4_ + 1 < this.pageIndexes.length)
               {
                  return this.pageIndexes[_loc4_ + 1] + "-" + 1;
               }
               break;
            }
            _loc4_++;
         }
         return null;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get menuImage() : String
      {
         return this.§-@§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§-@§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§@'§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§@'§ = param1;
      }
      
      public function get §^j§() : Array
      {
         return this.§-U§;
      }
      
      public function get §2T§() : Array
      {
         return this.§"-§;
      }
      
      public function set §2T§(param1:Array) : void
      {
         this.§"-§ = param1;
      }
      
      public function get §0V§() : int
      {
         return this.§=X§;
      }
      
      public function set §0V§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§=X§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§7!!§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§7!!§ = param1;
      }
      
      public function §#a§(param1:String, param2:String) : void
      {
         this.§89§[param1] = param2;
      }
      
      public function §3y§(param1:String) : String
      {
         return this.§89§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§8s§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§8s§ = param1;
      }
      
      public function get §'^§() : String
      {
         return this.§0!§;
      }
      
      public function set §'^§(param1:String) : void
      {
         this.§0!§ = param1;
      }
      
      public function get §%!-§() : String
      {
         return this.§"`§;
      }
      
      public function set §%!-§(param1:String) : void
      {
         this.§"`§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§22§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§22§ = param1;
      }
   }
}
