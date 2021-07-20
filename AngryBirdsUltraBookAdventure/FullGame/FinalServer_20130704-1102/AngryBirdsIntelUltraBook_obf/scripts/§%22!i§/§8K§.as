package §"!i§
{
   import flash.utils.Dictionary;
   
   public class §8K§
   {
       
      
      private var §#!=§:String = "";
      
      private var mName:String = "";
      
      private var §?F§:String = "";
      
      private var §1&§:String = "";
      
      private var §>!k§:String = "";
      
      private var §"!D§:Array = null;
      
      private var §&g§:int = 0;
      
      private var §#!X§:Array = null;
      
      private var § !&§:Array;
      
      private var §8!d§:Array;
      
      private var §<#§:int = 0;
      
      private var §[C§:Dictionary;
      
      public function §8K§()
      {
         this.§[C§ = new Dictionary();
         super();
      }
      
      public function §&" §() : int
      {
         return this.pageIndexes.length * this.levelsPerPage;
      }
      
      public function §#E§(param1:String) : Array
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
      
      public function §;y§(param1:int) : Object
      {
         return this.§ !&§[param1];
      }
      
      public function §,G§(param1:int) : String
      {
         return this.§8!d§[param1];
      }
      
      public function §9w§(param1:String) : Boolean
      {
         return this.§9!P§().indexOf(param1) != -1;
      }
      
      public function §9!P§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         if(this.§#!X§ == null)
         {
            _loc1_ = new Array();
            for each(_loc2_ in this.pageIndexes)
            {
               _loc3_ = this.§#E§(_loc2_);
               for each(_loc4_ in _loc3_)
               {
                  _loc1_.push(_loc4_);
               }
            }
            this.§#!X§ = _loc1_;
            return _loc1_;
         }
         return this.§#!X§;
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
      
      public function §8`§(param1:String) : String
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
         return this.§?F§;
      }
      
      public function set menuImage(param1:String) : void
      {
         this.§?F§ = param1;
      }
      
      public function get levelsPerPage() : int
      {
         return this.§&g§;
      }
      
      public function set levelsPerPage(param1:int) : void
      {
         this.§&g§ = param1;
      }
      
      public function get §,t§() : Array
      {
         return this.§#!X§;
      }
      
      public function get §83§() : Array
      {
         return this.§ !&§;
      }
      
      public function set §83§(param1:Array) : void
      {
         this.§ !&§ = param1;
      }
      
      public function get §9J§() : int
      {
         return this.§<#§;
      }
      
      public function set §9J§(param1:int) : void
      {
         if(param1 >= 0 && param1 < this.pageIndexes.length)
         {
            this.§<#§ = param1;
         }
      }
      
      public function get pageIndexes() : Array
      {
         return this.§"!D§;
      }
      
      public function set pageIndexes(param1:Array) : void
      {
         this.§"!D§ = param1;
      }
      
      public function §]!'§(param1:String, param2:String) : void
      {
         this.§[C§[param1] = param2;
      }
      
      public function §8!O§(param1:String) : String
      {
         return this.§[C§[param1];
      }
      
      public function get levelButtons() : Array
      {
         return this.§8!d§;
      }
      
      public function set levelButtons(param1:Array) : void
      {
         this.§8!d§ = param1;
      }
      
      public function get §?E§() : String
      {
         return this.§1&§;
      }
      
      public function set §?E§(param1:String) : void
      {
         this.§1&§ = param1;
      }
      
      public function get §2?§() : String
      {
         return this.§>!k§;
      }
      
      public function set §2?§(param1:String) : void
      {
         this.§>!k§ = param1;
      }
      
      public function get writtenName() : String
      {
         return this.§#!=§;
      }
      
      public function set writtenName(param1:String) : void
      {
         this.§#!=§ = param1;
      }
   }
}
