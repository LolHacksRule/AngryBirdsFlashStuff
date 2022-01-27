package §8! §
{
   import flash.utils.Dictionary;
   
   public class §'j§
   {
       
      
      private var §'H§:String = "";
      
      private var mName:String = "";
      
      private var §'S§:String = "";
      
      private var §<w§:String = "";
      
      private var §?s§:String = "";
      
      private var §-'§:Array = null;
      
      private var §>!9§:int = 0;
      
      private var §#C§:Array = null;
      
      private var §-!^§:Array;
      
      private var §#!5§:Array;
      
      private var §&;§:int = 0;
      
      private var §9!]§:Dictionary;
      
      public function §'j§()
      {
         this.§9!]§ = new Dictionary();
         super();
      }
      
      public function §&!L§() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §5g§(param1:String) : Array
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
      
      public function §#r§(param1:int) : Object
      {
         return this.§-!^§[param1];
      }
      
      public function §"!-§(param1:int) : String
      {
         return this.§#!5§[param1];
      }
      
      public function §case §(param1:String) : Boolean
      {
         return this.§8N§().indexOf(param1) != -1;
      }
      
      public function §8N§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§#C§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§5g§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§#C§ = _loc1_;
            return _loc1_;
         }
         return this.§#C§;
      }
      
      public function §%-§(param1:String) : int
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
      
      public function §5!@§(param1:String) : String
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
         return this.§'S§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§'S§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§>!9§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§>!9§ = param1;
      }
      
      public function get §!l§() : Array
      {
         return this.§#C§;
      }
      
      public function get §?!K§() : Array
      {
         return this.§-!^§;
      }
      
      public function set §?!K§(param1:Array) : void
      {
         this.§-!^§ = param1;
      }
      
      public function get §1M§() : int
      {
         return this.§&;§;
      }
      
      public function set §1M§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§&;§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§-'§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§-'§ = param1;
      }
      
      public function §-l§(param1:String, param2:String) : void
      {
         this.§9!]§[param1] = param2;
      }
      
      public function §2N§(param1:String) : String
      {
         return this.§9!]§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§#!5§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§#!5§ = param1;
      }
      
      public function get §1!b§() : String
      {
         return this.§<w§;
      }
      
      public function set §1!b§(param1:String) : void
      {
         this.§<w§ = param1;
      }
      
      public function get §<^§() : String
      {
         return this.§?s§;
      }
      
      public function set §<^§(param1:String) : void
      {
         this.§?s§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§'H§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§'H§ = param1;
      }
   }
}
